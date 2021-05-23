-- I will be creating two tables that will be joined together to display car sales for 2020 -- 


-- Creating the CarBrands Table  --

Drop Table if exists CarBrands;

CREATE TABLE `Final`.`CarBrands` (
  `Car_ID` INT NOT NULL,
  `Brand` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  PRIMARY KEY (`Car_ID`));

SELECT * from CarBrands;

INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('1', 'Toyota', 'Sienna');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('2', 'Toyota ', 'Camry');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('3', 'Honda', 'Accord');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('4', 'Nissan', 'Rogue');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('5', 'Volkswagon', 'Passat');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('6', 'Jeep', 'Cherokee');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('7', 'Hyundai', 'Elantra');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('8', 'Kia', 'Soul');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('9', 'Honda', 'Civic');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('10', 'Nissan', 'Altima');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('11', 'Jeep', 'Compass');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('12', 'BMW', 'M5');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('13', 'Ford', 'Mustang');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('14', 'Chevrolet', 'Camaro');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('15', 'Dodge', 'Charger');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('16', 'Dodge ', 'Challenger');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('17', 'Subaru', 'WRX');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('18', 'Audi', 'A5');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('19', 'Toyota', 'Corolla');
INSERT INTO `Final`.`CarBrands` (`Car_ID`, `Brand`, `Model`) VALUES ('20', 'Chevrolet', 'Cruze');

-- Creating the Sales Table -- 

DROP TABLE IF EXISTS Sales;

CREATE TABLE `Final`.`Sales` (
  `Car_ID` INT NOT NULL,
  `Year` VARCHAR(45) NULL,
  `Sales` VARCHAR(45) NULL,
  PRIMARY KEY (`Car_ID`));
  
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('16', '2020', '791840');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('3', '2020', '627446');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('2', '2020', '844626');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('4', '2020', '863503');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('19', '2020', '723514');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('14', '2020', '598143');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('8', '2020', '778170');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('15', '2020', '763763');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('17', '2020', '196422');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('5', '2020', '939590');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('12', '2020', '383662');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('20', '2020', '401001');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('6', '2020', '775782');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('18', '2020', '260405');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('9', '2020', '718611');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('13', '2020', '945955');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('1', '2020', '443019');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('10', '2020', '762086');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('11', '2020', '347007');
INSERT INTO `Final`.`Sales` (`Car_ID`, `Year`, `Sales`) VALUES ('7', '2020', '798377');

  
-- Joining both tables and sorting them by the brand name --
  
SELECT * FROM Sales;

SELECT CarBrands.Brand, CarBrands.Model, Sales.Year, Sales.Sales
from Final.CarBrands
INNER JOIN Final.Sales 
ON CarBrands.Car_ID = Sales.Car_ID
Order by CarBrands.Brand;