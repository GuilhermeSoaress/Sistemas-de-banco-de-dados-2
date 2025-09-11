-- ---------------------   << TF - MyAnimeList>>   ---------------------
--
--                    		SCRIPT FISICO (DDL)
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

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`anime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`anime` (
  `MAL_ID` INT NULL DEFAULT NULL,
  `Name` TEXT NULL DEFAULT NULL,
  `Score` DOUBLE NULL DEFAULT NULL,
  `Genres` TEXT NULL DEFAULT NULL,
  `English name` TEXT NULL DEFAULT NULL,
  `Type` TEXT NULL DEFAULT NULL,
  `Episodes` INT NULL DEFAULT NULL,
  `Aired` TEXT NULL DEFAULT NULL,
  `Premiered` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`anime_with_synopsis`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`anime_with_synopsis` (
  `MAL_ID` INT NULL DEFAULT NULL,
  `Name` TEXT NULL DEFAULT NULL,
  `Score` JSON NULL DEFAULT NULL,
  `Genres` TEXT NULL DEFAULT NULL,
  `sypnopsis` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`animelist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`animelist` (
  `user_id` INT NULL DEFAULT NULL,
  `anime_id` INT NULL DEFAULT NULL,
  `rating` BIGINT NULL DEFAULT NULL,
  `watching_status` INT NULL DEFAULT NULL,
  `watched_episodes` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`rating_complete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`rating_complete` (
  `user_id` INT NULL DEFAULT NULL,
  `anime_id` INT NULL DEFAULT NULL,
  `rating` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mydb`.`watching_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`watching_status` (
  `status` INT NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
