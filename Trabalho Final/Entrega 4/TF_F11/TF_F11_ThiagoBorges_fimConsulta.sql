-- ---------------------   << TF - MyAnimeList>>   ---------------------
--
--                    		SCRIPT CONSULTA (DML)
-- 
-- Data Criacao ...........: 15/12/2023
-- Autor(es) ..............: Thiago Boges e Guilherme Soares 
-- Banco de Dados .........: MySQL8.0
-- Base de Dados(nome) ....: myanimelist
-- 
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
-- 		   => 01 view
-- 
-- -----------------------------------------------------------------
CREATE  OR REPLACE VIEW view_anime_rating AS
SELECT
    MAL_ID,
    Name,
    Genres,
    Episodes,
    Score,
    CASE
        WHEN Score >= 8.0 THEN 'Excelente'
        WHEN Score >= 7.0 THEN 'Bom'
        WHEN Score >= 6.0 THEN 'Regular'
        ELSE 'Avaliação Baixa'
    END AS classificacao_avaliacao
FROM anime
WHERE Episodes >= 12
ORDER BY Score DESC;

SELECT * FROM view_anime_rating;

