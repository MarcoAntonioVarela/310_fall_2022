-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema marco_varela_module2_byui_catalog
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema marco_varela_module2_byui_catalog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `marco_varela_module2_byui_catalog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `marco_varela_module2_byui_catalog` ;

-- -----------------------------------------------------
-- Table `marco_varela_module2_byui_catalog`.`catalog_year`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `marco_varela_module2_byui_catalog`.`catalog_year` (
  `id` INT NOT NULL,
  `year` YEAR NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `marco_varela_module2_byui_catalog`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `marco_varela_module2_byui_catalog`.`address` (
  `id` INT NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `zip_code` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `marco_varela_module2_byui_catalog`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `marco_varela_module2_byui_catalog`.`student` (
  `id` INT NOT NULL,
  `fname` VARCHAR(45) NOT NULL,
  `lname` VARCHAR(45) NOT NULL,
  `phone_number` INT NULL,
  `email` VARCHAR(45) NULL,
  `address_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_student_address1_idx` (`address_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_address1`
    FOREIGN KEY (`address_id`)
    REFERENCES `marco_varela_module2_byui_catalog`.`address` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `marco_varela_module2_byui_catalog`.`program_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `marco_varela_module2_byui_catalog`.`program_type` (
  `id` INT NOT NULL,
  `program_type` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `marco_varela_module2_byui_catalog`.`field`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `marco_varela_module2_byui_catalog`.`field` (
  `id` INT NOT NULL,
  `field` VARCHAR(45) NOT NULL,
  `program_code` VARCHAR(45) NOT NULL,
  `total_credits` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `marco_varela_module2_byui_catalog`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `marco_varela_module2_byui_catalog`.`department` (
  `id` INT NOT NULL,
  `department` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `marco_varela_module2_byui_catalog`.`course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `marco_varela_module2_byui_catalog`.`course` (
  `id` INT NOT NULL,
  `program_type_id` INT NOT NULL,
  `field_id` INT NOT NULL,
  `catalog_year_id` INT NOT NULL,
  `department_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_course_program_type1_idx` (`program_type_id` ASC) VISIBLE,
  INDEX `fk_course_field1_idx` (`field_id` ASC) VISIBLE,
  INDEX `fk_course_catalog_year1_idx` (`catalog_year_id` ASC) VISIBLE,
  INDEX `fk_course_department1_idx` (`department_id` ASC) VISIBLE,
  CONSTRAINT `fk_course_program_type1`
    FOREIGN KEY (`program_type_id`)
    REFERENCES `marco_varela_module2_byui_catalog`.`program_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_course_field1`
    FOREIGN KEY (`field_id`)
    REFERENCES `marco_varela_module2_byui_catalog`.`field` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_course_catalog_year1`
    FOREIGN KEY (`catalog_year_id`)
    REFERENCES `marco_varela_module2_byui_catalog`.`catalog_year` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_course_department1`
    FOREIGN KEY (`department_id`)
    REFERENCES `marco_varela_module2_byui_catalog`.`department` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `marco_varela_module2_byui_catalog`.`student_has_course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `marco_varela_module2_byui_catalog`.`student_has_course` (
  `id` INT NOT NULL,
  `student_id` INT NOT NULL,
  `course_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_student_has_course_student_idx` (`student_id` ASC) VISIBLE,
  INDEX `fk_student_has_course_course1_idx` (`course_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_has_course_student`
    FOREIGN KEY (`student_id`)
    REFERENCES `marco_varela_module2_byui_catalog`.`student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_has_course_course1`
    FOREIGN KEY (`course_id`)
    REFERENCES `marco_varela_module2_byui_catalog`.`course` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
