-- MySQL Script generated by MySQL Workbench
-- Sat 01 Oct 2022 02:04:57 PM CDT
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

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
-- Table `mydb`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Productos` (
  `Producto` INT NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  `Precio` INT NOT NULL,
  PRIMARY KEY (`Producto`),
  UNIQUE INDEX `Producto_UNIQUE` (`Producto` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Maquinas_Registradoras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Maquinas_Registradoras` (
  `Maquina` INT NOT NULL,
  `Piso` INT NOT NULL,
  PRIMARY KEY (`Maquina`),
  UNIQUE INDEX `Maquina_UNIQUE` (`Maquina` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cajeros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cajeros` (
  `Cajero` INT NOT NULL,
  `Nombre` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Cajero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Venta` (
  `Cajero` INT NOT NULL,
  `Maquina` INT NOT NULL,
  `Producto` INT NOT NULL,
  INDEX `Producto_idx` (`Producto` ASC) VISIBLE,
  INDEX `Maquina_idx` (`Maquina` ASC) VISIBLE,
  INDEX `Cajero_idx` (`Cajero` ASC) VISIBLE,
  CONSTRAINT `Producto`
    FOREIGN KEY (`Producto`)
    REFERENCES `mydb`.`Productos` (`Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Maquina`
    FOREIGN KEY (`Maquina`)
    REFERENCES `mydb`.`Maquinas_Registradoras` (`Maquina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Cajero`
    FOREIGN KEY (`Cajero`)
    REFERENCES `mydb`.`Cajeros` (`Cajero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;