-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2023 at 05:28 PM
-- Server version: 5.5.10
-- PHP Version: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `artiste`
--

CREATE TABLE IF NOT EXISTS `artiste` (
  `idArtiste` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prénom` varchar(50) NOT NULL,
  `anneeNaiss` int(20) NOT NULL,
  PRIMARY KEY (`idArtiste`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artiste`
--

INSERT INTO `artiste` (`idArtiste`, `nom`, `prénom`, `anneeNaiss`) VALUES
('DEN', 'Deniro', 'Robert', 1993),
('LUC', 'Besson', 'Luc', 1997);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `idFilm` int(20) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `année` int(20) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `resume` varchar(50) NOT NULL,
  `idRéalisateur` int(20) NOT NULL,
  `codePays` varchar(50) NOT NULL,
  PRIMARY KEY (`idFilm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`idFilm`, `titre`, `année`, `genre`, `resume`, `idRéalisateur`, `codePays`) VALUES
(1, 'Film1', 2022, 'Humour', 'Petit film 1 resume ', 0, 'US'),
(2, 'Film2', 2023, 'Horreur', 'Gros film 2 resume', 0, 'FR');

-- --------------------------------------------------------

--
-- Table structure for table `internaute`
--

CREATE TABLE IF NOT EXISTS `internaute` (
  `email` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internaute`
--

INSERT INTO `internaute` (`email`, `nom`, `prenom`, `region`) VALUES
('test1@gmail.com', 'TesteurA', 'PrenomtesteurA', 'PACA'),
('test2@gmail.com', 'TesteurB', 'PrenomtesteurB', 'NORD');

-- --------------------------------------------------------

--
-- Table structure for table `notation`
--

CREATE TABLE IF NOT EXISTS `notation` (
  `id_notation` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `idFilm` varchar(50) NOT NULL,
  `note` int(20) NOT NULL,
  PRIMARY KEY (`id_notation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notation`
--

INSERT INTO `notation` (`id_notation`, `email`, `idFilm`, `note`) VALUES
('A', 'notationA@gmail.com', '1', 12),
('B', 'notationB@gmail.com', '2', 19);

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `code_pays` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `langue` varchar(50) NOT NULL,
  PRIMARY KEY (`code_pays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`code_pays`, `nom`, `langue`) VALUES
('FR', 'France', 'Francais'),
('US', 'United States of America', 'English US');

-- --------------------------------------------------------

--
-- Table structure for table `rôle`
--

CREATE TABLE IF NOT EXISTS `rôle` (
  `id_role` varchar(50) NOT NULL,
  `idFilm` varchar(50) NOT NULL,
  `idActeur` varchar(50) NOT NULL,
  `nomRole` varchar(50) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rôle`
--

INSERT INTO `rôle` (`id_role`, `idFilm`, `idActeur`, `nomRole`) VALUES
('AAA', '1', 'LUC', 'RoleA'),
('BBBB', '2', 'DEN', 'RoleB');
