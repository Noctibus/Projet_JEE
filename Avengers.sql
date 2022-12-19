-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mariadb:3306
-- Generation Time: Dec 16, 2022 at 07:42 AM
-- Server version: 10.6.10-MariaDB-1:10.6.10+maria~ubu2004
-- PHP Version: 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DROP DATABASE IF EXISTS `Avengers`;
CREATE DATABASE `Avengers`;
USE `Avengers`;

-- --------------------------------------------------------

--
-- Database: `Avengers`
--

-- --------------------------------------------------------

--
-- Table structure for table `CharacterComments`
--

CREATE TABLE `CharacterComments` (
  `id` int(11) NOT NULL,
  `characterId` int(11) NOT NULL,
  `userUsername` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CharacterComments`
--

INSERT INTO `CharacterComments` (`id`, `userId`, `characterId`, `date`, `content`) VALUES
(1, 1, 1, '2022-12-07 08:02:37', 'Iron man est surcôté, il est bien mais il ne mérite pas le succès qu\'il a...'),
(2, 2, 1, '2022-12-07 08:04:42', 'Tu n\'es pas sérieux, Iron man est le meilleur personnage de l\'univers Marvel, il mérite 5 étoiles !!'),
(3, 2, 2, '2022-12-07 08:05:30', 'Un des meilleurs personnages de l\'univers, généralement noté bien en dessous de ce qu\'il vaut à mon avis...');

-- --------------------------------------------------------

--
-- Table structure for table `CharacterRates`
--

CREATE TABLE `CharacterRates` (
  `characterRateID` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `characterID` int(11) NOT NULL,
  `userUsername` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Characters`
--

CREATE TABLE `Characters` (
  `id` int(11) NOT NULL,
  `identity` text DEFAULT NULL,
  `herosName` text DEFAULT NULL,
  `actor` text NOT NULL,
  `origins` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `rate` double NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Characters`
--

INSERT INTO `Characters` (`id`, `identity`, `herosName`, `actor`, `origins`, `status`, `rate`) VALUES
(1, 'Anthony Stark', 'Iron Man', 'Robert Downey Jr.', 'Anthony Edward « Tony » Stark est un industriel américain, née à Long Island dans l\'État de New York fils de Howard Stark un scientifique avec un goût prononcé pour l\'alcool à la tête de Stark Industries et de Maria Collins-Carbonell Stark. Avec l\'entreprise de son père, il fabrique notamment des armes pour le gouvernement américain. Cela l\'amène à se rendre au Viet Nâm alors en guerre contre les États-Unis pour démontrer la puissance des «transistors» qui permettent de décupler la puissance de n\'importe quelle arme. Mais il saute malencontreusement sur une mine qui projette des éclats près de son cœur.', 0, 3.5),
(2, 'Steven Rogers', 'Captain America', 'Chris Evans', 'Après avoir avalé le sérum du super-soldat durant la Seconde Guerre mondiale, Steven Rogers est devenu un super-héros sous le nom de Captain America.', 0, 5),
(3, 'Bruce Banner', 'Hulk', 'Mark Ruffalo, Eric Bana', 'Quand Bruce Banner reçut des rayons gamma de plein fouet, il fut condamné à se transformer en colosse vert, dès qu\'il se met en colère.', 1, 3),
(4, 'Thor', NULL, 'Chris Hemsworth\r\n', 'Dans la mythologie scandinave, Thor (en vieux norrois : Þórr, littéralement « foudre ») est le dieu du tonnerre, de la guerre et de la forge. C\'est un dieu guerrier très puissant qui représente le combat, la force et le courage. Il est grand et fort. C\'est un gros mangeur et buveur.', 1, 3),
(5, 'Natasha Romanoff', 'Black Widow ', 'Scarlett Johansson', 'Abandonnée à sa naissance, Natasha a été formée dans la chambre Rouge, un centre d’entraînement pour espions top secret. C’est là qu’elle a été formée aux arts martiaux et aux techniques d’espionnage. Elle est en sortie en tant que la Veuve Noire, une espionne de haut niveau. La Veuve Noire est entraînée à la perfection. Cela lui donne un niveau extrème de force, d’agilité et d’endurance.', 0, 3),
(6, 'Clinton Barton', 'Hawkeye', 'Jeremy Renner', 'Enfant, Clint Francis Barton s\'échappe d\'un orphelinat pour rejoindre un cirque. Entrainé par Trickshot et Swordsman, il rejette ce dernier quand il découvre qu\'il est un criminel.', 1, 3),
(7, 'Peter Parker', 'Spider-Man', 'Tom Holland', 'Orphelin depuis l’âge de 6 ans, Peter Parker a été confié à son oncle et à sa tante, Benjamin et May Parker. Fragile émotionnellement et physiquement, Peter développe très tôt un intérêt pour les sciences et c’est au cours d’une expérience à laquelle il assiste qu’il est mordu par une araignée radioactive. Cette morsure lui octroie des super-pouvoirs : il peut s’accrocher à n’importe quelle surface et escalader un bâtiment ou toute autre construction à la manière d’une araignée, son agilité et ses réflexes étant exacerbés. L’ensemble de ses capacités (force, endurance, résistance, sens et capacités de régénération) sont de loin supérieures à celles d’un être humain ordinaire et il possède un sixième sens : un « sens d’araignée » qui l’avertit de tout danger imminent. Last but not least, Spider-Man peut également projeter de ses mains une toile extrêment solide et collante, qui lui permet d’immobiliser ses ennemis ou de se déplacer plus rapidement.', 1, 3),
(8, 'Stephen Strange', 'Docteur Strange', 'Benedict Cumberbatch', 'Stephen Strange neuro- chirurgien brillant mais égoïste, perd  suite à un accident de voiture la capacité d’opérer, recherchant dans le monde entier  un moyen de  réparer ses mains et il fait la rencontre de l’Ancien. Devenu son élève dans les arts mystiques, il lui succède comme Sorcier Suprême. ', 1, 3),
(9, 'Carol Danvers', 'Captain Marvel', 'Brie Larson', 'L\'ancienne pilote de l\'Air Force et agente de renseignement Carol Danvers a poursuivi son rêve d\'exploration spatiale en tant qu\'employée de la NASA, mais sa vie a changé à jamais lorsqu\'elle a été accidentellement transformée en un hybride humain-Kree doté de pouvoirs extraordinaires.', 1, 3),
(10, 'Samuel Wilson', 'Falcon', 'Anthony Mackie', 'Samuel Wilson est à l\'origine un jeune bandit du ghetto de New York. L\'EXO-7 est un jet pack ailé militaire expérimental. Sam Wilson a obtenu l\'un d\'eux pour aider Captain America et utilise maintenant une version avancée en tant que membre des Avengers.\r\n\r\n', 1, 3),
(11, 'Wanda Maximoff', 'Scarlet Witch', 'Elizabeth Olsen', 'Afin d\'aider son pays natal, la Sokovie, à être débarrassé des conflits, Wanda et son frère jumeau, Pietro, rejoignirent HYDRA et acceptèrent d\'être les cobayes d\'expérimentations. Ils reçurent des super-pouvoirs, Wanda pouvant désormais utiliser la manipulation d\'énergie, la télékinésie et la télépathie.', 1, 3),
(12, 'Vision', NULL, 'Paul Bettany', 'Vision est un androïde (parfois appelé \"synthezoïde\") construit par le méchant robot Ultron. Initialement destiné à agir en tant que \"fils\" d\'Ultron et à détruire les Avengers, Vision s\'est plutôt retourné contre son créateur et a rejoint les Avengers pour se battre pour les forces du bien.', 0, 3),
(13, 'Scott Lang', 'Ant-Man', 'Paul Rudd', 'Scott Edward Lang est un voleur repenti. Afin de sauver sa fille, il commet un cambriolage et s\'empare des containers de gaz rétrécissant et du costume d\'Henry Pym, le premier Homme-fourmi. Après avoir vérifié que Lang en fera bon usage, Hank Pym lui donne sa permission de les garder et de les utiliser.', 1, 3),
(14, 'Peter Quill', 'Star-Lord', 'Chris Pratt', 'Fils d’une humaine et d’un spartoi (un extraterrestre à la forme humanoïde), Peter Quill est donc à la fois lié à la Terre mais aussi au reste de la Galaxie. Il finit par endosser le manteau de Star-Lord et devenir un policier intergalactique et un des nombreux protecteurs de l’univers.', 1, 3),
(15, 'T\'Challa', 'Black Panther', 'Chadwick Boseman', 'T\'Challa est le prince héritier du Wakanda, un royaume imaginaire situé en Afrique centrale. Très avancé technologiquement, le Wakanda est le seul endroit au monde où existent des mines de vibranium, le métal si spécial dans l\'univers Marvel.', 1, 3),
(16, 'Thanos', NULL, 'Josh Brolin', 'Thanos est un Titan, une branche de la race des Éternels qui quittèrent la Terre il y a plusieurs siècles pour Titan, la lune de Saturne, et qui donna à leur peuple leur nom. Il est le fils du mentor Alars et de Sui-san.', 0, 3),
(17, 'Ultron', NULL, 'James Spader', 'Ultron a été construit par Tony Stark alors qu\'il expérimentait la robotique à haute intelligence. Ultron est devenu sensible et s\'est rebellé.', 0, 3),
(18, 'Gamora', NULL, 'Zoe Saldana', 'Gamora est une guerrière assassine entraînée, dont la vie sous la colère de son père adoptif Thanos l\'amène à se retourner contre lui. Réalisant que l\'univers est menacé par de puissantes Infinity Stones, elle assume le rôle de Gardien de la Galaxie.', 0, 3),
(19, 'Arthur Douglas', 'Drax le Destructeur ', 'Dave Bautista', 'L\'histoire d\'origine du personnage raconte que la famille d\'Arthur Douglas a été attaquée et tuée par Thanos. Ayant besoin d\'un champion pour combattre Thanos, l\'être connu sous le nom de Kronos a pris l\'esprit d\'Arthur et l\'a placé dans un nouveau corps puissant, et Drax le Destructeur est né.', 1, 3),
(20, 'Rocket Raccoon', NULL, 'Bradley Cooper', 'Rocket vient d\'une planète appelée Halfworld. Ce monde était essentiellement un gigantesque asile d\'aliénés destiné à prendre soin des \"Loonies\". Après que le financement de l\'asile ait été coupé, les médecins ont fui la planète et ont laissé les robots en charge des \"Loonies\". Les Loonies ont procréé et créé beaucoup d\'autres de leur espèce.', 1, 3),
(21, 'Groot', NULL, 'Vin Diesel', 'Groot est un monstre arbre extraterrestre.', 1, 3),
(22, 'Loki', NULL, 'Tom Hiddleston', 'Orné au roi des géants du givre Laufey de Jotunheim et abandonné en raison de sa stature rabougrie, Loki a été caché aux autres de son espèce. Après avoir tué Laufey, Odin, souverain d\'Asgard, trouva Loki et le prit sous son aile pour être élevé aux côtés de son fils, Thor.', 0, 3),
(23, 'Nicholas Fury', NULL, 'Samuel L. Jackson', 'Nicholas Joseph \"Nick\" Fury est un espion, ancien directeur du S.H.I.E.L.D. et fondateur des Avengers. Fury a commencé sa carrière au sein de l\'armée américaine à la fin des années 1960, atteignant le grade de colonel avant sa libération honorable. Il est devenu plus tard un agent de la CIA pendant la guerre froide, opérant principalement en territoire soviétique. Continuant à servir le monde, Fury a rejoint le S.H.I.E.L.D. pour lutter contre les ennemis les plus dangereux de la Terre. ', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `CharactersMoviesAssociation`
--

CREATE TABLE `CharactersMoviesAssociation` (
  `movieID` int(11) NOT NULL,
  `characterID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CharactersMoviesAssociation`
--

INSERT INTO `CharactersMoviesAssociation` (`movieID`, `characterID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(3, 2),
(4, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(3, 7),
(4, 7),
(4, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(2, 11),
(3, 11),
(4, 11),
(2, 12),
(3, 12),
(4, 12),
(4, 13),
(3, 14),
(4, 14),
(3, 15),
(4, 15),
(1, 16),
(2, 16),
(3, 16),
(4, 16),
(2, 17),
(3, 18),
(4, 18),
(3, 19),
(4, 19),
(3, 20),
(4, 20),
(3, 21),
(4, 21),
(1, 22),
(3, 22),
(4, 22),
(1, 23),
(2, 23),
(3, 23),
(4, 23);

-- --------------------------------------------------------

--
-- Table structure for table `MovieComments`
--

CREATE TABLE `MovieComments` (
  `id` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `userUsername` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MovieComments`
--

INSERT INTO `MovieComments` (`id`, `userId`, `movieId`, `date`, `content`) VALUES
(1, 1, 1, '2022-12-07 08:01:07', 'Super film !'),
(2, 2, 4, '2022-12-07 08:03:53', 'Le dernier film est moins bien que les autres, c\'est dommage je l\'ai noté 2/5.');

-- --------------------------------------------------------

--
-- Table structure for table `MovieRates`
--

CREATE TABLE `MovieRates` (
  `movieRateID` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `userUsername` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Movies`
--

CREATE TABLE `Movies` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `director` text NOT NULL,
  `date` date NOT NULL,
  `rate` double NOT NULL DEFAULT 3,
  `synopsis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Movies`
--

INSERT INTO `Movies` (`id`, `title`, `director`, `date`, `rate`, `synopsis`) VALUES
(1, 'Avengers', 'Joss Whedon', '2012-04-20', 3, 'Lorsque Nick Fury, le directeur du S.H.I.E.L.D., l\'organisation qui préserve la paix au plan mondial, cherche à former une équipe de choc pour empêcher la destruction du monde, Iron Man, Hulk, Thor, Captain America, Hawkeye et Black Widow répondent présents.\r\nLes Avengers ont beau constituer la plus fantastique des équipes, il leur reste encore à apprendre à travailler ensemble, et non les uns contre les autres, d\'autant que le redoutable Loki a réussi à accéder au Cube Cosmique et à son pouvoir illimité... '),
(2, 'Avengers : L’Ère d’Ultron ', 'Joss Whedon', '2015-04-22', 3, 'Alors que Tony Stark tente de relancer un programme de maintien de la paix jusque-là suspendu, les choses tournent mal et les super-héros Iron Man, Captain America, Thor, Hulk, Black Widow et Hawkeye vont devoir à nouveau unir leurs forces pour combattre le plus puissant de leurs adversaires : le terrible Ultron, un être technologique terrifiant qui s’est juré d’éradiquer l’espèce humaine.\r\nAfin d’empêcher celui-ci d’accomplir ses sombres desseins, des alliances inattendues se scellent, les entraînant dans une incroyable aventure et une haletante course contre le temps… '),
(3, 'Avengers : Infinity War', 'Joe Russo, Anthony Russo', '2018-04-25', 3, 'Les Avengers et leurs alliés devront être prêts à tout sacrifier pour neutraliser le redoutable Thanos avant que son attaque éclair ne conduise à la destruction complète de l’univers. '),
(4, 'Avengers: Endgame', 'Joe Russo, Anthony Russo', '2019-04-24', 3, 'Thanos ayant anéanti la moitié de l’univers, les Avengers restants resserrent les rangs dans ce vingt-deuxième film des Studios Marvel, grande conclusion d’un des chapitres de l’Univers Cinématographique Marvel.');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `administrator` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UsersInformations`
--

CREATE TABLE `UsersInformations` (
  `userUsername` varchar(20) NOT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CharacterComments`
--
ALTER TABLE `CharacterComments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_CharacterComments_characterId` (`characterId`),
  ADD KEY `fk_CharacterComments_userUsername` (`userUsername`);

--
-- Indexes for table `CharacterRates`
--
ALTER TABLE `CharacterRates`
  ADD PRIMARY KEY (`characterRateID`),
  ADD KEY `fk_CharacterRates_characterId` (`characterID`),
  ADD KEY `fk_CharacterRates_userUsername` (`userUsername`);

--
-- Indexes for table `Characters`
--
ALTER TABLE `Characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CharactersMoviesAssociation`
--
ALTER TABLE `CharactersMoviesAssociation`
  ADD KEY `fk_CharactersMoviesAssociation_characterId` (`characterID`),
  ADD KEY `fk_CharactersMoviesAssociation_movieId` (`movieID`);

--
-- Indexes for table `MovieComments`
--
ALTER TABLE `MovieComments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_MovieComments_movieId` (`movieId`),
  ADD KEY `fk_MovieComments_userUsername` (`userUsername`);

--
-- Indexes for table `MovieRates`
--
ALTER TABLE `MovieRates`
  ADD PRIMARY KEY (`movieRateID`),
  ADD KEY `fk_MovieRates_movieId` (`movieID`),
  ADD KEY `fk_MovieRates_userUsername` (`userUsername`);

--
-- Indexes for table `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `UsersInformations`
--
ALTER TABLE `UsersInformations`
  ADD PRIMARY KEY (`userUsername`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CharacterComments`
--
ALTER TABLE `CharacterComments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CharacterRates`
--
ALTER TABLE `CharacterRates`
  MODIFY `characterRateID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MovieComments`
--
ALTER TABLE `MovieComments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MovieRates`
--
ALTER TABLE `MovieRates`
  MODIFY `movieRateID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CharacterComments`
--
ALTER TABLE `CharacterComments`
  ADD CONSTRAINT `fk_CharacterComments_characterId` FOREIGN KEY (`characterId`) REFERENCES `Characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_CharacterComments_userUsername` FOREIGN KEY (`userUsername`) REFERENCES `Users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CharacterRates`
--
ALTER TABLE `CharacterRates`
  ADD CONSTRAINT `fk_CharacterRates_characterId` FOREIGN KEY (`characterID`) REFERENCES `Characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_CharacterRates_userUsername` FOREIGN KEY (`userUsername`) REFERENCES `Users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `CharactersMoviesAssociation`
--
ALTER TABLE `CharactersMoviesAssociation`
  ADD CONSTRAINT `fk_CharactersMoviesAssociation_characterId` FOREIGN KEY (`characterID`) REFERENCES `Characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_CharactersMoviesAssociation_movieId` FOREIGN KEY (`movieID`) REFERENCES `Movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MovieComments`
--
ALTER TABLE `MovieComments`
  ADD CONSTRAINT `fk_MovieComments_movieId` FOREIGN KEY (`movieId`) REFERENCES `Movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_MovieComments_userUsername` FOREIGN KEY (`userUsername`) REFERENCES `Users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MovieRates`
--
ALTER TABLE `MovieRates`
  ADD CONSTRAINT `fk_MovieRates_movieId` FOREIGN KEY (`movieID`) REFERENCES `Movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_MovieRates_userUsername` FOREIGN KEY (`userUsername`) REFERENCES `Users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `UsersInformations`
--
ALTER TABLE `UsersInformations`
  ADD CONSTRAINT `fk_UsersInformations_userUsername` FOREIGN KEY (`userUsername`) REFERENCES `Users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
