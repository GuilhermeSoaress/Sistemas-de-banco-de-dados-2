-- -------- < aula4extra1 > --------
--
--                    POPULA (DML)
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
use aula4;

INSERT INTO ESTADO VALUES
	('AC', 'Acre'),
    ('DF', 'Brasília'), 
    ('GO', 'Goiás');
    
INSERT INTO CIDADE VALUES
	(1, 'Rio Branco', 50000, 'AC'),
    (2, 'Brasília', 3000000, 'DF'),
    (3, 'Novo Gama', 100000, 'GO'),
    (4, 'Valparaíso', 140000, 'GO'),
    (5, 'Cocalzinho', 80000, 'GO'),
    (6, 'Águas Lindas', 130000, 'GO'),
    (7, 'Jataí', 30000, 'GO');