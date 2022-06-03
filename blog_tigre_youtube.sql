-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 03 juin 2022 à 09:58
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog_tigre_youtube`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tiger` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_tiger` (`id_tiger`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `especes`
--

DROP TABLE IF EXISTS `especes`;
CREATE TABLE IF NOT EXISTS `especes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `especes`
--

INSERT INTO `especes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tigre de Sibérie', '2022-06-03 08:50:48', NULL),
(2, 'Tigre de d\'Indochine', '2022-06-03 08:50:48', NULL),
(3, 'Tigre de Chine Méridionale', '2022-06-03 08:50:48', NULL),
(4, 'Tigre de Bali', '2022-06-03 08:50:48', NULL),
(5, 'Tigre de Malaisie', '2022-06-03 08:50:48', NULL),
(6, 'Tigre de Sumatra', '2022-06-03 08:50:48', NULL),
(7, 'Tigre de Bengale', '2022-06-03 08:50:48', NULL),
(8, 'Tigre de Caspienne', '2022-06-03 08:50:48', NULL),
(9, 'Tigre de Java', '2022-06-03 08:50:48', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tigers`
--

DROP TABLE IF EXISTS `tigers`;
CREATE TABLE IF NOT EXISTS `tigers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `id_espece` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_espece` (`id_espece`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tigers`
--

INSERT INTO `tigers` (`id`, `name`, `id_espece`, `content`, `created_at`, `updated_at`) VALUES
(5, 'Tigerman', 2, 'Le Tigre (Panthera tigris) est un mammifère carnivore de la famille des félidés (Felidae) du genre Panthera. Aisément reconnaissable à sa fourrure rousse rayée de noir, il est le plus grand félin sauvage et l\'un des plus grands carnivores du monde. L\'espèce est divisée en neuf sous-espèces possédant des différences mineures en termes de taille ou de comportement. Superprédateur, il chasse principalement les cerfs et les sangliers, bien qu\'il puisse s\'attaquer à des proies de taille plus importante comme les buffles. Jusqu\'au XIXe siècle, le Tigre était réputé mangeur d\'homme. La structure sociale des tigres en fait un animal solitaire ; le mâle possède un territoire qui englobe les domaines de plusieurs femelles et ne participe pas à l\'éducation des petits. ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.', '2022-06-03 08:55:38', NULL),
(6, 'Tora', 4, 'Le Tigre (Panthera tigris) est un mammifère carnivore de la famille des félidés (Felidae) du genre Panthera. Aisément reconnaissable à sa fourrure rousse rayée de noir, il est le plus grand félin sauvage et l\'un des plus grands carnivores du monde. L\'espèce est divisée en neuf sous-espèces possédant des différences mineures en termes de taille ou de comportement. Superprédateur, il chasse principalement les cerfs et les sangliers, bien qu\'il puisse s\'attaquer à des proies de taille plus importante comme les buffles. Jusqu\'au XIXe siècle, le Tigre était réputé mangeur d\'homme. La structure sociale des tigres en fait un animal solitaire ; le mâle possède un territoire qui englobe les domaines de plusieurs femelles et ne participe pas à l\'éducation des petits. ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.vvLorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.vvLorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.vv', '2022-06-03 08:55:38', NULL),
(7, 'Népal', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.vvvLorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.vvLorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.', '2022-06-03 08:55:38', NULL),
(8, ' Smokey', 5, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.vvLorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a rem quasi ullam similique? Maiores iure quo repellat rerum exercitationem.', '2022-06-03 08:55:38', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(11) NOT NULL,
  `message` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_tiger`) REFERENCES `tigers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `tigers`
--
ALTER TABLE `tigers`
  ADD CONSTRAINT `tigers_ibfk_1` FOREIGN KEY (`id_espece`) REFERENCES `especes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
