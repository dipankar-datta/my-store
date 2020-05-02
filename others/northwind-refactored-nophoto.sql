-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.19 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for northwind
DROP DATABASE IF EXISTS `northwind`;
CREATE DATABASE IF NOT EXISTS `northwind` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `northwind`;

-- Dumping structure for table northwind.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(15) NOT NULL,
  `Description` mediumtext,
  PRIMARY KEY (`CategoryID`),
  KEY `CategoryName` (`CategoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table northwind.categories: ~8 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
	(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales');
INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
	(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings');
INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
	(3, 'Confections', 'Desserts, candies, and sweet breads');
INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
	(4, 'Dairy Products', 'Cheeses');
INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
	(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal');
INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
	(6, 'Meat/Poultry', 'Prepared meats');
INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
	(7, 'Produce', 'Dried fruit and bean curd');
INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
	(8, 'Seafood', 'Seaweed and fish');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table northwind.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `CustomerID` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CompanyName` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ContactName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ContactTitle` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Address` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `City` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Region` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PostalCode` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Country` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Phone` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Fax` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  KEY `pk_customers_customerid` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table northwind.customers: ~93 rows (approximately)
DELETE FROM `customers`;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(1, 'ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Sales Representative', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany', '030-0074321', '030-0076545');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(2, 'ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Owner', 'Avda. de la Constitucin 2222', 'Mxico D.F.', NULL, '05021', 'Mexico', '(5) 555-4729', '(5) 555-3745');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(3, 'ANTON', 'Antonio Moreno Taquera', 'Antonio Moreno', 'Owner', 'Mataderos  2312', 'Mxico D.F.', NULL, '05023', 'Mexico', '(5) 555-3932', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(4, 'AROUT', 'Around the Horn', 'Thomas Hardy', 'Sales Representative', '120 Hanover Sq.', 'London', NULL, 'WA1 1DP', 'UK', '(171) 555-7788', '(171) 555-6750');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(5, 'BERGS', 'Berglunds snabbkp', 'Christina Berglund', 'Order Administrator', 'Berguvsvgen  8', 'Lule', NULL, 'S-958 22', 'Sweden', '0921-12 34 65', '0921-12 34 67');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(6, 'BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Sales Representative', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany', '0621-08460', '0621-08924');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(7, 'BLONP', 'Blondesddsl pre et fils', 'Frdrique Citeaux', 'Marketing Manager', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', '88.60.15.31', '88.60.15.32');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(8, 'BOLID', 'Blido Comidas preparadas', 'Martn Sommer', 'Owner', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'Spain', '(91) 555 22 82', '(91) 555 91 99');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(9, 'BONAP', 'Bon app\'', 'Laurence Lebihan', 'Owner', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', '91.24.45.40', '91.24.45.41');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(10, 'BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Accounting Manager', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', '(604) 555-4729', '(604) 555-3745');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(11, 'BSBEV', 'B\'s Beverages', 'Victoria Ashworth', 'Sales Representative', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', '(171) 555-1212', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(12, 'CACTU', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Sales Agent', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina', '(1) 135-5555', '(1) 135-4892');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(13, 'CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Marketing Manager', 'Sierras de Granada 9993', 'Mxico D.F.', NULL, '05022', 'Mexico', '(5) 555-3392', '(5) 555-7293');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(14, 'CHOPS', 'Chop-suey Chinese', 'Yang Wang', 'Owner', 'Hauptstr. 29', 'Bern', NULL, '3012', 'Switzerland', '0452-076545', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(15, 'COMMI', 'Comrcio Mineiro', 'Pedro Afonso', 'Sales Associate', 'Av. dos Lusadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil', '(11) 555-7647', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(16, 'CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Sales Representative', 'Berkeley Gardens 12  Brewery', 'London', NULL, 'WX1 6LT', 'UK', '(171) 555-2282', '(171) 555-9199');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(17, 'DRACD', 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Order Administrator', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany', '0241-039123', '0241-059428');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(18, 'DUMON', 'Du monde entier', 'Janine Labrune', 'Owner', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France', '40.67.88.88', '40.67.89.89');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(19, 'EASTC', 'Eastern Connection', 'Ann Devon', 'Sales Agent', '35 King George', 'London', NULL, 'WX3 6FW', 'UK', '(171) 555-0297', '(171) 555-3373');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(20, 'ERNSH', 'Ernst Handel', 'Roland Mendel', 'Sales Manager', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', '7675-3425', '7675-3426');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(21, 'FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Marketing Assistant', 'Rua Ors, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil', '(11) 555-9857', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(22, 'FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Accounting Manager', 'C/ Moralzarzal, 86', 'Madrid', NULL, '28034', 'Spain', '(91) 555 94 44', '(91) 555 55 93');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(23, 'FOLIG', 'Folies gourmandes', 'Martine Ranc', 'Assistant Sales Agent', '184, chausse de Tournai', 'Lille', NULL, '59000', 'France', '20.16.10.16', '20.16.10.17');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(24, 'FOLKO', 'Folk och f HB', 'Maria Larsson', 'Owner', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', '0695-34 67 21', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(25, 'FRANK', 'Frankenversand', 'Peter Franken', 'Marketing Manager', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', '089-0877310', '089-0877451');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(26, 'FRANR', 'France restauration', 'Carine Schmitt', 'Marketing Manager', '54, rue Royale', 'Nantes', NULL, '44000', 'France', '40.32.21.21', '40.32.21.20');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(27, 'FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Sales Representative', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy', '011-4988260', '011-4988261');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(28, 'FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Sales Manager', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', '(1) 354-2534', '(1) 354-2535');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(29, 'GALED', 'Galera del gastrnomo', 'Eduardo Saavedra', 'Marketing Manager', 'Rambla de Catalua, 23', 'Barcelona', NULL, '08022', 'Spain', '(93) 203 4560', '(93) 203 4561');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(30, 'GODOS', 'Godos Cocina Tpica', 'Jos Pedro Freyre', 'Sales Manager', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', '(95) 555 82 82', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(31, 'GOURL', 'Gourmet Lanchonetes', 'Andr Fonseca', 'Sales Associate', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', '(11) 555-9482', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(32, 'GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Marketing Manager', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', '(503) 555-7555', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(33, 'GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Owner', '5 Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela', '(2) 283-2951', '(2) 283-3397');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(34, 'HANAR', 'Hanari Carnes', 'Mario Pontes', 'Accounting Manager', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', '(21) 555-0091', '(21) 555-8765');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(35, 'HILAA', 'HILARION-Abastos', 'Carlos Hernndez', 'Sales Representative', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', '(5) 555-1340', '(5) 555-1948');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(36, 'HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Sales Representative', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA', '(503) 555-6874', '(503) 555-2376');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(37, 'HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Sales Associate', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', '2967 542', '2967 3333');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(38, 'ISLAT', 'Island Trading', 'Helen Bennett', 'Marketing Manager', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', '(198) 555-8888', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(39, 'KOENE', 'Kniglich Essen', 'Philip Cramer', 'Sales Associate', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', '0555-09876', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(40, 'LACOR', 'La corne d\'abondance', 'Daniel Tonini', 'Sales Representative', '67, avenue de l\'Europe', 'Versailles', NULL, '78000', 'France', '30.59.84.10', '30.59.85.11');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(41, 'LAMAI', 'La maison d\'Asie', 'Annette Roulet', 'Sales Manager', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', '61.77.61.10', '61.77.61.11');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(42, 'LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Marketing Assistant', '1900 Oak St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada', '(604) 555-3392', '(604) 555-7293');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(43, 'LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Marketing Manager', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA', '(509) 555-7969', '(509) 555-6221');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(44, 'LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Sales Representative', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', '069-0245984', '069-0245874');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(45, 'LETSS', 'Let\'s Stop N Shop', 'Jaime Yorres', 'Owner', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA', '(415) 555-5938', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(46, 'LILAS', 'LILA-Supermercado', 'Carlos Gonzlez', 'Accounting Manager', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', '(9) 331-6954', '(9) 331-7256');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(47, 'LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Owner', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', '(8) 34-56-12', '(8) 34-93-93');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(48, 'LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Sales Manager', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', '(503) 555-9573', '(503) 555-9646');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(49, 'MAGAA', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Marketing Manager', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', '035-640230', '035-640231');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(50, 'MAISD', 'Maison Dewey', 'Catherine Dewey', 'Sales Agent', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium', '(02) 201 24 67', '(02) 201 24 68');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(51, 'MEREP', 'Mre Paillarde', 'Jean Fresnire', 'Marketing Assistant', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', '(514) 555-8054', '(514) 555-8055');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(52, 'MORGK', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Marketing Assistant', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Germany', '0342-023176', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(53, 'NORTS', 'North/South', 'Simon Crowther', 'Sales Associate', 'South House 300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'UK', '(171) 555-7733', '(171) 555-2530');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(54, 'OCEAN', 'Ocano Atlntico Ltda.', 'Yvonne Moncada', 'Sales Agent', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina', '(1) 135-5333', '(1) 135-5535');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(55, 'OLDWO', 'Old World Delicatessen', 'Rene Phillips', 'Sales Representative', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', '(907) 555-7584', '(907) 555-2880');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(56, 'OTTIK', 'Ottilies Kseladen', 'Henriette Pfalzheim', 'Owner', 'Mehrheimerstr. 369', 'Kln', NULL, '50739', 'Germany', '0221-0644327', '0221-0765721');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(57, 'PARIS', 'Paris spcialits', 'Marie Bertrand', 'Owner', '265, boulevard Charonne', 'Paris', NULL, '75012', 'France', '(1) 42.34.22.66', '(1) 42.34.22.77');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(58, 'PERIC', 'Pericles Comidas clsicas', 'Guillermo Fernndez', 'Sales Representative', 'Calle Dr. Jorge Cash 321', 'Mxico D.F.', NULL, '05033', 'Mexico', '(5) 552-3745', '(5) 545-3745');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(59, 'PICCO', 'Piccolo und mehr', 'Georg Pipps', 'Sales Manager', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', '6562-9722', '6562-9723');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(60, 'PRINI', 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Sales Representative', 'Estrada da sade n. 58', 'Lisboa', NULL, '1756', 'Portugal', '(1) 356-5634', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(61, 'QUEDE', 'Que Delcia', 'Bernardo Batista', 'Accounting Manager', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', '(21) 555-4252', '(21) 555-4545');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(62, 'QUEEN', 'Queen Cozinha', 'Lcia Carvalho', 'Marketing Assistant', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', '(11) 555-1189', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(63, 'QUICK', 'QUICK-Stop', 'Horst Kloss', 'Accounting Manager', 'Taucherstrae 10', 'Cunewalde', NULL, '01307', 'Germany', '0372-035188', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(64, 'RANCH', 'Rancho grande', 'Sergio Gutirrez', 'Sales Representative', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina', '(1) 123-5555', '(1) 123-5556');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(65, 'RATTC', 'Rattlesnake Canyon Grocery', 'Paula Wilson', 'Assistant Sales Representative', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', '(505) 555-5939', '(505) 555-3620');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(66, 'REGGC', 'Reggiani Caseifici', 'Maurizio Moroni', 'Sales Associate', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', '0522-556721', '0522-556722');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(67, 'RICAR', 'Ricardo Adocicados', 'Janete Limeira', 'Assistant Sales Agent', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', '(21) 555-3412', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(68, 'RICSU', 'Richter Supermarkt', 'Michael Holz', 'Sales Manager', 'Grenzacherweg 237', 'Genve', NULL, '1203', 'Switzerland', '0897-034214', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(69, 'ROMEY', 'Romero y tomillo', 'Alejandra Camino', 'Accounting Manager', 'Gran Va, 1', 'Madrid', NULL, '28001', 'Spain', '(91) 745 6200', '(91) 745 6210');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(70, 'SANTG', 'Sant Gourmet', 'Jonas Bergulfsen', 'Owner', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway', '07-98 92 35', '07-98 92 47');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(71, 'SAVEA', 'Save-a-lot Markets', 'Jose Pavarotti', 'Sales Representative', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', '(208) 555-8097', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(72, 'SEVES', 'Seven Seas Imports', 'Hari Kumar', 'Sales Manager', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK', '(171) 555-1717', '(171) 555-5646');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(73, 'SIMOB', 'Simons bistro', 'Jytte Petersen', 'Owner', 'Vinbltet 34', 'Kobenhavn', NULL, '1734', 'Denmark', '31 12 34 56', '31 13 35 57');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(74, 'SPECD', 'Spcialits du monde', 'Dominique Perrier', 'Marketing Manager', '25, rue Lauriston', 'Paris', NULL, '75016', 'France', '(1) 47.55.60.10', '(1) 47.55.60.20');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(75, 'SPLIR', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Sales Manager', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', '(307) 555-4680', '(307) 555-6525');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(76, 'SUPRD', 'Suprmes dlices', 'Pascale Cartrain', 'Accounting Manager', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', '(071) 23 67 22 20', '(071) 23 67 22 21');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(77, 'THEBI', 'The Big Cheese', 'Liz Nixon', 'Marketing Manager', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA', '(503) 555-3612', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(78, 'THECR', 'The Cracker Box', 'Liu Wong', 'Marketing Assistant', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA', '(406) 555-5834', '(406) 555-8083');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(79, 'TOMSP', 'Toms Spezialitten', 'Karin Josephs', 'Marketing Manager', 'Luisenstr. 48', 'Mnster', NULL, '44087', 'Germany', '0251-031259', '0251-035695');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(80, 'TORTU', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Owner', 'Avda. Azteca 123', 'Mxico D.F.', NULL, '05033', 'Mexico', '(5) 555-2933', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(81, 'TRADH', 'Tradio Hipermercados', 'Anabela Domingues', 'Sales Representative', 'Av. Ins de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil', '(11) 555-2167', '(11) 555-2168');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(82, 'TRAIH', 'Trail\'s Head Gourmet Provisioners', 'Helvetius Nagy', 'Sales Associate', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA', '(206) 555-8257', '(206) 555-2174');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(83, 'VAFFE', 'Vaffeljernet', 'Palle Ibsen', 'Sales Manager', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', '86 21 32 43', '86 22 33 44');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(84, 'Val2 ', 'IT', 'Val2', 'IT', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(85, 'VALON', 'IT', 'Valon Hoti', 'IT', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(86, 'VICTE', 'Victuailles en stock', 'Mary Saveley', 'Sales Agent', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', '78.32.54.86', '78.32.54.87');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(87, 'VINET', 'Vins et alcools Chevalier', 'Paul Henriot', 'Accounting Manager', '59 rue de l\'Abbaye', 'Reims', NULL, '51100', 'France', '26.47.15.10', '26.47.15.11');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(88, 'WANDK', 'Die Wandernde Kuh', 'Rita Mller', 'Sales Representative', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', '0711-020361', '0711-035428');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(89, 'WARTH', 'Wartian Herkku', 'Pirkko Koskitalo', 'Accounting Manager', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', '981-443655', '981-443655');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(90, 'WELLI', 'Wellington Importadora', 'Paula Parente', 'Sales Manager', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', '(14) 555-8122', NULL);
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(91, 'WHITC', 'White Clover Markets', 'Karl Jablonski', 'Owner', '305 - 14th Ave. S. Suite 3B', 'Seattle', 'WA', '98128', 'USA', '(206) 555-4112', '(206) 555-4115');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(92, 'WILMK', 'Wilman Kala', 'Matti Karttunen', 'Owner/Marketing Assistant', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland', '90-224 8858', '90-224 8858');
INSERT INTO `customers` (`id`, `CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`) VALUES
	(93, 'WOLZA', 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'Owner', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland', '(26) 642-7012', '(26) 642-7012');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table northwind.employees
DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `LastName` varchar(20) NOT NULL,
  `FirstName` varchar(10) NOT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `TitleOfCourtesy` varchar(25) DEFAULT NULL,
  `BirthDate` datetime DEFAULT NULL,
  `HireDate` datetime DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Region` varchar(15) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `HomePhone` varchar(24) DEFAULT NULL,
  `Extension` varchar(4) DEFAULT NULL,
  `Notes` mediumtext NOT NULL,
  `ReportsTo` int DEFAULT NULL,
  `PhotoPath` varchar(255) DEFAULT NULL,
  `Salary` float DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `pk_employees_employeeid` (`EmployeeID`) USING BTREE,
  KEY `pk_employees_employees` (`ReportsTo`) USING BTREE,
  CONSTRAINT `fk_employees_employees` FOREIGN KEY (`ReportsTo`) REFERENCES `employees` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table northwind.employees: ~9 rows (approximately)
DELETE FROM `employees`;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Notes`, `ReportsTo`, `PhotoPath`, `Salary`) VALUES
	(1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms.', '1948-12-08 00:00:00', '1992-05-01 00:00:00', '507 - 20th Ave. E.Apt. 2A', 'Seattle', 'WA', '98122', 'USA', '(206) 555-9857', '5467', 'Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.', 2, 'http://accweb/emmployees/davolio.bmp', 2954.55);
INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Notes`, `ReportsTo`, `PhotoPath`, `Salary`) VALUES
	(2, 'Fuller', 'Andrew', 'Vice President, Sales', 'Dr.', '1952-02-19 00:00:00', '1992-08-14 00:00:00', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'USA', '(206) 555-9482', '3457', 'Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.', NULL, 'http://accweb/emmployees/fuller.bmp', 2254.49);
INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Notes`, `ReportsTo`, `PhotoPath`, `Salary`) VALUES
	(3, 'Leverling', 'Janet', 'Sales Representative', 'Ms.', '1963-08-30 00:00:00', '1992-04-01 00:00:00', '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033', 'USA', '(206) 555-3412', '3355', 'Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.', 2, 'http://accweb/emmployees/leverling.bmp', 3119.15);
INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Notes`, `ReportsTo`, `PhotoPath`, `Salary`) VALUES
	(4, 'Peacock', 'Margaret', 'Sales Representative', 'Mrs.', '1937-09-19 00:00:00', '1993-05-03 00:00:00', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'USA', '(206) 555-8122', '5176', 'Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.', 2, 'http://accweb/emmployees/peacock.bmp', 1861.08);
INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Notes`, `ReportsTo`, `PhotoPath`, `Salary`) VALUES
	(5, 'Buchanan', 'Steven', 'Sales Manager', 'Mr.', '1955-03-04 00:00:00', '1993-10-17 00:00:00', '14 Garrett Hill', 'London', NULL, 'SW1 8JR', 'UK', '(71) 555-4848', '3453', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.', 2, 'http://accweb/emmployees/buchanan.bmp', 1744.21);
INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Notes`, `ReportsTo`, `PhotoPath`, `Salary`) VALUES
	(6, 'Suyama', 'Michael', 'Sales Representative', 'Mr.', '1963-07-02 00:00:00', '1993-10-17 00:00:00', 'Coventry House\r\nMiner Rd.', 'London', NULL, 'EC2 7JR', 'UK', '(71) 555-7773', '428', 'Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.', 5, 'http://accweb/emmployees/davolio.bmp', 2004.07);
INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Notes`, `ReportsTo`, `PhotoPath`, `Salary`) VALUES
	(7, 'King', 'Robert', 'Sales Representative', 'Mr.', '1960-05-29 00:00:00', '1994-01-02 00:00:00', 'Edgeham Hollow\r\nWinchester Way', 'London', NULL, 'RG1 9SP', 'UK', '(71) 555-5598', '465', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993.', 5, 'http://accweb/emmployees/davolio.bmp', 1991.55);
INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Notes`, `ReportsTo`, `PhotoPath`, `Salary`) VALUES
	(8, 'Callahan', 'Laura', 'Inside Sales Coordinator', 'Ms.', '1958-01-09 00:00:00', '1994-03-05 00:00:00', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', 'USA', '(206) 555-1189', '2344', 'Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.', 2, 'http://accweb/emmployees/davolio.bmp', 2100.5);
INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `HomePhone`, `Extension`, `Notes`, `ReportsTo`, `PhotoPath`, `Salary`) VALUES
	(9, 'Dodsworth', 'Anne', 'Sales Representative', 'Ms.', '1966-01-27 00:00:00', '1994-11-15 00:00:00', '7 Houndstooth Rd.', 'London', NULL, 'WG2 7LT', 'UK', '(71) 555-4444', '452', 'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.', 5, 'http://accweb/emmployees/davolio.bmp', 2333.33);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table northwind.employeeterritories
