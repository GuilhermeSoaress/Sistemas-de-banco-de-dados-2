-- -------- < aula4extra1 > --------
--
--                    FISICO (DDL)
--
-- Data Criacao ...........: 04/09/2023
-- Autor(es) ..............: Guilherme Soares Rocha
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4extra1
--
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
-- 
--
-- ----------------------------------------------------------

create database aula4;
use aula4;

create table ESTADO (
	sigla char(2) NOT NULL,
    nome char(20) NOT NULL,
    CONSTRAINT ESTADO_PK primary key (sigla)
) ENGINE = INNODB;

create table CIDADE (
	codigo int (5) NOT NULL,
    nome char (50) NOT NULL,
    habitantes int NOT NULL,
    sigla char (2) NOT NULL,
    CONSTRAINT CIDADE_PK primary key (codigo),
    CONSTRAINT CIDADE_ESTADO_FK foreign key (sigla) REFERENCES ESTADO (sigla)
) ENGINE= INNODB;