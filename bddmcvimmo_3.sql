-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 30 Mars 2020 à 14:13
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bddmcvimmo`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

CREATE TABLE `bien` (
  `idBien` int(11) NOT NULL,
  `superficiejardin` int(11) NOT NULL,
  `nbrpieces` int(11) NOT NULL,
  `rue` varchar(50) NOT NULL,
  `surface` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `idLocalisation` int(11) NOT NULL,
  `idType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `bien`
--

INSERT INTO `bien` (`idBien`, `superficiejardin`, `nbrpieces`, `rue`, `surface`, `prix`, `description`, `idLocalisation`, `idType`) VALUES
(1, 50, 4, 'Rue de l\'Epeule ', 80, 149500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 1),
(2, 30, 4, 'Rue de Lannoy', 90, 229500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 1),
(3, 15, 4, 'Rue Thiers', 60, 180500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 1),
(4, 20, 4, 'Rue Mirabeau', 70, 162000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 1),
(5, 10, 4, 'Rue Ingres', 40, 120000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 1),
(6, 0, 3, 'Rue de Lille', 30, 80500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 2),
(7, 0, 3, 'Rue Jouffroy', 30, 69420, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 2),
(8, 0, 3, 'Avenue Motte', 25, 70500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 2),
(9, 0, 3, 'Rue Jules Guesdes', 25, 70500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 2),
(10, 0, 3, 'Rue de Lille', 30, 150500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 2),
(11, 0, 3, 'Boulevard Gambetta', 25, 45500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 2),
(12, 0, 3, 'Rue de Aléd', 30, 80500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 2),
(13, 0, 3, 'Rue de Lille', 130, 1500000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 3),
(14, 0, 3, 'Rue de Roubaix', 120, 2151566, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 2, 3),
(15, 0, 3, 'Avenue Motte', 60, 3655402, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 2, 3),
(16, 0, 0, 'Rue de Lille', 250, 950000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 4),
(17, 0, 0, 'Rue de Lille', 140, 800000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 4),
(18, 0, 0, 'Rue de Lille', 100, 2151566, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 5),
(19, 0, 0, 'Rue de Lille', 120, 4251536, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 5),
(20, 0, 0, 'Rue de Lille', 200, 2151566, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 5),
(21, 0, 0, 'Rue de Lille', 160, 5514654, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pulvinar sed ante vel sodales. Curabitur vitae ipsum in velit facilisis rhoncus. Suspendisse suscipit tellus ac vestibulum vestibulum.', 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

CREATE TABLE `localisation` (
  `idLocalisation` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `cp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `localisation`
--

INSERT INTO `localisation` (`idLocalisation`, `ville`, `cp`) VALUES
(1, 'Roubaix', 59100),
(2, 'Lille', 59000);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `idType` int(11) NOT NULL,
  `libelle` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`idType`, `libelle`) VALUES
(1, 'Maison'),
(2, 'Appartement'),
(3, 'Locaux Commerciaux'),
(4, 'Immeuble'),
(5, 'Terrains nus');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bien`
--
ALTER TABLE `bien`
  ADD PRIMARY KEY (`idBien`),
  ADD KEY `idLocalisation` (`idLocalisation`),
  ADD KEY `idType` (`idType`);

--
-- Index pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD PRIMARY KEY (`idLocalisation`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idType`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bien`
--
ALTER TABLE `bien`
  MODIFY `idBien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `bien`
--
ALTER TABLE `bien`
  ADD CONSTRAINT `fk_localisation_bien` FOREIGN KEY (`idLocalisation`) REFERENCES `localisation` (`idLocalisation`),
  ADD CONSTRAINT `fk_type_bien` FOREIGN KEY (`idType`) REFERENCES `type` (`idType`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
