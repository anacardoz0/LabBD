drop database if EXISTS contact;

create database contact;

USE contact;

create table pessoas(
    -> cpf char(11) not null,
    -> nome char(40),
    -> telefone1 char(15),
    -> telefone2 char(15),
    -> email char(30),
    -> data_nascimento date,
    -> endereco char(50),
    -> bairro int unsigned,
    -> cidade int unsigned,
    -> uf char(2),
    -> cep char(8)) ;
	
	CREATE TABLE `bairro` (
  `cod_bairro` int unsigned NOT NULL,
  `descricao` char(40) DEFAULT NULL,
  PRIMARY KEY (`cod_bairro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `cidade` (
  `cod_cidade` int unsigned NOT NULL,
  `descricao` char(40) DEFAULT NULL,
  PRIMARY KEY (`cod_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `contato` (
  `num_contato` int unsigned NOT NULL,
  `tipo_cliente` char(1) NOT NULL,
  `cpf` char(11) NOT NULL,
  `cge` char(20) DEFAULT NULL,
  `cgc` char(20) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`num_contato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `emprese` (
  `cgc` char(40) NOT NULL,
  `nome_fantasia` char(40) DEFAULT NULL,
  `razao_social` char(40) DEFAULT NULL,
  `responsavel` char(20) DEFAULT NULL,
  `site_internet` char(50) DEFAULT NULL,
  `email` char(30) DEFAULT NULL,
  `telefone` char(15) DEFAULT NULL,
  `fax` char(15) DEFAULT NULL,
  `endereco` char(50) DEFAULT NULL,
  `bairro` int unsigned DEFAULT NULL,
  `cidade` int unsigned DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `cep` char(8) DEFAULT NULL,
  PRIMARY KEY (`cgc`),
  KEY `cidade_empresa_FK_idx` (`cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
