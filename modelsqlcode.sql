-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema apinode
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema apinode
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `apinode` DEFAULT CHARACTER SET latin1 ;
USE `apinode` ;

-- -----------------------------------------------------
-- Table `apinode`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apinode`.`usuario` (
  `nome` VARCHAR(10) NULL DEFAULT NULL,
  `email` VARCHAR(20) NULL DEFAULT NULL,
  `senha` FLOAT NULL DEFAULT NULL,
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `apinode`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `apinode`.`produtos` (
  `idPorduto` INT(11) NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `quantidade` INT NOT NULL,
  `usuario_id` INT(11) NOT NULL,
  PRIMARY KEY (`idPorduto`, `usuario_id`),
  INDEX `fk_produtos_usuario_idx` (`usuario_id` ASC) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