DROP TABLE IF EXISTS `employeeterritories`;
CREATE TABLE IF NOT EXISTS `employeeterritories` (
  `EmployeeID` int NOT NULL,
  `TerritoryID` varchar(20) NOT NULL,
  PRIMARY KEY (`EmployeeID`,`TerritoryID`),
  KEY `pk_employeeterritories_territories` (`TerritoryID`) USING BTREE,
  CONSTRAINT `pk_employeeterritories_employees` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `pk_employeeterritories_territories` FOREIGN KEY (`TerritoryID`) REFERENCES `territories` (`TerritoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table northwind.employeeterritories: ~49 rows (approximately)
DELETE FROM `employeeterritories`;
/*!40000 ALTER TABLE `employeeterritories` DISABLE KEYS */;
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(2, '01581');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(2, '01730');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(2, '01833');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(2, '02116');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(2, '02139');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(2, '02184');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(5, '02903');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(9, '03049');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(9, '03801');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(1, '06897');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(5, '07960');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(5, '08837');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(5, '10019');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(5, '10038');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(5, '11747');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(5, '14450');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(8, '19428');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(1, '19713');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(4, '20852');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(4, '27403');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(4, '27511');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(3, '30346');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(3, '31406');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(3, '32859');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(3, '33607');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(2, '40222');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(8, '44122');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(8, '45839');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(9, '48075');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(9, '48084');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(9, '48304');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(8, '53404');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(9, '55113');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(9, '55439');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(7, '60179');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(7, '60601');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(7, '80202');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(7, '80909');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(6, '85014');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(6, '85251');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(7, '90405');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(7, '94025');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(7, '94105');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(7, '95008');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(7, '95054');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(7, '95060');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(6, '98004');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(6, '98052');
INSERT INTO `employeeterritories` (`EmployeeID`, `TerritoryID`) VALUES
	(6, '98104');
/*!40000 ALTER TABLE `employeeterritories` ENABLE KEYS */;

-- Dumping structure for table northwind.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` bigint NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `OrderDate` datetime NOT NULL,
  `RequiredDate` datetime DEFAULT NULL,
  `ShippedDate` datetime DEFAULT NULL,
  `ShipVia` int DEFAULT NULL,
  `Freight` decimal(10,0) DEFAULT NULL,
  `ShipName` varchar(50) DEFAULT NULL,
  `ShipAddress` varchar(50) DEFAULT NULL,
  `ShipCity` varchar(50) DEFAULT NULL,
  `ShipRegion` varchar(50) DEFAULT NULL,
  `ShipPostalCode` varchar(50) DEFAULT NULL,
  `ShipCountry` varchar(50) DEFAULT NULL,
  `OldCustomerId` varchar(50) DEFAULT NULL,
  KEY `pk_orders_shippers` (`ShipVia`) USING BTREE,
  KEY `pk_orders_employees` (`EmployeeID`) USING BTREE,
  KEY `pk_orders_customers` (`CustomerID`) USING BTREE,
  KEY `pk_orderid` (`OrderID`) USING BTREE,
  CONSTRAINT `fk_orders_customers` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`id`),
  CONSTRAINT `fk_orders_employees` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `fk_orders_shippers` FOREIGN KEY (`ShipVia`) REFERENCES `shippers` (`ShipperID`)
) ENGINE=InnoDB AUTO_INCREMENT=11078 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table northwind.orders: ~830 rows (approximately)
DELETE FROM `orders`;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10248, 87, 5, '1996-07-04 00:00:00', '1996-08-01 00:00:00', '1996-07-16 00:00:00', 3, 32, 'Vins et alcools Chevalier', '59 rue de l-Abbaye', 'Reims', NULL, '51100', 'France', 'VINET');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10249, 79, 6, '1996-07-05 00:00:00', '1996-08-16 00:00:00', '1996-07-10 00:00:00', 1, 12, 'Toms Spezialitten', 'Luisenstr. 48', 'Mnster', NULL, '44087', 'Germany', 'TOMSP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10250, 34, 4, '1996-07-08 00:00:00', '1996-08-05 00:00:00', '1996-07-12 00:00:00', 2, 66, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10251, 86, 3, '1996-07-08 00:00:00', '1996-08-05 00:00:00', '1996-07-15 00:00:00', 1, 41, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', 'VICTE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10252, 76, 4, '1996-07-09 00:00:00', '1996-08-06 00:00:00', '1996-07-11 00:00:00', 2, 51, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10253, 34, 3, '1996-07-10 00:00:00', '1996-07-24 00:00:00', '1996-07-16 00:00:00', 2, 58, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10254, 14, 5, '1996-07-11 00:00:00', '1996-08-08 00:00:00', '1996-07-23 00:00:00', 2, 23, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland', 'CHOPS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10255, 68, 9, '1996-07-12 00:00:00', '1996-08-09 00:00:00', '1996-07-15 00:00:00', 3, 148, 'Richter Supermarkt', 'Starenweg 5', 'Genve', NULL, '1204', 'Switzerland', 'RICSU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10256, 90, 3, '1996-07-15 00:00:00', '1996-08-12 00:00:00', '1996-07-17 00:00:00', 2, 14, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', 'WELLI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10257, 35, 4, '1996-07-16 00:00:00', '1996-08-13 00:00:00', '1996-07-22 00:00:00', 3, 82, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10258, 20, 1, '1996-07-17 00:00:00', '1996-08-14 00:00:00', '1996-07-23 00:00:00', 1, 141, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10259, 13, 4, '1996-07-18 00:00:00', '1996-08-15 00:00:00', '1996-07-25 00:00:00', 3, 3, 'Centro comercial Moctezuma', 'Sierras de Granada 9993', 'Mxico D.F.', NULL, '5022', 'Mexico', 'CENTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10260, 56, 4, '1996-07-19 00:00:00', '1996-08-16 00:00:00', '1996-07-29 00:00:00', 1, 55, 'Ottilies Kseladen', 'Mehrheimerstr. 369', 'Kln', NULL, '50739', 'Germany', 'OTTIK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10261, 61, 4, '1996-07-19 00:00:00', '1996-08-16 00:00:00', '1996-07-30 00:00:00', 2, 3, 'Que Delcia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', 'QUEDE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10262, 65, 8, '1996-07-22 00:00:00', '1996-08-19 00:00:00', '1996-07-25 00:00:00', 3, 48, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10263, 20, 9, '1996-07-23 00:00:00', '1996-08-20 00:00:00', '1996-07-31 00:00:00', 3, 146, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10264, 24, 6, '1996-07-24 00:00:00', '1996-08-21 00:00:00', '1996-08-23 00:00:00', 3, 4, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10265, 7, 2, '1996-07-25 00:00:00', '1996-08-22 00:00:00', '1996-08-12 00:00:00', 1, 55, 'Blondel pre et fils', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', 'BLONP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10266, 89, 3, '1996-07-26 00:00:00', '1996-09-06 00:00:00', '1996-07-31 00:00:00', 3, 26, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10267, 25, 4, '1996-07-29 00:00:00', '1996-08-26 00:00:00', '1996-08-06 00:00:00', 1, 209, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10268, 33, 8, '1996-07-30 00:00:00', '1996-08-27 00:00:00', '1996-08-02 00:00:00', 3, 66, 'GROSELLA-Restaurante', '5 Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela', 'GROSR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10269, 91, 5, '1996-07-31 00:00:00', '1996-08-14 00:00:00', '1996-08-09 00:00:00', 1, 5, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10270, 89, 1, '1996-08-01 00:00:00', '1996-08-29 00:00:00', '1996-08-02 00:00:00', 1, 137, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10271, 75, 6, '1996-08-01 00:00:00', '1996-08-29 00:00:00', '1996-08-30 00:00:00', 2, 5, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', 'SPLIR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10272, 65, 6, '1996-08-02 00:00:00', '1996-08-30 00:00:00', '1996-08-06 00:00:00', 2, 98, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10273, 63, 3, '1996-08-05 00:00:00', '1996-09-02 00:00:00', '1996-08-12 00:00:00', 3, 76, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10274, 87, 6, '1996-08-06 00:00:00', '1996-09-03 00:00:00', '1996-08-16 00:00:00', 1, 6, 'Vins et alcools Chevalier', '59 rue de l-Abbaye', 'Reims', NULL, '51100', 'France', 'VINET');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10275, 49, 1, '1996-08-07 00:00:00', '1996-09-04 00:00:00', '1996-08-09 00:00:00', 1, 27, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', 'MAGAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10276, 80, 8, '1996-08-08 00:00:00', '1996-08-22 00:00:00', '1996-08-14 00:00:00', 3, 14, 'Tortuga Restaurante', 'Avda. Azteca 123', 'Mxico D.F.', NULL, '5033', 'Mexico', 'TORTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10277, 52, 2, '1996-08-09 00:00:00', '1996-09-06 00:00:00', '1996-08-13 00:00:00', 3, 126, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '4179', 'Germany', 'MORGK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10278, 5, 8, '1996-08-12 00:00:00', '1996-09-09 00:00:00', '1996-08-16 00:00:00', 2, 93, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10279, 44, 8, '1996-08-13 00:00:00', '1996-09-10 00:00:00', '1996-08-16 00:00:00', 2, 26, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10280, 5, 2, '1996-08-14 00:00:00', '1996-09-11 00:00:00', '1996-09-12 00:00:00', 1, 9, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10281, 69, 4, '1996-08-14 00:00:00', '1996-08-28 00:00:00', '1996-08-21 00:00:00', 1, 3, 'Romero y tomillo', 'Gran Va, 1', 'Madrid', NULL, '28001', 'Spain', 'ROMEY');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10282, 69, 4, '1996-08-15 00:00:00', '1996-09-12 00:00:00', '1996-08-21 00:00:00', 1, 13, 'Romero y tomillo', 'Gran Va, 1', 'Madrid', NULL, '28001', 'Spain', 'ROMEY');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10283, 46, 3, '1996-08-16 00:00:00', '1996-09-13 00:00:00', '1996-08-23 00:00:00', 3, 85, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10284, 44, 4, '1996-08-19 00:00:00', '1996-09-16 00:00:00', '1996-08-27 00:00:00', 1, 77, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10285, 63, 1, '1996-08-20 00:00:00', '1996-09-17 00:00:00', '1996-08-26 00:00:00', 2, 77, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10286, 63, 8, '1996-08-21 00:00:00', '1996-09-18 00:00:00', '1996-08-30 00:00:00', 3, 229, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10287, 67, 8, '1996-08-22 00:00:00', '1996-09-19 00:00:00', '1996-08-28 00:00:00', 3, 13, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 'RICAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10288, 66, 4, '1996-08-23 00:00:00', '1996-09-20 00:00:00', '1996-09-03 00:00:00', 1, 7, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10289, 11, 7, '1996-08-26 00:00:00', '1996-09-23 00:00:00', '1996-08-28 00:00:00', 3, 23, 'B-s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', 'BSBEV');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10290, 15, 8, '1996-08-27 00:00:00', '1996-09-24 00:00:00', '1996-09-03 00:00:00', 1, 80, 'Comrcio Mineiro', 'Av. dos Lusadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil', 'COMMI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10291, 61, 6, '1996-08-27 00:00:00', '1996-09-24 00:00:00', '1996-09-04 00:00:00', 2, 6, 'Que Delcia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', 'QUEDE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10292, 81, 1, '1996-08-28 00:00:00', '1996-09-25 00:00:00', '1996-09-02 00:00:00', 2, 1, 'Tradiao Hipermercados', 'Av. Ins de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil', 'TRADH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10293, 80, 1, '1996-08-29 00:00:00', '1996-09-26 00:00:00', '1996-09-11 00:00:00', 3, 21, 'Tortuga Restaurante', 'Avda. Azteca 123', 'Mxico D.F.', NULL, '5033', 'Mexico', 'TORTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10294, 65, 4, '1996-08-30 00:00:00', '1996-09-27 00:00:00', '1996-09-05 00:00:00', 2, 147, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10295, 87, 2, '1996-09-02 00:00:00', '1996-09-30 00:00:00', '1996-09-10 00:00:00', 2, 1, 'Vins et alcools Chevalier', '59 rue de l-Abbaye', 'Reims', NULL, '51100', 'France', 'VINET');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10296, 46, 6, '1996-09-03 00:00:00', '1996-10-01 00:00:00', '1996-09-11 00:00:00', 1, 0, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10297, 7, 5, '1996-09-04 00:00:00', '1996-10-16 00:00:00', '1996-09-10 00:00:00', 2, 6, 'Blondel pre et fils', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', 'BLONP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10298, 37, 6, '1996-09-05 00:00:00', '1996-10-03 00:00:00', '1996-09-11 00:00:00', 2, 168, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10299, 67, 4, '1996-09-06 00:00:00', '1996-10-04 00:00:00', '1996-09-13 00:00:00', 2, 30, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 'RICAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10300, 49, 2, '1996-09-09 00:00:00', '1996-10-07 00:00:00', '1996-09-18 00:00:00', 2, 18, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', 'MAGAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10301, 88, 8, '1996-09-09 00:00:00', '1996-10-07 00:00:00', '1996-09-17 00:00:00', 2, 45, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', 'WANDK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10302, 76, 4, '1996-09-10 00:00:00', '1996-10-08 00:00:00', '1996-10-09 00:00:00', 2, 6, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10303, 30, 7, '1996-09-11 00:00:00', '1996-10-09 00:00:00', '1996-09-18 00:00:00', 2, 108, 'Godos Cocina Tpica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', 'GODOS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10304, 80, 1, '1996-09-12 00:00:00', '1996-10-10 00:00:00', '1996-09-17 00:00:00', 2, 64, 'Tortuga Restaurante', 'Avda. Azteca 123', 'Mxico D.F.', NULL, '5033', 'Mexico', 'TORTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10305, 55, 8, '1996-09-13 00:00:00', '1996-10-11 00:00:00', '1996-10-09 00:00:00', 3, 258, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', 'OLDWO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10306, 69, 1, '1996-09-16 00:00:00', '1996-10-14 00:00:00', '1996-09-23 00:00:00', 3, 8, 'Romero y tomillo', 'Gran Va, 1', 'Madrid', NULL, '28001', 'Spain', 'ROMEY');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10307, 48, 2, '1996-09-17 00:00:00', '1996-10-15 00:00:00', '1996-09-25 00:00:00', 2, 1, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', 'LONEP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10308, 2, 7, '1996-09-18 00:00:00', '1996-10-16 00:00:00', '1996-09-24 00:00:00', 3, 2, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitucin 2222', 'Mxico D.F.', NULL, '5021', 'Mexico', 'ANATR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10309, 37, 3, '1996-09-19 00:00:00', '1996-10-17 00:00:00', '1996-10-23 00:00:00', 1, 47, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10310, 77, 8, '1996-09-20 00:00:00', '1996-10-18 00:00:00', '1996-09-27 00:00:00', 2, 18, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA', 'THEBI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10311, 18, 1, '1996-09-20 00:00:00', '1996-10-04 00:00:00', '1996-09-26 00:00:00', 3, 25, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France', 'DUMON');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10312, 88, 2, '1996-09-23 00:00:00', '1996-10-21 00:00:00', '1996-10-03 00:00:00', 2, 40, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', 'WANDK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10313, 63, 2, '1996-09-24 00:00:00', '1996-10-22 00:00:00', '1996-10-04 00:00:00', 2, 2, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10314, 65, 1, '1996-09-25 00:00:00', '1996-10-23 00:00:00', '1996-10-04 00:00:00', 2, 74, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10315, 38, 4, '1996-09-26 00:00:00', '1996-10-24 00:00:00', '1996-10-03 00:00:00', 2, 42, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 'ISLAT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10316, 65, 1, '1996-09-27 00:00:00', '1996-10-25 00:00:00', '1996-10-08 00:00:00', 3, 150, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10317, 48, 6, '1996-09-30 00:00:00', '1996-10-28 00:00:00', '1996-10-10 00:00:00', 1, 13, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', 'LONEP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10318, 38, 8, '1996-10-01 00:00:00', '1996-10-29 00:00:00', '1996-10-04 00:00:00', 2, 5, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 'ISLAT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10319, 80, 7, '1996-10-02 00:00:00', '1996-10-30 00:00:00', '1996-10-11 00:00:00', 3, 65, 'Tortuga Restaurante', 'Avda. Azteca 123', 'Mxico D.F.', NULL, '5033', 'Mexico', 'TORTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10320, 89, 5, '1996-10-03 00:00:00', '1996-10-17 00:00:00', '1996-10-18 00:00:00', 3, 35, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10321, 38, 3, '1996-10-03 00:00:00', '1996-10-31 00:00:00', '1996-10-11 00:00:00', 2, 3, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 'ISLAT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10322, 58, 7, '1996-10-04 00:00:00', '1996-11-01 00:00:00', '1996-10-23 00:00:00', 3, 0, 'Pericles Comidas clsicas', 'Calle Dr. Jorge Cash 321', 'Mxico D.F.', NULL, '5033', 'Mexico', 'PERIC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10323, 39, 4, '1996-10-07 00:00:00', '1996-11-04 00:00:00', '1996-10-14 00:00:00', 1, 5, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10324, 71, 9, '1996-10-08 00:00:00', '1996-11-05 00:00:00', '1996-10-10 00:00:00', 1, 214, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10325, 39, 1, '1996-10-09 00:00:00', '1996-10-23 00:00:00', '1996-10-14 00:00:00', 3, 65, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10326, 8, 4, '1996-10-10 00:00:00', '1996-11-07 00:00:00', '1996-10-14 00:00:00', 2, 78, 'Blido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'Spain', 'BOLID');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10327, 24, 2, '1996-10-11 00:00:00', '1996-11-08 00:00:00', '1996-10-14 00:00:00', 1, 63, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10328, 28, 4, '1996-10-14 00:00:00', '1996-11-11 00:00:00', '1996-10-17 00:00:00', 3, 87, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', 'FURIB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10329, 75, 4, '1996-10-15 00:00:00', '1996-11-26 00:00:00', '1996-10-23 00:00:00', 2, 192, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', 'SPLIR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10330, 46, 3, '1996-10-16 00:00:00', '1996-11-13 00:00:00', '1996-10-28 00:00:00', 1, 13, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10331, 9, 9, '1996-10-16 00:00:00', '1996-11-27 00:00:00', '1996-10-21 00:00:00', 1, 10, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10332, 51, 3, '1996-10-17 00:00:00', '1996-11-28 00:00:00', '1996-10-21 00:00:00', 2, 53, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10333, 89, 5, '1996-10-18 00:00:00', '1996-11-15 00:00:00', '1996-10-25 00:00:00', 3, 1, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10334, 86, 8, '1996-10-21 00:00:00', '1996-11-18 00:00:00', '1996-10-28 00:00:00', 2, 9, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', 'VICTE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10335, 37, 7, '1996-10-22 00:00:00', '1996-11-19 00:00:00', '1996-10-24 00:00:00', 2, 42, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10336, 60, 7, '1996-10-23 00:00:00', '1996-11-20 00:00:00', '1996-10-25 00:00:00', 2, 16, 'Princesa Isabel Vinhos', 'Estrada da sade n. 58', 'Lisboa', NULL, '1756', 'Portugal', 'PRINI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10337, 25, 4, '1996-10-24 00:00:00', '1996-11-21 00:00:00', '1996-10-29 00:00:00', 3, 108, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10338, 55, 4, '1996-10-25 00:00:00', '1996-11-22 00:00:00', '1996-10-29 00:00:00', 3, 84, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', 'OLDWO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10339, 51, 2, '1996-10-28 00:00:00', '1996-11-25 00:00:00', '1996-11-04 00:00:00', 2, 16, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10340, 9, 1, '1996-10-29 00:00:00', '1996-11-26 00:00:00', '1996-11-08 00:00:00', 3, 166, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10341, 73, 7, '1996-10-29 00:00:00', '1996-11-26 00:00:00', '1996-11-05 00:00:00', 3, 27, 'Simons bistro', 'Vinbltet 34', 'Kobenhavn', NULL, '1734', 'Denmark', 'SIMOB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10342, 25, 4, '1996-10-30 00:00:00', '1996-11-13 00:00:00', '1996-11-04 00:00:00', 2, 55, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10343, 44, 4, '1996-10-31 00:00:00', '1996-11-28 00:00:00', '1996-11-06 00:00:00', 1, 110, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10344, 91, 4, '1996-11-01 00:00:00', '1996-11-29 00:00:00', '1996-11-05 00:00:00', 2, 23, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10345, 63, 2, '1996-11-04 00:00:00', '1996-12-02 00:00:00', '1996-11-11 00:00:00', 2, 249, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10346, 65, 3, '1996-11-05 00:00:00', '1996-12-17 00:00:00', '1996-11-08 00:00:00', 3, 142, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10347, 21, 4, '1996-11-06 00:00:00', '1996-12-04 00:00:00', '1996-11-08 00:00:00', 3, 3, 'Familia Arquibaldo', 'Rua Ors, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil', 'FAMIA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10348, 88, 4, '1996-11-07 00:00:00', '1996-12-05 00:00:00', '1996-11-15 00:00:00', 2, 1, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', 'WANDK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10349, 75, 7, '1996-11-08 00:00:00', '1996-12-06 00:00:00', '1996-11-15 00:00:00', 1, 9, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', 'SPLIR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10350, 41, 6, '1996-11-11 00:00:00', '1996-12-09 00:00:00', '1996-12-03 00:00:00', 2, 64, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10351, 20, 1, '1996-11-11 00:00:00', '1996-12-09 00:00:00', '1996-11-20 00:00:00', 1, 162, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10352, 28, 3, '1996-11-12 00:00:00', '1996-11-26 00:00:00', '1996-11-18 00:00:00', 3, 1, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', 'FURIB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10353, 59, 7, '1996-11-13 00:00:00', '1996-12-11 00:00:00', '1996-11-25 00:00:00', 3, 361, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', 'PICCO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10354, 58, 8, '1996-11-14 00:00:00', '1996-12-12 00:00:00', '1996-11-20 00:00:00', 3, 54, 'Pericles Comidas clsicas', 'Calle Dr. Jorge Cash 321', 'Mxico D.F.', NULL, '5033', 'Mexico', 'PERIC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10355, 4, 6, '1996-11-15 00:00:00', '1996-12-13 00:00:00', '1996-11-20 00:00:00', 1, 42, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10356, 88, 6, '1996-11-18 00:00:00', '1996-12-16 00:00:00', '1996-11-27 00:00:00', 2, 37, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', 'WANDK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10357, 46, 1, '1996-11-19 00:00:00', '1996-12-17 00:00:00', '1996-12-02 00:00:00', 3, 35, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10358, 41, 5, '1996-11-20 00:00:00', '1996-12-18 00:00:00', '1996-11-27 00:00:00', 1, 20, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10359, 72, 5, '1996-11-21 00:00:00', '1996-12-19 00:00:00', '1996-11-26 00:00:00', 3, 288, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK', 'SEVES');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10360, 7, 4, '1996-11-22 00:00:00', '1996-12-20 00:00:00', '1996-12-02 00:00:00', 3, 132, 'Blondel pre et fils', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', 'BLONP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10361, 63, 1, '1996-11-22 00:00:00', '1996-12-20 00:00:00', '1996-12-03 00:00:00', 2, 183, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10362, 9, 3, '1996-11-25 00:00:00', '1996-12-23 00:00:00', '1996-11-28 00:00:00', 1, 96, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10363, 17, 4, '1996-11-26 00:00:00', '1996-12-24 00:00:00', '1996-12-04 00:00:00', 3, 31, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany', 'DRACD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10364, 19, 1, '1996-11-26 00:00:00', '1997-01-07 00:00:00', '1996-12-04 00:00:00', 1, 72, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK', 'EASTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10365, 3, 3, '1996-11-27 00:00:00', '1996-12-25 00:00:00', '1996-12-02 00:00:00', 2, 22, 'Antonio Moreno Taquera', 'Mataderos 2312', 'Mxico D.F.', NULL, '5023', 'Mexico', 'ANTON');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10366, 29, 8, '1996-11-28 00:00:00', '1997-01-09 00:00:00', '1996-12-30 00:00:00', 2, 10, 'Galera del gastronmo', 'Rambla de Catalua, 23', 'Barcelona', NULL, '8022', 'Spain', 'GALED');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10367, 83, 7, '1996-11-28 00:00:00', '1996-12-26 00:00:00', '1996-12-02 00:00:00', 3, 14, 'Vaffeljernet', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', 'VAFFE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10368, 20, 2, '1996-11-29 00:00:00', '1996-12-27 00:00:00', '1996-12-02 00:00:00', 2, 102, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10369, 75, 8, '1996-12-02 00:00:00', '1996-12-30 00:00:00', '1996-12-09 00:00:00', 2, 196, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', 'SPLIR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10370, 14, 6, '1996-12-03 00:00:00', '1996-12-31 00:00:00', '1996-12-27 00:00:00', 2, 1, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland', 'CHOPS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10371, 41, 1, '1996-12-03 00:00:00', '1996-12-31 00:00:00', '1996-12-24 00:00:00', 1, 0, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10372, 62, 5, '1996-12-04 00:00:00', '1997-01-01 00:00:00', '1996-12-09 00:00:00', 2, 891, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10373, 37, 4, '1996-12-05 00:00:00', '1997-01-02 00:00:00', '1996-12-11 00:00:00', 3, 124, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10374, 93, 1, '1996-12-05 00:00:00', '1997-01-02 00:00:00', '1996-12-09 00:00:00', 3, 4, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland', 'WOLZA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10375, 36, 3, '1996-12-06 00:00:00', '1997-01-03 00:00:00', '1996-12-09 00:00:00', 2, 20, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA', 'HUNGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10376, 51, 1, '1996-12-09 00:00:00', '1997-01-06 00:00:00', '1996-12-13 00:00:00', 2, 20, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10377, 72, 1, '1996-12-09 00:00:00', '1997-01-06 00:00:00', '1996-12-13 00:00:00', 3, 22, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK', 'SEVES');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10378, 24, 5, '1996-12-10 00:00:00', '1997-01-07 00:00:00', '1996-12-19 00:00:00', 3, 5, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10379, 61, 2, '1996-12-11 00:00:00', '1997-01-08 00:00:00', '1996-12-13 00:00:00', 1, 45, 'Que Delcia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', 'QUEDE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10380, 37, 8, '1996-12-12 00:00:00', '1997-01-09 00:00:00', '1997-01-16 00:00:00', 3, 35, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10381, 46, 3, '1996-12-12 00:00:00', '1997-01-09 00:00:00', '1996-12-13 00:00:00', 3, 8, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10382, 20, 4, '1996-12-13 00:00:00', '1997-01-10 00:00:00', '1996-12-16 00:00:00', 1, 95, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10383, 4, 8, '1996-12-16 00:00:00', '1997-01-13 00:00:00', '1996-12-18 00:00:00', 3, 34, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10384, 5, 3, '1996-12-16 00:00:00', '1997-01-13 00:00:00', '1996-12-20 00:00:00', 3, 169, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10385, 75, 1, '1996-12-17 00:00:00', '1997-01-14 00:00:00', '1996-12-23 00:00:00', 2, 31, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', 'SPLIR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10386, 21, 9, '1996-12-18 00:00:00', '1997-01-01 00:00:00', '1996-12-25 00:00:00', 3, 14, 'Familia Arquibaldo', 'Rua Ors, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil', 'FAMIA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10387, 70, 1, '1996-12-18 00:00:00', '1997-01-15 00:00:00', '1996-12-20 00:00:00', 2, 94, 'Sant Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway', 'SANTG');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10388, 72, 2, '1996-12-19 00:00:00', '1997-01-16 00:00:00', '1996-12-20 00:00:00', 1, 35, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK', 'SEVES');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10389, 10, 4, '1996-12-20 00:00:00', '1997-01-17 00:00:00', '1996-12-24 00:00:00', 2, 47, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10390, 20, 6, '1996-12-23 00:00:00', '1997-01-20 00:00:00', '1996-12-26 00:00:00', 1, 126, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10391, 17, 3, '1996-12-23 00:00:00', '1997-01-20 00:00:00', '1996-12-31 00:00:00', 3, 5, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany', 'DRACD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10392, 59, 2, '1996-12-24 00:00:00', '1997-01-21 00:00:00', '1997-01-01 00:00:00', 3, 122, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', 'PICCO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10393, 71, 1, '1996-12-25 00:00:00', '1997-01-22 00:00:00', '1997-01-03 00:00:00', 3, 127, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10394, 36, 1, '1996-12-25 00:00:00', '1997-01-22 00:00:00', '1997-01-03 00:00:00', 3, 30, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA', 'HUNGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10395, 35, 6, '1996-12-26 00:00:00', '1997-01-23 00:00:00', '1997-01-03 00:00:00', 1, 184, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10396, 25, 1, '1996-12-27 00:00:00', '1997-01-10 00:00:00', '1997-01-06 00:00:00', 3, 135, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10397, 60, 5, '1996-12-27 00:00:00', '1997-01-24 00:00:00', '1997-01-02 00:00:00', 1, 60, 'Princesa Isabel Vinhos', 'Estrada da sade n. 58', 'Lisboa', NULL, '1756', 'Portugal', 'PRINI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10398, 71, 2, '1996-12-30 00:00:00', '1997-01-27 00:00:00', '1997-01-09 00:00:00', 3, 89, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10399, 83, 8, '1996-12-31 00:00:00', '1997-01-14 00:00:00', '1997-01-08 00:00:00', 3, 27, 'Vaffeljernet', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', 'VAFFE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10400, 19, 1, '1997-01-01 00:00:00', '1997-01-29 00:00:00', '1997-01-16 00:00:00', 3, 84, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK', 'EASTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10401, 65, 1, '1997-01-01 00:00:00', '1997-01-29 00:00:00', '1997-01-10 00:00:00', 1, 13, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10402, 20, 8, '1997-01-02 00:00:00', '1997-02-13 00:00:00', '1997-01-10 00:00:00', 2, 68, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10403, 20, 4, '1997-01-03 00:00:00', '1997-01-31 00:00:00', '1997-01-09 00:00:00', 3, 74, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10404, 49, 2, '1997-01-03 00:00:00', '1997-01-31 00:00:00', '1997-01-08 00:00:00', 1, 156, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', 'MAGAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10405, 47, 1, '1997-01-06 00:00:00', '1997-02-03 00:00:00', '1997-01-22 00:00:00', 1, 35, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10406, 62, 7, '1997-01-07 00:00:00', '1997-02-18 00:00:00', '1997-01-13 00:00:00', 1, 108, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10407, 56, 2, '1997-01-07 00:00:00', '1997-02-04 00:00:00', '1997-01-30 00:00:00', 2, 91, 'Ottilies Kseladen', 'Mehrheimerstr. 369', 'Kln', NULL, '50739', 'Germany', 'OTTIK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10408, 23, 8, '1997-01-08 00:00:00', '1997-02-05 00:00:00', '1997-01-14 00:00:00', 1, 11, 'Folies gourmandes', '184, chausse de Tournai', 'Lille', NULL, '59000', 'France', 'FOLIG');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10409, 54, 3, '1997-01-09 00:00:00', '1997-02-06 00:00:00', '1997-01-14 00:00:00', 1, 30, 'Ocano Atlntico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina', 'OCEAN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10410, 10, 3, '1997-01-10 00:00:00', '1997-02-07 00:00:00', '1997-01-15 00:00:00', 3, 2, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10411, 10, 9, '1997-01-10 00:00:00', '1997-02-07 00:00:00', '1997-01-21 00:00:00', 3, 24, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10412, 89, 8, '1997-01-13 00:00:00', '1997-02-10 00:00:00', '1997-01-15 00:00:00', 2, 4, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10413, 41, 3, '1997-01-14 00:00:00', '1997-02-11 00:00:00', '1997-01-16 00:00:00', 2, 96, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10414, 21, 2, '1997-01-14 00:00:00', '1997-02-11 00:00:00', '1997-01-17 00:00:00', 3, 21, 'Familia Arquibaldo', 'Rua Ors, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil', 'FAMIA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10415, 36, 3, '1997-01-15 00:00:00', '1997-02-12 00:00:00', '1997-01-24 00:00:00', 1, 0, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA', 'HUNGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10416, 89, 8, '1997-01-16 00:00:00', '1997-02-13 00:00:00', '1997-01-27 00:00:00', 3, 23, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10417, 73, 4, '1997-01-16 00:00:00', '1997-02-13 00:00:00', '1997-01-28 00:00:00', 3, 70, 'Simons bistro', 'Vinbltet 34', 'Kobenhavn', NULL, '1734', 'Denmark', 'SIMOB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10418, 63, 4, '1997-01-17 00:00:00', '1997-02-14 00:00:00', '1997-01-24 00:00:00', 1, 18, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10419, 68, 4, '1997-01-20 00:00:00', '1997-02-17 00:00:00', '1997-01-30 00:00:00', 2, 137, 'Richter Supermarkt', 'Starenweg 5', 'Genve', NULL, '1204', 'Switzerland', 'RICSU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10420, 90, 3, '1997-01-21 00:00:00', '1997-02-18 00:00:00', '1997-01-27 00:00:00', 1, 44, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', 'WELLI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10421, 61, 8, '1997-01-21 00:00:00', '1997-03-04 00:00:00', '1997-01-27 00:00:00', 1, 99, 'Que Delcia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', 'QUEDE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10422, 27, 2, '1997-01-22 00:00:00', '1997-02-19 00:00:00', '1997-01-31 00:00:00', 1, 3, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy', 'FRANS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10423, 31, 6, '1997-01-23 00:00:00', '1997-02-06 00:00:00', '1997-02-24 00:00:00', 3, 25, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', 'GOURL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10424, 51, 7, '1997-01-23 00:00:00', '1997-02-20 00:00:00', '1997-01-27 00:00:00', 2, 371, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10425, 41, 6, '1997-01-24 00:00:00', '1997-02-21 00:00:00', '1997-02-14 00:00:00', 2, 8, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10426, 29, 4, '1997-01-27 00:00:00', '1997-02-24 00:00:00', '1997-02-06 00:00:00', 1, 19, 'Galera del gastronmo', 'Rambla de Catalua, 23', 'Barcelona', NULL, '8022', 'Spain', 'GALED');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10427, 59, 4, '1997-01-27 00:00:00', '1997-02-24 00:00:00', '1997-03-03 00:00:00', 2, 31, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', 'PICCO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10428, 66, 7, '1997-01-28 00:00:00', '1997-02-25 00:00:00', '1997-02-04 00:00:00', 1, 11, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10429, 37, 3, '1997-01-29 00:00:00', '1997-03-12 00:00:00', '1997-02-07 00:00:00', 2, 57, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10430, 20, 4, '1997-01-30 00:00:00', '1997-02-13 00:00:00', '1997-02-03 00:00:00', 1, 459, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10431, 10, 4, '1997-01-30 00:00:00', '1997-02-13 00:00:00', '1997-02-07 00:00:00', 2, 44, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10432, 75, 3, '1997-01-31 00:00:00', '1997-02-14 00:00:00', '1997-02-07 00:00:00', 2, 4, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', 'SPLIR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10433, 60, 3, '1997-02-03 00:00:00', '1997-03-03 00:00:00', '1997-03-04 00:00:00', 3, 74, 'Princesa Isabel Vinhos', 'Estrada da sade n. 58', 'Lisboa', NULL, '1756', 'Portugal', 'PRINI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10434, 24, 3, '1997-02-03 00:00:00', '1997-03-03 00:00:00', '1997-02-13 00:00:00', 2, 18, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10435, 16, 8, '1997-02-04 00:00:00', '1997-03-18 00:00:00', '1997-02-07 00:00:00', 2, 9, 'Consolidated Holdings', 'Berkeley Gardens 12 Brewery', 'London', NULL, 'WX1 6LT', 'UK', 'CONSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10436, 7, 3, '1997-02-05 00:00:00', '1997-03-05 00:00:00', '1997-02-11 00:00:00', 2, 157, 'Blondel pre et fils', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', 'BLONP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10437, 89, 8, '1997-02-05 00:00:00', '1997-03-05 00:00:00', '1997-02-12 00:00:00', 1, 20, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10438, 79, 3, '1997-02-06 00:00:00', '1997-03-06 00:00:00', '1997-02-14 00:00:00', 2, 8, 'Toms Spezialitten', 'Luisenstr. 48', 'Mnster', NULL, '44087', 'Germany', 'TOMSP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10439, 51, 6, '1997-02-07 00:00:00', '1997-03-07 00:00:00', '1997-02-10 00:00:00', 3, 4, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10440, 71, 4, '1997-02-10 00:00:00', '1997-03-10 00:00:00', '1997-02-28 00:00:00', 2, 87, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10441, 55, 3, '1997-02-10 00:00:00', '1997-03-24 00:00:00', '1997-03-14 00:00:00', 2, 73, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', 'OLDWO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10442, 20, 3, '1997-02-11 00:00:00', '1997-03-11 00:00:00', '1997-02-18 00:00:00', 2, 48, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10443, 66, 8, '1997-02-12 00:00:00', '1997-03-12 00:00:00', '1997-02-14 00:00:00', 1, 14, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10444, 5, 3, '1997-02-12 00:00:00', '1997-03-12 00:00:00', '1997-02-21 00:00:00', 3, 4, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10445, 5, 3, '1997-02-13 00:00:00', '1997-03-13 00:00:00', '1997-02-20 00:00:00', 1, 9, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10446, 79, 6, '1997-02-14 00:00:00', '1997-03-14 00:00:00', '1997-02-19 00:00:00', 1, 15, 'Toms Spezialitten', 'Luisenstr. 48', 'Mnster', NULL, '44087', 'Germany', 'TOMSP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10447, 67, 4, '1997-02-14 00:00:00', '1997-03-14 00:00:00', '1997-03-07 00:00:00', 2, 69, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 'RICAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10448, 64, 4, '1997-02-17 00:00:00', '1997-03-17 00:00:00', '1997-02-24 00:00:00', 2, 39, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina', 'RANCH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10449, 7, 3, '1997-02-18 00:00:00', '1997-03-18 00:00:00', '1997-02-27 00:00:00', 2, 53, 'Blondel pre et fils', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', 'BLONP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10450, 86, 8, '1997-02-19 00:00:00', '1997-03-19 00:00:00', '1997-03-11 00:00:00', 2, 7, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', 'VICTE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10451, 63, 4, '1997-02-19 00:00:00', '1997-03-05 00:00:00', '1997-03-12 00:00:00', 3, 189, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10452, 71, 8, '1997-02-20 00:00:00', '1997-03-20 00:00:00', '1997-02-26 00:00:00', 1, 140, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10453, 4, 1, '1997-02-21 00:00:00', '1997-03-21 00:00:00', '1997-02-26 00:00:00', 2, 25, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10454, 41, 4, '1997-02-21 00:00:00', '1997-03-21 00:00:00', '1997-02-25 00:00:00', 3, 3, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10455, 89, 8, '1997-02-24 00:00:00', '1997-04-07 00:00:00', '1997-03-03 00:00:00', 2, 180, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10456, 39, 8, '1997-02-25 00:00:00', '1997-04-08 00:00:00', '1997-02-28 00:00:00', 2, 8, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10457, 39, 2, '1997-02-25 00:00:00', '1997-03-25 00:00:00', '1997-03-03 00:00:00', 1, 12, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10458, 76, 7, '1997-02-26 00:00:00', '1997-03-26 00:00:00', '1997-03-04 00:00:00', 3, 147, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10459, 86, 4, '1997-02-27 00:00:00', '1997-03-27 00:00:00', '1997-02-28 00:00:00', 2, 25, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', 'VICTE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10460, 24, 8, '1997-02-28 00:00:00', '1997-03-28 00:00:00', '1997-03-03 00:00:00', 1, 16, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10461, 46, 1, '1997-02-28 00:00:00', '1997-03-28 00:00:00', '1997-03-05 00:00:00', 3, 149, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10462, 16, 2, '1997-03-03 00:00:00', '1997-03-31 00:00:00', '1997-03-18 00:00:00', 1, 6, 'Consolidated Holdings', 'Berkeley Gardens 12 Brewery', 'London', NULL, 'WX1 6LT', 'UK', 'CONSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10463, 76, 5, '1997-03-04 00:00:00', '1997-04-01 00:00:00', '1997-03-06 00:00:00', 3, 15, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10464, 28, 4, '1997-03-04 00:00:00', '1997-04-01 00:00:00', '1997-03-14 00:00:00', 2, 89, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', 'FURIB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10465, 83, 1, '1997-03-05 00:00:00', '1997-04-02 00:00:00', '1997-03-14 00:00:00', 3, 145, 'Vaffeljernet', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', 'VAFFE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10466, 15, 4, '1997-03-06 00:00:00', '1997-04-03 00:00:00', '1997-03-13 00:00:00', 1, 12, 'Comrcio Mineiro', 'Av. dos Lusadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil', 'COMMI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10467, 49, 8, '1997-03-06 00:00:00', '1997-04-03 00:00:00', '1997-03-11 00:00:00', 2, 5, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', 'MAGAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10468, 39, 3, '1997-03-07 00:00:00', '1997-04-04 00:00:00', '1997-03-12 00:00:00', 3, 44, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10469, 91, 1, '1997-03-10 00:00:00', '1997-04-07 00:00:00', '1997-03-14 00:00:00', 1, 60, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10470, 9, 4, '1997-03-11 00:00:00', '1997-04-08 00:00:00', '1997-03-14 00:00:00', 2, 65, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10471, 11, 2, '1997-03-11 00:00:00', '1997-04-08 00:00:00', '1997-03-18 00:00:00', 3, 46, 'B-s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', 'BSBEV');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10472, 72, 8, '1997-03-12 00:00:00', '1997-04-09 00:00:00', '1997-03-19 00:00:00', 1, 4, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK', 'SEVES');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10473, 38, 1, '1997-03-13 00:00:00', '1997-03-27 00:00:00', '1997-03-21 00:00:00', 3, 16, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 'ISLAT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10474, 58, 5, '1997-03-13 00:00:00', '1997-04-10 00:00:00', '1997-03-21 00:00:00', 2, 83, 'Pericles Comidas clsicas', 'Calle Dr. Jorge Cash 321', 'Mxico D.F.', NULL, '5033', 'Mexico', 'PERIC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10475, 76, 9, '1997-03-14 00:00:00', '1997-04-11 00:00:00', '1997-04-04 00:00:00', 1, 69, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10476, 35, 8, '1997-03-17 00:00:00', '1997-04-14 00:00:00', '1997-03-24 00:00:00', 3, 4, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10477, 60, 5, '1997-03-17 00:00:00', '1997-04-14 00:00:00', '1997-03-25 00:00:00', 2, 13, 'Princesa Isabel Vinhos', 'Estrada da sade n. 58', 'Lisboa', NULL, '1756', 'Portugal', 'PRINI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10478, 86, 2, '1997-03-18 00:00:00', '1997-04-01 00:00:00', '1997-03-26 00:00:00', 3, 5, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', 'VICTE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10479, 65, 3, '1997-03-19 00:00:00', '1997-04-16 00:00:00', '1997-03-21 00:00:00', 3, 709, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10480, 23, 6, '1997-03-20 00:00:00', '1997-04-17 00:00:00', '1997-03-24 00:00:00', 2, 1, 'Folies gourmandes', '184, chausse de Tournai', 'Lille', NULL, '59000', 'France', 'FOLIG');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10481, 67, 8, '1997-03-20 00:00:00', '1997-04-17 00:00:00', '1997-03-25 00:00:00', 2, 64, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 'RICAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10482, 43, 1, '1997-03-21 00:00:00', '1997-04-18 00:00:00', '1997-04-10 00:00:00', 3, 7, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA', 'LAZYK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10483, 91, 7, '1997-03-24 00:00:00', '1997-04-21 00:00:00', '1997-04-25 00:00:00', 2, 15, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10484, 11, 3, '1997-03-24 00:00:00', '1997-04-21 00:00:00', '1997-04-01 00:00:00', 3, 7, 'B-s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', 'BSBEV');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10485, 47, 4, '1997-03-25 00:00:00', '1997-04-08 00:00:00', '1997-03-31 00:00:00', 2, 64, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10486, 35, 1, '1997-03-26 00:00:00', '1997-04-23 00:00:00', '1997-04-02 00:00:00', 2, 31, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10487, 62, 2, '1997-03-26 00:00:00', '1997-04-23 00:00:00', '1997-03-28 00:00:00', 2, 71, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10488, 25, 8, '1997-03-27 00:00:00', '1997-04-24 00:00:00', '1997-04-02 00:00:00', 2, 5, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10489, 59, 6, '1997-03-28 00:00:00', '1997-04-25 00:00:00', '1997-04-09 00:00:00', 2, 5, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', 'PICCO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10490, 35, 7, '1997-03-31 00:00:00', '1997-04-28 00:00:00', '1997-04-03 00:00:00', 2, 210, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10491, 28, 8, '1997-03-31 00:00:00', '1997-04-28 00:00:00', '1997-04-08 00:00:00', 3, 17, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', 'FURIB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10492, 10, 3, '1997-04-01 00:00:00', '1997-04-29 00:00:00', '1997-04-11 00:00:00', 1, 63, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10493, 41, 4, '1997-04-02 00:00:00', '1997-04-30 00:00:00', '1997-04-10 00:00:00', 3, 11, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10494, 15, 4, '1997-04-02 00:00:00', '1997-04-30 00:00:00', '1997-04-09 00:00:00', 2, 66, 'Comrcio Mineiro', 'Av. dos Lusadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil', 'COMMI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10495, 42, 3, '1997-04-03 00:00:00', '1997-05-01 00:00:00', '1997-04-11 00:00:00', 3, 5, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada', 'LAUGB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10496, 81, 7, '1997-04-04 00:00:00', '1997-05-02 00:00:00', '1997-04-07 00:00:00', 2, 47, 'Tradiao Hipermercados', 'Av. Ins de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil', 'TRADH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10497, 44, 7, '1997-04-04 00:00:00', '1997-05-02 00:00:00', '1997-04-07 00:00:00', 1, 36, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10498, 35, 8, '1997-04-07 00:00:00', '1997-05-05 00:00:00', '1997-04-11 00:00:00', 2, 30, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10499, 46, 4, '1997-04-08 00:00:00', '1997-05-06 00:00:00', '1997-04-16 00:00:00', 2, 102, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10500, 41, 6, '1997-04-09 00:00:00', '1997-05-07 00:00:00', '1997-04-17 00:00:00', 1, 43, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10501, 6, 9, '1997-04-09 00:00:00', '1997-05-07 00:00:00', '1997-04-16 00:00:00', 3, 9, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany', 'BLAUS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10502, 58, 2, '1997-04-10 00:00:00', '1997-05-08 00:00:00', '1997-04-29 00:00:00', 1, 69, 'Pericles Comidas clsicas', 'Calle Dr. Jorge Cash 321', 'Mxico D.F.', NULL, '5033', 'Mexico', 'PERIC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10503, 37, 6, '1997-04-11 00:00:00', '1997-05-09 00:00:00', '1997-04-16 00:00:00', 2, 17, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10504, 91, 4, '1997-04-11 00:00:00', '1997-05-09 00:00:00', '1997-04-18 00:00:00', 3, 59, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10505, 51, 3, '1997-04-14 00:00:00', '1997-05-12 00:00:00', '1997-04-21 00:00:00', 3, 7, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10506, 39, 9, '1997-04-15 00:00:00', '1997-05-13 00:00:00', '1997-05-02 00:00:00', 2, 21, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10507, 3, 7, '1997-04-15 00:00:00', '1997-05-13 00:00:00', '1997-04-22 00:00:00', 1, 47, 'Antonio Moreno Taquera', 'Mataderos 2312', 'Mxico D.F.', NULL, '5023', 'Mexico', 'ANTON');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10508, 56, 1, '1997-04-16 00:00:00', '1997-05-14 00:00:00', '1997-05-13 00:00:00', 2, 5, 'Ottilies Kseladen', 'Mehrheimerstr. 369', 'Kln', NULL, '50739', 'Germany', 'OTTIK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10509, 6, 4, '1997-04-17 00:00:00', '1997-05-15 00:00:00', '1997-04-29 00:00:00', 1, 0, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany', 'BLAUS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10510, 71, 6, '1997-04-18 00:00:00', '1997-05-16 00:00:00', '1997-04-28 00:00:00', 3, 368, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10511, 9, 4, '1997-04-18 00:00:00', '1997-05-16 00:00:00', '1997-04-21 00:00:00', 3, 351, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10512, 21, 7, '1997-04-21 00:00:00', '1997-05-19 00:00:00', '1997-04-24 00:00:00', 2, 4, 'Familia Arquibaldo', 'Rua Ors, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil', 'FAMIA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10513, 88, 7, '1997-04-22 00:00:00', '1997-06-03 00:00:00', '1997-04-28 00:00:00', 1, 106, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', 'WANDK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10514, 20, 3, '1997-04-22 00:00:00', '1997-05-20 00:00:00', '1997-05-16 00:00:00', 2, 790, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10515, 63, 2, '1997-04-23 00:00:00', '1997-05-07 00:00:00', '1997-05-23 00:00:00', 1, 204, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10516, 37, 2, '1997-04-24 00:00:00', '1997-05-22 00:00:00', '1997-05-01 00:00:00', 3, 63, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10517, 53, 3, '1997-04-24 00:00:00', '1997-05-22 00:00:00', '1997-04-29 00:00:00', 3, 32, 'North/South', 'South House 300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'UK', 'NORTS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10518, 80, 4, '1997-04-25 00:00:00', '1997-05-09 00:00:00', '1997-05-05 00:00:00', 2, 218, 'Tortuga Restaurante', 'Avda. Azteca 123', 'Mxico D.F.', NULL, '5033', 'Mexico', 'TORTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10519, 14, 6, '1997-04-28 00:00:00', '1997-05-26 00:00:00', '1997-05-01 00:00:00', 3, 92, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland', 'CHOPS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10520, 70, 7, '1997-04-29 00:00:00', '1997-05-27 00:00:00', '1997-05-01 00:00:00', 1, 13, 'Sant Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway', 'SANTG');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10521, 12, 8, '1997-04-29 00:00:00', '1997-05-27 00:00:00', '1997-05-02 00:00:00', 2, 17, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina', 'CACTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10522, 44, 4, '1997-04-30 00:00:00', '1997-05-28 00:00:00', '1997-05-06 00:00:00', 1, 45, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10523, 72, 7, '1997-05-01 00:00:00', '1997-05-29 00:00:00', '1997-05-30 00:00:00', 2, 78, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK', 'SEVES');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10524, 5, 1, '1997-05-01 00:00:00', '1997-05-29 00:00:00', '1997-05-07 00:00:00', 2, 245, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10525, 9, 1, '1997-05-02 00:00:00', '1997-05-30 00:00:00', '1997-05-23 00:00:00', 2, 11, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10526, 89, 4, '1997-05-05 00:00:00', '1997-06-02 00:00:00', '1997-05-15 00:00:00', 2, 59, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10527, 63, 7, '1997-05-05 00:00:00', '1997-06-02 00:00:00', '1997-05-07 00:00:00', 1, 42, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10528, 32, 6, '1997-05-06 00:00:00', '1997-05-20 00:00:00', '1997-05-09 00:00:00', 2, 3, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 'GREAL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10529, 50, 5, '1997-05-07 00:00:00', '1997-06-04 00:00:00', '1997-05-09 00:00:00', 2, 67, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium', 'MAISD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10530, 59, 3, '1997-05-08 00:00:00', '1997-06-05 00:00:00', '1997-05-12 00:00:00', 2, 339, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', 'PICCO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10531, 54, 7, '1997-05-08 00:00:00', '1997-06-05 00:00:00', '1997-05-19 00:00:00', 1, 8, 'Ocano Atlntico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina', 'OCEAN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10532, 19, 7, '1997-05-09 00:00:00', '1997-06-06 00:00:00', '1997-05-12 00:00:00', 3, 74, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK', 'EASTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10533, 24, 8, '1997-05-12 00:00:00', '1997-06-09 00:00:00', '1997-05-22 00:00:00', 1, 188, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10534, 44, 8, '1997-05-12 00:00:00', '1997-06-09 00:00:00', '1997-05-14 00:00:00', 2, 28, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10535, 3, 4, '1997-05-13 00:00:00', '1997-06-10 00:00:00', '1997-05-21 00:00:00', 1, 16, 'Antonio Moreno Taquera', 'Mataderos 2312', 'Mxico D.F.', NULL, '5023', 'Mexico', 'ANTON');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10536, 44, 3, '1997-05-14 00:00:00', '1997-06-11 00:00:00', '1997-06-06 00:00:00', 2, 59, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10537, 68, 1, '1997-05-14 00:00:00', '1997-05-28 00:00:00', '1997-05-19 00:00:00', 1, 79, 'Richter Supermarkt', 'Starenweg 5', 'Genve', NULL, '1204', 'Switzerland', 'RICSU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10538, 11, 9, '1997-05-15 00:00:00', '1997-06-12 00:00:00', '1997-05-16 00:00:00', 3, 5, 'B-s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', 'BSBEV');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10539, 11, 6, '1997-05-16 00:00:00', '1997-06-13 00:00:00', '1997-05-23 00:00:00', 3, 12, 'B-s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', 'BSBEV');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10540, 63, 3, '1997-05-19 00:00:00', '1997-06-16 00:00:00', '1997-06-13 00:00:00', 3, 1008, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10541, 34, 2, '1997-05-19 00:00:00', '1997-06-16 00:00:00', '1997-05-29 00:00:00', 1, 69, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10542, 39, 1, '1997-05-20 00:00:00', '1997-06-17 00:00:00', '1997-05-26 00:00:00', 3, 11, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10543, 46, 8, '1997-05-21 00:00:00', '1997-06-18 00:00:00', '1997-05-23 00:00:00', 2, 48, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10544, 48, 4, '1997-05-21 00:00:00', '1997-06-18 00:00:00', '1997-05-30 00:00:00', 1, 25, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', 'LONEP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10545, 43, 8, '1997-05-22 00:00:00', '1997-06-19 00:00:00', '1997-06-26 00:00:00', 2, 12, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA', 'LAZYK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10546, 86, 1, '1997-05-23 00:00:00', '1997-06-20 00:00:00', '1997-05-27 00:00:00', 3, 195, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', 'VICTE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10547, 72, 3, '1997-05-23 00:00:00', '1997-06-20 00:00:00', '1997-06-02 00:00:00', 2, 178, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK', 'SEVES');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10548, 79, 3, '1997-05-26 00:00:00', '1997-06-23 00:00:00', '1997-06-02 00:00:00', 2, 1, 'Toms Spezialitten', 'Luisenstr. 48', 'Mnster', NULL, '44087', 'Germany', 'TOMSP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10549, 63, 5, '1997-05-27 00:00:00', '1997-06-10 00:00:00', '1997-05-30 00:00:00', 1, 171, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10550, 30, 7, '1997-05-28 00:00:00', '1997-06-25 00:00:00', '1997-06-06 00:00:00', 3, 4, 'Godos Cocina Tpica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', 'GODOS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10551, 28, 4, '1997-05-28 00:00:00', '1997-07-09 00:00:00', '1997-06-06 00:00:00', 3, 73, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', 'FURIB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10552, 35, 2, '1997-05-29 00:00:00', '1997-06-26 00:00:00', '1997-06-05 00:00:00', 1, 83, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10553, 89, 2, '1997-05-30 00:00:00', '1997-06-27 00:00:00', '1997-06-03 00:00:00', 2, 149, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10554, 56, 4, '1997-05-30 00:00:00', '1997-06-27 00:00:00', '1997-06-05 00:00:00', 3, 121, 'Ottilies Kseladen', 'Mehrheimerstr. 369', 'Kln', NULL, '50739', 'Germany', 'OTTIK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10555, 71, 6, '1997-06-02 00:00:00', '1997-06-30 00:00:00', '1997-06-04 00:00:00', 3, 252, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10556, 73, 2, '1997-06-03 00:00:00', '1997-07-15 00:00:00', '1997-06-13 00:00:00', 1, 10, 'Simons bistro', 'Vinbltet 34', 'Kobenhavn', NULL, '1734', 'Denmark', 'SIMOB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10557, 44, 9, '1997-06-03 00:00:00', '1997-06-17 00:00:00', '1997-06-06 00:00:00', 2, 97, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10558, 4, 1, '1997-06-04 00:00:00', '1997-07-02 00:00:00', '1997-06-10 00:00:00', 2, 73, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10559, 7, 6, '1997-06-05 00:00:00', '1997-07-03 00:00:00', '1997-06-13 00:00:00', 1, 8, 'Blondel pre et fils', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', 'BLONP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10560, 25, 8, '1997-06-06 00:00:00', '1997-07-04 00:00:00', '1997-06-09 00:00:00', 1, 37, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10561, 24, 2, '1997-06-06 00:00:00', '1997-07-04 00:00:00', '1997-06-09 00:00:00', 2, 242, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10562, 66, 1, '1997-06-09 00:00:00', '1997-07-07 00:00:00', '1997-06-12 00:00:00', 1, 23, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10563, 67, 2, '1997-06-10 00:00:00', '1997-07-22 00:00:00', '1997-06-24 00:00:00', 2, 60, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 'RICAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10564, 65, 4, '1997-06-10 00:00:00', '1997-07-08 00:00:00', '1997-06-16 00:00:00', 3, 14, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10565, 51, 8, '1997-06-11 00:00:00', '1997-07-09 00:00:00', '1997-06-18 00:00:00', 2, 7, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10566, 7, 9, '1997-06-12 00:00:00', '1997-07-10 00:00:00', '1997-06-18 00:00:00', 1, 88, 'Blondel pre et fils', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', 'BLONP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10567, 37, 1, '1997-06-12 00:00:00', '1997-07-10 00:00:00', '1997-06-17 00:00:00', 1, 34, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10568, 29, 3, '1997-06-13 00:00:00', '1997-07-11 00:00:00', '1997-07-09 00:00:00', 3, 7, 'Galera del gastronmo', 'Rambla de Catalua, 23', 'Barcelona', NULL, '8022', 'Spain', 'GALED');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10569, 65, 5, '1997-06-16 00:00:00', '1997-07-14 00:00:00', '1997-07-11 00:00:00', 1, 59, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10570, 51, 3, '1997-06-17 00:00:00', '1997-07-15 00:00:00', '1997-06-19 00:00:00', 3, 189, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10571, 20, 8, '1997-06-17 00:00:00', '1997-07-29 00:00:00', '1997-07-04 00:00:00', 3, 26, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10572, 5, 3, '1997-06-18 00:00:00', '1997-07-16 00:00:00', '1997-06-25 00:00:00', 2, 116, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10573, 3, 7, '1997-06-19 00:00:00', '1997-07-17 00:00:00', '1997-06-20 00:00:00', 3, 85, 'Antonio Moreno Taquera', 'Mataderos 2312', 'Mxico D.F.', NULL, '5023', 'Mexico', 'ANTON');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10574, 82, 4, '1997-06-19 00:00:00', '1997-07-17 00:00:00', '1997-06-30 00:00:00', 2, 38, 'Trail-s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA', 'TRAIH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10575, 52, 5, '1997-06-20 00:00:00', '1997-07-04 00:00:00', '1997-06-30 00:00:00', 1, 127, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '4179', 'Germany', 'MORGK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10576, 80, 3, '1997-06-23 00:00:00', '1997-07-07 00:00:00', '1997-06-30 00:00:00', 3, 19, 'Tortuga Restaurante', 'Avda. Azteca 123', 'Mxico D.F.', NULL, '5033', 'Mexico', 'TORTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10577, 82, 9, '1997-06-23 00:00:00', '1997-08-04 00:00:00', '1997-06-30 00:00:00', 2, 25, 'Trail-s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA', 'TRAIH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10578, 11, 4, '1997-06-24 00:00:00', '1997-07-22 00:00:00', '1997-07-25 00:00:00', 3, 30, 'B-s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', 'BSBEV');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10579, 45, 1, '1997-06-25 00:00:00', '1997-07-23 00:00:00', '1997-07-04 00:00:00', 2, 14, 'Let-s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA', 'LETSS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10580, 56, 4, '1997-06-26 00:00:00', '1997-07-24 00:00:00', '1997-07-01 00:00:00', 3, 76, 'Ottilies Kseladen', 'Mehrheimerstr. 369', 'Kln', NULL, '50739', 'Germany', 'OTTIK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10581, 21, 3, '1997-06-26 00:00:00', '1997-07-24 00:00:00', '1997-07-02 00:00:00', 1, 3, 'Familia Arquibaldo', 'Rua Ors, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil', 'FAMIA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10582, 6, 3, '1997-06-27 00:00:00', '1997-07-25 00:00:00', '1997-07-14 00:00:00', 2, 28, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany', 'BLAUS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10583, 89, 2, '1997-06-30 00:00:00', '1997-07-28 00:00:00', '1997-07-04 00:00:00', 2, 7, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10584, 7, 4, '1997-06-30 00:00:00', '1997-07-28 00:00:00', '1997-07-04 00:00:00', 1, 59, 'Blondel pre et fils', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', 'BLONP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10585, 90, 7, '1997-07-01 00:00:00', '1997-07-29 00:00:00', '1997-07-10 00:00:00', 1, 13, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', 'WELLI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10586, 66, 9, '1997-07-02 00:00:00', '1997-07-30 00:00:00', '1997-07-09 00:00:00', 1, 0, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10587, 61, 1, '1997-07-02 00:00:00', '1997-07-30 00:00:00', '1997-07-09 00:00:00', 1, 63, 'Que Delcia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', 'QUEDE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10588, 63, 2, '1997-07-03 00:00:00', '1997-07-31 00:00:00', '1997-07-10 00:00:00', 3, 195, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10589, 32, 8, '1997-07-04 00:00:00', '1997-08-01 00:00:00', '1997-07-14 00:00:00', 2, 4, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 'GREAL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10590, 51, 4, '1997-07-07 00:00:00', '1997-08-04 00:00:00', '1997-07-14 00:00:00', 3, 45, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10591, 83, 1, '1997-07-07 00:00:00', '1997-07-21 00:00:00', '1997-07-16 00:00:00', 1, 56, 'Vaffeljernet', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', 'VAFFE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10592, 44, 3, '1997-07-08 00:00:00', '1997-08-05 00:00:00', '1997-07-16 00:00:00', 1, 32, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10593, 44, 7, '1997-07-09 00:00:00', '1997-08-06 00:00:00', '1997-08-13 00:00:00', 2, 174, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10594, 55, 3, '1997-07-09 00:00:00', '1997-08-06 00:00:00', '1997-07-16 00:00:00', 2, 5, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', 'OLDWO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10595, 20, 2, '1997-07-10 00:00:00', '1997-08-07 00:00:00', '1997-07-14 00:00:00', 1, 97, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10596, 91, 8, '1997-07-11 00:00:00', '1997-08-08 00:00:00', '1997-08-12 00:00:00', 1, 16, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10597, 59, 7, '1997-07-11 00:00:00', '1997-08-08 00:00:00', '1997-07-18 00:00:00', 3, 35, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', 'PICCO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10598, 65, 1, '1997-07-14 00:00:00', '1997-08-11 00:00:00', '1997-07-18 00:00:00', 3, 44, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10599, 11, 6, '1997-07-15 00:00:00', '1997-08-26 00:00:00', '1997-07-21 00:00:00', 3, 30, 'B-s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', 'BSBEV');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10600, 36, 4, '1997-07-16 00:00:00', '1997-08-13 00:00:00', '1997-07-21 00:00:00', 1, 45, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA', 'HUNGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10601, 35, 7, '1997-07-16 00:00:00', '1997-08-27 00:00:00', '1997-07-22 00:00:00', 1, 58, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10602, 83, 8, '1997-07-17 00:00:00', '1997-08-14 00:00:00', '1997-07-22 00:00:00', 2, 3, 'Vaffeljernet', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', 'VAFFE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10603, 71, 8, '1997-07-18 00:00:00', '1997-08-15 00:00:00', '1997-08-08 00:00:00', 2, 49, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10604, 28, 1, '1997-07-18 00:00:00', '1997-08-15 00:00:00', '1997-07-29 00:00:00', 1, 7, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', 'FURIB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10605, 51, 1, '1997-07-21 00:00:00', '1997-08-18 00:00:00', '1997-07-29 00:00:00', 2, 379, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10606, 81, 4, '1997-07-22 00:00:00', '1997-08-19 00:00:00', '1997-07-31 00:00:00', 3, 79, 'Tradiao Hipermercados', 'Av. Ins de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil', 'TRADH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10607, 71, 5, '1997-07-22 00:00:00', '1997-08-19 00:00:00', '1997-07-25 00:00:00', 1, 200, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10608, 79, 4, '1997-07-23 00:00:00', '1997-08-20 00:00:00', '1997-08-01 00:00:00', 2, 28, 'Toms Spezialitten', 'Luisenstr. 48', 'Mnster', NULL, '44087', 'Germany', 'TOMSP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10609, 18, 7, '1997-07-24 00:00:00', '1997-08-21 00:00:00', '1997-07-30 00:00:00', 2, 2, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France', 'DUMON');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10610, 41, 8, '1997-07-25 00:00:00', '1997-08-22 00:00:00', '1997-08-06 00:00:00', 1, 27, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10611, 93, 6, '1997-07-25 00:00:00', '1997-08-22 00:00:00', '1997-08-01 00:00:00', 2, 81, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland', 'WOLZA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10612, 71, 1, '1997-07-28 00:00:00', '1997-08-25 00:00:00', '1997-08-01 00:00:00', 2, 544, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10613, 35, 4, '1997-07-29 00:00:00', '1997-08-26 00:00:00', '1997-08-01 00:00:00', 2, 8, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10614, 6, 8, '1997-07-29 00:00:00', '1997-08-26 00:00:00', '1997-08-01 00:00:00', 3, 2, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany', 'BLAUS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10615, 92, 2, '1997-07-30 00:00:00', '1997-08-27 00:00:00', '1997-08-06 00:00:00', 3, 1, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland', 'WILMK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10616, 32, 1, '1997-07-31 00:00:00', '1997-08-28 00:00:00', '1997-08-05 00:00:00', 2, 117, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 'GREAL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10617, 32, 4, '1997-07-31 00:00:00', '1997-08-28 00:00:00', '1997-08-04 00:00:00', 2, 19, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 'GREAL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10618, 51, 1, '1997-08-01 00:00:00', '1997-09-12 00:00:00', '1997-08-08 00:00:00', 1, 155, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10619, 51, 3, '1997-08-04 00:00:00', '1997-09-01 00:00:00', '1997-08-07 00:00:00', 3, 91, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10620, 42, 2, '1997-08-05 00:00:00', '1997-09-02 00:00:00', '1997-08-14 00:00:00', 3, 1, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada', 'LAUGB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10621, 38, 4, '1997-08-05 00:00:00', '1997-09-02 00:00:00', '1997-08-11 00:00:00', 2, 24, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 'ISLAT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10622, 67, 4, '1997-08-06 00:00:00', '1997-09-03 00:00:00', '1997-08-11 00:00:00', 3, 51, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 'RICAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10623, 25, 8, '1997-08-07 00:00:00', '1997-09-04 00:00:00', '1997-08-12 00:00:00', 2, 97, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10624, 78, 4, '1997-08-07 00:00:00', '1997-09-04 00:00:00', '1997-08-19 00:00:00', 2, 95, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA', 'THECR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10625, 2, 3, '1997-08-08 00:00:00', '1997-09-05 00:00:00', '1997-08-14 00:00:00', 1, 44, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitucin 2222', 'Mxico D.F.', NULL, '5021', 'Mexico', 'ANATR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10626, 5, 1, '1997-08-11 00:00:00', '1997-09-08 00:00:00', '1997-08-20 00:00:00', 2, 139, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10627, 71, 8, '1997-08-11 00:00:00', '1997-09-22 00:00:00', '1997-08-21 00:00:00', 3, 107, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10628, 7, 4, '1997-08-12 00:00:00', '1997-09-09 00:00:00', '1997-08-20 00:00:00', 3, 30, 'Blondel pre et fils', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', 'BLONP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10629, 30, 4, '1997-08-12 00:00:00', '1997-09-09 00:00:00', '1997-08-20 00:00:00', 3, 85, 'Godos Cocina Tpica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', 'GODOS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10630, 39, 1, '1997-08-13 00:00:00', '1997-09-10 00:00:00', '1997-08-19 00:00:00', 2, 32, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10631, 41, 8, '1997-08-14 00:00:00', '1997-09-11 00:00:00', '1997-08-15 00:00:00', 1, 1, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10632, 88, 8, '1997-08-14 00:00:00', '1997-09-11 00:00:00', '1997-08-19 00:00:00', 1, 41, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', 'WANDK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10633, 20, 7, '1997-08-15 00:00:00', '1997-09-12 00:00:00', '1997-08-18 00:00:00', 3, 478, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10634, 23, 4, '1997-08-15 00:00:00', '1997-09-12 00:00:00', '1997-08-21 00:00:00', 3, 487, 'Folies gourmandes', '184, chausse de Tournai', 'Lille', NULL, '59000', 'France', 'FOLIG');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10635, 49, 8, '1997-08-18 00:00:00', '1997-09-15 00:00:00', '1997-08-21 00:00:00', 3, 47, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', 'MAGAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10636, 89, 4, '1997-08-19 00:00:00', '1997-09-16 00:00:00', '1997-08-26 00:00:00', 1, 1, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10637, 62, 6, '1997-08-19 00:00:00', '1997-09-16 00:00:00', '1997-08-26 00:00:00', 1, 201, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10638, 47, 3, '1997-08-20 00:00:00', '1997-09-17 00:00:00', '1997-09-01 00:00:00', 1, 158, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10639, 70, 7, '1997-08-20 00:00:00', '1997-09-17 00:00:00', '1997-08-27 00:00:00', 3, 39, 'Sant Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway', 'SANTG');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10640, 88, 4, '1997-08-21 00:00:00', '1997-09-18 00:00:00', '1997-08-28 00:00:00', 1, 24, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', 'WANDK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10641, 35, 4, '1997-08-22 00:00:00', '1997-09-19 00:00:00', '1997-08-26 00:00:00', 2, 180, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10642, 73, 7, '1997-08-22 00:00:00', '1997-09-19 00:00:00', '1997-09-05 00:00:00', 3, 42, 'Simons bistro', 'Vinbltet 34', 'Kobenhavn', NULL, '1734', 'Denmark', 'SIMOB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10643, 1, 6, '1997-08-25 00:00:00', '1997-09-22 00:00:00', '1997-09-02 00:00:00', 1, 29, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany', 'ALFKI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10644, 90, 3, '1997-08-25 00:00:00', '1997-09-22 00:00:00', '1997-09-01 00:00:00', 2, 0, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', 'WELLI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10645, 34, 4, '1997-08-26 00:00:00', '1997-09-23 00:00:00', '1997-09-02 00:00:00', 1, 12, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10646, 37, 9, '1997-08-27 00:00:00', '1997-10-08 00:00:00', '1997-09-03 00:00:00', 3, 142, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10647, 61, 4, '1997-08-27 00:00:00', '1997-09-10 00:00:00', '1997-09-03 00:00:00', 2, 46, 'Que Delcia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', 'QUEDE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10648, 67, 5, '1997-08-28 00:00:00', '1997-10-09 00:00:00', '1997-09-09 00:00:00', 2, 14, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 'RICAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10649, 50, 5, '1997-08-28 00:00:00', '1997-09-25 00:00:00', '1997-08-29 00:00:00', 3, 6, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium', 'MAISD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10650, 21, 5, '1997-08-29 00:00:00', '1997-09-26 00:00:00', '1997-09-03 00:00:00', 3, 177, 'Familia Arquibaldo', 'Rua Ors, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil', 'FAMIA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10651, 88, 8, '1997-09-01 00:00:00', '1997-09-29 00:00:00', '1997-09-11 00:00:00', 2, 21, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', 'WANDK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10652, 31, 4, '1997-09-01 00:00:00', '1997-09-29 00:00:00', '1997-09-08 00:00:00', 2, 7, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', 'GOURL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10653, 25, 1, '1997-09-02 00:00:00', '1997-09-30 00:00:00', '1997-09-19 00:00:00', 1, 93, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10654, 5, 5, '1997-09-02 00:00:00', '1997-09-30 00:00:00', '1997-09-11 00:00:00', 1, 55, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10655, 66, 1, '1997-09-03 00:00:00', '1997-10-01 00:00:00', '1997-09-11 00:00:00', 2, 4, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10656, 32, 6, '1997-09-04 00:00:00', '1997-10-02 00:00:00', '1997-09-10 00:00:00', 1, 57, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 'GREAL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10657, 71, 2, '1997-09-04 00:00:00', '1997-10-02 00:00:00', '1997-09-15 00:00:00', 2, 353, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10658, 63, 4, '1997-09-05 00:00:00', '1997-10-03 00:00:00', '1997-09-08 00:00:00', 1, 364, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10659, 62, 7, '1997-09-05 00:00:00', '1997-10-03 00:00:00', '1997-09-10 00:00:00', 2, 106, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10660, 36, 8, '1997-09-08 00:00:00', '1997-10-06 00:00:00', '1997-10-15 00:00:00', 1, 111, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA', 'HUNGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10661, 37, 7, '1997-09-09 00:00:00', '1997-10-07 00:00:00', '1997-09-15 00:00:00', 3, 18, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10662, 48, 3, '1997-09-09 00:00:00', '1997-10-07 00:00:00', '1997-09-18 00:00:00', 2, 1, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', 'LONEP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10663, 9, 2, '1997-09-10 00:00:00', '1997-09-24 00:00:00', '1997-10-03 00:00:00', 2, 113, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10664, 28, 1, '1997-09-10 00:00:00', '1997-10-08 00:00:00', '1997-09-19 00:00:00', 3, 1, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', 'FURIB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10665, 48, 1, '1997-09-11 00:00:00', '1997-10-09 00:00:00', '1997-09-17 00:00:00', 2, 26, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', 'LONEP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10666, 68, 7, '1997-09-12 00:00:00', '1997-10-10 00:00:00', '1997-09-22 00:00:00', 2, 232, 'Richter Supermarkt', 'Starenweg 5', 'Genve', NULL, '1204', 'Switzerland', 'RICSU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10667, 20, 7, '1997-09-12 00:00:00', '1997-10-10 00:00:00', '1997-09-19 00:00:00', 1, 78, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10668, 88, 1, '1997-09-15 00:00:00', '1997-10-13 00:00:00', '1997-09-23 00:00:00', 2, 47, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', 'WANDK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10669, 73, 2, '1997-09-15 00:00:00', '1997-10-13 00:00:00', '1997-09-22 00:00:00', 1, 24, 'Simons bistro', 'Vinbltet 34', 'Kobenhavn', NULL, '1734', 'Denmark', 'SIMOB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10670, 25, 4, '1997-09-16 00:00:00', '1997-10-14 00:00:00', '1997-09-18 00:00:00', 1, 203, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10671, 26, 1, '1997-09-17 00:00:00', '1997-10-15 00:00:00', '1997-09-24 00:00:00', 1, 30, 'France restauration', '54, rue Royale', 'Nantes', NULL, '44000', 'France', 'FRANR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10672, 5, 9, '1997-09-17 00:00:00', '1997-10-01 00:00:00', '1997-09-26 00:00:00', 2, 96, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10673, 92, 2, '1997-09-18 00:00:00', '1997-10-16 00:00:00', '1997-09-19 00:00:00', 1, 23, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland', 'WILMK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10674, 38, 4, '1997-09-18 00:00:00', '1997-10-16 00:00:00', '1997-09-30 00:00:00', 2, 1, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 'ISLAT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10675, 25, 5, '1997-09-19 00:00:00', '1997-10-17 00:00:00', '1997-09-23 00:00:00', 2, 32, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10676, 80, 2, '1997-09-22 00:00:00', '1997-10-20 00:00:00', '1997-09-29 00:00:00', 2, 2, 'Tortuga Restaurante', 'Avda. Azteca 123', 'Mxico D.F.', NULL, '5033', 'Mexico', 'TORTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10677, 3, 1, '1997-09-22 00:00:00', '1997-10-20 00:00:00', '1997-09-26 00:00:00', 3, 4, 'Antonio Moreno Taquera', 'Mataderos 2312', 'Mxico D.F.', NULL, '5023', 'Mexico', 'ANTON');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10678, 71, 7, '1997-09-23 00:00:00', '1997-10-21 00:00:00', '1997-10-16 00:00:00', 3, 389, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10679, 7, 8, '1997-09-23 00:00:00', '1997-10-21 00:00:00', '1997-09-30 00:00:00', 3, 28, 'Blondel pre et fils', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', 'BLONP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10680, 55, 1, '1997-09-24 00:00:00', '1997-10-22 00:00:00', '1997-09-26 00:00:00', 1, 27, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', 'OLDWO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10681, 32, 3, '1997-09-25 00:00:00', '1997-10-23 00:00:00', '1997-09-30 00:00:00', 3, 76, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 'GREAL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10682, 3, 3, '1997-09-25 00:00:00', '1997-10-23 00:00:00', '1997-10-01 00:00:00', 2, 36, 'Antonio Moreno Taquera', 'Mataderos 2312', 'Mxico D.F.', NULL, '5023', 'Mexico', 'ANTON');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10683, 18, 2, '1997-09-26 00:00:00', '1997-10-24 00:00:00', '1997-10-01 00:00:00', 1, 4, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France', 'DUMON');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10684, 56, 3, '1997-09-26 00:00:00', '1997-10-24 00:00:00', '1997-09-30 00:00:00', 1, 146, 'Ottilies Kseladen', 'Mehrheimerstr. 369', 'Kln', NULL, '50739', 'Germany', 'OTTIK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10685, 31, 4, '1997-09-29 00:00:00', '1997-10-13 00:00:00', '1997-10-03 00:00:00', 2, 34, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', 'GOURL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10686, 59, 2, '1997-09-30 00:00:00', '1997-10-28 00:00:00', '1997-10-08 00:00:00', 1, 97, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', 'PICCO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10687, 37, 9, '1997-09-30 00:00:00', '1997-10-28 00:00:00', '1997-10-30 00:00:00', 2, 296, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10688, 83, 4, '1997-10-01 00:00:00', '1997-10-15 00:00:00', '1997-10-07 00:00:00', 2, 299, 'Vaffeljernet', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', 'VAFFE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10689, 5, 1, '1997-10-01 00:00:00', '1997-10-29 00:00:00', '1997-10-07 00:00:00', 2, 13, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10690, 34, 1, '1997-10-02 00:00:00', '1997-10-30 00:00:00', '1997-10-03 00:00:00', 1, 16, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10691, 63, 2, '1997-10-03 00:00:00', '1997-11-14 00:00:00', '1997-10-22 00:00:00', 2, 810, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10692, 1, 4, '1997-10-03 00:00:00', '1997-10-31 00:00:00', '1997-10-13 00:00:00', 2, 61, 'Alfred-s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany', 'ALFKI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10693, 91, 3, '1997-10-06 00:00:00', '1997-10-20 00:00:00', '1997-10-10 00:00:00', 3, 139, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10694, 63, 8, '1997-10-06 00:00:00', '1997-11-03 00:00:00', '1997-10-09 00:00:00', 3, 398, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10695, 92, 7, '1997-10-07 00:00:00', '1997-11-18 00:00:00', '1997-10-14 00:00:00', 1, 17, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland', 'WILMK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10696, 91, 8, '1997-10-08 00:00:00', '1997-11-19 00:00:00', '1997-10-14 00:00:00', 3, 103, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10697, 47, 3, '1997-10-08 00:00:00', '1997-11-05 00:00:00', '1997-10-14 00:00:00', 1, 46, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10698, 20, 4, '1997-10-09 00:00:00', '1997-11-06 00:00:00', '1997-10-17 00:00:00', 1, 272, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10699, 52, 3, '1997-10-09 00:00:00', '1997-11-06 00:00:00', '1997-10-13 00:00:00', 3, 1, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '4179', 'Germany', 'MORGK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10700, 71, 3, '1997-10-10 00:00:00', '1997-11-07 00:00:00', '1997-10-16 00:00:00', 1, 65, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10701, 37, 6, '1997-10-13 00:00:00', '1997-10-27 00:00:00', '1997-10-15 00:00:00', 3, 220, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10702, 1, 4, '1997-10-13 00:00:00', '1997-11-24 00:00:00', '1997-10-21 00:00:00', 1, 24, 'Alfred-s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany', 'ALFKI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10703, 24, 6, '1997-10-14 00:00:00', '1997-11-11 00:00:00', '1997-10-20 00:00:00', 2, 152, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10704, 62, 6, '1997-10-14 00:00:00', '1997-11-11 00:00:00', '1997-11-07 00:00:00', 1, 5, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10705, 35, 9, '1997-10-15 00:00:00', '1997-11-12 00:00:00', '1997-11-18 00:00:00', 2, 4, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10706, 55, 8, '1997-10-16 00:00:00', '1997-11-13 00:00:00', '1997-10-21 00:00:00', 3, 136, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', 'OLDWO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10707, 4, 4, '1997-10-16 00:00:00', '1997-10-30 00:00:00', '1997-10-23 00:00:00', 3, 22, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10708, 77, 6, '1997-10-17 00:00:00', '1997-11-28 00:00:00', '1997-11-05 00:00:00', 2, 3, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA', 'THEBI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10709, 31, 1, '1997-10-17 00:00:00', '1997-11-14 00:00:00', '1997-11-20 00:00:00', 3, 211, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', 'GOURL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10710, 27, 1, '1997-10-20 00:00:00', '1997-11-17 00:00:00', '1997-10-23 00:00:00', 1, 5, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy', 'FRANS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10711, 71, 5, '1997-10-21 00:00:00', '1997-12-02 00:00:00', '1997-10-29 00:00:00', 2, 52, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10712, 37, 3, '1997-10-21 00:00:00', '1997-11-18 00:00:00', '1997-10-31 00:00:00', 1, 90, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10713, 71, 1, '1997-10-22 00:00:00', '1997-11-19 00:00:00', '1997-10-24 00:00:00', 1, 167, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10714, 71, 5, '1997-10-22 00:00:00', '1997-11-19 00:00:00', '1997-10-27 00:00:00', 3, 24, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10715, 9, 3, '1997-10-23 00:00:00', '1997-11-06 00:00:00', '1997-10-29 00:00:00', 1, 63, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10716, 64, 4, '1997-10-24 00:00:00', '1997-11-21 00:00:00', '1997-10-27 00:00:00', 2, 23, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina', 'RANCH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10717, 25, 1, '1997-10-24 00:00:00', '1997-11-21 00:00:00', '1997-10-29 00:00:00', 2, 59, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10718, 39, 1, '1997-10-27 00:00:00', '1997-11-24 00:00:00', '1997-10-29 00:00:00', 3, 171, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10719, 45, 8, '1997-10-27 00:00:00', '1997-11-24 00:00:00', '1997-11-05 00:00:00', 2, 51, 'Let-s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA', 'LETSS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10720, 61, 8, '1997-10-28 00:00:00', '1997-11-11 00:00:00', '1997-11-05 00:00:00', 2, 10, 'Que Delcia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', 'QUEDE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10721, 63, 5, '1997-10-29 00:00:00', '1997-11-26 00:00:00', '1997-10-31 00:00:00', 3, 49, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10722, 71, 8, '1997-10-29 00:00:00', '1997-12-10 00:00:00', '1997-11-04 00:00:00', 1, 75, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10723, 91, 3, '1997-10-30 00:00:00', '1997-11-27 00:00:00', '1997-11-25 00:00:00', 1, 22, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10724, 51, 8, '1997-10-30 00:00:00', '1997-12-11 00:00:00', '1997-11-05 00:00:00', 2, 58, 'Mre Paillarde', '43 rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', 'MEREP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10725, 21, 4, '1997-10-31 00:00:00', '1997-11-28 00:00:00', '1997-11-05 00:00:00', 3, 11, 'Familia Arquibaldo', 'Rua Ors, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil', 'FAMIA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10726, 19, 4, '1997-11-03 00:00:00', '1997-11-17 00:00:00', '1997-12-05 00:00:00', 1, 17, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK', 'EASTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10727, 66, 2, '1997-11-03 00:00:00', '1997-12-01 00:00:00', '1997-12-05 00:00:00', 1, 90, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10728, 62, 4, '1997-11-04 00:00:00', '1997-12-02 00:00:00', '1997-11-11 00:00:00', 2, 58, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10729, 47, 8, '1997-11-04 00:00:00', '1997-12-16 00:00:00', '1997-11-14 00:00:00', 3, 141, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10730, 9, 5, '1997-11-05 00:00:00', '1997-12-03 00:00:00', '1997-11-14 00:00:00', 1, 20, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10731, 14, 7, '1997-11-06 00:00:00', '1997-12-04 00:00:00', '1997-11-14 00:00:00', 1, 97, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland', 'CHOPS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10732, 9, 3, '1997-11-06 00:00:00', '1997-12-04 00:00:00', '1997-11-07 00:00:00', 1, 17, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10733, 5, 1, '1997-11-07 00:00:00', '1997-12-05 00:00:00', '1997-11-10 00:00:00', 3, 110, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10734, 31, 2, '1997-11-07 00:00:00', '1997-12-05 00:00:00', '1997-11-12 00:00:00', 3, 2, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', 'GOURL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10735, 45, 6, '1997-11-10 00:00:00', '1997-12-08 00:00:00', '1997-11-21 00:00:00', 2, 46, 'Let-s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA', 'LETSS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10736, 37, 9, '1997-11-11 00:00:00', '1997-12-09 00:00:00', '1997-11-21 00:00:00', 2, 44, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10737, 87, 2, '1997-11-11 00:00:00', '1997-12-09 00:00:00', '1997-11-18 00:00:00', 2, 8, 'Vins et alcools Chevalier', '59 rue de l-Abbaye', 'Reims', NULL, '51100', 'France', 'VINET');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10738, 74, 2, '1997-11-12 00:00:00', '1997-12-10 00:00:00', '1997-11-18 00:00:00', 1, 3, 'Spcialits du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France', 'SPECD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10739, 87, 3, '1997-11-12 00:00:00', '1997-12-10 00:00:00', '1997-11-17 00:00:00', 3, 11, 'Vins et alcools Chevalier', '59 rue de l-Abbaye', 'Reims', NULL, '51100', 'France', 'VINET');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10740, 91, 4, '1997-11-13 00:00:00', '1997-12-11 00:00:00', '1997-11-25 00:00:00', 2, 82, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10741, 4, 4, '1997-11-14 00:00:00', '1997-11-28 00:00:00', '1997-11-18 00:00:00', 3, 11, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10742, 10, 3, '1997-11-14 00:00:00', '1997-12-12 00:00:00', '1997-11-18 00:00:00', 3, 244, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10743, 4, 1, '1997-11-17 00:00:00', '1997-12-15 00:00:00', '1997-11-21 00:00:00', 2, 24, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10744, 83, 6, '1997-11-17 00:00:00', '1997-12-15 00:00:00', '1997-11-24 00:00:00', 1, 69, 'Vaffeljernet', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', 'VAFFE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10745, 63, 9, '1997-11-18 00:00:00', '1997-12-16 00:00:00', '1997-11-27 00:00:00', 1, 4, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10746, 14, 1, '1997-11-19 00:00:00', '1997-12-17 00:00:00', '1997-11-21 00:00:00', 3, 31, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland', 'CHOPS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10747, 59, 6, '1997-11-19 00:00:00', '1997-12-17 00:00:00', '1997-11-26 00:00:00', 1, 117, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', 'PICCO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10748, 71, 3, '1997-11-20 00:00:00', '1997-12-18 00:00:00', '1997-11-28 00:00:00', 1, 233, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10749, 38, 4, '1997-11-20 00:00:00', '1997-12-18 00:00:00', '1997-12-19 00:00:00', 2, 62, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 'ISLAT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10750, 89, 9, '1997-11-21 00:00:00', '1997-12-19 00:00:00', '1997-11-24 00:00:00', 1, 79, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10751, 68, 3, '1997-11-24 00:00:00', '1997-12-22 00:00:00', '1997-12-03 00:00:00', 3, 131, 'Richter Supermarkt', 'Starenweg 5', 'Genve', NULL, '1204', 'Switzerland', 'RICSU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10752, 53, 2, '1997-11-24 00:00:00', '1997-12-22 00:00:00', '1997-11-28 00:00:00', 3, 1, 'North/South', 'South House 300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'UK', 'NORTS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10753, 27, 3, '1997-11-25 00:00:00', '1997-12-23 00:00:00', '1997-11-27 00:00:00', 1, 8, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy', 'FRANS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10754, 49, 6, '1997-11-25 00:00:00', '1997-12-23 00:00:00', '1997-11-27 00:00:00', 3, 2, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', 'MAGAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10755, 9, 4, '1997-11-26 00:00:00', '1997-12-24 00:00:00', '1997-11-28 00:00:00', 2, 17, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10756, 75, 8, '1997-11-27 00:00:00', '1997-12-25 00:00:00', '1997-12-02 00:00:00', 2, 73, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', 'SPLIR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10757, 71, 6, '1997-11-27 00:00:00', '1997-12-25 00:00:00', '1997-12-15 00:00:00', 1, 8, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10758, 68, 3, '1997-11-28 00:00:00', '1997-12-26 00:00:00', '1997-12-04 00:00:00', 3, 138, 'Richter Supermarkt', 'Starenweg 5', 'Genve', NULL, '1204', 'Switzerland', 'RICSU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10759, 2, 3, '1997-11-28 00:00:00', '1997-12-26 00:00:00', '1997-12-12 00:00:00', 3, 12, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitucin 2222', 'Mxico D.F.', NULL, '5021', 'Mexico', 'ANATR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10760, 50, 4, '1997-12-01 00:00:00', '1997-12-29 00:00:00', '1997-12-10 00:00:00', 1, 156, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium', 'MAISD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10761, 65, 5, '1997-12-02 00:00:00', '1997-12-30 00:00:00', '1997-12-08 00:00:00', 2, 19, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10762, 24, 3, '1997-12-02 00:00:00', '1997-12-30 00:00:00', '1997-12-09 00:00:00', 1, 329, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10763, 23, 3, '1997-12-03 00:00:00', '1997-12-31 00:00:00', '1997-12-08 00:00:00', 3, 37, 'Folies gourmandes', '184, chausse de Tournai', 'Lille', NULL, '59000', 'France', 'FOLIG');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10764, 20, 6, '1997-12-03 00:00:00', '1997-12-31 00:00:00', '1997-12-08 00:00:00', 3, 145, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10765, 63, 3, '1997-12-04 00:00:00', '1998-01-01 00:00:00', '1997-12-09 00:00:00', 3, 43, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10766, 56, 4, '1997-12-05 00:00:00', '1998-01-02 00:00:00', '1997-12-09 00:00:00', 1, 158, 'Ottilies Kseladen', 'Mehrheimerstr. 369', 'Kln', NULL, '50739', 'Germany', 'OTTIK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10767, 76, 4, '1997-12-05 00:00:00', '1998-01-02 00:00:00', '1997-12-15 00:00:00', 3, 2, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10768, 4, 3, '1997-12-08 00:00:00', '1998-01-05 00:00:00', '1997-12-15 00:00:00', 2, 146, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10769, 83, 3, '1997-12-08 00:00:00', '1998-01-05 00:00:00', '1997-12-12 00:00:00', 1, 65, 'Vaffeljernet', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', 'VAFFE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10770, 34, 8, '1997-12-09 00:00:00', '1998-01-06 00:00:00', '1997-12-17 00:00:00', 3, 5, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10771, 20, 9, '1997-12-10 00:00:00', '1998-01-07 00:00:00', '1998-01-02 00:00:00', 2, 11, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10772, 44, 3, '1997-12-10 00:00:00', '1998-01-07 00:00:00', '1997-12-19 00:00:00', 2, 91, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10773, 20, 1, '1997-12-11 00:00:00', '1998-01-08 00:00:00', '1997-12-16 00:00:00', 3, 96, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10774, 24, 4, '1997-12-11 00:00:00', '1997-12-25 00:00:00', '1997-12-12 00:00:00', 1, 48, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10775, 78, 7, '1997-12-12 00:00:00', '1998-01-09 00:00:00', '1997-12-26 00:00:00', 1, 20, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA', 'THECR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10776, 20, 1, '1997-12-15 00:00:00', '1998-01-12 00:00:00', '1997-12-18 00:00:00', 3, 352, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10777, 31, 7, '1997-12-15 00:00:00', '1997-12-29 00:00:00', '1998-01-21 00:00:00', 2, 3, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', 'GOURL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10778, 5, 3, '1997-12-16 00:00:00', '1998-01-13 00:00:00', '1997-12-24 00:00:00', 1, 7, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10779, 52, 3, '1997-12-16 00:00:00', '1998-01-13 00:00:00', '1998-01-14 00:00:00', 2, 58, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '4179', 'Germany', 'MORGK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10780, 46, 2, '1997-12-16 00:00:00', '1997-12-30 00:00:00', '1997-12-25 00:00:00', 1, 42, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10781, 89, 2, '1997-12-17 00:00:00', '1998-01-14 00:00:00', '1997-12-19 00:00:00', 3, 73, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10782, 12, 9, '1997-12-17 00:00:00', '1998-01-14 00:00:00', '1997-12-22 00:00:00', 3, 1, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina', 'CACTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10783, 34, 4, '1997-12-18 00:00:00', '1998-01-15 00:00:00', '1997-12-19 00:00:00', 2, 125, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10784, 49, 4, '1997-12-18 00:00:00', '1998-01-15 00:00:00', '1997-12-22 00:00:00', 3, 70, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', 'MAGAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10785, 33, 1, '1997-12-18 00:00:00', '1998-01-15 00:00:00', '1997-12-24 00:00:00', 3, 2, 'GROSELLA-Restaurante', '5 Ave. Los Palos Grandes', 'Caracas', 'DF', '1081', 'Venezuela', 'GROSR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10786, 62, 8, '1997-12-19 00:00:00', '1998-01-16 00:00:00', '1997-12-23 00:00:00', 1, 111, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10787, 41, 2, '1997-12-19 00:00:00', '1998-01-02 00:00:00', '1997-12-26 00:00:00', 1, 250, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10788, 63, 1, '1997-12-22 00:00:00', '1998-01-19 00:00:00', '1998-01-19 00:00:00', 2, 43, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10789, 23, 1, '1997-12-22 00:00:00', '1998-01-19 00:00:00', '1997-12-31 00:00:00', 2, 101, 'Folies gourmandes', '184, chausse de Tournai', 'Lille', NULL, '59000', 'France', 'FOLIG');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10790, 31, 6, '1997-12-22 00:00:00', '1998-01-19 00:00:00', '1997-12-26 00:00:00', 1, 28, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', 'GOURL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10791, 25, 6, '1997-12-23 00:00:00', '1998-01-20 00:00:00', '1998-01-01 00:00:00', 2, 17, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10792, 93, 1, '1997-12-23 00:00:00', '1998-01-20 00:00:00', '1997-12-31 00:00:00', 3, 24, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland', 'WOLZA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10793, 4, 3, '1997-12-24 00:00:00', '1998-01-21 00:00:00', '1998-01-08 00:00:00', 3, 5, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10794, 61, 6, '1997-12-24 00:00:00', '1998-01-21 00:00:00', '1998-01-02 00:00:00', 1, 21, 'Que Delcia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', 'QUEDE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10795, 20, 8, '1997-12-24 00:00:00', '1998-01-21 00:00:00', '1998-01-20 00:00:00', 2, 127, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10796, 35, 3, '1997-12-25 00:00:00', '1998-01-22 00:00:00', '1998-01-14 00:00:00', 1, 27, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10797, 17, 7, '1997-12-25 00:00:00', '1998-01-22 00:00:00', '1998-01-05 00:00:00', 2, 33, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany', 'DRACD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10798, 38, 2, '1997-12-26 00:00:00', '1998-01-23 00:00:00', '1998-01-05 00:00:00', 1, 2, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 'ISLAT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10799, 39, 9, '1997-12-26 00:00:00', '1998-02-06 00:00:00', '1998-01-05 00:00:00', 3, 31, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10800, 72, 1, '1997-12-26 00:00:00', '1998-01-23 00:00:00', '1998-01-05 00:00:00', 3, 137, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK', 'SEVES');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10801, 8, 4, '1997-12-29 00:00:00', '1998-01-26 00:00:00', '1997-12-31 00:00:00', 2, 97, 'Blido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'Spain', 'BOLID');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10802, 73, 4, '1997-12-29 00:00:00', '1998-01-26 00:00:00', '1998-01-02 00:00:00', 2, 257, 'Simons bistro', 'Vinbltet 34', 'Kobenhavn', NULL, '1734', 'Denmark', 'SIMOB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10803, 90, 4, '1997-12-30 00:00:00', '1998-01-27 00:00:00', '1998-01-06 00:00:00', 1, 55, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', 'WELLI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10804, 72, 6, '1997-12-30 00:00:00', '1998-01-27 00:00:00', '1998-01-07 00:00:00', 2, 27, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK', 'SEVES');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10805, 77, 2, '1997-12-30 00:00:00', '1998-01-27 00:00:00', '1998-01-09 00:00:00', 3, 237, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA', 'THEBI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10806, 86, 3, '1997-12-31 00:00:00', '1998-01-28 00:00:00', '1998-01-05 00:00:00', 2, 22, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', 'VICTE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10807, 27, 4, '1997-12-31 00:00:00', '1998-01-28 00:00:00', '1998-01-30 00:00:00', 1, 1, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy', 'FRANS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10808, 55, 2, '1998-01-01 00:00:00', '1998-01-29 00:00:00', '1998-01-09 00:00:00', 3, 46, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', 'OLDWO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10809, 90, 7, '1998-01-01 00:00:00', '1998-01-29 00:00:00', '1998-01-07 00:00:00', 1, 5, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', 'WELLI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10810, 42, 2, '1998-01-01 00:00:00', '1998-01-29 00:00:00', '1998-01-07 00:00:00', 3, 4, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada', 'LAUGB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10811, 47, 8, '1998-01-02 00:00:00', '1998-01-30 00:00:00', '1998-01-08 00:00:00', 1, 31, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10812, 66, 5, '1998-01-02 00:00:00', '1998-01-30 00:00:00', '1998-01-12 00:00:00', 1, 60, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10813, 67, 1, '1998-01-05 00:00:00', '1998-02-02 00:00:00', '1998-01-09 00:00:00', 1, 47, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 'RICAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10814, 86, 3, '1998-01-05 00:00:00', '1998-02-02 00:00:00', '1998-01-14 00:00:00', 3, 131, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', 'VICTE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10815, 71, 2, '1998-01-05 00:00:00', '1998-02-02 00:00:00', '1998-01-14 00:00:00', 3, 15, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10816, 32, 4, '1998-01-06 00:00:00', '1998-02-03 00:00:00', '1998-02-04 00:00:00', 2, 720, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 'GREAL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10817, 39, 3, '1998-01-06 00:00:00', '1998-01-20 00:00:00', '1998-01-13 00:00:00', 2, 306, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10818, 49, 7, '1998-01-07 00:00:00', '1998-02-04 00:00:00', '1998-01-12 00:00:00', 3, 65, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', 'MAGAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10819, 12, 2, '1998-01-07 00:00:00', '1998-02-04 00:00:00', '1998-01-16 00:00:00', 3, 20, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina', 'CACTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10820, 65, 3, '1998-01-07 00:00:00', '1998-02-04 00:00:00', '1998-01-13 00:00:00', 2, 38, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10821, 75, 1, '1998-01-08 00:00:00', '1998-02-05 00:00:00', '1998-01-15 00:00:00', 1, 37, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', 'SPLIR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10822, 82, 6, '1998-01-08 00:00:00', '1998-02-05 00:00:00', '1998-01-16 00:00:00', 3, 7, 'Trail-s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA', 'TRAIH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10823, 46, 5, '1998-01-09 00:00:00', '1998-02-06 00:00:00', '1998-01-13 00:00:00', 2, 164, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10824, 24, 8, '1998-01-09 00:00:00', '1998-02-06 00:00:00', '1998-01-30 00:00:00', 1, 1, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10825, 17, 1, '1998-01-09 00:00:00', '1998-02-06 00:00:00', '1998-01-14 00:00:00', 1, 79, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany', 'DRACD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10826, 7, 6, '1998-01-12 00:00:00', '1998-02-09 00:00:00', '1998-02-06 00:00:00', 1, 7, 'Blondel pre et fils', '24, place Klber', 'Strasbourg', NULL, '67000', 'France', 'BLONP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10827, 9, 1, '1998-01-12 00:00:00', '1998-01-26 00:00:00', '1998-02-06 00:00:00', 2, 64, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10828, 64, 9, '1998-01-13 00:00:00', '1998-01-27 00:00:00', '1998-02-04 00:00:00', 1, 91, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina', 'RANCH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10829, 38, 9, '1998-01-13 00:00:00', '1998-02-10 00:00:00', '1998-01-23 00:00:00', 1, 155, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 'ISLAT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10830, 81, 4, '1998-01-13 00:00:00', '1998-02-24 00:00:00', '1998-01-21 00:00:00', 2, 82, 'Tradiao Hipermercados', 'Av. Ins de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil', 'TRADH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10831, 70, 3, '1998-01-14 00:00:00', '1998-02-11 00:00:00', '1998-01-23 00:00:00', 2, 72, 'Sant Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway', 'SANTG');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10832, 41, 2, '1998-01-14 00:00:00', '1998-02-11 00:00:00', '1998-01-19 00:00:00', 2, 43, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10833, 56, 6, '1998-01-15 00:00:00', '1998-02-12 00:00:00', '1998-01-23 00:00:00', 2, 71, 'Ottilies Kseladen', 'Mehrheimerstr. 369', 'Kln', NULL, '50739', 'Germany', 'OTTIK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10834, 81, 1, '1998-01-15 00:00:00', '1998-02-12 00:00:00', '1998-01-19 00:00:00', 3, 30, 'Tradiao Hipermercados', 'Av. Ins de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil', 'TRADH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10835, 1, 1, '1998-01-15 00:00:00', '1998-02-12 00:00:00', '1998-01-21 00:00:00', 3, 70, 'Alfred-s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany', 'ALFKI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10836, 20, 7, '1998-01-16 00:00:00', '1998-02-13 00:00:00', '1998-01-21 00:00:00', 1, 412, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10837, 5, 9, '1998-01-16 00:00:00', '1998-02-13 00:00:00', '1998-01-23 00:00:00', 3, 13, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10838, 47, 3, '1998-01-19 00:00:00', '1998-02-16 00:00:00', '1998-01-23 00:00:00', 3, 59, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10839, 81, 3, '1998-01-19 00:00:00', '1998-02-16 00:00:00', '1998-01-22 00:00:00', 3, 35, 'Tradiao Hipermercados', 'Av. Ins de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil', 'TRADH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10840, 47, 4, '1998-01-19 00:00:00', '1998-03-02 00:00:00', '1998-02-16 00:00:00', 2, 3, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10841, 76, 5, '1998-01-20 00:00:00', '1998-02-17 00:00:00', '1998-01-29 00:00:00', 2, 424, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10842, 80, 1, '1998-01-20 00:00:00', '1998-02-17 00:00:00', '1998-01-29 00:00:00', 3, 54, 'Tortuga Restaurante', 'Avda. Azteca 123', 'Mxico D.F.', NULL, '5033', 'Mexico', 'TORTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10843, 86, 4, '1998-01-21 00:00:00', '1998-02-18 00:00:00', '1998-01-26 00:00:00', 2, 9, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', 'VICTE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10844, 59, 8, '1998-01-21 00:00:00', '1998-02-18 00:00:00', '1998-01-26 00:00:00', 2, 25, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', 'PICCO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10845, 63, 8, '1998-01-21 00:00:00', '1998-02-04 00:00:00', '1998-01-30 00:00:00', 1, 213, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10846, 76, 2, '1998-01-22 00:00:00', '1998-03-05 00:00:00', '1998-01-23 00:00:00', 3, 56, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10847, 71, 4, '1998-01-22 00:00:00', '1998-02-05 00:00:00', '1998-02-10 00:00:00', 3, 488, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10848, 16, 7, '1998-01-23 00:00:00', '1998-02-20 00:00:00', '1998-01-29 00:00:00', 2, 38, 'Consolidated Holdings', 'Berkeley Gardens 12 Brewery', 'London', NULL, 'WX1 6LT', 'UK', 'CONSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10849, 39, 9, '1998-01-23 00:00:00', '1998-02-20 00:00:00', '1998-01-30 00:00:00', 2, 1, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10850, 86, 1, '1998-01-23 00:00:00', '1998-03-06 00:00:00', '1998-01-30 00:00:00', 1, 49, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'France', 'VICTE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10851, 67, 5, '1998-01-26 00:00:00', '1998-02-23 00:00:00', '1998-02-02 00:00:00', 1, 161, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 'RICAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10852, 65, 8, '1998-01-26 00:00:00', '1998-02-09 00:00:00', '1998-01-30 00:00:00', 1, 174, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10853, 6, 9, '1998-01-27 00:00:00', '1998-02-24 00:00:00', '1998-02-03 00:00:00', 2, 54, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany', 'BLAUS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10854, 20, 3, '1998-01-27 00:00:00', '1998-02-24 00:00:00', '1998-02-05 00:00:00', 2, 100, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10855, 55, 3, '1998-01-27 00:00:00', '1998-02-24 00:00:00', '1998-02-04 00:00:00', 1, 171, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', 'OLDWO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10856, 3, 3, '1998-01-28 00:00:00', '1998-02-25 00:00:00', '1998-02-10 00:00:00', 2, 58, 'Antonio Moreno Taquera', 'Mataderos 2312', 'Mxico D.F.', NULL, '5023', 'Mexico', 'ANTON');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10857, 5, 8, '1998-01-28 00:00:00', '1998-02-25 00:00:00', '1998-02-06 00:00:00', 2, 189, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10858, 40, 2, '1998-01-29 00:00:00', '1998-02-26 00:00:00', '1998-02-03 00:00:00', 1, 53, 'La corne d-abondance', '67, avenue de l-Europe', 'Versailles', NULL, '78000', 'France', 'LACOR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10859, 25, 1, '1998-01-29 00:00:00', '1998-02-26 00:00:00', '1998-02-02 00:00:00', 2, 76, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10860, 26, 3, '1998-01-29 00:00:00', '1998-02-26 00:00:00', '1998-02-04 00:00:00', 3, 19, 'France restauration', '54, rue Royale', 'Nantes', NULL, '44000', 'France', 'FRANR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10861, 91, 4, '1998-01-30 00:00:00', '1998-02-27 00:00:00', '1998-02-17 00:00:00', 2, 15, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10862, 44, 8, '1998-01-30 00:00:00', '1998-03-13 00:00:00', '1998-02-02 00:00:00', 2, 53, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10863, 35, 4, '1998-02-02 00:00:00', '1998-03-02 00:00:00', '1998-02-17 00:00:00', 2, 30, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10864, 4, 4, '1998-02-02 00:00:00', '1998-03-02 00:00:00', '1998-02-09 00:00:00', 2, 3, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10865, 63, 2, '1998-02-02 00:00:00', '1998-02-16 00:00:00', '1998-02-12 00:00:00', 1, 348, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10866, 5, 5, '1998-02-03 00:00:00', '1998-03-03 00:00:00', '1998-02-12 00:00:00', 1, 109, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10867, 48, 6, '1998-02-03 00:00:00', '1998-03-17 00:00:00', '1998-02-11 00:00:00', 1, 2, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', 'LONEP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10868, 62, 7, '1998-02-04 00:00:00', '1998-03-04 00:00:00', '1998-02-23 00:00:00', 2, 191, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10869, 72, 5, '1998-02-04 00:00:00', '1998-03-04 00:00:00', '1998-02-09 00:00:00', 1, 143, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'UK', 'SEVES');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10870, 93, 5, '1998-02-04 00:00:00', '1998-03-04 00:00:00', '1998-02-13 00:00:00', 3, 12, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland', 'WOLZA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10871, 9, 9, '1998-02-05 00:00:00', '1998-03-05 00:00:00', '1998-02-10 00:00:00', 2, 112, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10872, 30, 5, '1998-02-05 00:00:00', '1998-03-05 00:00:00', '1998-02-09 00:00:00', 2, 175, 'Godos Cocina Tpica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', 'GODOS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10873, 92, 4, '1998-02-06 00:00:00', '1998-03-06 00:00:00', '1998-02-09 00:00:00', 1, 1, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland', 'WILMK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10874, 30, 5, '1998-02-06 00:00:00', '1998-03-06 00:00:00', '1998-02-11 00:00:00', 2, 20, 'Godos Cocina Tpica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', 'GODOS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10875, 5, 4, '1998-02-06 00:00:00', '1998-03-06 00:00:00', '1998-03-03 00:00:00', 2, 32, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10876, 9, 7, '1998-02-09 00:00:00', '1998-03-09 00:00:00', '1998-02-12 00:00:00', 3, 60, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10877, 67, 1, '1998-02-09 00:00:00', '1998-03-09 00:00:00', '1998-02-19 00:00:00', 1, 38, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 'RICAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10878, 63, 4, '1998-02-10 00:00:00', '1998-03-10 00:00:00', '1998-02-12 00:00:00', 1, 47, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10879, 92, 3, '1998-02-10 00:00:00', '1998-03-10 00:00:00', '1998-02-12 00:00:00', 3, 9, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland', 'WILMK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10880, 24, 7, '1998-02-10 00:00:00', '1998-03-24 00:00:00', '1998-02-18 00:00:00', 1, 88, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10881, 12, 4, '1998-02-11 00:00:00', '1998-03-11 00:00:00', '1998-02-18 00:00:00', 1, 3, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina', 'CACTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10882, 71, 4, '1998-02-11 00:00:00', '1998-03-11 00:00:00', '1998-02-20 00:00:00', 3, 23, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10883, 48, 8, '1998-02-12 00:00:00', '1998-03-12 00:00:00', '1998-02-20 00:00:00', 3, 1, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', 'LONEP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10884, 45, 4, '1998-02-12 00:00:00', '1998-03-12 00:00:00', '1998-02-13 00:00:00', 2, 91, 'Let-s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA', 'LETSS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10885, 76, 6, '1998-02-12 00:00:00', '1998-03-12 00:00:00', '1998-02-18 00:00:00', 3, 6, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10886, 34, 1, '1998-02-13 00:00:00', '1998-03-13 00:00:00', '1998-03-02 00:00:00', 1, 5, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10887, 29, 8, '1998-02-13 00:00:00', '1998-03-13 00:00:00', '1998-02-16 00:00:00', 3, 1, 'Galera del gastronmo', 'Rambla de Catalua, 23', 'Barcelona', NULL, '8022', 'Spain', 'GALED');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10888, 30, 1, '1998-02-16 00:00:00', '1998-03-16 00:00:00', '1998-02-23 00:00:00', 2, 52, 'Godos Cocina Tpica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', 'GODOS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10889, 65, 9, '1998-02-16 00:00:00', '1998-03-16 00:00:00', '1998-02-23 00:00:00', 3, 281, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10890, 18, 7, '1998-02-16 00:00:00', '1998-03-16 00:00:00', '1998-02-18 00:00:00', 1, 33, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'France', 'DUMON');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10891, 44, 7, '1998-02-17 00:00:00', '1998-03-17 00:00:00', '1998-02-19 00:00:00', 2, 20, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10892, 50, 4, '1998-02-17 00:00:00', '1998-03-17 00:00:00', '1998-02-19 00:00:00', 2, 120, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium', 'MAISD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10893, 39, 9, '1998-02-18 00:00:00', '1998-03-18 00:00:00', '1998-02-20 00:00:00', 2, 78, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10894, 71, 1, '1998-02-18 00:00:00', '1998-03-18 00:00:00', '1998-02-20 00:00:00', 1, 116, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10895, 20, 3, '1998-02-18 00:00:00', '1998-03-18 00:00:00', '1998-02-23 00:00:00', 1, 163, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10896, 50, 7, '1998-02-19 00:00:00', '1998-03-19 00:00:00', '1998-02-27 00:00:00', 3, 32, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium', 'MAISD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10897, 37, 3, '1998-02-19 00:00:00', '1998-03-19 00:00:00', '1998-02-25 00:00:00', 2, 604, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10898, 54, 4, '1998-02-20 00:00:00', '1998-03-20 00:00:00', '1998-03-06 00:00:00', 2, 1, 'Ocano Atlntico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina', 'OCEAN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10899, 46, 5, '1998-02-20 00:00:00', '1998-03-20 00:00:00', '1998-02-26 00:00:00', 3, 1, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10900, 90, 1, '1998-02-20 00:00:00', '1998-03-20 00:00:00', '1998-03-04 00:00:00', 2, 2, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', 'WELLI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10901, 35, 4, '1998-02-23 00:00:00', '1998-03-23 00:00:00', '1998-02-26 00:00:00', 1, 62, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10902, 24, 1, '1998-02-23 00:00:00', '1998-03-23 00:00:00', '1998-03-03 00:00:00', 1, 44, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10903, 34, 3, '1998-02-24 00:00:00', '1998-03-24 00:00:00', '1998-03-04 00:00:00', 3, 37, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10904, 91, 3, '1998-02-24 00:00:00', '1998-03-24 00:00:00', '1998-02-27 00:00:00', 3, 163, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10905, 90, 9, '1998-02-24 00:00:00', '1998-03-24 00:00:00', '1998-03-06 00:00:00', 2, 14, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', 'WELLI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10906, 93, 4, '1998-02-25 00:00:00', '1998-03-11 00:00:00', '1998-03-03 00:00:00', 3, 26, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland', 'WOLZA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10907, 74, 6, '1998-02-25 00:00:00', '1998-03-25 00:00:00', '1998-02-27 00:00:00', 3, 9, 'Spcialits du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France', 'SPECD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10908, 66, 4, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-06 00:00:00', 2, 33, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10909, 70, 1, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-10 00:00:00', 2, 53, 'Sant Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway', 'SANTG');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10910, 92, 1, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-04 00:00:00', 3, 38, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland', 'WILMK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10911, 30, 3, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-05 00:00:00', 1, 38, 'Godos Cocina Tpica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', 'GODOS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10912, 37, 2, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-18 00:00:00', 2, 581, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10913, 62, 4, '1998-02-26 00:00:00', '1998-03-26 00:00:00', '1998-03-04 00:00:00', 1, 33, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10914, 62, 6, '1998-02-27 00:00:00', '1998-03-27 00:00:00', '1998-03-02 00:00:00', 1, 21, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10915, 80, 2, '1998-02-27 00:00:00', '1998-03-27 00:00:00', '1998-03-02 00:00:00', 2, 4, 'Tortuga Restaurante', 'Avda. Azteca 123', 'Mxico D.F.', NULL, '5033', 'Mexico', 'TORTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10916, 64, 1, '1998-02-27 00:00:00', '1998-03-27 00:00:00', '1998-03-09 00:00:00', 2, 64, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina', 'RANCH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10917, 69, 4, '1998-03-02 00:00:00', '1998-03-30 00:00:00', '1998-03-11 00:00:00', 2, 8, 'Romero y tomillo', 'Gran Va, 1', 'Madrid', NULL, '28001', 'Spain', 'ROMEY');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10918, 10, 3, '1998-03-02 00:00:00', '1998-03-30 00:00:00', '1998-03-11 00:00:00', 3, 49, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10919, 47, 2, '1998-03-02 00:00:00', '1998-03-30 00:00:00', '1998-03-04 00:00:00', 2, 20, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10920, 4, 4, '1998-03-03 00:00:00', '1998-03-31 00:00:00', '1998-03-09 00:00:00', 2, 30, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10921, 83, 1, '1998-03-03 00:00:00', '1998-04-14 00:00:00', '1998-03-09 00:00:00', 1, 176, 'Vaffeljernet', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', 'VAFFE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10922, 34, 5, '1998-03-03 00:00:00', '1998-03-31 00:00:00', '1998-03-05 00:00:00', 3, 63, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10923, 41, 7, '1998-03-03 00:00:00', '1998-04-14 00:00:00', '1998-03-13 00:00:00', 3, 68, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10924, 5, 3, '1998-03-04 00:00:00', '1998-04-01 00:00:00', '1998-04-08 00:00:00', 2, 152, 'Berglunds snabbkp', 'Berguvsvgen 8', 'Lule', NULL, 'S-958 22', 'Sweden', 'BERGS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10925, 34, 3, '1998-03-04 00:00:00', '1998-04-01 00:00:00', '1998-03-13 00:00:00', 1, 2, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10926, 2, 4, '1998-03-04 00:00:00', '1998-04-01 00:00:00', '1998-03-11 00:00:00', 3, 40, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitucin 2222', 'Mxico D.F.', NULL, '5021', 'Mexico', 'ANATR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10927, 40, 4, '1998-03-05 00:00:00', '1998-04-02 00:00:00', '1998-04-08 00:00:00', 1, 20, 'La corne d-abondance', '67, avenue de l-Europe', 'Versailles', NULL, '78000', 'France', 'LACOR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10928, 29, 1, '1998-03-05 00:00:00', '1998-04-02 00:00:00', '1998-03-18 00:00:00', 1, 1, 'Galera del gastronmo', 'Rambla de Catalua, 23', 'Barcelona', NULL, '8022', 'Spain', 'GALED');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10929, 25, 6, '1998-03-05 00:00:00', '1998-04-02 00:00:00', '1998-03-12 00:00:00', 1, 34, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10930, 76, 4, '1998-03-06 00:00:00', '1998-04-17 00:00:00', '1998-03-18 00:00:00', 3, 16, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10931, 68, 4, '1998-03-06 00:00:00', '1998-03-20 00:00:00', '1998-03-19 00:00:00', 2, 14, 'Richter Supermarkt', 'Starenweg 5', 'Genve', NULL, '1204', 'Switzerland', 'RICSU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10932, 9, 8, '1998-03-06 00:00:00', '1998-04-03 00:00:00', '1998-03-24 00:00:00', 1, 135, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10933, 38, 6, '1998-03-06 00:00:00', '1998-04-03 00:00:00', '1998-03-16 00:00:00', 3, 54, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', 'ISLAT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10934, 44, 3, '1998-03-09 00:00:00', '1998-04-06 00:00:00', '1998-03-12 00:00:00', 3, 32, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10935, 90, 4, '1998-03-09 00:00:00', '1998-04-06 00:00:00', '1998-03-18 00:00:00', 3, 48, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', 'WELLI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10936, 32, 3, '1998-03-09 00:00:00', '1998-04-06 00:00:00', '1998-03-18 00:00:00', 2, 34, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 'GREAL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10937, 12, 7, '1998-03-10 00:00:00', '1998-03-24 00:00:00', '1998-03-13 00:00:00', 3, 32, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina', 'CACTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10938, 63, 3, '1998-03-10 00:00:00', '1998-04-07 00:00:00', '1998-03-16 00:00:00', 2, 32, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10939, 49, 2, '1998-03-10 00:00:00', '1998-04-07 00:00:00', '1998-03-13 00:00:00', 2, 76, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', 'MAGAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10940, 9, 8, '1998-03-11 00:00:00', '1998-04-08 00:00:00', '1998-03-23 00:00:00', 3, 20, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10941, 71, 7, '1998-03-11 00:00:00', '1998-04-08 00:00:00', '1998-03-20 00:00:00', 2, 401, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10942, 66, 9, '1998-03-11 00:00:00', '1998-04-08 00:00:00', '1998-03-18 00:00:00', 3, 18, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10943, 11, 4, '1998-03-11 00:00:00', '1998-04-08 00:00:00', '1998-03-19 00:00:00', 2, 2, 'B-s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', 'BSBEV');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10944, 10, 6, '1998-03-12 00:00:00', '1998-03-26 00:00:00', '1998-03-13 00:00:00', 3, 53, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10945, 52, 4, '1998-03-12 00:00:00', '1998-04-09 00:00:00', '1998-03-18 00:00:00', 1, 10, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '4179', 'Germany', 'MORGK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10946, 83, 1, '1998-03-12 00:00:00', '1998-04-09 00:00:00', '1998-03-19 00:00:00', 2, 27, 'Vaffeljernet', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', 'VAFFE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10947, 11, 3, '1998-03-13 00:00:00', '1998-04-10 00:00:00', '1998-03-16 00:00:00', 2, 3, 'B-s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', 'BSBEV');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10948, 30, 3, '1998-03-13 00:00:00', '1998-04-10 00:00:00', '1998-03-19 00:00:00', 3, 23, 'Godos Cocina Tpica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', 'GODOS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10949, 10, 2, '1998-03-13 00:00:00', '1998-04-10 00:00:00', '1998-03-17 00:00:00', 3, 74, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10950, 49, 1, '1998-03-16 00:00:00', '1998-04-13 00:00:00', '1998-03-23 00:00:00', 2, 3, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', NULL, '24100', 'Italy', 'MAGAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10951, 68, 9, '1998-03-16 00:00:00', '1998-04-27 00:00:00', '1998-04-07 00:00:00', 2, 31, 'Richter Supermarkt', 'Starenweg 5', 'Genve', NULL, '1204', 'Switzerland', 'RICSU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10952, 1, 1, '1998-03-16 00:00:00', '1998-04-27 00:00:00', '1998-03-24 00:00:00', 1, 40, 'Alfred-s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany', 'ALFKI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10953, 4, 9, '1998-03-16 00:00:00', '1998-03-30 00:00:00', '1998-03-25 00:00:00', 2, 24, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10954, 47, 5, '1998-03-17 00:00:00', '1998-04-28 00:00:00', '1998-03-20 00:00:00', 1, 28, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10955, 24, 8, '1998-03-17 00:00:00', '1998-04-14 00:00:00', '1998-03-20 00:00:00', 2, 3, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10956, 6, 6, '1998-03-17 00:00:00', '1998-04-28 00:00:00', '1998-03-20 00:00:00', 2, 45, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany', 'BLAUS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10957, 35, 8, '1998-03-18 00:00:00', '1998-04-15 00:00:00', '1998-03-27 00:00:00', 3, 105, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10958, 54, 7, '1998-03-18 00:00:00', '1998-04-15 00:00:00', '1998-03-27 00:00:00', 2, 50, 'Ocano Atlntico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina', 'OCEAN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10959, 31, 6, '1998-03-18 00:00:00', '1998-04-29 00:00:00', '1998-03-23 00:00:00', 2, 5, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', 'GOURL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10960, 35, 3, '1998-03-19 00:00:00', '1998-04-02 00:00:00', '1998-04-08 00:00:00', 1, 2, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10961, 62, 8, '1998-03-19 00:00:00', '1998-04-16 00:00:00', '1998-03-30 00:00:00', 1, 104, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10962, 63, 8, '1998-03-19 00:00:00', '1998-04-16 00:00:00', '1998-03-23 00:00:00', 2, 276, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10963, 28, 9, '1998-03-19 00:00:00', '1998-04-16 00:00:00', '1998-03-26 00:00:00', 3, 3, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', 'FURIB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10964, 74, 3, '1998-03-20 00:00:00', '1998-04-17 00:00:00', '1998-03-24 00:00:00', 2, 87, 'Spcialits du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France', 'SPECD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10965, 55, 6, '1998-03-20 00:00:00', '1998-04-17 00:00:00', '1998-03-30 00:00:00', 3, 144, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', 'OLDWO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10966, 14, 4, '1998-03-20 00:00:00', '1998-04-17 00:00:00', '1998-04-08 00:00:00', 1, 27, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland', 'CHOPS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10967, 79, 2, '1998-03-23 00:00:00', '1998-04-20 00:00:00', '1998-04-02 00:00:00', 2, 62, 'Toms Spezialitten', 'Luisenstr. 48', 'Mnster', NULL, '44087', 'Germany', 'TOMSP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10968, 20, 1, '1998-03-23 00:00:00', '1998-04-20 00:00:00', '1998-04-01 00:00:00', 3, 75, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10969, 15, 1, '1998-03-23 00:00:00', '1998-04-20 00:00:00', '1998-03-30 00:00:00', 2, 0, 'Comrcio Mineiro', 'Av. dos Lusadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil', 'COMMI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10970, 8, 9, '1998-03-24 00:00:00', '1998-04-07 00:00:00', '1998-04-24 00:00:00', 1, 16, 'Blido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'Spain', 'BOLID');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10971, 26, 2, '1998-03-24 00:00:00', '1998-04-21 00:00:00', '1998-04-02 00:00:00', 2, 122, 'France restauration', '54, rue Royale', 'Nantes', NULL, '44000', 'France', 'FRANR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10972, 40, 4, '1998-03-24 00:00:00', '1998-04-21 00:00:00', '1998-03-26 00:00:00', 2, 0, 'La corne d-abondance', '67, avenue de l-Europe', 'Versailles', NULL, '78000', 'France', 'LACOR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10973, 40, 6, '1998-03-24 00:00:00', '1998-04-21 00:00:00', '1998-03-27 00:00:00', 2, 15, 'La corne d-abondance', '67, avenue de l-Europe', 'Versailles', NULL, '78000', 'France', 'LACOR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10974, 75, 3, '1998-03-25 00:00:00', '1998-04-08 00:00:00', '1998-04-03 00:00:00', 3, 13, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', 'SPLIR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10975, 10, 1, '1998-03-25 00:00:00', '1998-04-22 00:00:00', '1998-03-27 00:00:00', 3, 32, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10976, 35, 1, '1998-03-25 00:00:00', '1998-05-06 00:00:00', '1998-04-03 00:00:00', 1, 38, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10977, 24, 8, '1998-03-26 00:00:00', '1998-04-23 00:00:00', '1998-04-10 00:00:00', 3, 209, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10978, 50, 9, '1998-03-26 00:00:00', '1998-04-23 00:00:00', '1998-04-23 00:00:00', 2, 33, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium', 'MAISD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10979, 20, 8, '1998-03-26 00:00:00', '1998-04-23 00:00:00', '1998-03-31 00:00:00', 2, 353, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10980, 24, 4, '1998-03-27 00:00:00', '1998-05-08 00:00:00', '1998-04-17 00:00:00', 1, 1, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10981, 34, 1, '1998-03-27 00:00:00', '1998-04-24 00:00:00', '1998-04-02 00:00:00', 2, 193, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10982, 10, 2, '1998-03-27 00:00:00', '1998-04-24 00:00:00', '1998-04-08 00:00:00', 1, 14, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10983, 71, 2, '1998-03-27 00:00:00', '1998-04-24 00:00:00', '1998-04-06 00:00:00', 2, 658, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10984, 71, 1, '1998-03-30 00:00:00', '1998-04-27 00:00:00', '1998-04-03 00:00:00', 3, 211, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10985, 37, 2, '1998-03-30 00:00:00', '1998-04-27 00:00:00', '1998-04-02 00:00:00', 1, 92, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10986, 54, 8, '1998-03-30 00:00:00', '1998-04-27 00:00:00', '1998-04-21 00:00:00', 2, 218, 'Ocano Atlntico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', NULL, '1010', 'Argentina', 'OCEAN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10987, 19, 8, '1998-03-31 00:00:00', '1998-04-28 00:00:00', '1998-04-06 00:00:00', 1, 185, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK', 'EASTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10988, 65, 3, '1998-03-31 00:00:00', '1998-04-28 00:00:00', '1998-04-10 00:00:00', 2, 61, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10989, 61, 2, '1998-03-31 00:00:00', '1998-04-28 00:00:00', '1998-04-02 00:00:00', 1, 35, 'Que Delcia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', 'QUEDE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10990, 20, 2, '1998-04-01 00:00:00', '1998-05-13 00:00:00', '1998-04-07 00:00:00', 3, 118, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10991, 63, 1, '1998-04-01 00:00:00', '1998-04-29 00:00:00', '1998-04-07 00:00:00', 1, 39, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10992, 77, 1, '1998-04-01 00:00:00', '1998-04-29 00:00:00', '1998-04-03 00:00:00', 3, 4, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA', 'THEBI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10993, 24, 7, '1998-04-01 00:00:00', '1998-04-29 00:00:00', '1998-04-10 00:00:00', 3, 9, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10994, 83, 2, '1998-04-02 00:00:00', '1998-04-16 00:00:00', '1998-04-09 00:00:00', 3, 66, 'Vaffeljernet', 'Smagsloget 45', 'rhus', NULL, '8200', 'Denmark', 'VAFFE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10995, 58, 1, '1998-04-02 00:00:00', '1998-04-30 00:00:00', '1998-04-06 00:00:00', 3, 46, 'Pericles Comidas clsicas', 'Calle Dr. Jorge Cash 321', 'Mxico D.F.', NULL, '5033', 'Mexico', 'PERIC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10996, 63, 4, '1998-04-02 00:00:00', '1998-04-30 00:00:00', '1998-04-10 00:00:00', 2, 1, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10997, 46, 8, '1998-04-03 00:00:00', '1998-05-15 00:00:00', '1998-04-13 00:00:00', 2, 74, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10998, 93, 8, '1998-04-03 00:00:00', '1998-04-17 00:00:00', '1998-04-17 00:00:00', 2, 20, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland', 'WOLZA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(10999, 56, 6, '1998-04-03 00:00:00', '1998-05-01 00:00:00', '1998-04-10 00:00:00', 2, 96, 'Ottilies Kseladen', 'Mehrheimerstr. 369', 'Kln', NULL, '50739', 'Germany', 'OTTIK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11000, 65, 2, '1998-04-06 00:00:00', '1998-05-04 00:00:00', '1998-04-14 00:00:00', 3, 55, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11001, 24, 2, '1998-04-06 00:00:00', '1998-05-04 00:00:00', '1998-04-14 00:00:00', 2, 197, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11002, 71, 4, '1998-04-06 00:00:00', '1998-05-04 00:00:00', '1998-04-16 00:00:00', 1, 141, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11003, 78, 3, '1998-04-06 00:00:00', '1998-05-04 00:00:00', '1998-04-08 00:00:00', 3, 15, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA', 'THECR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11004, 50, 3, '1998-04-07 00:00:00', '1998-05-05 00:00:00', '1998-04-20 00:00:00', 1, 45, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', NULL, 'B-1180', 'Belgium', 'MAISD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11005, 92, 2, '1998-04-07 00:00:00', '1998-05-05 00:00:00', '1998-04-10 00:00:00', 1, 1, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finland', 'WILMK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11006, 32, 3, '1998-04-07 00:00:00', '1998-05-05 00:00:00', '1998-04-15 00:00:00', 2, 25, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 'GREAL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11007, 60, 8, '1998-04-08 00:00:00', '1998-05-06 00:00:00', '1998-04-13 00:00:00', 2, 202, 'Princesa Isabel Vinhos', 'Estrada da sade n. 58', 'Lisboa', NULL, '1756', 'Portugal', 'PRINI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11008, 20, 7, '1998-04-08 00:00:00', '1998-05-06 00:00:00', NULL, 3, 79, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11009, 30, 2, '1998-04-08 00:00:00', '1998-05-06 00:00:00', '1998-04-10 00:00:00', 1, 59, 'Godos Cocina Tpica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', 'GODOS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11010, 66, 2, '1998-04-09 00:00:00', '1998-05-07 00:00:00', '1998-04-21 00:00:00', 2, 29, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11011, 1, 3, '1998-04-09 00:00:00', '1998-05-07 00:00:00', '1998-04-13 00:00:00', 1, 1, 'Alfred-s Futterkiste', 'Obere Str. 57', 'Berlin', NULL, '12209', 'Germany', 'ALFKI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11012, 25, 1, '1998-04-09 00:00:00', '1998-04-23 00:00:00', '1998-04-17 00:00:00', 3, 243, 'Frankenversand', 'Berliner Platz 43', 'Mnchen', NULL, '80805', 'Germany', 'FRANK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11013, 69, 2, '1998-04-09 00:00:00', '1998-05-07 00:00:00', '1998-04-10 00:00:00', 1, 33, 'Romero y tomillo', 'Gran Va, 1', 'Madrid', NULL, '28001', 'Spain', 'ROMEY');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11014, 47, 2, '1998-04-10 00:00:00', '1998-05-08 00:00:00', '1998-04-15 00:00:00', 3, 24, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11015, 70, 2, '1998-04-10 00:00:00', '1998-04-24 00:00:00', '1998-04-20 00:00:00', 2, 5, 'Sant Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Norway', 'SANTG');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11016, 4, 9, '1998-04-10 00:00:00', '1998-05-08 00:00:00', '1998-04-13 00:00:00', 2, 34, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK', 'AROUT');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11017, 20, 9, '1998-04-13 00:00:00', '1998-05-11 00:00:00', '1998-04-20 00:00:00', 2, 754, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11018, 48, 4, '1998-04-13 00:00:00', '1998-05-11 00:00:00', '1998-04-16 00:00:00', 2, 12, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', 'LONEP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11019, 64, 6, '1998-04-13 00:00:00', '1998-05-11 00:00:00', NULL, 3, 3, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', NULL, '1010', 'Argentina', 'RANCH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11020, 56, 2, '1998-04-14 00:00:00', '1998-05-12 00:00:00', '1998-04-16 00:00:00', 2, 43, 'Ottilies Kseladen', 'Mehrheimerstr. 369', 'Kln', NULL, '50739', 'Germany', 'OTTIK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11021, 63, 3, '1998-04-14 00:00:00', '1998-05-12 00:00:00', '1998-04-21 00:00:00', 1, 297, 'QUICK-Stop', 'Taucherstrae 10', 'Cunewalde', NULL, '1307', 'Germany', 'QUICK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11022, 34, 9, '1998-04-14 00:00:00', '1998-05-12 00:00:00', '1998-05-04 00:00:00', 2, 6, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11023, 11, 1, '1998-04-14 00:00:00', '1998-04-28 00:00:00', '1998-04-24 00:00:00', 2, 124, 'B-s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'UK', 'BSBEV');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11024, 19, 4, '1998-04-15 00:00:00', '1998-05-13 00:00:00', '1998-04-20 00:00:00', 1, 74, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK', 'EASTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11025, 89, 6, '1998-04-15 00:00:00', '1998-05-13 00:00:00', '1998-04-24 00:00:00', 3, 29, 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finland', 'WARTH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11026, 27, 4, '1998-04-15 00:00:00', '1998-05-13 00:00:00', '1998-04-28 00:00:00', 1, 47, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy', 'FRANS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11027, 10, 1, '1998-04-16 00:00:00', '1998-05-14 00:00:00', '1998-04-20 00:00:00', 1, 53, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11028, 39, 2, '1998-04-16 00:00:00', '1998-05-14 00:00:00', '1998-04-22 00:00:00', 1, 30, 'Kniglich Essen', 'Maubelstr. 90', 'Brandenburg', NULL, '14776', 'Germany', 'KOENE');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11029, 14, 4, '1998-04-16 00:00:00', '1998-05-14 00:00:00', '1998-04-27 00:00:00', 1, 48, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland', 'CHOPS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11030, 71, 7, '1998-04-17 00:00:00', '1998-05-15 00:00:00', '1998-04-27 00:00:00', 2, 831, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11031, 71, 6, '1998-04-17 00:00:00', '1998-05-15 00:00:00', '1998-04-24 00:00:00', 2, 227, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11032, 91, 2, '1998-04-17 00:00:00', '1998-05-15 00:00:00', '1998-04-23 00:00:00', 3, 606, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11033, 68, 7, '1998-04-17 00:00:00', '1998-05-15 00:00:00', '1998-04-23 00:00:00', 3, 85, 'Richter Supermarkt', 'Starenweg 5', 'Genve', NULL, '1204', 'Switzerland', 'RICSU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11034, 55, 8, '1998-04-20 00:00:00', '1998-06-01 00:00:00', '1998-04-27 00:00:00', 1, 40, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', 'OLDWO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11035, 76, 2, '1998-04-20 00:00:00', '1998-05-18 00:00:00', '1998-04-24 00:00:00', 2, 0, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11036, 17, 8, '1998-04-20 00:00:00', '1998-05-18 00:00:00', '1998-04-22 00:00:00', 3, 149, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany', 'DRACD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11037, 30, 7, '1998-04-21 00:00:00', '1998-05-19 00:00:00', '1998-04-27 00:00:00', 1, 3, 'Godos Cocina Tpica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'Spain', 'GODOS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11038, 76, 1, '1998-04-21 00:00:00', '1998-05-19 00:00:00', '1998-04-30 00:00:00', 2, 30, 'Suprmes dlices', 'Boulevard Tirou, 255', 'Charleroi', NULL, 'B-6000', 'Belgium', 'SUPRD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11039, 47, 1, '1998-04-21 00:00:00', '1998-05-19 00:00:00', NULL, 2, 65, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', 'LINOD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11040, 32, 4, '1998-04-22 00:00:00', '1998-05-20 00:00:00', NULL, 3, 19, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 'GREAL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11041, 14, 3, '1998-04-22 00:00:00', '1998-05-20 00:00:00', '1998-04-28 00:00:00', 2, 48, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', NULL, '3012', 'Switzerland', 'CHOPS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11042, 15, 2, '1998-04-22 00:00:00', '1998-05-06 00:00:00', '1998-05-01 00:00:00', 1, 30, 'Comrcio Mineiro', 'Av. dos Lusadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil', 'COMMI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11043, 74, 5, '1998-04-22 00:00:00', '1998-05-20 00:00:00', '1998-04-29 00:00:00', 2, 9, 'Spcialits du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'France', 'SPECD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11044, 93, 4, '1998-04-23 00:00:00', '1998-05-21 00:00:00', '1998-05-01 00:00:00', 1, 9, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Poland', 'WOLZA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11045, 10, 6, '1998-04-23 00:00:00', '1998-05-21 00:00:00', NULL, 2, 71, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11046, 88, 8, '1998-04-23 00:00:00', '1998-05-21 00:00:00', '1998-04-24 00:00:00', 2, 72, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Germany', 'WANDK');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11047, 19, 7, '1998-04-24 00:00:00', '1998-05-22 00:00:00', '1998-05-01 00:00:00', 3, 47, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK', 'EASTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11048, 10, 7, '1998-04-24 00:00:00', '1998-05-22 00:00:00', '1998-04-30 00:00:00', 3, 24, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', 'BOTTM');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11049, 31, 3, '1998-04-24 00:00:00', '1998-05-22 00:00:00', '1998-05-04 00:00:00', 1, 8, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', 'GOURL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11050, 24, 8, '1998-04-27 00:00:00', '1998-05-25 00:00:00', '1998-05-05 00:00:00', 2, 59, 'Folk och f HB', 'kergatan 24', 'Brcke', NULL, 'S-844 67', 'Sweden', 'FOLKO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11051, 41, 7, '1998-04-27 00:00:00', '1998-05-25 00:00:00', NULL, 3, 3, 'La maison d-Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'France', 'LAMAI');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11052, 34, 3, '1998-04-27 00:00:00', '1998-05-25 00:00:00', '1998-05-01 00:00:00', 1, 67, 'Hanari Carnes', 'Rua do Pao, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', 'HANAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11053, 59, 2, '1998-04-27 00:00:00', '1998-05-25 00:00:00', '1998-04-29 00:00:00', 2, 53, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria', 'PICCO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11054, 12, 8, '1998-04-28 00:00:00', '1998-05-26 00:00:00', NULL, 1, 0, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', NULL, '1010', 'Argentina', 'CACTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11055, 35, 7, '1998-04-28 00:00:00', '1998-05-26 00:00:00', '1998-05-05 00:00:00', 2, 121, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristbal', 'Tchira', '5022', 'Venezuela', 'HILAA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11056, 19, 8, '1998-04-28 00:00:00', '1998-05-12 00:00:00', '1998-05-01 00:00:00', 2, 279, 'Eastern Connection', '35 King George', 'London', NULL, 'WX3 6FW', 'UK', 'EASTC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11057, 53, 3, '1998-04-29 00:00:00', '1998-05-27 00:00:00', '1998-05-01 00:00:00', 3, 4, 'North/South', 'South House 300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'UK', 'NORTS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11058, 6, 9, '1998-04-29 00:00:00', '1998-05-27 00:00:00', NULL, 3, 31, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Germany', 'BLAUS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11059, 67, 2, '1998-04-29 00:00:00', '1998-06-10 00:00:00', NULL, 2, 86, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', 'RICAR');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11060, 27, 2, '1998-04-30 00:00:00', '1998-05-28 00:00:00', '1998-05-04 00:00:00', 2, 11, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italy', 'FRANS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11061, 32, 4, '1998-04-30 00:00:00', '1998-06-11 00:00:00', NULL, 3, 14, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', 'GREAL');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11062, 66, 4, '1998-04-30 00:00:00', '1998-05-28 00:00:00', NULL, 2, 30, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italy', 'REGGC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11063, 37, 3, '1998-04-30 00:00:00', '1998-05-28 00:00:00', '1998-05-06 00:00:00', 2, 82, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Ireland', 'HUNGO');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11064, 71, 1, '1998-05-01 00:00:00', '1998-05-29 00:00:00', '1998-05-04 00:00:00', 1, 30, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', 'SAVEA');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11065, 46, 8, '1998-05-01 00:00:00', '1998-05-29 00:00:00', NULL, 1, 13, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11066, 91, 7, '1998-05-01 00:00:00', '1998-05-29 00:00:00', '1998-05-04 00:00:00', 2, 45, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA', 'WHITC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11067, 17, 1, '1998-05-04 00:00:00', '1998-05-18 00:00:00', '1998-05-06 00:00:00', 2, 8, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', NULL, '52066', 'Germany', 'DRACD');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11068, 62, 8, '1998-05-04 00:00:00', '1998-06-01 00:00:00', NULL, 2, 82, 'Queen Cozinha', 'Alameda dos Canrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', 'QUEEN');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11069, 80, 1, '1998-05-04 00:00:00', '1998-06-01 00:00:00', '1998-05-06 00:00:00', 2, 16, 'Tortuga Restaurante', 'Avda. Azteca 123', 'Mxico D.F.', NULL, '5033', 'Mexico', 'TORTU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11070, 44, 2, '1998-05-05 00:00:00', '1998-06-02 00:00:00', NULL, 1, 136, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', NULL, '60528', 'Germany', 'LEHMS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11071, 46, 1, '1998-05-05 00:00:00', '1998-06-02 00:00:00', NULL, 1, 1, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolvar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', 'LILAS');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11072, 20, 4, '1998-05-05 00:00:00', '1998-06-02 00:00:00', NULL, 2, 259, 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', 'ERNSH');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11073, 58, 2, '1998-05-05 00:00:00', '1998-06-02 00:00:00', NULL, 2, 25, 'Pericles Comidas clsicas', 'Calle Dr. Jorge Cash 321', 'Mxico D.F.', NULL, '5033', 'Mexico', 'PERIC');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11074, 73, 7, '1998-05-06 00:00:00', '1998-06-03 00:00:00', NULL, 2, 18, 'Simons bistro', 'Vinbltet 34', 'Kobenhavn', NULL, '1734', 'Denmark', 'SIMOB');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11075, 68, 8, '1998-05-06 00:00:00', '1998-06-03 00:00:00', NULL, 2, 6, 'Richter Supermarkt', 'Starenweg 5', 'Genve', NULL, '1204', 'Switzerland', 'RICSU');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11076, 9, 4, '1998-05-06 00:00:00', '1998-06-03 00:00:00', NULL, 2, 38, 'Bon app-', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'France', 'BONAP');
INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `OldCustomerId`) VALUES
	(11077, 65, 1, '1998-05-06 00:00:00', '1998-06-03 00:00:00', NULL, 2, 9, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', 'RATTC');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table northwind.order_details
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `ProductID` int NOT NULL,
  `UnitPrice` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `Quantity` smallint NOT NULL DEFAULT '1',
  `Discount` double(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`OrderID`,`ProductID`),
  KEY `order_details_id` (`id`) USING BTREE,
  KEY `pk_order_details_products` (`ProductID`) USING BTREE,
  CONSTRAINT `fk_order_details_orders` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `fk_order_details_products` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=2156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table northwind.order_details: ~2,155 rows (approximately)
DELETE FROM `order_details`;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1, 10248, 11, 14.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2, 10248, 42, 9.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(3, 10248, 72, 34.8000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(4, 10249, 14, 18.6000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(5, 10249, 51, 42.4000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(6, 10250, 41, 7.7000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(7, 10250, 51, 42.4000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(8, 10250, 65, 16.8000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(9, 10251, 22, 16.8000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(10, 10251, 57, 15.6000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(11, 10251, 65, 16.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(12, 10252, 20, 64.8000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(13, 10252, 33, 2.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(14, 10252, 60, 27.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(15, 10253, 31, 10.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(16, 10253, 39, 14.4000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(17, 10253, 49, 16.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(18, 10254, 24, 3.6000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(19, 10254, 55, 19.2000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(20, 10254, 74, 8.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(21, 10255, 2, 15.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(22, 10255, 16, 13.9000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(23, 10255, 36, 15.2000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(24, 10255, 59, 44.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(25, 10256, 53, 26.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(26, 10256, 77, 10.4000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(27, 10257, 27, 35.1000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(28, 10257, 39, 14.4000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(29, 10257, 77, 10.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(30, 10258, 2, 15.2000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(31, 10258, 5, 17.0000, 65, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(32, 10258, 32, 25.6000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(33, 10259, 21, 8.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(34, 10259, 37, 20.8000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(35, 10260, 41, 7.7000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(36, 10260, 57, 15.6000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(37, 10260, 62, 39.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(38, 10260, 70, 12.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(39, 10261, 21, 8.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(40, 10261, 35, 14.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(41, 10262, 5, 17.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(42, 10262, 7, 24.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(43, 10262, 56, 30.4000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(44, 10263, 16, 13.9000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(45, 10263, 24, 3.6000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(46, 10263, 30, 20.7000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(47, 10263, 74, 8.0000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(48, 10264, 2, 15.2000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(49, 10264, 41, 7.7000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(50, 10265, 17, 31.2000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(51, 10265, 70, 12.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(52, 10266, 12, 30.4000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(53, 10267, 40, 14.7000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(54, 10267, 59, 44.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(55, 10267, 76, 14.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(56, 10268, 29, 99.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(57, 10268, 72, 27.8000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(58, 10269, 33, 2.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(59, 10269, 72, 27.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(60, 10270, 36, 15.2000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(61, 10270, 43, 36.8000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(62, 10271, 33, 2.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(63, 10272, 20, 64.8000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(64, 10272, 31, 10.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(65, 10272, 72, 27.8000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(66, 10273, 10, 24.8000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(67, 10273, 31, 10.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(68, 10273, 33, 2.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(69, 10273, 40, 14.7000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(70, 10273, 76, 14.4000, 33, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(71, 10274, 71, 17.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(72, 10274, 72, 27.8000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(73, 10275, 24, 3.6000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(74, 10275, 59, 44.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(75, 10276, 10, 24.8000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(76, 10276, 13, 4.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(77, 10277, 28, 36.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(78, 10277, 62, 39.4000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(79, 10278, 44, 15.5000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(80, 10278, 59, 44.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(81, 10278, 63, 35.1000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(82, 10278, 73, 12.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(83, 10279, 17, 31.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(84, 10280, 24, 3.6000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(85, 10280, 55, 19.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(86, 10280, 75, 6.2000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(87, 10281, 19, 7.3000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(88, 10281, 24, 3.6000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(89, 10281, 35, 14.4000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(90, 10282, 30, 20.7000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(91, 10282, 57, 15.6000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(92, 10283, 15, 12.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(93, 10283, 19, 7.3000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(94, 10283, 60, 27.2000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(95, 10283, 72, 27.8000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(96, 10284, 27, 35.1000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(97, 10284, 44, 15.5000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(98, 10284, 60, 27.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(99, 10284, 67, 11.2000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(100, 10285, 1, 14.4000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(101, 10285, 40, 14.7000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(102, 10285, 53, 26.2000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(103, 10286, 35, 14.4000, 100, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(104, 10286, 62, 39.4000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(105, 10287, 16, 13.9000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(106, 10287, 34, 11.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(107, 10287, 46, 9.6000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(108, 10288, 54, 5.9000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(109, 10288, 68, 10.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(110, 10289, 3, 8.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(111, 10289, 64, 26.6000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(112, 10290, 5, 17.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(113, 10290, 29, 99.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(114, 10290, 49, 16.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(115, 10290, 77, 10.4000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(116, 10291, 13, 4.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(117, 10291, 44, 15.5000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(118, 10291, 51, 42.4000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(119, 10292, 20, 64.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(120, 10293, 18, 50.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(121, 10293, 24, 3.6000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(122, 10293, 63, 35.1000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(123, 10293, 75, 6.2000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(124, 10294, 1, 14.4000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(125, 10294, 17, 31.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(126, 10294, 43, 36.8000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(127, 10294, 60, 27.2000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(128, 10294, 75, 6.2000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(129, 10295, 56, 30.4000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(130, 10296, 11, 16.8000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(131, 10296, 16, 13.9000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(132, 10296, 69, 28.8000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(133, 10297, 39, 14.4000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(134, 10297, 72, 27.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(135, 10298, 2, 15.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(136, 10298, 36, 15.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(137, 10298, 59, 44.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(138, 10298, 62, 39.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(139, 10299, 19, 7.3000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(140, 10299, 70, 12.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(141, 10300, 66, 13.6000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(142, 10300, 68, 10.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(143, 10301, 40, 14.7000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(144, 10301, 56, 30.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(145, 10302, 17, 31.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(146, 10302, 28, 36.4000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(147, 10302, 43, 36.8000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(148, 10303, 40, 14.7000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(149, 10303, 65, 16.8000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(150, 10303, 68, 10.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(151, 10304, 49, 16.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(152, 10304, 59, 44.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(153, 10304, 71, 17.2000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(154, 10305, 18, 50.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(155, 10305, 29, 99.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(156, 10305, 39, 14.4000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(157, 10306, 30, 20.7000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(158, 10306, 53, 26.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(159, 10306, 54, 5.9000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(160, 10307, 62, 39.4000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(161, 10307, 68, 10.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(162, 10308, 69, 28.8000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(163, 10308, 70, 12.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(164, 10309, 4, 17.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(165, 10309, 6, 20.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(166, 10309, 42, 11.2000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(167, 10309, 43, 36.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(168, 10309, 71, 17.2000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(169, 10310, 16, 13.9000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(170, 10310, 62, 39.4000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(171, 10311, 42, 11.2000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(172, 10311, 69, 28.8000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(173, 10312, 28, 36.4000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(174, 10312, 43, 36.8000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(175, 10312, 53, 26.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(176, 10312, 75, 6.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(177, 10313, 36, 15.2000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(178, 10314, 32, 25.6000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(179, 10314, 58, 10.6000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(180, 10314, 62, 39.4000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(181, 10315, 34, 11.2000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(182, 10315, 70, 12.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(183, 10316, 41, 7.7000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(184, 10316, 62, 39.4000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(185, 10317, 1, 14.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(186, 10318, 41, 7.7000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(187, 10318, 76, 14.4000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(188, 10319, 17, 31.2000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(189, 10319, 28, 36.4000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(190, 10319, 76, 14.4000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(191, 10320, 71, 17.2000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(192, 10321, 35, 14.4000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(193, 10322, 52, 5.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(194, 10323, 15, 12.4000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(195, 10323, 25, 11.2000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(196, 10323, 39, 14.4000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(197, 10324, 16, 13.9000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(198, 10324, 35, 14.4000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(199, 10324, 46, 9.6000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(200, 10324, 59, 44.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(201, 10324, 63, 35.1000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(202, 10325, 6, 20.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(203, 10325, 13, 4.8000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(204, 10325, 14, 18.6000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(205, 10325, 31, 10.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(206, 10325, 72, 27.8000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(207, 10326, 4, 17.6000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(208, 10326, 57, 15.6000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(209, 10326, 75, 6.2000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(210, 10327, 2, 15.2000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(211, 10327, 11, 16.8000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(212, 10327, 30, 20.7000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(213, 10327, 58, 10.6000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(214, 10328, 59, 44.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(215, 10328, 65, 16.8000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(216, 10328, 68, 10.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(217, 10329, 19, 7.3000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(218, 10329, 30, 20.7000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(219, 10329, 38, 210.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(220, 10329, 56, 30.4000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(221, 10330, 26, 24.9000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(222, 10330, 72, 27.8000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(223, 10331, 54, 5.9000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(224, 10332, 18, 50.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(225, 10332, 42, 11.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(226, 10332, 47, 7.6000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(227, 10333, 14, 18.6000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(228, 10333, 21, 8.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(229, 10333, 71, 17.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(230, 10334, 52, 5.6000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(231, 10334, 68, 10.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(232, 10335, 2, 15.2000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(233, 10335, 31, 10.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(234, 10335, 32, 25.6000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(235, 10335, 51, 42.4000, 48, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(236, 10336, 4, 17.6000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(237, 10337, 23, 7.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(238, 10337, 26, 24.9000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(239, 10337, 36, 15.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(240, 10337, 37, 20.8000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(241, 10337, 72, 27.8000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(242, 10338, 17, 31.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(243, 10338, 30, 20.7000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(244, 10339, 4, 17.6000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(245, 10339, 17, 31.2000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(246, 10339, 62, 39.4000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(247, 10340, 18, 50.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(248, 10340, 41, 7.7000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(249, 10340, 43, 36.8000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(250, 10341, 33, 2.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(251, 10341, 59, 44.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(252, 10342, 2, 15.2000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(253, 10342, 31, 10.0000, 56, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(254, 10342, 36, 15.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(255, 10342, 55, 19.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(256, 10343, 64, 26.6000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(257, 10343, 68, 10.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(258, 10343, 76, 14.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(259, 10344, 4, 17.6000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(260, 10344, 8, 32.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(261, 10345, 8, 32.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(262, 10345, 19, 7.3000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(263, 10345, 42, 11.2000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(264, 10346, 17, 31.2000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(265, 10346, 56, 30.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(266, 10347, 25, 11.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(267, 10347, 39, 14.4000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(268, 10347, 40, 14.7000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(269, 10347, 75, 6.2000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(270, 10348, 1, 14.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(271, 10348, 23, 7.2000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(272, 10349, 54, 5.9000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(273, 10350, 50, 13.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(274, 10350, 69, 28.8000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(275, 10351, 38, 210.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(276, 10351, 41, 7.7000, 13, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(277, 10351, 44, 15.5000, 77, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(278, 10351, 65, 16.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(279, 10352, 24, 3.6000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(280, 10352, 54, 5.9000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(281, 10353, 11, 16.8000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(282, 10353, 38, 210.8000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(283, 10354, 1, 14.4000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(284, 10354, 29, 99.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(285, 10355, 24, 3.6000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(286, 10355, 57, 15.6000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(287, 10356, 31, 10.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(288, 10356, 55, 19.2000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(289, 10356, 69, 28.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(290, 10357, 10, 24.8000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(291, 10357, 26, 24.9000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(292, 10357, 60, 27.2000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(293, 10358, 24, 3.6000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(294, 10358, 34, 11.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(295, 10358, 36, 15.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(296, 10359, 16, 13.9000, 56, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(297, 10359, 31, 10.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(298, 10359, 60, 27.2000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(299, 10360, 28, 36.4000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(300, 10360, 29, 99.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(301, 10360, 38, 210.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(302, 10360, 49, 16.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(303, 10360, 54, 5.9000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(304, 10361, 39, 14.4000, 54, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(305, 10361, 60, 27.2000, 55, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(306, 10362, 25, 11.2000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(307, 10362, 51, 42.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(308, 10362, 54, 5.9000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(309, 10363, 31, 10.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(310, 10363, 75, 6.2000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(311, 10363, 76, 14.4000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(312, 10364, 69, 28.8000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(313, 10364, 71, 17.2000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(314, 10365, 11, 16.8000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(315, 10366, 65, 16.8000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(316, 10366, 77, 10.4000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(317, 10367, 34, 11.2000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(318, 10367, 54, 5.9000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(319, 10367, 65, 16.8000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(320, 10367, 77, 10.4000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(321, 10368, 21, 8.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(322, 10368, 28, 36.4000, 13, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(323, 10368, 57, 15.6000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(324, 10368, 64, 26.6000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(325, 10369, 29, 99.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(326, 10369, 56, 30.4000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(327, 10370, 1, 14.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(328, 10370, 64, 26.6000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(329, 10370, 74, 8.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(330, 10371, 36, 15.2000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(331, 10372, 20, 64.8000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(332, 10372, 38, 210.8000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(333, 10372, 60, 27.2000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(334, 10372, 72, 27.8000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(335, 10373, 58, 10.6000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(336, 10373, 71, 17.2000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(337, 10374, 31, 10.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(338, 10374, 58, 10.6000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(339, 10375, 14, 18.6000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(340, 10375, 54, 5.9000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(341, 10376, 31, 10.0000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(342, 10377, 28, 36.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(343, 10377, 39, 14.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(344, 10378, 71, 17.2000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(345, 10379, 41, 7.7000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(346, 10379, 63, 35.1000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(347, 10379, 65, 16.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(348, 10380, 30, 20.7000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(349, 10380, 53, 26.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(350, 10380, 60, 27.2000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(351, 10380, 70, 12.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(352, 10381, 74, 8.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(353, 10382, 5, 17.0000, 32, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(354, 10382, 18, 50.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(355, 10382, 29, 99.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(356, 10382, 33, 2.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(357, 10382, 74, 8.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(358, 10383, 13, 4.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(359, 10383, 50, 13.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(360, 10383, 56, 30.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(361, 10384, 20, 64.8000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(362, 10384, 60, 27.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(363, 10385, 7, 24.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(364, 10385, 60, 27.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(365, 10385, 68, 10.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(366, 10386, 24, 3.6000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(367, 10386, 34, 11.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(368, 10387, 24, 3.6000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(369, 10387, 28, 36.4000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(370, 10387, 59, 44.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(371, 10387, 71, 17.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(372, 10388, 45, 7.6000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(373, 10388, 52, 5.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(374, 10388, 53, 26.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(375, 10389, 10, 24.8000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(376, 10389, 55, 19.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(377, 10389, 62, 39.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(378, 10389, 70, 12.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(379, 10390, 31, 10.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(380, 10390, 35, 14.4000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(381, 10390, 46, 9.6000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(382, 10390, 72, 27.8000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(383, 10391, 13, 4.8000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(384, 10392, 69, 28.8000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(385, 10393, 2, 15.2000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(386, 10393, 14, 18.6000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(387, 10393, 25, 11.2000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(388, 10393, 26, 24.9000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(389, 10393, 31, 10.0000, 32, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(390, 10394, 13, 4.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(391, 10394, 62, 39.4000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(392, 10395, 46, 9.6000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(393, 10395, 53, 26.2000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(394, 10395, 69, 28.8000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(395, 10396, 23, 7.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(396, 10396, 71, 17.2000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(397, 10396, 72, 27.8000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(398, 10397, 21, 8.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(399, 10397, 51, 42.4000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(400, 10398, 35, 14.4000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(401, 10398, 55, 19.2000, 120, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(402, 10399, 68, 10.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(403, 10399, 71, 17.2000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(404, 10399, 76, 14.4000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(405, 10399, 77, 10.4000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(406, 10400, 29, 99.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(407, 10400, 35, 14.4000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(408, 10400, 49, 16.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(409, 10401, 30, 20.7000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(410, 10401, 56, 30.4000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(411, 10401, 65, 16.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(412, 10401, 71, 17.2000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(413, 10402, 23, 7.2000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(414, 10402, 63, 35.1000, 65, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(415, 10403, 16, 13.9000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(416, 10403, 48, 10.2000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(417, 10404, 26, 24.9000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(418, 10404, 42, 11.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(419, 10404, 49, 16.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(420, 10405, 3, 8.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(421, 10406, 1, 14.4000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(422, 10406, 21, 8.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(423, 10406, 28, 36.4000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(424, 10406, 36, 15.2000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(425, 10406, 40, 14.7000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(426, 10407, 11, 16.8000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(427, 10407, 69, 28.8000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(428, 10407, 71, 17.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(429, 10408, 37, 20.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(430, 10408, 54, 5.9000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(431, 10408, 62, 39.4000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(432, 10409, 14, 18.6000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(433, 10409, 21, 8.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(434, 10410, 33, 2.0000, 49, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(435, 10410, 59, 44.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(436, 10411, 41, 7.7000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(437, 10411, 44, 15.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(438, 10411, 59, 44.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(439, 10412, 14, 18.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(440, 10413, 1, 14.4000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(441, 10413, 62, 39.4000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(442, 10413, 76, 14.4000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(443, 10414, 19, 7.3000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(444, 10414, 33, 2.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(445, 10415, 17, 31.2000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(446, 10415, 33, 2.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(447, 10416, 19, 7.3000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(448, 10416, 53, 26.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(449, 10416, 57, 15.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(450, 10417, 38, 210.8000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(451, 10417, 46, 9.6000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(452, 10417, 68, 10.0000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(453, 10417, 77, 10.4000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(454, 10418, 2, 15.2000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(455, 10418, 47, 7.6000, 55, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(456, 10418, 61, 22.8000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(457, 10418, 74, 8.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(458, 10419, 60, 27.2000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(459, 10419, 69, 28.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(460, 10420, 9, 77.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(461, 10420, 13, 4.8000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(462, 10420, 70, 12.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(463, 10420, 73, 12.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(464, 10421, 19, 7.3000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(465, 10421, 26, 24.9000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(466, 10421, 53, 26.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(467, 10421, 77, 10.4000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(468, 10422, 26, 24.9000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(469, 10423, 31, 10.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(470, 10423, 59, 44.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(471, 10424, 35, 14.4000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(472, 10424, 38, 210.8000, 49, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(473, 10424, 68, 10.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(474, 10425, 55, 19.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(475, 10425, 76, 14.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(476, 10426, 56, 30.4000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(477, 10426, 64, 26.6000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(478, 10427, 14, 18.6000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(479, 10428, 46, 9.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(480, 10429, 50, 13.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(481, 10429, 63, 35.1000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(482, 10430, 17, 31.2000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(483, 10430, 21, 8.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(484, 10430, 56, 30.4000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(485, 10430, 59, 44.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(486, 10431, 17, 31.2000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(487, 10431, 40, 14.7000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(488, 10431, 47, 7.6000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(489, 10432, 26, 24.9000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(490, 10432, 54, 5.9000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(491, 10433, 56, 30.4000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(492, 10434, 11, 16.8000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(493, 10434, 76, 14.4000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(494, 10435, 2, 15.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(495, 10435, 22, 16.8000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(496, 10435, 72, 27.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(497, 10436, 46, 9.6000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(498, 10436, 56, 30.4000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(499, 10436, 64, 26.6000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(500, 10436, 75, 6.2000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(501, 10437, 53, 26.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(502, 10438, 19, 7.3000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(503, 10438, 34, 11.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(504, 10438, 57, 15.6000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(505, 10439, 12, 30.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(506, 10439, 16, 13.9000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(507, 10439, 64, 26.6000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(508, 10439, 74, 8.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(509, 10440, 2, 15.2000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(510, 10440, 16, 13.9000, 49, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(511, 10440, 29, 99.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(512, 10440, 61, 22.8000, 90, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(513, 10441, 27, 35.1000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(514, 10442, 11, 16.8000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(515, 10442, 54, 5.9000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(516, 10442, 66, 13.6000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(517, 10443, 11, 16.8000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(518, 10443, 28, 36.4000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(519, 10444, 17, 31.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(520, 10444, 26, 24.9000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(521, 10444, 35, 14.4000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(522, 10444, 41, 7.7000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(523, 10445, 39, 14.4000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(524, 10445, 54, 5.9000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(525, 10446, 19, 7.3000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(526, 10446, 24, 3.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(527, 10446, 31, 10.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(528, 10446, 52, 5.6000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(529, 10447, 19, 7.3000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(530, 10447, 65, 16.8000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(531, 10447, 71, 17.2000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(532, 10448, 26, 24.9000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(533, 10448, 40, 14.7000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(534, 10449, 10, 24.8000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(535, 10449, 52, 5.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(536, 10449, 62, 39.4000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(537, 10450, 10, 24.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(538, 10450, 54, 5.9000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(539, 10451, 55, 19.2000, 120, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(540, 10451, 64, 26.6000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(541, 10451, 65, 16.8000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(542, 10451, 77, 10.4000, 55, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(543, 10452, 28, 36.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(544, 10452, 44, 15.5000, 100, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(545, 10453, 48, 10.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(546, 10453, 70, 12.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(547, 10454, 16, 13.9000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(548, 10454, 33, 2.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(549, 10454, 46, 9.6000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(550, 10455, 39, 14.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(551, 10455, 53, 26.2000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(552, 10455, 61, 22.8000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(553, 10455, 71, 17.2000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(554, 10456, 21, 8.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(555, 10456, 49, 16.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(556, 10457, 59, 44.0000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(557, 10458, 26, 24.9000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(558, 10458, 28, 36.4000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(559, 10458, 43, 36.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(560, 10458, 56, 30.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(561, 10458, 71, 17.2000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(562, 10459, 7, 24.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(563, 10459, 46, 9.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(564, 10459, 72, 27.8000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(565, 10460, 68, 10.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(566, 10460, 75, 6.2000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(567, 10461, 21, 8.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(568, 10461, 30, 20.7000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(569, 10461, 55, 19.2000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(570, 10462, 13, 4.8000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(571, 10462, 23, 7.2000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(572, 10463, 19, 7.3000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(573, 10463, 42, 11.2000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(574, 10464, 4, 17.6000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(575, 10464, 43, 36.8000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(576, 10464, 56, 30.4000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(577, 10464, 60, 27.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(578, 10465, 24, 3.6000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(579, 10465, 29, 99.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(580, 10465, 40, 14.7000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(581, 10465, 45, 7.6000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(582, 10465, 50, 13.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(583, 10466, 11, 16.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(584, 10466, 46, 9.6000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(585, 10467, 24, 3.6000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(586, 10467, 25, 11.2000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(587, 10468, 30, 20.7000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(588, 10468, 43, 36.8000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(589, 10469, 2, 15.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(590, 10469, 16, 13.9000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(591, 10469, 44, 15.5000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(592, 10470, 18, 50.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(593, 10470, 23, 7.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(594, 10470, 64, 26.6000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(595, 10471, 7, 24.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(596, 10471, 56, 30.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(597, 10472, 24, 3.6000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(598, 10472, 51, 42.4000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(599, 10473, 33, 2.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(600, 10473, 71, 17.2000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(601, 10474, 14, 18.6000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(602, 10474, 28, 36.4000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(603, 10474, 40, 14.7000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(604, 10474, 75, 6.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(605, 10475, 31, 10.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(606, 10475, 66, 13.6000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(607, 10475, 76, 14.4000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(608, 10476, 55, 19.2000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(609, 10476, 70, 12.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(610, 10477, 1, 14.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(611, 10477, 21, 8.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(612, 10477, 39, 14.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(613, 10478, 10, 24.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(614, 10479, 38, 210.8000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(615, 10479, 53, 26.2000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(616, 10479, 59, 44.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(617, 10479, 64, 26.6000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(618, 10480, 47, 7.6000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(619, 10480, 59, 44.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(620, 10481, 49, 16.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(621, 10481, 60, 27.2000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(622, 10482, 40, 14.7000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(623, 10483, 34, 11.2000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(624, 10483, 77, 10.4000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(625, 10484, 21, 8.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(626, 10484, 40, 14.7000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(627, 10484, 51, 42.4000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(628, 10485, 2, 15.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(629, 10485, 3, 8.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(630, 10485, 55, 19.2000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(631, 10485, 70, 12.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(632, 10486, 11, 16.8000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(633, 10486, 51, 42.4000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(634, 10486, 74, 8.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(635, 10487, 19, 7.3000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(636, 10487, 26, 24.9000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(637, 10487, 54, 5.9000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(638, 10488, 59, 44.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(639, 10488, 73, 12.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(640, 10489, 11, 16.8000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(641, 10489, 16, 13.9000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(642, 10490, 59, 44.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(643, 10490, 68, 10.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(644, 10490, 75, 6.2000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(645, 10491, 44, 15.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(646, 10491, 77, 10.4000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(647, 10492, 25, 11.2000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(648, 10492, 42, 11.2000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(649, 10493, 65, 16.8000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(650, 10493, 66, 13.6000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(651, 10493, 69, 28.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(652, 10494, 56, 30.4000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(653, 10495, 23, 7.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(654, 10495, 41, 7.7000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(655, 10495, 77, 10.4000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(656, 10496, 31, 10.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(657, 10497, 56, 30.4000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(658, 10497, 72, 27.8000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(659, 10497, 77, 10.4000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(660, 10498, 24, 4.5000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(661, 10498, 40, 18.4000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(662, 10498, 42, 14.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(663, 10499, 28, 45.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(664, 10499, 49, 20.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(665, 10500, 15, 15.5000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(666, 10500, 28, 45.6000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(667, 10501, 54, 7.4500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(668, 10502, 45, 9.5000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(669, 10502, 53, 32.8000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(670, 10502, 67, 14.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(671, 10503, 14, 23.2500, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(672, 10503, 65, 21.0500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(673, 10504, 2, 19.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(674, 10504, 21, 10.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(675, 10504, 53, 32.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(676, 10504, 61, 28.5000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(677, 10505, 62, 49.3000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(678, 10506, 25, 14.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(679, 10506, 70, 15.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(680, 10507, 43, 46.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(681, 10507, 48, 12.7500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(682, 10508, 13, 6.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(683, 10508, 39, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(684, 10509, 28, 45.6000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(685, 10510, 29, 123.7900, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(686, 10510, 75, 7.7500, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(687, 10511, 4, 22.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(688, 10511, 7, 30.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(689, 10511, 8, 40.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(690, 10512, 24, 4.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(691, 10512, 46, 12.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(692, 10512, 47, 9.5000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(693, 10512, 60, 34.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(694, 10513, 21, 10.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(695, 10513, 32, 32.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(696, 10513, 61, 28.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(697, 10514, 20, 81.0000, 39, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(698, 10514, 28, 45.6000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(699, 10514, 56, 38.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(700, 10514, 65, 21.0500, 39, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(701, 10514, 75, 7.7500, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(702, 10515, 9, 97.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(703, 10515, 16, 17.4500, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(704, 10515, 27, 43.9000, 120, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(705, 10515, 33, 2.5000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(706, 10515, 60, 34.0000, 84, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(707, 10516, 18, 62.5000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(708, 10516, 41, 9.6500, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(709, 10516, 42, 14.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(710, 10517, 52, 7.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(711, 10517, 59, 55.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(712, 10517, 70, 15.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(713, 10518, 24, 4.5000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(714, 10518, 38, 263.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(715, 10518, 44, 19.4500, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(716, 10519, 10, 31.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(717, 10519, 56, 38.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(718, 10519, 60, 34.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(719, 10520, 24, 4.5000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(720, 10520, 53, 32.8000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(721, 10521, 35, 18.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(722, 10521, 41, 9.6500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(723, 10521, 68, 12.5000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(724, 10522, 1, 18.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(725, 10522, 8, 40.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(726, 10522, 30, 25.8900, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(727, 10522, 40, 18.4000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(728, 10523, 17, 39.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(729, 10523, 20, 81.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(730, 10523, 37, 26.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(731, 10523, 41, 9.6500, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(732, 10524, 10, 31.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(733, 10524, 30, 25.8900, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(734, 10524, 43, 46.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(735, 10524, 54, 7.4500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(736, 10525, 36, 19.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(737, 10525, 40, 18.4000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(738, 10526, 1, 18.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(739, 10526, 13, 6.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(740, 10526, 56, 38.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(741, 10527, 4, 22.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(742, 10527, 36, 19.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(743, 10528, 11, 21.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(744, 10528, 33, 2.5000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(745, 10528, 72, 34.8000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(746, 10529, 55, 24.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(747, 10529, 68, 12.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(748, 10529, 69, 36.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(749, 10530, 17, 39.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(750, 10530, 43, 46.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(751, 10530, 61, 28.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(752, 10530, 76, 18.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(753, 10531, 59, 55.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(754, 10532, 30, 25.8900, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(755, 10532, 66, 17.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(756, 10533, 4, 22.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(757, 10533, 72, 34.8000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(758, 10533, 73, 15.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(759, 10534, 30, 25.8900, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(760, 10534, 40, 18.4000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(761, 10534, 54, 7.4500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(762, 10535, 11, 21.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(763, 10535, 40, 18.4000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(764, 10535, 57, 19.5000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(765, 10535, 59, 55.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(766, 10536, 12, 38.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(767, 10536, 31, 12.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(768, 10536, 33, 2.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(769, 10536, 60, 34.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(770, 10537, 31, 12.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(771, 10537, 51, 53.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(772, 10537, 58, 13.2500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(773, 10537, 72, 34.8000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(774, 10537, 73, 15.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(775, 10538, 70, 15.0000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(776, 10538, 72, 34.8000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(777, 10539, 13, 6.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(778, 10539, 21, 10.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(779, 10539, 33, 2.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(780, 10539, 49, 20.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(781, 10540, 3, 10.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(782, 10540, 26, 31.2300, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(783, 10540, 38, 263.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(784, 10540, 68, 12.5000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(785, 10541, 24, 4.5000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(786, 10541, 38, 263.5000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(787, 10541, 65, 21.0500, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(788, 10541, 71, 21.5000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(789, 10542, 11, 21.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(790, 10542, 54, 7.4500, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(791, 10543, 12, 38.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(792, 10543, 23, 9.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(793, 10544, 28, 45.6000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(794, 10544, 67, 14.0000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(795, 10545, 11, 21.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(796, 10546, 7, 30.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(797, 10546, 35, 18.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(798, 10546, 62, 49.3000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(799, 10547, 32, 32.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(800, 10547, 36, 19.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(801, 10548, 34, 14.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(802, 10548, 41, 9.6500, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(803, 10549, 31, 12.5000, 55, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(804, 10549, 45, 9.5000, 100, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(805, 10549, 51, 53.0000, 48, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(806, 10550, 17, 39.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(807, 10550, 19, 9.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(808, 10550, 21, 10.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(809, 10550, 61, 28.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(810, 10551, 16, 17.4500, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(811, 10551, 35, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(812, 10551, 44, 19.4500, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(813, 10552, 69, 36.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(814, 10552, 75, 7.7500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(815, 10553, 11, 21.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(816, 10553, 16, 17.4500, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(817, 10553, 22, 21.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(818, 10553, 31, 12.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(819, 10553, 35, 18.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(820, 10554, 16, 17.4500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(821, 10554, 23, 9.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(822, 10554, 62, 49.3000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(823, 10554, 77, 13.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(824, 10555, 14, 23.2500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(825, 10555, 19, 9.2000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(826, 10555, 24, 4.5000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(827, 10555, 51, 53.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(828, 10555, 56, 38.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(829, 10556, 72, 34.8000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(830, 10557, 64, 33.2500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(831, 10557, 75, 7.7500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(832, 10558, 47, 9.5000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(833, 10558, 51, 53.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(834, 10558, 52, 7.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(835, 10558, 53, 32.8000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(836, 10558, 73, 15.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(837, 10559, 41, 9.6500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(838, 10559, 55, 24.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(839, 10560, 30, 25.8900, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(840, 10560, 62, 49.3000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(841, 10561, 44, 19.4500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(842, 10561, 51, 53.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(843, 10562, 33, 2.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(844, 10562, 62, 49.3000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(845, 10563, 36, 19.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(846, 10563, 52, 7.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(847, 10564, 17, 39.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(848, 10564, 31, 12.5000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(849, 10564, 55, 24.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(850, 10565, 24, 4.5000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(851, 10565, 64, 33.2500, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(852, 10566, 11, 21.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(853, 10566, 18, 62.5000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(854, 10566, 76, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(855, 10567, 31, 12.5000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(856, 10567, 51, 53.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(857, 10567, 59, 55.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(858, 10568, 10, 31.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(859, 10569, 31, 12.5000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(860, 10569, 76, 18.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(861, 10570, 11, 21.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(862, 10570, 56, 38.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(863, 10571, 14, 23.2500, 11, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(864, 10571, 42, 14.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(865, 10572, 16, 17.4500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(866, 10572, 32, 32.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(867, 10572, 40, 18.4000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(868, 10572, 75, 7.7500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(869, 10573, 17, 39.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(870, 10573, 34, 14.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(871, 10573, 53, 32.8000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(872, 10574, 33, 2.5000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(873, 10574, 40, 18.4000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(874, 10574, 62, 49.3000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(875, 10574, 64, 33.2500, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(876, 10575, 59, 55.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(877, 10575, 63, 43.9000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(878, 10575, 72, 34.8000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(879, 10575, 76, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(880, 10576, 1, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(881, 10576, 31, 12.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(882, 10576, 44, 19.4500, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(883, 10577, 39, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(884, 10577, 75, 7.7500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(885, 10577, 77, 13.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(886, 10578, 35, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(887, 10578, 57, 19.5000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(888, 10579, 15, 15.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(889, 10579, 75, 7.7500, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(890, 10580, 14, 23.2500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(891, 10580, 41, 9.6500, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(892, 10580, 65, 21.0500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(893, 10581, 75, 7.7500, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(894, 10582, 57, 19.5000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(895, 10582, 76, 18.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(896, 10583, 29, 123.7900, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(897, 10583, 60, 34.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(898, 10583, 69, 36.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(899, 10584, 31, 12.5000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(900, 10585, 47, 9.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(901, 10586, 52, 7.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(902, 10587, 26, 31.2300, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(903, 10587, 35, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(904, 10587, 77, 13.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(905, 10588, 18, 62.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(906, 10588, 42, 14.0000, 100, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(907, 10589, 35, 18.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(908, 10590, 1, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(909, 10590, 77, 13.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(910, 10591, 3, 10.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(911, 10591, 7, 30.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(912, 10591, 54, 7.4500, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(913, 10592, 15, 15.5000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(914, 10592, 26, 31.2300, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(915, 10593, 20, 81.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(916, 10593, 69, 36.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(917, 10593, 76, 18.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(918, 10594, 52, 7.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(919, 10594, 58, 13.2500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(920, 10595, 35, 18.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(921, 10595, 61, 28.5000, 120, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(922, 10595, 69, 36.0000, 65, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(923, 10596, 56, 38.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(924, 10596, 63, 43.9000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(925, 10596, 75, 7.7500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(926, 10597, 24, 4.5000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(927, 10597, 57, 19.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(928, 10597, 65, 21.0500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(929, 10598, 27, 43.9000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(930, 10598, 71, 21.5000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(931, 10599, 62, 49.3000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(932, 10600, 54, 7.4500, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(933, 10600, 73, 15.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(934, 10601, 13, 6.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(935, 10601, 59, 55.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(936, 10602, 77, 13.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(937, 10603, 22, 21.0000, 48, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(938, 10603, 49, 20.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(939, 10604, 48, 12.7500, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(940, 10604, 76, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(941, 10605, 16, 17.4500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(942, 10605, 59, 55.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(943, 10605, 60, 34.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(944, 10605, 71, 21.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(945, 10606, 4, 22.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(946, 10606, 55, 24.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(947, 10606, 62, 49.3000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(948, 10607, 7, 30.0000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(949, 10607, 17, 39.0000, 100, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(950, 10607, 33, 2.5000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(951, 10607, 40, 18.4000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(952, 10607, 72, 34.8000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(953, 10608, 56, 38.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(954, 10609, 1, 18.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(955, 10609, 10, 31.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(956, 10609, 21, 10.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(957, 10610, 36, 19.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(958, 10611, 1, 18.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(959, 10611, 2, 19.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(960, 10611, 60, 34.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(961, 10612, 10, 31.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(962, 10612, 36, 19.0000, 55, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(963, 10612, 49, 20.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(964, 10612, 60, 34.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(965, 10612, 76, 18.0000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(966, 10613, 13, 6.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(967, 10613, 75, 7.7500, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(968, 10614, 11, 21.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(969, 10614, 21, 10.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(970, 10614, 39, 18.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(971, 10615, 55, 24.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(972, 10616, 38, 263.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(973, 10616, 56, 38.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(974, 10616, 70, 15.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(975, 10616, 71, 21.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(976, 10617, 59, 55.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(977, 10618, 6, 25.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(978, 10618, 56, 38.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(979, 10618, 68, 12.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(980, 10619, 21, 10.0000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(981, 10619, 22, 21.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(982, 10620, 24, 4.5000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(983, 10620, 52, 7.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(984, 10621, 19, 9.2000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(985, 10621, 23, 9.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(986, 10621, 70, 15.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(987, 10621, 71, 21.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(988, 10622, 2, 19.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(989, 10622, 68, 12.5000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(990, 10623, 14, 23.2500, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(991, 10623, 19, 9.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(992, 10623, 21, 10.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(993, 10623, 24, 4.5000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(994, 10623, 35, 18.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(995, 10624, 28, 45.6000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(996, 10624, 29, 123.7900, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(997, 10624, 44, 19.4500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(998, 10625, 14, 23.2500, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(999, 10625, 42, 14.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1000, 10625, 60, 34.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1001, 10626, 53, 32.8000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1002, 10626, 60, 34.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1003, 10626, 71, 21.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1004, 10627, 62, 49.3000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1005, 10627, 73, 15.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1006, 10628, 1, 18.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1007, 10629, 29, 123.7900, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1008, 10629, 64, 33.2500, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1009, 10630, 55, 24.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1010, 10630, 76, 18.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1011, 10631, 75, 7.7500, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1012, 10632, 2, 19.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1013, 10632, 33, 2.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1014, 10633, 12, 38.0000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1015, 10633, 13, 6.0000, 13, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1016, 10633, 26, 31.2300, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1017, 10633, 62, 49.3000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1018, 10634, 7, 30.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1019, 10634, 18, 62.5000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1020, 10634, 51, 53.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1021, 10634, 75, 7.7500, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1022, 10635, 4, 22.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1023, 10635, 5, 21.3500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1024, 10635, 22, 21.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1025, 10636, 4, 22.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1026, 10636, 58, 13.2500, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1027, 10637, 11, 21.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1028, 10637, 50, 16.2500, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1029, 10637, 56, 38.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1030, 10638, 45, 9.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1031, 10638, 65, 21.0500, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1032, 10638, 72, 34.8000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1033, 10639, 18, 62.5000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1034, 10640, 69, 36.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1035, 10640, 70, 15.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1036, 10641, 2, 19.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1037, 10641, 40, 18.4000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1038, 10642, 21, 10.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1039, 10642, 61, 28.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1040, 10643, 28, 45.6000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1041, 10643, 39, 18.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1042, 10643, 46, 12.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1043, 10644, 18, 62.5000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1044, 10644, 43, 46.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1045, 10644, 46, 12.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1046, 10645, 18, 62.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1047, 10645, 36, 19.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1048, 10646, 1, 18.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1049, 10646, 10, 31.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1050, 10646, 71, 21.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1051, 10646, 77, 13.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1052, 10647, 19, 9.2000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1053, 10647, 39, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1054, 10648, 22, 21.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1055, 10648, 24, 4.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1056, 10649, 28, 45.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1057, 10649, 72, 34.8000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1058, 10650, 30, 25.8900, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1059, 10650, 53, 32.8000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1060, 10650, 54, 7.4500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1061, 10651, 19, 9.2000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1062, 10651, 22, 21.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1063, 10652, 30, 25.8900, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1064, 10652, 42, 14.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1065, 10653, 16, 17.4500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1066, 10653, 60, 34.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1067, 10654, 4, 22.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1068, 10654, 39, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1069, 10654, 54, 7.4500, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1070, 10655, 41, 9.6500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1071, 10656, 14, 23.2500, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1072, 10656, 44, 19.4500, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1073, 10656, 47, 9.5000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1074, 10657, 15, 15.5000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1075, 10657, 41, 9.6500, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1076, 10657, 46, 12.0000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1077, 10657, 47, 9.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1078, 10657, 56, 38.0000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1079, 10657, 60, 34.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1080, 10658, 21, 10.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1081, 10658, 40, 18.4000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1082, 10658, 60, 34.0000, 55, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1083, 10658, 77, 13.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1084, 10659, 31, 12.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1085, 10659, 40, 18.4000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1086, 10659, 70, 15.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1087, 10660, 20, 81.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1088, 10661, 39, 18.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1089, 10661, 58, 13.2500, 49, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1090, 10662, 68, 12.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1091, 10663, 40, 18.4000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1092, 10663, 42, 14.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1093, 10663, 51, 53.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1094, 10664, 10, 31.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1095, 10664, 56, 38.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1096, 10664, 65, 21.0500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1097, 10665, 51, 53.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1098, 10665, 59, 55.0000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1099, 10665, 76, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1100, 10666, 29, 123.7900, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1101, 10666, 65, 21.0500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1102, 10667, 69, 36.0000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1103, 10667, 71, 21.5000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1104, 10668, 31, 12.5000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1105, 10668, 55, 24.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1106, 10668, 64, 33.2500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1107, 10669, 36, 19.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1108, 10670, 23, 9.0000, 32, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1109, 10670, 46, 12.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1110, 10670, 67, 14.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1111, 10670, 73, 15.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1112, 10670, 75, 7.7500, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1113, 10671, 16, 17.4500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1114, 10671, 62, 49.3000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1115, 10671, 65, 21.0500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1116, 10672, 38, 263.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1117, 10672, 71, 21.5000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1118, 10673, 16, 17.4500, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1119, 10673, 42, 14.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1120, 10673, 43, 46.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1121, 10674, 23, 9.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1122, 10675, 14, 23.2500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1123, 10675, 53, 32.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1124, 10675, 58, 13.2500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1125, 10676, 10, 31.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1126, 10676, 19, 9.2000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1127, 10676, 44, 19.4500, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1128, 10677, 26, 31.2300, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1129, 10677, 33, 2.5000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1130, 10678, 12, 38.0000, 100, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1131, 10678, 33, 2.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1132, 10678, 41, 9.6500, 120, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1133, 10678, 54, 7.4500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1134, 10679, 59, 55.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1135, 10680, 16, 17.4500, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1136, 10680, 31, 12.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1137, 10680, 42, 14.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1138, 10681, 19, 9.2000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1139, 10681, 21, 10.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1140, 10681, 64, 33.2500, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1141, 10682, 33, 2.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1142, 10682, 66, 17.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1143, 10682, 75, 7.7500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1144, 10683, 52, 7.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1145, 10684, 40, 18.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1146, 10684, 47, 9.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1147, 10684, 60, 34.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1148, 10685, 10, 31.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1149, 10685, 41, 9.6500, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1150, 10685, 47, 9.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1151, 10686, 17, 39.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1152, 10686, 26, 31.2300, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1153, 10687, 9, 97.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1154, 10687, 29, 123.7900, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1155, 10687, 36, 19.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1156, 10688, 10, 31.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1157, 10688, 28, 45.6000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1158, 10688, 34, 14.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1159, 10689, 1, 18.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1160, 10690, 56, 38.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1161, 10690, 77, 13.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1162, 10691, 1, 18.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1163, 10691, 29, 123.7900, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1164, 10691, 43, 46.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1165, 10691, 44, 19.4500, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1166, 10691, 62, 49.3000, 48, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1167, 10692, 63, 43.9000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1168, 10693, 9, 97.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1169, 10693, 54, 7.4500, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1170, 10693, 69, 36.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1171, 10693, 73, 15.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1172, 10694, 7, 30.0000, 90, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1173, 10694, 59, 55.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1174, 10694, 70, 15.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1175, 10695, 8, 40.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1176, 10695, 12, 38.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1177, 10695, 24, 4.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1178, 10696, 17, 39.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1179, 10696, 46, 12.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1180, 10697, 19, 9.2000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1181, 10697, 35, 18.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1182, 10697, 58, 13.2500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1183, 10697, 70, 15.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1184, 10698, 11, 21.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1185, 10698, 17, 39.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1186, 10698, 29, 123.7900, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1187, 10698, 65, 21.0500, 65, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1188, 10698, 70, 15.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1189, 10699, 47, 9.5000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1190, 10700, 1, 18.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1191, 10700, 34, 14.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1192, 10700, 68, 12.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1193, 10700, 71, 21.5000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1194, 10701, 59, 55.0000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1195, 10701, 71, 21.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1196, 10701, 76, 18.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1197, 10702, 3, 10.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1198, 10702, 76, 18.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1199, 10703, 2, 19.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1200, 10703, 59, 55.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1201, 10703, 73, 15.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1202, 10704, 4, 22.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1203, 10704, 24, 4.5000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1204, 10704, 48, 12.7500, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1205, 10705, 31, 12.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1206, 10705, 32, 32.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1207, 10706, 16, 17.4500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1208, 10706, 43, 46.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1209, 10706, 59, 55.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1210, 10707, 55, 24.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1211, 10707, 57, 19.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1212, 10707, 70, 15.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1213, 10708, 5, 21.3500, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1214, 10708, 36, 19.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1215, 10709, 8, 40.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1216, 10709, 51, 53.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1217, 10709, 60, 34.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1218, 10710, 19, 9.2000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1219, 10710, 47, 9.5000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1220, 10711, 19, 9.2000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1221, 10711, 41, 9.6500, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1222, 10711, 53, 32.8000, 120, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1223, 10712, 53, 32.8000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1224, 10712, 56, 38.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1225, 10713, 10, 31.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1226, 10713, 26, 31.2300, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1227, 10713, 45, 9.5000, 110, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1228, 10713, 46, 12.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1229, 10714, 2, 19.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1230, 10714, 17, 39.0000, 27, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1231, 10714, 47, 9.5000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1232, 10714, 56, 38.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1233, 10714, 58, 13.2500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1234, 10715, 10, 31.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1235, 10715, 71, 21.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1236, 10716, 21, 10.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1237, 10716, 51, 53.0000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1238, 10716, 61, 28.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1239, 10717, 21, 10.0000, 32, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1240, 10717, 54, 7.4500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1241, 10717, 69, 36.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1242, 10718, 12, 38.0000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1243, 10718, 16, 17.4500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1244, 10718, 36, 19.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1245, 10718, 62, 49.3000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1246, 10719, 18, 62.5000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1247, 10719, 30, 25.8900, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1248, 10719, 54, 7.4500, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1249, 10720, 35, 18.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1250, 10720, 71, 21.5000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1251, 10721, 44, 19.4500, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1252, 10722, 2, 19.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1253, 10722, 31, 12.5000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1254, 10722, 68, 12.5000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1255, 10722, 75, 7.7500, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1256, 10723, 26, 31.2300, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1257, 10724, 10, 31.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1258, 10724, 61, 28.5000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1259, 10725, 41, 9.6500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1260, 10725, 52, 7.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1261, 10725, 55, 24.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1262, 10726, 4, 22.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1263, 10726, 11, 21.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1264, 10727, 17, 39.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1265, 10727, 56, 38.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1266, 10727, 59, 55.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1267, 10728, 30, 25.8900, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1268, 10728, 40, 18.4000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1269, 10728, 55, 24.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1270, 10728, 60, 34.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1271, 10729, 1, 18.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1272, 10729, 21, 10.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1273, 10729, 50, 16.2500, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1274, 10730, 16, 17.4500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1275, 10730, 31, 12.5000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1276, 10730, 65, 21.0500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1277, 10731, 21, 10.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1278, 10731, 51, 53.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1279, 10732, 76, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1280, 10733, 14, 23.2500, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1281, 10733, 28, 45.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1282, 10733, 52, 7.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1283, 10734, 6, 25.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1284, 10734, 30, 25.8900, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1285, 10734, 76, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1286, 10735, 61, 28.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1287, 10735, 77, 13.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1288, 10736, 65, 21.0500, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1289, 10736, 75, 7.7500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1290, 10737, 13, 6.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1291, 10737, 41, 9.6500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1292, 10738, 16, 17.4500, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1293, 10739, 36, 19.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1294, 10739, 52, 7.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1295, 10740, 28, 45.6000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1296, 10740, 35, 18.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1297, 10740, 45, 9.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1298, 10740, 56, 38.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1299, 10741, 2, 19.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1300, 10742, 3, 10.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1301, 10742, 60, 34.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1302, 10742, 72, 34.8000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1303, 10743, 46, 12.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1304, 10744, 40, 18.4000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1305, 10745, 18, 62.5000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1306, 10745, 44, 19.4500, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1307, 10745, 59, 55.0000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1308, 10745, 72, 34.8000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1309, 10746, 13, 6.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1310, 10746, 42, 14.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1311, 10746, 62, 49.3000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1312, 10746, 69, 36.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1313, 10747, 31, 12.5000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1314, 10747, 41, 9.6500, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1315, 10747, 63, 43.9000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1316, 10747, 69, 36.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1317, 10748, 23, 9.0000, 44, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1318, 10748, 40, 18.4000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1319, 10748, 56, 38.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1320, 10749, 56, 38.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1321, 10749, 59, 55.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1322, 10749, 76, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1323, 10750, 14, 23.2500, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1324, 10750, 45, 9.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1325, 10750, 59, 55.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1326, 10751, 26, 31.2300, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1327, 10751, 30, 25.8900, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1328, 10751, 50, 16.2500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1329, 10751, 73, 15.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1330, 10752, 1, 18.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1331, 10752, 69, 36.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1332, 10753, 45, 9.5000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1333, 10753, 74, 10.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1334, 10754, 40, 18.4000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1335, 10755, 47, 9.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1336, 10755, 56, 38.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1337, 10755, 57, 19.5000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1338, 10755, 69, 36.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1339, 10756, 18, 62.5000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1340, 10756, 36, 19.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1341, 10756, 68, 12.5000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1342, 10756, 69, 36.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1343, 10757, 34, 14.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1344, 10757, 59, 55.0000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1345, 10757, 62, 49.3000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1346, 10757, 64, 33.2500, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1347, 10758, 26, 31.2300, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1348, 10758, 52, 7.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1349, 10758, 70, 15.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1350, 10759, 32, 32.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1351, 10760, 25, 14.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1352, 10760, 27, 43.9000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1353, 10760, 43, 46.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1354, 10761, 25, 14.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1355, 10761, 75, 7.7500, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1356, 10762, 39, 18.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1357, 10762, 47, 9.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1358, 10762, 51, 53.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1359, 10762, 56, 38.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1360, 10763, 21, 10.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1361, 10763, 22, 21.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1362, 10763, 24, 4.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1363, 10764, 3, 10.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1364, 10764, 39, 18.0000, 130, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1365, 10765, 65, 21.0500, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1366, 10766, 2, 19.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1367, 10766, 7, 30.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1368, 10766, 68, 12.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1369, 10767, 42, 14.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1370, 10768, 22, 21.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1371, 10768, 31, 12.5000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1372, 10768, 60, 34.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1373, 10768, 71, 21.5000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1374, 10769, 41, 9.6500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1375, 10769, 52, 7.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1376, 10769, 61, 28.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1377, 10769, 62, 49.3000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1378, 10770, 11, 21.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1379, 10771, 71, 21.5000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1380, 10772, 29, 123.7900, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1381, 10772, 59, 55.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1382, 10773, 17, 39.0000, 33, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1383, 10773, 31, 12.5000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1384, 10773, 75, 7.7500, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1385, 10774, 31, 12.5000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1386, 10774, 66, 17.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1387, 10775, 10, 31.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1388, 10775, 67, 14.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1389, 10776, 31, 12.5000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1390, 10776, 42, 14.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1391, 10776, 45, 9.5000, 27, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1392, 10776, 51, 53.0000, 120, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1393, 10777, 42, 14.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1394, 10778, 41, 9.6500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1395, 10779, 16, 17.4500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1396, 10779, 62, 49.3000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1397, 10780, 70, 15.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1398, 10780, 77, 13.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1399, 10781, 54, 7.4500, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1400, 10781, 56, 38.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1401, 10781, 74, 10.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1402, 10782, 31, 12.5000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1403, 10783, 31, 12.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1404, 10783, 38, 263.5000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1405, 10784, 36, 19.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1406, 10784, 39, 18.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1407, 10784, 72, 34.8000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1408, 10785, 10, 31.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1409, 10785, 75, 7.7500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1410, 10786, 8, 40.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1411, 10786, 30, 25.8900, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1412, 10786, 75, 7.7500, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1413, 10787, 2, 19.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1414, 10787, 29, 123.7900, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1415, 10788, 19, 9.2000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1416, 10788, 75, 7.7500, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1417, 10789, 18, 62.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1418, 10789, 35, 18.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1419, 10789, 63, 43.9000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1420, 10789, 68, 12.5000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1421, 10790, 7, 30.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1422, 10790, 56, 38.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1423, 10791, 29, 123.7900, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1424, 10791, 41, 9.6500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1425, 10792, 2, 19.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1426, 10792, 54, 7.4500, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1427, 10792, 68, 12.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1428, 10793, 41, 9.6500, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1429, 10793, 52, 7.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1430, 10794, 14, 23.2500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1431, 10794, 54, 7.4500, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1432, 10795, 16, 17.4500, 65, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1433, 10795, 17, 39.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1434, 10796, 26, 31.2300, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1435, 10796, 44, 19.4500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1436, 10796, 64, 33.2500, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1437, 10796, 69, 36.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1438, 10797, 11, 21.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1439, 10798, 62, 49.3000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1440, 10798, 72, 34.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1441, 10799, 13, 6.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1442, 10799, 24, 4.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1443, 10799, 59, 55.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1444, 10800, 11, 21.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1445, 10800, 51, 53.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1446, 10800, 54, 7.4500, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1447, 10801, 17, 39.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1448, 10801, 29, 123.7900, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1449, 10802, 30, 25.8900, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1450, 10802, 51, 53.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1451, 10802, 55, 24.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1452, 10802, 62, 49.3000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1453, 10803, 19, 9.2000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1454, 10803, 25, 14.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1455, 10803, 59, 55.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1456, 10804, 10, 31.0000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1457, 10804, 28, 45.6000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1458, 10804, 49, 20.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1459, 10805, 34, 14.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1460, 10805, 38, 263.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1461, 10806, 2, 19.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1462, 10806, 65, 21.0500, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1463, 10806, 74, 10.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1464, 10807, 40, 18.4000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1465, 10808, 56, 38.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1466, 10808, 76, 18.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1467, 10809, 52, 7.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1468, 10810, 13, 6.0000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1469, 10810, 25, 14.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1470, 10810, 70, 15.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1471, 10811, 19, 9.2000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1472, 10811, 23, 9.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1473, 10811, 40, 18.4000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1474, 10812, 31, 12.5000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1475, 10812, 72, 34.8000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1476, 10812, 77, 13.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1477, 10813, 2, 19.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1478, 10813, 46, 12.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1479, 10814, 41, 9.6500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1480, 10814, 43, 46.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1481, 10814, 48, 12.7500, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1482, 10814, 61, 28.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1483, 10815, 33, 2.5000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1484, 10816, 38, 263.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1485, 10816, 62, 49.3000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1486, 10817, 26, 31.2300, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1487, 10817, 38, 263.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1488, 10817, 40, 18.4000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1489, 10817, 62, 49.3000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1490, 10818, 32, 32.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1491, 10818, 41, 9.6500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1492, 10819, 43, 46.0000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1493, 10819, 75, 7.7500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1494, 10820, 56, 38.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1495, 10821, 35, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1496, 10821, 51, 53.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1497, 10822, 62, 49.3000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1498, 10822, 70, 15.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1499, 10823, 11, 21.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1500, 10823, 57, 19.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1501, 10823, 59, 55.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1502, 10823, 77, 13.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1503, 10824, 41, 9.6500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1504, 10824, 70, 15.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1505, 10825, 26, 31.2300, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1506, 10825, 53, 32.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1507, 10826, 31, 12.5000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1508, 10826, 57, 19.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1509, 10827, 10, 31.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1510, 10827, 39, 18.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1511, 10828, 20, 81.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1512, 10828, 38, 263.5000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1513, 10829, 2, 19.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1514, 10829, 8, 40.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1515, 10829, 13, 6.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1516, 10829, 60, 34.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1517, 10830, 6, 25.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1518, 10830, 39, 18.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1519, 10830, 60, 34.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1520, 10830, 68, 12.5000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1521, 10831, 19, 9.2000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1522, 10831, 35, 18.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1523, 10831, 38, 263.5000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1524, 10831, 43, 46.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1525, 10832, 13, 6.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1526, 10832, 25, 14.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1527, 10832, 44, 19.4500, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1528, 10832, 64, 33.2500, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1529, 10833, 7, 30.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1530, 10833, 31, 12.5000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1531, 10833, 53, 32.8000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1532, 10834, 29, 123.7900, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1533, 10834, 30, 25.8900, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1534, 10835, 59, 55.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1535, 10835, 77, 13.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1536, 10836, 22, 21.0000, 52, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1537, 10836, 35, 18.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1538, 10836, 57, 19.5000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1539, 10836, 60, 34.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1540, 10836, 64, 33.2500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1541, 10837, 13, 6.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1542, 10837, 40, 18.4000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1543, 10837, 47, 9.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1544, 10837, 76, 18.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1545, 10838, 1, 18.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1546, 10838, 18, 62.5000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1547, 10838, 36, 19.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1548, 10839, 58, 13.2500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1549, 10839, 72, 34.8000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1550, 10840, 25, 14.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1551, 10840, 39, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1552, 10841, 10, 31.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1553, 10841, 56, 38.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1554, 10841, 59, 55.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1555, 10841, 77, 13.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1556, 10842, 11, 21.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1557, 10842, 43, 46.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1558, 10842, 68, 12.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1559, 10842, 70, 15.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1560, 10843, 51, 53.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1561, 10844, 22, 21.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1562, 10845, 23, 9.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1563, 10845, 35, 18.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1564, 10845, 42, 14.0000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1565, 10845, 58, 13.2500, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1566, 10845, 64, 33.2500, 48, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1567, 10846, 4, 22.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1568, 10846, 70, 15.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1569, 10846, 74, 10.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1570, 10847, 1, 18.0000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1571, 10847, 19, 9.2000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1572, 10847, 37, 26.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1573, 10847, 45, 9.5000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1574, 10847, 60, 34.0000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1575, 10847, 71, 21.5000, 55, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1576, 10848, 5, 21.3500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1577, 10848, 9, 97.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1578, 10849, 3, 10.0000, 49, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1579, 10849, 26, 31.2300, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1580, 10850, 25, 14.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1581, 10850, 33, 2.5000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1582, 10850, 70, 15.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1583, 10851, 2, 19.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1584, 10851, 25, 14.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1585, 10851, 57, 19.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1586, 10851, 59, 55.0000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1587, 10852, 2, 19.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1588, 10852, 17, 39.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1589, 10852, 62, 49.3000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1590, 10853, 18, 62.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1591, 10854, 10, 31.0000, 100, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1592, 10854, 13, 6.0000, 65, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1593, 10855, 16, 17.4500, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1594, 10855, 31, 12.5000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1595, 10855, 56, 38.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1596, 10855, 65, 21.0500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1597, 10856, 2, 19.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1598, 10856, 42, 14.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1599, 10857, 3, 10.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1600, 10857, 26, 31.2300, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1601, 10857, 29, 123.7900, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1602, 10858, 7, 30.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1603, 10858, 27, 43.9000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1604, 10858, 70, 15.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1605, 10859, 24, 4.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1606, 10859, 54, 7.4500, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1607, 10859, 64, 33.2500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1608, 10860, 51, 53.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1609, 10860, 76, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1610, 10861, 17, 39.0000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1611, 10861, 18, 62.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1612, 10861, 21, 10.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1613, 10861, 33, 2.5000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1614, 10861, 62, 49.3000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1615, 10862, 11, 21.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1616, 10862, 52, 7.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1617, 10863, 1, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1618, 10863, 58, 13.2500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1619, 10864, 35, 18.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1620, 10864, 67, 14.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1621, 10865, 38, 263.5000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1622, 10865, 39, 18.0000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1623, 10866, 2, 19.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1624, 10866, 24, 4.5000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1625, 10866, 30, 25.8900, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1626, 10867, 53, 32.8000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1627, 10868, 26, 31.2300, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1628, 10868, 35, 18.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1629, 10868, 49, 20.0000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1630, 10869, 1, 18.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1631, 10869, 11, 21.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1632, 10869, 23, 9.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1633, 10869, 68, 12.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1634, 10870, 35, 18.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1635, 10870, 51, 53.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1636, 10871, 6, 25.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1637, 10871, 16, 17.4500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1638, 10871, 17, 39.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1639, 10872, 55, 24.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1640, 10872, 62, 49.3000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1641, 10872, 64, 33.2500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1642, 10872, 65, 21.0500, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1643, 10873, 21, 10.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1644, 10873, 28, 45.6000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1645, 10874, 10, 31.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1646, 10875, 19, 9.2000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1647, 10875, 47, 9.5000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1648, 10875, 49, 20.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1649, 10876, 46, 12.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1650, 10876, 64, 33.2500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1651, 10877, 16, 17.4500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1652, 10877, 18, 62.5000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1653, 10878, 20, 81.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1654, 10879, 40, 18.4000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1655, 10879, 65, 21.0500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1656, 10879, 76, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1657, 10880, 23, 9.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1658, 10880, 61, 28.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1659, 10880, 70, 15.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1660, 10881, 73, 15.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1661, 10882, 42, 14.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1662, 10882, 49, 20.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1663, 10882, 54, 7.4500, 32, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1664, 10883, 24, 4.5000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1665, 10884, 21, 10.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1666, 10884, 56, 38.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1667, 10884, 65, 21.0500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1668, 10885, 2, 19.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1669, 10885, 24, 4.5000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1670, 10885, 70, 15.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1671, 10885, 77, 13.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1672, 10886, 10, 31.0000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1673, 10886, 31, 12.5000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1674, 10886, 77, 13.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1675, 10887, 25, 14.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1676, 10888, 2, 19.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1677, 10888, 68, 12.5000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1678, 10889, 11, 21.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1679, 10889, 38, 263.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1680, 10890, 17, 39.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1681, 10890, 34, 14.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1682, 10890, 41, 9.6500, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1683, 10891, 30, 25.8900, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1684, 10892, 59, 55.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1685, 10893, 8, 40.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1686, 10893, 24, 4.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1687, 10893, 29, 123.7900, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1688, 10893, 30, 25.8900, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1689, 10893, 36, 19.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1690, 10894, 13, 6.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1691, 10894, 69, 36.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1692, 10894, 75, 7.7500, 120, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1693, 10895, 24, 4.5000, 110, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1694, 10895, 39, 18.0000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1695, 10895, 40, 18.4000, 91, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1696, 10895, 60, 34.0000, 100, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1697, 10896, 45, 9.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1698, 10896, 56, 38.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1699, 10897, 29, 123.7900, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1700, 10897, 30, 25.8900, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1701, 10898, 13, 6.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1702, 10899, 39, 18.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1703, 10900, 70, 15.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1704, 10901, 41, 9.6500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1705, 10901, 71, 21.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1706, 10902, 55, 24.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1707, 10902, 62, 49.3000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1708, 10903, 13, 6.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1709, 10903, 65, 21.0500, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1710, 10903, 68, 12.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1711, 10904, 58, 13.2500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1712, 10904, 62, 49.3000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1713, 10905, 1, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1714, 10906, 61, 28.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1715, 10907, 75, 7.7500, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1716, 10908, 7, 30.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1717, 10908, 52, 7.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1718, 10909, 7, 30.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1719, 10909, 16, 17.4500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1720, 10909, 41, 9.6500, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1721, 10910, 19, 9.2000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1722, 10910, 49, 20.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1723, 10910, 61, 28.5000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1724, 10911, 1, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1725, 10911, 17, 39.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1726, 10911, 67, 14.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1727, 10912, 11, 21.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1728, 10912, 29, 123.7900, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1729, 10913, 4, 22.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1730, 10913, 33, 2.5000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1731, 10913, 58, 13.2500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1732, 10914, 71, 21.5000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1733, 10915, 17, 39.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1734, 10915, 33, 2.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1735, 10915, 54, 7.4500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1736, 10916, 16, 17.4500, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1737, 10916, 32, 32.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1738, 10916, 57, 19.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1739, 10917, 30, 25.8900, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1740, 10917, 60, 34.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1741, 10918, 1, 18.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1742, 10918, 60, 34.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1743, 10919, 16, 17.4500, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1744, 10919, 25, 14.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1745, 10919, 40, 18.4000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1746, 10920, 50, 16.2500, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1747, 10921, 35, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1748, 10921, 63, 43.9000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1749, 10922, 17, 39.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1750, 10922, 24, 4.5000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1751, 10923, 42, 14.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1752, 10923, 43, 46.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1753, 10923, 67, 14.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1754, 10924, 10, 31.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1755, 10924, 28, 45.6000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1756, 10924, 75, 7.7500, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1757, 10925, 36, 19.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1758, 10925, 52, 7.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1759, 10926, 11, 21.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1760, 10926, 13, 6.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1761, 10926, 19, 9.2000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1762, 10926, 72, 34.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1763, 10927, 20, 81.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1764, 10927, 52, 7.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1765, 10927, 76, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1766, 10928, 47, 9.5000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1767, 10928, 76, 18.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1768, 10929, 21, 10.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1769, 10929, 75, 7.7500, 49, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1770, 10929, 77, 13.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1771, 10930, 21, 10.0000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1772, 10930, 27, 43.9000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1773, 10930, 55, 24.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1774, 10930, 58, 13.2500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1775, 10931, 13, 6.0000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1776, 10931, 57, 19.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1777, 10932, 16, 17.4500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1778, 10932, 62, 49.3000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1779, 10932, 72, 34.8000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1780, 10932, 75, 7.7500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1781, 10933, 53, 32.8000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1782, 10933, 61, 28.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1783, 10934, 6, 25.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1784, 10935, 1, 18.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1785, 10935, 18, 62.5000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1786, 10935, 23, 9.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1787, 10936, 36, 19.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1788, 10937, 28, 45.6000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1789, 10937, 34, 14.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1790, 10938, 13, 6.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1791, 10938, 43, 46.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1792, 10938, 60, 34.0000, 49, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1793, 10938, 71, 21.5000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1794, 10939, 2, 19.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1795, 10939, 67, 14.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1796, 10940, 7, 30.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1797, 10940, 13, 6.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1798, 10941, 31, 12.5000, 44, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1799, 10941, 62, 49.3000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1800, 10941, 68, 12.5000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1801, 10941, 72, 34.8000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1802, 10942, 49, 20.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1803, 10943, 13, 6.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1804, 10943, 22, 21.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1805, 10943, 46, 12.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1806, 10944, 11, 21.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1807, 10944, 44, 19.4500, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1808, 10944, 56, 38.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1809, 10945, 13, 6.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1810, 10945, 31, 12.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1811, 10946, 10, 31.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1812, 10946, 24, 4.5000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1813, 10946, 77, 13.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1814, 10947, 59, 55.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1815, 10948, 50, 16.2500, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1816, 10948, 51, 53.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1817, 10948, 55, 24.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1818, 10949, 6, 25.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1819, 10949, 10, 31.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1820, 10949, 17, 39.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1821, 10949, 62, 49.3000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1822, 10950, 4, 22.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1823, 10951, 33, 2.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1824, 10951, 41, 9.6500, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1825, 10951, 75, 7.7500, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1826, 10952, 6, 25.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1827, 10952, 28, 45.6000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1828, 10953, 20, 81.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1829, 10953, 31, 12.5000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1830, 10954, 16, 17.4500, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1831, 10954, 31, 12.5000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1832, 10954, 45, 9.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1833, 10954, 60, 34.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1834, 10955, 75, 7.7500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1835, 10956, 21, 10.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1836, 10956, 47, 9.5000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1837, 10956, 51, 53.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1838, 10957, 30, 25.8900, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1839, 10957, 35, 18.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1840, 10957, 64, 33.2500, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1841, 10958, 5, 21.3500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1842, 10958, 7, 30.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1843, 10958, 72, 34.8000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1844, 10959, 75, 7.7500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1845, 10960, 24, 4.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1846, 10960, 41, 9.6500, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1847, 10961, 52, 7.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1848, 10961, 76, 18.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1849, 10962, 7, 30.0000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1850, 10962, 13, 6.0000, 77, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1851, 10962, 53, 32.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1852, 10962, 69, 36.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1853, 10962, 76, 18.0000, 44, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1854, 10963, 60, 34.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1855, 10964, 18, 62.5000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1856, 10964, 38, 263.5000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1857, 10964, 69, 36.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1858, 10965, 51, 53.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1859, 10966, 37, 26.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1860, 10966, 56, 38.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1861, 10966, 62, 49.3000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1862, 10967, 19, 9.2000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1863, 10967, 49, 20.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1864, 10968, 12, 38.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1865, 10968, 24, 4.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1866, 10968, 64, 33.2500, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1867, 10969, 46, 12.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1868, 10970, 52, 7.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1869, 10971, 29, 123.7900, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1870, 10972, 17, 39.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1871, 10972, 33, 2.5000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1872, 10973, 26, 31.2300, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1873, 10973, 41, 9.6500, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1874, 10973, 75, 7.7500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1875, 10974, 63, 43.9000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1876, 10975, 8, 40.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1877, 10975, 75, 7.7500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1878, 10976, 28, 45.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1879, 10977, 39, 18.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1880, 10977, 47, 9.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1881, 10977, 51, 53.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1882, 10977, 63, 43.9000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1883, 10978, 8, 40.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1884, 10978, 21, 10.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1885, 10978, 40, 18.4000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1886, 10978, 44, 19.4500, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1887, 10979, 7, 30.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1888, 10979, 12, 38.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1889, 10979, 24, 4.5000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1890, 10979, 27, 43.9000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1891, 10979, 31, 12.5000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1892, 10979, 63, 43.9000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1893, 10980, 75, 7.7500, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1894, 10981, 38, 263.5000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1895, 10982, 7, 30.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1896, 10982, 43, 46.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1897, 10983, 13, 6.0000, 84, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1898, 10983, 57, 19.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1899, 10984, 16, 17.4500, 55, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1900, 10984, 24, 4.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1901, 10984, 36, 19.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1902, 10985, 16, 17.4500, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1903, 10985, 18, 62.5000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1904, 10985, 32, 32.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1905, 10986, 11, 21.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1906, 10986, 20, 81.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1907, 10986, 76, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1908, 10986, 77, 13.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1909, 10987, 7, 30.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1910, 10987, 43, 46.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1911, 10987, 72, 34.8000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1912, 10988, 7, 30.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1913, 10988, 62, 49.3000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1914, 10989, 6, 25.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1915, 10989, 11, 21.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1916, 10989, 41, 9.6500, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1917, 10990, 21, 10.0000, 65, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1918, 10990, 34, 14.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1919, 10990, 55, 24.0000, 65, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1920, 10990, 61, 28.5000, 66, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1921, 10991, 2, 19.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1922, 10991, 70, 15.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1923, 10991, 76, 18.0000, 90, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1924, 10992, 72, 34.8000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1925, 10993, 29, 123.7900, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1926, 10993, 41, 9.6500, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1927, 10994, 59, 55.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1928, 10995, 51, 53.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1929, 10995, 60, 34.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1930, 10996, 42, 14.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1931, 10997, 32, 32.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1932, 10997, 46, 12.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1933, 10997, 52, 7.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1934, 10998, 24, 4.5000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1935, 10998, 61, 28.5000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1936, 10998, 74, 10.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1937, 10998, 75, 7.7500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1938, 10999, 41, 9.6500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1939, 10999, 51, 53.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1940, 10999, 77, 13.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1941, 11000, 4, 22.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1942, 11000, 24, 4.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1943, 11000, 77, 13.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1944, 11001, 7, 30.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1945, 11001, 22, 21.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1946, 11001, 46, 12.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1947, 11001, 55, 24.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1948, 11002, 13, 6.0000, 56, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1949, 11002, 35, 18.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1950, 11002, 42, 14.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1951, 11002, 55, 24.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1952, 11003, 1, 18.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1953, 11003, 40, 18.4000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1954, 11003, 52, 7.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1955, 11004, 26, 31.2300, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1956, 11004, 76, 18.0000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1957, 11005, 1, 18.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1958, 11005, 59, 55.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1959, 11006, 1, 18.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1960, 11006, 29, 123.7900, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1961, 11007, 8, 40.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1962, 11007, 29, 123.7900, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1963, 11007, 42, 14.0000, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1964, 11008, 28, 45.6000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1965, 11008, 34, 14.0000, 90, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1966, 11008, 71, 21.5000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1967, 11009, 24, 4.5000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1968, 11009, 36, 19.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1969, 11009, 60, 34.0000, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1970, 11010, 7, 30.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1971, 11010, 24, 4.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1972, 11011, 58, 13.2500, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1973, 11011, 71, 21.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1974, 11012, 19, 9.2000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1975, 11012, 60, 34.0000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1976, 11012, 71, 21.5000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1977, 11013, 23, 9.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1978, 11013, 42, 14.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1979, 11013, 45, 9.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1980, 11013, 68, 12.5000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1981, 11014, 41, 9.6500, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1982, 11015, 30, 25.8900, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1983, 11015, 77, 13.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1984, 11016, 31, 12.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1985, 11016, 36, 19.0000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1986, 11017, 3, 10.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1987, 11017, 59, 55.0000, 110, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1988, 11017, 70, 15.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1989, 11018, 12, 38.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1990, 11018, 18, 62.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1991, 11018, 56, 38.0000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1992, 11019, 46, 12.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1993, 11019, 49, 20.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1994, 11020, 10, 31.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1995, 11021, 2, 19.0000, 11, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1996, 11021, 20, 81.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1997, 11021, 26, 31.2300, 63, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1998, 11021, 51, 53.0000, 44, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(1999, 11021, 72, 34.8000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2000, 11022, 19, 9.2000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2001, 11022, 69, 36.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2002, 11023, 7, 30.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2003, 11023, 43, 46.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2004, 11024, 26, 31.2300, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2005, 11024, 33, 2.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2006, 11024, 65, 21.0500, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2007, 11024, 71, 21.5000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2008, 11025, 1, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2009, 11025, 13, 6.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2010, 11026, 18, 62.5000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2011, 11026, 51, 53.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2012, 11027, 24, 4.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2013, 11027, 62, 49.3000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2014, 11028, 55, 24.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2015, 11028, 59, 55.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2016, 11029, 56, 38.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2017, 11029, 63, 43.9000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2018, 11030, 2, 19.0000, 100, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2019, 11030, 5, 21.3500, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2020, 11030, 29, 123.7900, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2021, 11030, 59, 55.0000, 100, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2022, 11031, 1, 18.0000, 45, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2023, 11031, 13, 6.0000, 80, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2024, 11031, 24, 4.5000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2025, 11031, 64, 33.2500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2026, 11031, 71, 21.5000, 16, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2027, 11032, 36, 19.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2028, 11032, 38, 263.5000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2029, 11032, 59, 55.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2030, 11033, 53, 32.8000, 70, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2031, 11033, 69, 36.0000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2032, 11034, 21, 10.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2033, 11034, 44, 19.4500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2034, 11034, 61, 28.5000, 6, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2035, 11035, 1, 18.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2036, 11035, 35, 18.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2037, 11035, 42, 14.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2038, 11035, 54, 7.4500, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2039, 11036, 13, 6.0000, 7, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2040, 11036, 59, 55.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2041, 11037, 70, 15.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2042, 11038, 40, 18.4000, 5, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2043, 11038, 52, 7.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2044, 11038, 71, 21.5000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2045, 11039, 28, 45.6000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2046, 11039, 35, 18.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2047, 11039, 49, 20.0000, 60, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2048, 11039, 57, 19.5000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2049, 11040, 21, 10.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2050, 11041, 2, 19.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2051, 11041, 63, 43.9000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2052, 11042, 44, 19.4500, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2053, 11042, 61, 28.5000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2054, 11043, 11, 21.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2055, 11044, 62, 49.3000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2056, 11045, 33, 2.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2057, 11045, 51, 53.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2058, 11046, 12, 38.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2059, 11046, 32, 32.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2060, 11046, 35, 18.0000, 18, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2061, 11047, 1, 18.0000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2062, 11047, 5, 21.3500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2063, 11048, 68, 12.5000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2064, 11049, 2, 19.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2065, 11049, 12, 38.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2066, 11050, 76, 18.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2067, 11051, 24, 4.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2068, 11052, 43, 46.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2069, 11052, 61, 28.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2070, 11053, 18, 62.5000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2071, 11053, 32, 32.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2072, 11053, 64, 33.2500, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2073, 11054, 33, 2.5000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2074, 11054, 67, 14.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2075, 11055, 24, 4.5000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2076, 11055, 25, 14.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2077, 11055, 51, 53.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2078, 11055, 57, 19.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2079, 11056, 7, 30.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2080, 11056, 55, 24.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2081, 11056, 60, 34.0000, 50, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2082, 11057, 70, 15.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2083, 11058, 21, 10.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2084, 11058, 60, 34.0000, 21, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2085, 11058, 61, 28.5000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2086, 11059, 13, 6.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2087, 11059, 17, 39.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2088, 11059, 60, 34.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2089, 11060, 60, 34.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2090, 11060, 77, 13.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2091, 11061, 60, 34.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2092, 11062, 53, 32.8000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2093, 11062, 70, 15.0000, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2094, 11063, 34, 14.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2095, 11063, 40, 18.4000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2096, 11063, 41, 9.6500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2097, 11064, 17, 39.0000, 77, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2098, 11064, 41, 9.6500, 12, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2099, 11064, 53, 32.8000, 25, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2100, 11064, 55, 24.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2101, 11064, 68, 12.5000, 55, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2102, 11065, 30, 25.8900, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2103, 11065, 54, 7.4500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2104, 11066, 16, 17.4500, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2105, 11066, 19, 9.2000, 42, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2106, 11066, 34, 14.0000, 35, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2107, 11067, 41, 9.6500, 9, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2108, 11068, 28, 45.6000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2109, 11068, 43, 46.0000, 36, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2110, 11068, 77, 13.0000, 28, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2111, 11069, 39, 18.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2112, 11070, 1, 18.0000, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2113, 11070, 2, 19.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2114, 11070, 16, 17.4500, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2115, 11070, 31, 12.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2116, 11071, 7, 30.0000, 15, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2117, 11071, 13, 6.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2118, 11072, 2, 19.0000, 8, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2119, 11072, 41, 9.6500, 40, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2120, 11072, 50, 16.2500, 22, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2121, 11072, 64, 33.2500, 130, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2122, 11073, 11, 21.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2123, 11073, 24, 4.5000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2124, 11074, 16, 17.4500, 14, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2125, 11075, 2, 19.0000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2126, 11075, 46, 12.0000, 30, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2127, 11075, 76, 18.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2128, 11076, 6, 25.0000, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2129, 11076, 14, 23.2500, 20, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2130, 11076, 19, 9.2000, 10, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2131, 11077, 2, 19.0000, 24, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2132, 11077, 3, 10.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2133, 11077, 4, 22.0000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2134, 11077, 6, 25.0000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2135, 11077, 7, 30.0000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2136, 11077, 8, 40.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2137, 11077, 10, 31.0000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2138, 11077, 12, 38.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2139, 11077, 13, 6.0000, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2140, 11077, 14, 23.2500, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2141, 11077, 16, 17.4500, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2142, 11077, 20, 81.0000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2143, 11077, 23, 9.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2144, 11077, 32, 32.0000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2145, 11077, 39, 18.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2146, 11077, 41, 9.6500, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2147, 11077, 46, 12.0000, 3, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2148, 11077, 52, 7.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2149, 11077, 55, 24.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2150, 11077, 60, 34.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2151, 11077, 64, 33.2500, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2152, 11077, 66, 17.0000, 1, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2153, 11077, 73, 15.0000, 2, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2154, 11077, 75, 7.7500, 4, 0);
INSERT INTO `order_details` (`id`, `OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`) VALUES
	(2155, 11077, 77, 13.0000, 2, 0);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;

-- Dumping structure for table northwind.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(40) NOT NULL,
  `SupplierID` int DEFAULT NULL,
  `CategoryID` int DEFAULT NULL,
  `QuantityPerUnit` varchar(20) DEFAULT NULL,
  `UnitPrice` decimal(10,4) DEFAULT '0.0000',
  `UnitsInStock` smallint DEFAULT '0',
  `UnitsOnOrder` smallint DEFAULT '0',
  `ReorderLevel` smallint DEFAULT '0',
  `Discontinued` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ProductID`),
  KEY `pk_products_categories` (`CategoryID`) USING BTREE,
  KEY `pk_products_suppliers` (`SupplierID`) USING BTREE,
  KEY `pk_products_productname` (`ProductName`) USING BTREE,
  CONSTRAINT `fk_products_categories` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  CONSTRAINT `fk_products_suppliers` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table northwind.products: ~77 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(1, 'Chai', 1, 1, '10 boxes x 20 bags', 18.0000, 39, 0, 10, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19.0000, 17, 40, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.0000, 13, 70, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(4, 'Chef Anton\'s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.0000, 53, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(5, 'Chef Anton\'s Gumbo Mix', 2, 2, '36 boxes', 21.3500, 0, 0, 0, b'1');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(6, 'Grandma\'s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25.0000, 120, 0, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(7, 'Uncle Bob\'s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30.0000, 15, 0, 10, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.0000, 6, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97.0000, 29, 0, 0, b'1');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(10, 'Ikura', 4, 8, '12 - 200 ml jars', 31.0000, 31, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21.0000, 22, 30, 30, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38.0000, 86, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(13, 'Konbu', 6, 8, '2 kg box', 6.0000, 24, 0, 5, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.2500, 35, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 15.5000, 39, 0, 5, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.4500, 29, 0, 10, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39.0000, 0, 0, 0, b'1');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.5000, 42, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.2000, 25, 0, 5, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(20, 'Sir Rodney\'s Marmalade', 8, 3, '30 gift boxes', 81.0000, 40, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(21, 'Sir Rodney\'s Scones', 8, 3, '24 pkgs. x 4 pieces', 10.0000, 3, 40, 5, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(22, 'Gustaf\'s Knckebrd', 9, 5, '24 - 500 g pkgs.', 21.0000, 104, 0, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(23, 'Tunnbrd', 9, 5, '12 - 250 g pkgs.', 9.0000, 61, 0, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(24, 'Guaran Fantstica', 10, 1, '12 - 355 ml cans', 4.5000, 20, 0, 0, b'1');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(25, 'NuNuCa Nu-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14.0000, 76, 0, 30, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(26, 'Gumbr Gummibrchen', 11, 3, '100 - 250 g bags', 31.2300, 15, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.9000, 49, 0, 30, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(28, 'Rssle Sauerkraut', 12, 7, '25 - 825 g cans', 45.6000, 26, 0, 0, b'1');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(29, 'Thringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.7900, 0, 0, 0, b'1');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.8900, 10, 0, 15, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.5000, 0, 70, 20, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32.0000, 9, 40, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(33, 'Geitost', 15, 4, '500 g', 2.5000, 112, 0, 20, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14.0000, 111, 0, 15, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18.0000, 20, 0, 15, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(36, 'Inlagd Sill', 17, 8, '24 - 250 g  jars', 19.0000, 112, 0, 20, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26.0000, 11, 50, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(38, 'Cte de Blaye', 18, 1, '12 - 75 cl bottles', 263.5000, 17, 0, 15, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18.0000, 69, 0, 5, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.4000, 123, 0, 30, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(41, 'Jack\'s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 9.6500, 85, 0, 10, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14.0000, 26, 0, 0, b'1');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46.0000, 17, 10, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.4500, 27, 0, 15, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(45, 'Rogede sild', 21, 8, '1k pkg.', 9.5000, 5, 70, 15, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(46, 'Spegesild', 21, 8, '4 - 450 g glasses', 12.0000, 95, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.5000, 36, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(48, 'Chocolade', 22, 3, '10 pkgs.', 12.7500, 15, 70, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20.0000, 10, 60, 15, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.2500, 65, 0, 30, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53.0000, 20, 0, 10, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7.0000, 38, 0, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(53, 'Perth Pasties', 24, 6, '48 pieces', 32.8000, 0, 0, 0, b'1');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(54, 'Tourtire', 25, 6, '16 pies', 7.4500, 21, 0, 10, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(55, 'Pt chinois', 25, 6, '24 boxes x 2 pies', 24.0000, 115, 0, 20, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38.0000, 21, 10, 30, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.5000, 36, 0, 20, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13.2500, 62, 0, 20, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55.0000, 79, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34.0000, 19, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(61, 'Sirop d\'rable', 29, 2, '24 - 500 ml bottles', 28.5000, 113, 0, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(62, 'Tarte au sucre', 29, 3, '48 pies', 49.3000, 17, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.9000, 24, 0, 5, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(64, 'Wimmers gute Semmelkndel', 12, 5, '20 bags x 4 pieces', 33.2500, 22, 80, 30, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.0500, 76, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17.0000, 4, 100, 20, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14.0000, 52, 0, 10, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.5000, 6, 10, 15, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36.0000, 26, 0, 15, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15.0000, 15, 10, 30, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(71, 'Flotemysost', 15, 4, '10 - 500 g pkgs.', 21.5000, 26, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.8000, 14, 0, 0, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(73, 'Rd Kaviar', 17, 8, '24 - 150 g jars', 15.0000, 101, 0, 5, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10.0000, 4, 20, 5, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(75, 'Rhnbru Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.7500, 125, 0, 25, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(76, 'Lakkalikri', 23, 1, '500 ml', 18.0000, 57, 0, 20, b'0');
INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`) VALUES
	(77, 'Original Frankfurter grne Soe', 12, 2, '12 boxes', 13.0000, 32, 0, 15, b'0');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table northwind.region
DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `RegionID` int NOT NULL AUTO_INCREMENT,
  `RegionDescription` varchar(50) NOT NULL,
  PRIMARY KEY (`RegionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table northwind.region: ~4 rows (approximately)
DELETE FROM `region`;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` (`RegionID`, `RegionDescription`) VALUES
	(1, 'Eastern');
INSERT INTO `region` (`RegionID`, `RegionDescription`) VALUES
	(2, 'Westerns');
INSERT INTO `region` (`RegionID`, `RegionDescription`) VALUES
	(3, 'Northern');
INSERT INTO `region` (`RegionID`, `RegionDescription`) VALUES
	(4, 'Southern');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;

-- Dumping structure for table northwind.shippers
DROP TABLE IF EXISTS `shippers`;
CREATE TABLE IF NOT EXISTS `shippers` (
  `ShipperID` int NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(40) NOT NULL,
  `Phone` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`ShipperID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table northwind.shippers: ~2 rows (approximately)
DELETE FROM `shippers`;
/*!40000 ALTER TABLE `shippers` DISABLE KEYS */;
INSERT INTO `shippers` (`ShipperID`, `CompanyName`, `Phone`) VALUES
	(1, 'Speedy Express', '(503) 555-9831');
INSERT INTO `shippers` (`ShipperID`, `CompanyName`, `Phone`) VALUES
	(2, 'United Package', '(503) 555-3199');
INSERT INTO `shippers` (`ShipperID`, `CompanyName`, `Phone`) VALUES
	(3, 'Federal Shipping', '(503) 555-9931');
/*!40000 ALTER TABLE `shippers` ENABLE KEYS */;

-- Dumping structure for table northwind.suppliers
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `SupplierID` int NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(40) NOT NULL,
  `ContactName` varchar(30) DEFAULT NULL,
  `ContactTitle` varchar(30) DEFAULT NULL,
  `Address` varchar(60) DEFAULT NULL,
  `City` varchar(15) DEFAULT NULL,
  `Region` varchar(15) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Country` varchar(15) DEFAULT NULL,
  `Phone` varchar(24) DEFAULT NULL,
  `Fax` varchar(24) DEFAULT NULL,
  `HomePage` mediumtext,
  PRIMARY KEY (`SupplierID`),
  KEY `CompanyName` (`CompanyName`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table northwind.suppliers: ~29 rows (approximately)
DELETE FROM `suppliers`;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(1, 'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', NULL, 'EC1 4SD', 'UK', '(171) 555-2222', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'USA', '(100) 555-4822', NULL, '#CAJUN.HTM#');
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(3, 'Grandma Kelly\'s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'USA', '(313) 555-5735', '(313) 555-3349', NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(4, 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai\r\nMusashino-shi', 'Tokyo', NULL, '100', 'Japan', '(03) 3555-5011', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(5, 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra ', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 76 54', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(6, 'Mayumi\'s', 'Mayumi Ohno', 'Marketing Representative', '92 Setsuko\r\nChuo-ku', 'Osaka', NULL, '545', 'Japan', '(06) 431-7877', NULL, 'Mayumi\'s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#');
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(7, 'Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St.\r\nMoonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588', NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King\'s Way', 'Manchester', NULL, 'M14 GSD', 'UK', '(161) 555-4448', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(9, 'PB Knckebrd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Gteborg', NULL, 'S-345 67', 'Sweden ', '031-987 65 43', '031-987 65 91', NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'So Paulo', NULL, '5442', 'Brazil', '(11) 555 4640', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(11, 'Heli Swaren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstrae 5', 'Berlin', NULL, '10785', 'Germany', '(010) 9984510', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(12, 'Plutzer Lebensmittelgromrkte AG', 'Martin Bein', 'International Marketing Mgr.', 'Bogenallee 51', 'Frankfurt', NULL, '60439', 'Germany', '(069) 992755', NULL, 'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#');
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'Cuxhaven', NULL, '27478', 'Germany', '(04721) 8713', '(04721) 8714', NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante, 75', 'Ravenna', NULL, '48100', 'Italy', '(0544) 60323', '(0544) 60603', '#FORMAGGI.HTM#');
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(15, 'Norske Meierier', 'Beate Vileid', 'Marketing Manager', 'Hatlevegen 5', 'Sandvika', NULL, '1320', 'Norway', '(0)2-953010', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(16, 'Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th Avenue\r\nSuite 210', 'Bend', 'OR', '97101', 'USA', '(503) 555-9931', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(17, 'Svensk Sjfda AB', 'Michael Bjrn', 'Sales Representative', 'Brovallavgen 231', 'Stockholm', NULL, 'S-123 45', 'Sweden', '08-123 45 67', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(18, 'Aux joyeux ecclsiastiques', 'Guylne Nodier', 'Sales Manager', '203, Rue des Francs-Bourgeois', 'Paris', NULL, '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62', NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(19, 'New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept.\r\n2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'USA', '(617) 555-3267', '(617) 555-3389', NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(20, 'Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop, Suite #402', 'Singapore', NULL, '0512', 'Singapore', '555-8787', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(21, 'Lyngbysild', 'Niels Petersen', 'Sales Manager', 'Lyngbysild\r\nFiskebakken 10', 'Lyngby', NULL, '2800', 'Denmark', '43844108', '43844115', NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'Verkoop\r\nRijnweg 22', 'Zaandam', NULL, '9999 ZZ', 'Netherlands', '(12345) 1212', '(12345) 1210', NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(23, 'Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'Lappeenranta', NULL, '53120', 'Finland', '(953) 10956', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(24, 'G\'day, Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward Parade\r\nHunter\'s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', 'G\'day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#');
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(25, 'Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'Montral', 'Qubec', 'H1J 1C3', 'Canada', '(514) 555-9022', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini, 153', 'Salerno', NULL, '84100', 'Italy', '(089) 6547665', '(089) 6547667', NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(27, 'Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22, rue H. Voiron', 'Montceau', NULL, '71300', 'France', '85.57.00.07', NULL, NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(28, 'Gai pturage', 'Eliane Noz', 'Sales Representative', 'Bat. B\r\n3, rue des Alpes', 'Annecy', NULL, '74000', 'France', '38.76.98.06', '38.76.98.58', NULL);
INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `Country`, `Phone`, `Fax`, `HomePage`) VALUES
	(29, 'Forts d\'rables', 'Chantal Goulet', 'Accounting Manager', '148 rue Chasseur', 'Ste-Hyacinthe', 'Qubec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921', NULL);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;

-- Dumping structure for table northwind.territories
DROP TABLE IF EXISTS `territories`;
CREATE TABLE IF NOT EXISTS `territories` (
  `TerritoryID` varchar(20) NOT NULL,
  `TerritoryDescription` varchar(50) NOT NULL,
  `RegionID` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`TerritoryID`),
  KEY `pk_territories_region` (`RegionID`) USING BTREE,
  KEY `pk_territoryid` (`id`) USING BTREE,
  CONSTRAINT `FK_Territories_Region` FOREIGN KEY (`RegionID`) REFERENCES `region` (`RegionID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table northwind.territories: ~53 rows (approximately)
DELETE FROM `territories`;
/*!40000 ALTER TABLE `territories` DISABLE KEYS */;
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('01581', 'Westboro', 1, 1);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('01730', 'Bedford', 1, 2);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('01833', 'Georgetow', 1, 3);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('02116', 'Boston', 1, 4);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('02139', 'Cambridge', 1, 5);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('02184', 'Braintree', 1, 6);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('02903', 'Providence', 1, 7);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('03049', 'Hollis', 3, 8);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('03801', 'Portsmouth ', 3, 9);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('06897', 'Wilton', 1, 10);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('07960', 'Morristown', 1, 11);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('08837', 'Edison', 1, 12);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('10019', 'New York', 1, 13);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('10038', 'New York', 1, 14);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('11747', 'Mellvile', 1, 15);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('14450', 'Fairport', 1, 16);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('19428', 'Philadelphia', 3, 17);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('19713', 'Neward', 1, 18);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('20852', 'Rockville', 1, 19);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('27403', 'Greensboro', 1, 20);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('27511', 'Cary', 1, 21);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('29202', 'Columbia', 4, 22);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('30346', 'Atlanta', 4, 23);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('31406', 'Savannah', 4, 24);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('32859', 'Orlando', 4, 25);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('33607', 'Tampa', 4, 26);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('40222', 'Louisville', 1, 27);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('44122', 'Beachwood', 3, 28);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('45839', 'Findlay', 3, 29);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('48075', 'Southfield', 3, 30);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('48084', 'Troy', 3, 31);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('48304', 'Bloomfield Hills', 3, 32);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('53404', 'Racine', 3, 33);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('55113', 'Roseville', 3, 34);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('55439', 'Minneapolis', 3, 35);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('60179', 'Hoffman Estates', 2, 36);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('60601', 'Chicago', 2, 37);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('72716', 'Bentonville', 4, 38);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('75234', 'Dallas', 4, 39);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('78759', 'Austin', 4, 40);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('80202', 'Denver', 2, 41);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('80909', 'Colorado Springs', 2, 42);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('85014', 'Phoenix', 2, 43);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('85251', 'Scottsdale', 2, 44);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('90405', 'Santa Monica', 2, 45);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('94025', 'Menlo Park', 2, 46);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('94105', 'San Francisco', 2, 47);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('95008', 'Campbell', 2, 48);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('95054', 'Santa Clara', 2, 49);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('95060', 'Santa Cruz', 2, 50);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('98004', 'Bellevue', 2, 51);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('98052', 'Redmond', 2, 52);
INSERT INTO `territories` (`TerritoryID`, `TerritoryDescription`, `RegionID`, `id`) VALUES
	('98104', 'Seattle', 2, 53);
/*!40000 ALTER TABLE `territories` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
