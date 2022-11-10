CREATE TABLE IF NOT EXISTS `school`.`LOCATION` (
  `location_id` INT NOT NULL,
  `city` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `state` VARCHAR(2) NULL,
  `zipcode` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  PRIMARY KEY (`location_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `school`.`POSITION` (
  `position_id` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `education` VARCHAR(45) NULL,
  `min_salary` DECIMAL(9,2) NULL,
  `max_salary` VARCHAR(45) NULL,
  `POSITIONcol` DECIMAL(9,2) NULL,
  PRIMARY KEY (`position_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `school`.`EMPLOYEE` (
  `ssn` INT NOT NULL,
  `last_name` VARCHAR(45) NULL,
  `first_name` VARCHAR(45) NULL,
  `hire_date` DATE NULL,
  `salary` DATE NULL,
  `gender` VARCHAR(1) NULL,
  `performance` VARCHAR(45) NULL,
  `position_id` INT NULL,
  `location_id` INT NULL,
  PRIMARY KEY (`ssn`),
  INDEX `position_id_idx` (`position_id` ASC) VISIBLE,
  INDEX `location_id_idx` (`location_id` ASC) VISIBLE,
  CONSTRAINT `position_id`
    FOREIGN KEY (`position_id`)
    REFERENCES `school`.`POSITION` (`position_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `location_id`
    FOREIGN KEY (`location_id`)
    REFERENCES `school`.`LOCATION` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;