-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 25-Nov-2018 às 14:43
-- Versão do servidor: 5.7.23
-- versão do PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamentos`
--

DROP TABLE IF EXISTS `agendamentos`;
CREATE TABLE IF NOT EXISTS `agendamentos` (
  `agendamento_id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(10) CHARACTER SET utf8 NOT NULL,
  `hora` time(5) NOT NULL,
  PRIMARY KEY (`agendamento_id`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `agendamentos`
--

INSERT INTO `agendamentos` (`agendamento_id`, `data`, `hora`) VALUES
(158, '2018-11-26', '00:00:01.00000'),
(157, '2018-12-25', '00:00:01.00000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

DROP TABLE IF EXISTS `cadastro`;
CREATE TABLE IF NOT EXISTS `cadastro` (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `senha` varchar(128) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `nascimento` varchar(10) NOT NULL,
  `logradouro` varchar(30) NOT NULL,
  `numero` varchar(30) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `nome`, `email`, `usuario`, `senha`, `sexo`, `nascimento`, `logradouro`, `numero`, `estado`, `cidade`) VALUES
(5, 'teste', 'teste@teste', 'teste', 'b123e9e19d217169b981a61188920f9d28638709a5132201684d792b9264271b7f09157ed4321b1c097f7a4abecfc0977d40a7ee599c845883bd1074ca23c4af', 'F', '2014-11-21', 'teste', '123', 'SP', 'teste'),
(2, 'Chiquinho', 'chiquinho@hotmail.com', 'chico', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'M', '2018-11-16', 'abc', '1', 'SP', 'sp');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fale_conosco`
--

DROP TABLE IF EXISTS `fale_conosco`;
CREATE TABLE IF NOT EXISTS `fale_conosco` (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contato` varchar(15) NOT NULL,
  `logradouro` varchar(30) NOT NULL,
  `numero` varchar(15) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `mensagem` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fale_conosco`
--

INSERT INTO `fale_conosco` (`id`, `nome`, `email`, `contato`, `logradouro`, `numero`, `estado`, `cidade`, `mensagem`) VALUES
(1, 'gfhg', 'csadfsha@dfsdf', 'ggrfgvd', 'sdfgds', '6565', 'SP', 'gfd', 'fgfdggg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

DROP TABLE IF EXISTS `medico`;
CREATE TABLE IF NOT EXISTS `medico` (
  `medico_id` int(11) NOT NULL AUTO_INCREMENT,
  `especialidade` varchar(30) NOT NULL,
  `crm` varchar(11) NOT NULL,
  `nome_medico` varchar(50) NOT NULL,
  `endereço` varchar(50) NOT NULL,
  `telefone` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`medico_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `medico` (`medico_id`, `especialidade`, `crm`, `nome_medico`, `endereço`, `telefone`, `email`) VALUES
(7, 'Pediatria', '130.990', 'Nathalia GuimarÃ£es', 'null', '1155555555', 'nathalia@hotmail.com'),
(5, '', '130.990', '', '', '1155555555', 'nathalia@hotmail.com'),
(6, 'null', '130.990', 'null', 'null', '1155555555', 'nathalia@hotmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
