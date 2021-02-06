-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 06 fév. 2021 à 15:02
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pet_clinic_manager`
--
CREATE DATABASE IF NOT EXISTS `pet_clinic_manager` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pet_clinic_manager`;

-- --------------------------------------------------------

--
-- Structure de la table `breed`
--

DROP TABLE IF EXISTS `breed`;
CREATE TABLE IF NOT EXISTS `breed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `idType` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idType` (`idType`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `breed`
--

INSERT INTO `breed` (`id`, `name`, `idType`) VALUES
(1, 'Berger allemand', 1),
(2, 'Bulldog anglais', 1),
(3, 'Caniche', 1),
(4, 'Labrador', 1),
(5, 'Golden retriever', 1),
(6, 'Maine coon', 2),
(7, 'British shorthair', 2),
(8, 'Pur-sang', 5),
(9, 'Arabe', 5);

-- --------------------------------------------------------

--
-- Structure de la table `owner`
--

DROP TABLE IF EXISTS `owner`;
CREATE TABLE IF NOT EXISTS `owner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPerson` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPerson` (`idPerson`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owner`
--

INSERT INTO `owner` (`id`, `idPerson`) VALUES
(1, 1),
(2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `person`
--

INSERT INTO `person` (`id`, `firstname`, `lastname`, `adress`, `city`, `phoneNumber`, `email`) VALUES
(1, 'Patrick', 'Dupond', '7 rue des Patricks', 'Tours', '0655555555', 'patrick.dupond@mail.fr'),
(2, 'Jean', 'Defienas', '8 rue nationale', 'Tours', '0788888888', 'jean.defienas@mail.com'),
(3, 'Bernard', 'Loutre', '99 rue de Tours', 'Tours', '0247855858', 'bernard.loutre@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `pet`
--

DROP TABLE IF EXISTS `pet`;
CREATE TABLE IF NOT EXISTS `pet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateBirth` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `idType` int(11) NOT NULL,
  `idOwner` int(11) NOT NULL,
  `idVet` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idType` (`idType`,`idOwner`,`idVet`),
  KEY `idOwner` (`idOwner`),
  KEY `pet_ibfk_2` (`idVet`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pet`
--

INSERT INTO `pet` (`id`, `name`, `dateBirth`, `gender`, `idType`, `idOwner`, `idVet`) VALUES
(1, 'Cacahouete', '2021-02-03', 'Male', 5, 1, 1),
(2, 'Garfield', '2020-05-08', 'Male', 2, 1, 1),
(3, 'Chanel', '2016-04-04', 'Femelle', 1, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(0, 'ADMIN'),
(1, 'USER');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'Chien'),
(2, 'Chat'),
(5, 'Cheval');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `idRole` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`idRole`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `idRole`) VALUES
(1, 'admin', 'admin', 0),
(2, 'user1', 'user', 1);

-- --------------------------------------------------------

--
-- Structure de la table `vet`
--

DROP TABLE IF EXISTS `vet`;
CREATE TABLE IF NOT EXISTS `vet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary` int(11) NOT NULL,
  `workTime` int(11) NOT NULL,
  `typeEmploymentContrat` varchar(255) NOT NULL,
  `idPerson` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPerson` (`idPerson`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vet`
--

INSERT INTO `vet` (`id`, `salary`, `workTime`, `typeEmploymentContrat`, `idPerson`) VALUES
(1, 50000, 39, 'CDI', 2);

-- --------------------------------------------------------

--
-- Structure de la table `visit`
--

DROP TABLE IF EXISTS `visit`;
CREATE TABLE IF NOT EXISTS `visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateEntry` date NOT NULL,
  `dateLeaving` date NOT NULL,
  `description` text NOT NULL,
  `petWeight` int(11) NOT NULL,
  `idVet` int(11) NOT NULL,
  `idPet` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idVet` (`idVet`,`idPet`),
  KEY `idPet` (`idPet`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `visit`
--

INSERT INTO `visit` (`id`, `dateEntry`, `dateLeaving`, `description`, `petWeight`, `idVet`, `idPet`) VALUES
(1, '2021-02-06', '2021-02-07', 'Opération de la hanche avant gauche', 15, 1, 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `breed`
--
ALTER TABLE `breed`
  ADD CONSTRAINT `breed_ibfk_1` FOREIGN KEY (`idType`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`idPerson`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `pet_ibfk_1` FOREIGN KEY (`idType`) REFERENCES `type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_ibfk_2` FOREIGN KEY (`idVet`) REFERENCES `vet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pet_ibfk_3` FOREIGN KEY (`idOwner`) REFERENCES `owner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idRole`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `vet`
--
ALTER TABLE `vet`
  ADD CONSTRAINT `vet_ibfk_1` FOREIGN KEY (`idPerson`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`idPet`) REFERENCES `pet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`idVet`) REFERENCES `vet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
