-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.23 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.2.0.4947
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para bd_token
CREATE DATABASE IF NOT EXISTS `bd_token` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bd_token`;


-- Copiando estrutura para tabela bd_token.tb01_token
CREATE TABLE IF NOT EXISTS `tb01_token` (
  `tb01_cliente` varchar(70) DEFAULT NULL,
  `tb01_senha` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela bd_token.tb01_token: ~0 rows (aproximadamente)
DELETE FROM `tb01_token`;
/*!40000 ALTER TABLE `tb01_token` DISABLE KEYS */;
INSERT INTO `tb01_token` (`tb01_cliente`, `tb01_senha`) VALUES
	('1234567', '7450145');
/*!40000 ALTER TABLE `tb01_token` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
