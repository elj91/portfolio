-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 24 Novembre 2023 à 14:52
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `loc_voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `NCIN` varchar(90) NOT NULL,
  `email` varchar(90) NOT NULL,
  `nom` varchar(90) NOT NULL,
  `prenom` varchar(90) NOT NULL,
  `adresse` varchar(90) NOT NULL,
  `tel` varchar(90) NOT NULL,
  `date_naissance` date NOT NULL,
  `num_permis` varchar(90) NOT NULL,
  PRIMARY KEY (`NCIN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`NCIN`, `email`, `nom`, `prenom`, `adresse`, `tel`, `date_naissance`, `num_permis`) VALUES
('pgpgpg888', 'chris@gmail.com', 'chris', 'didi', '35 rue lebo ', '0685459632', '2001-11-27', '789456123'),
('kmkmkmkm555', 'helene@gmail.com', 'helene', 'karine', '54 alléé didio', '0658963256', '2002-08-20', '89465165498');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `num_location` int(11) NOT NULL AUTO_INCREMENT,
  `prix_location` float NOT NULL,
  `duree` int(11) NOT NULL,
  `caution` float NOT NULL,
  `date_location` date NOT NULL,
  `#immatriculation` varchar(90) NOT NULL,
  `#NCIN` varchar(90) NOT NULL,
  PRIMARY KEY (`num_location`),
  KEY `#immatriculation` (`#immatriculation`,`#NCIN`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7142 ;

--
-- Contenu de la table `locations`
--

INSERT INTO `locations` (`num_location`, `prix_location`, `duree`, `caution`, `date_location`, `#immatriculation`, `#NCIN`) VALUES
(7141, 200, 18, 2000, '2023-11-28', 'pl985ik', 'pgpgpg888'),
(4524, 500, 11, 2000, '2023-12-07', 'gh987df', 'kmkmkmkm555');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `immatriculation` varchar(90) NOT NULL,
  `marque` varchar(90) NOT NULL,
  `couleur` varchar(90) NOT NULL,
  `nombre de porte` int(11) NOT NULL,
  `kilométrage` int(11) NOT NULL,
  `boite de vitesse` varchar(90) NOT NULL,
  `energie` varchar(90) NOT NULL,
  `puissance` int(11) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`immatriculation`, `marque`, `couleur`, `nombre de porte`, `kilométrage`, `boite de vitesse`, `energie`, `puissance`) VALUES
('pl985ik', 'mercedes', 'rouge', 5, 11000, 'automatique', 'essence', 380),
('gh987df', 'audi', 'vert', 5, 51000, 'automatique', 'essence', 570);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
