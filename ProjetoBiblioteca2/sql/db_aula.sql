-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando estrutura para tabela db_aula.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Copiando dados para a tabela db_aula.usuario: ~7 rows (aproximadamente)
INSERT INTO `usuario` (`id`, `nome`, `email`,`telefone`) VALUES
	(1, 'Jonas', 'josadasd@gamil.com','49 9483728'),
	(2, 'Louise', 'loloisd@gamil.com','49 9483728'),
	(3, 'Ladi', 'ladjdd@gamil.com','49 9483728'),
	(4, 'Joao', 'joaod@gamil.com','49 9483728'),
	(5, 'Pedro', 'pedro@gamil.com','49 9483728');
	/*(7, 'teste1', 'teste'),
	(8, 'teste', 'teste');*/

	
	
	CREATE TABLE IF NOT EXISTS `livros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `autor` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Copiando dados para a tabela db_aula.usuario: ~7 rows (aproximadamente)
INSERT INTO `livros` (`id`, `genero`, `autor`) VALUES
	(1, 'Romance', 'José Saramago'),
	(2, 'Acão', 'Clarice Lispector'),
	(3, 'Terro', 'Edgar Allan Poe'),
	(4, 'Hot', 'Fiódor Dostoiévski'),
	(5, 'Comedia', 'William Shakespeare');
	/*(7, 'teste1', 'teste'),
	(8, 'teste', 'teste');*/

	CREATE TABLE IF NOT EXISTS `acessorios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `acessoriosl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `cafes` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `papelaria` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Copiando dados para a tabela db_aula.usuario: ~7 rows (aproximadamente)
INSERT INTO `livros` (`id`, `acessoriosl`, `cafes`, `papelaria`) VALUES
	(1, 'Marcador de página', 'café ao leite', 'Cadernos'),
	(2, 'Marcador de página', 'café ao leite', 'Cadernos'),
	(3, 'Marcador de página', 'café ao leite', 'Cadernos'),
	(4, 'Marcador de página', 'café ao leite', 'Cadernos'),
	(5, 'Marcador de página', 'café ao leite', 'Cadernos');
	/*(7, 'teste1', 'teste'),
	(8, 'teste', 'teste');*/

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
