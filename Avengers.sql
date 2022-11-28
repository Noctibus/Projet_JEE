-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mariadb:3306
-- Generation Time: Nov 28, 2022 at 09:49 AM
-- Server version: 10.6.10-MariaDB-1:10.6.10+maria~ubu2004
-- PHP Version: 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Avengers`
--

-- --------------------------------------------------------

--
-- Table structure for table `CharacterComments`
--

CREATE TABLE `CharacterComments` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `characterId` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `CharacterRates`
--

CREATE TABLE `CharacterRates` (
  `characterRateID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `characterID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Characters`
--

CREATE TABLE `Characters` (
  `id` int(11) NOT NULL,
  `identity` text DEFAULT NULL,
  `hero's name` text DEFAULT NULL,
  `actor` text NOT NULL,
  `origins` text NOT NULL,
  `avengers1` tinyint(1) NOT NULL DEFAULT 1,
  `avengers2` tinyint(1) NOT NULL DEFAULT 1,
  `avengers3` tinyint(1) NOT NULL DEFAULT 1,
  `avengers4` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Characters`
--

INSERT INTO `Characters` (`id`, `identity`, `hero's name`, `actor`, `origins`, `avengers1`, `avengers2`, `avengers3`, `avengers4`, `status`) VALUES
(1, 'Anthony Stark', 'Iron Man', 'Robert Downey Jr.', 'Anthony Edward « Tony » Stark est un industriel américain, née à Long Island dans l\'État de New York fils de Howard Stark un scientifique avec un goût prononcé pour l\'alcool à la tête de Stark Industries et de Maria Collins-Carbonell Stark. Avec l\'entreprise de son père, il fabrique notamment des armes pour le gouvernement américain. Cela l\'amène à se rendre au Viet Nâm alors en guerre contre les États-Unis pour démontrer la puissance des «transistors» qui permettent de décupler la puissance de n\'importe quelle arme. Mais il saute malencontreusement sur une mine qui projette des éclats près de son cœur.', 1, 1, 1, 1, 0),
(2, 'Thor', NULL, 'Chris Hemsworth\r\n', 'Dans la mythologie scandinave, Thor (en vieux norrois : Þórr, littéralement « foudre ») est le dieu du tonnerre, de la guerre et de la forge. C\'est un dieu guerrier très puissant qui représente le combat, la force et le courage. Il est grand et fort. C\'est un gros mangeur et buveur.', 1, 1, 1, 1, 1),
(3, 'Bruce Banner', 'Hulk', 'Mark Ruffalo, Eric Bana', 'Quand Bruce Banner reçut des rayons gamma de plein fouet, il fut condamné à se transformer en colosse vert, dès qu\'il se met en colère.', 1, 1, 1, 1, 1),
(4, 'Steven Rogers', 'Captain America', 'Chris Evans', 'Après avoir avalé le sérum du super-soldat durant la Seconde Guerre mondiale, Steven Rogers est devenu un super-héros sous le nom de Captain America.', 0, 0, 1, 1, 0),
(5, 'Natasha Romanoff', 'Black Widow ', 'Scarlett Johansson', 'Abandonnée à sa naissance, Natasha a été formée dans la chambre Rouge, un centre d’entraînement pour espions top secret. C’est là qu’elle a été formée aux arts martiaux et aux techniques d’espionnage. Elle est en sortie en tant que la Veuve Noire, une espionne de haut niveau. La Veuve Noire est entraînée à la perfection. Cela lui donne un niveau extrème de force, d’agilité et d’endurance.', 1, 1, 1, 1, 0),
(6, 'Clinton Barton', 'Hawkeye', 'Jeremy Renner', 'Enfant, Clint Francis Barton s\'échappe d\'un orphelinat pour rejoindre un cirque. Entrainé par Trickshot et Swordsman, il rejette ce dernier quand il découvre qu\'il est un criminel.', 1, 1, 1, 1, 1),
(7, 'Peter Parker', 'Spider-Man', 'Tom Holland', 'Orphelin depuis l’âge de 6 ans, Peter Parker a été confié à son oncle et à sa tante, Benjamin et May Parker. Fragile émotionnellement et physiquement, Peter développe très tôt un intérêt pour les sciences et c’est au cours d’une expérience à laquelle il assiste qu’il est mordu par une araignée radioactive. Cette morsure lui octroie des super-pouvoirs : il peut s’accrocher à n’importe quelle surface et escalader un bâtiment ou toute autre construction à la manière d’une araignée, son agilité et ses réflexes étant exacerbés. L’ensemble de ses capacités (force, endurance, résistance, sens et capacités de régénération) sont de loin supérieures à celles d’un être humain ordinaire et il possède un sixième sens : un « sens d’araignée » qui l’avertit de tout danger imminent. Last but not least, Spider-Man peut également projeter de ses mains une toile extrêment solide et collante, qui lui permet d’immobiliser ses ennemis ou de se déplacer plus rapidement.', 0, 0, 1, 1, 1),
(8, 'Stephen Strange', 'Docteur Strange', 'Benedict Cumberbatch', 'Stephen Strange neuro- chirurgien brillant mais égoïste, perd  suite à un accident de voiture la capacité d’opérer, recherchant dans le monde entier  un moyen de  réparer ses mains et il fait la rencontre de l’Ancien. Devenu son élève dans les arts mystiques, il lui succède comme Sorcier Suprême. ', 0, 0, 0, 0, 1),
(9, 'Carol Danvers', 'Captain Marvel', 'Brie Larson', 'L\'ancienne pilote de l\'Air Force et agente de renseignement Carol Danvers a poursuivi son rêve d\'exploration spatiale en tant qu\'employée de la NASA, mais sa vie a changé à jamais lorsqu\'elle a été accidentellement transformée en un hybride humain-Kree doté de pouvoirs extraordinaires.', 0, 0, 0, 1, 1),
(10, 'Samuel Wilson', 'Falcon', 'Anthony Mackie', 'Samuel Wilson est à l\'origine un jeune bandit du ghetto de New York. L\'EXO-7 est un jet pack ailé militaire expérimental. Sam Wilson a obtenu l\'un d\'eux pour aider Captain America et utilise maintenant une version avancée en tant que membre des Avengers.\r\n\r\n', 1, 1, 1, 1, 1),
(11, 'Wanda Maximoff', 'Scarlet Witch', 'Elizabeth Olsen', 'Afin d\'aider son pays natal, la Sokovie, à être débarrassé des conflits, Wanda et son frère jumeau, Pietro, rejoignirent HYDRA et acceptèrent d\'être les cobayes d\'expérimentations. Ils reçurent des super-pouvoirs, Wanda pouvant désormais utiliser la manipulation d\'énergie, la télékinésie et la télépathie.', 0, 1, 1, 1, 1),
(12, 'Vision', NULL, 'Paul Bettany', 'Vision est un androïde (parfois appelé \"synthezoïde\") construit par le méchant robot Ultron. Initialement destiné à agir en tant que \"fils\" d\'Ultron et à détruire les Avengers, Vision s\'est plutôt retourné contre son créateur et a rejoint les Avengers pour se battre pour les forces du bien.', 0, 1, 1, 1, 0),
(13, 'Scott Lang', 'Ant-Man', 'Paul Rudd', 'Scott Edward Lang est un voleur repenti. Afin de sauver sa fille, il commet un cambriolage et s\'empare des containers de gaz rétrécissant et du costume d\'Henry Pym, le premier Homme-fourmi. Après avoir vérifié que Lang en fera bon usage, Hank Pym lui donne sa permission de les garder et de les utiliser.', 0, 0, 0, 1, 1),
(14, 'Peter Quill', 'Star-Lord', 'Chris Pratt', 'Fils d’une humaine et d’un spartoi (un extraterrestre à la forme humanoïde), Peter Quill est donc à la fois lié à la Terre mais aussi au reste de la Galaxie. Il finit par endosser le manteau de Star-Lord et devenir un policier intergalactique et un des nombreux protecteurs de l’univers.', 0, 0, 1, 1, 1),
(15, 'T\'Challa', 'Black Panther', 'Chadwick Boseman', 'T\'Challa est le prince héritier du Wakanda, un royaume imaginaire situé en Afrique centrale. Très avancé technologiquement, le Wakanda est le seul endroit au monde où existent des mines de vibranium, le métal si spécial dans l\'univers Marvel.', 0, 0, 1, 1, 1),
(16, 'Thanos', NULL, 'Josh Brolin', 'Thanos est un Titan, une branche de la race des Éternels qui quittèrent la Terre il y a plusieurs siècles pour Titan, la lune de Saturne, et qui donna à leur peuple leur nom. Il est le fils du mentor Alars et de Sui-san.', 1, 1, 1, 1, 0),
(17, 'Ultron', NULL, 'James Spader', 'Ultron a été construit par Tony Stark alors qu\'il expérimentait la robotique à haute intelligence. Ultron est devenu sensible et s\'est rebellé.', 0, 1, 0, 0, 0),
(18, 'Gamora', NULL, 'Zoe Saldana', 'Gamora est une guerrière assassine entraînée, dont la vie sous la colère de son père adoptif Thanos l\'amène à se retourner contre lui. Réalisant que l\'univers est menacé par de puissantes Infinity Stones, elle assume le rôle de Gardien de la Galaxie.', 0, 0, 1, 1, 0),
(19, 'Arthur Douglas', 'Drax le Destructeur ', 'Dave Bautista', 'L\'histoire d\'origine du personnage raconte que la famille d\'Arthur Douglas a été attaquée et tuée par Thanos. Ayant besoin d\'un champion pour combattre Thanos, l\'être connu sous le nom de Kronos a pris l\'esprit d\'Arthur et l\'a placé dans un nouveau corps puissant, et Drax le Destructeur est né.', 0, 0, 1, 1, 1),
(20, 'Rocket Raccoon', NULL, 'Bradley Cooper', 'Rocket vient d\'une planète appelée Halfworld. Ce monde était essentiellement un gigantesque asile d\'aliénés destiné à prendre soin des \"Loonies\". Après que le financement de l\'asile ait été coupé, les médecins ont fui la planète et ont laissé les robots en charge des \"Loonies\". Les Loonies ont procréé et créé beaucoup d\'autres de leur espèce.', 0, 0, 1, 1, 1),
(21, 'Groot', NULL, 'Vin Diesel', 'Groot est un monstre arbre extraterrestre.', 0, 0, 1, 1, 1),
(22, 'Loki', NULL, 'Tom Hiddleston', 'Orné au roi des géants du givre Laufey de Jotunheim et abandonné en raison de sa stature rabougrie, Loki a été caché aux autres de son espèce. Après avoir tué Laufey, Odin, souverain d\'Asgard, trouva Loki et le prit sous son aile pour être élevé aux côtés de son fils, Thor.', 1, 0, 1, 1, 0),
(23, 'Nicholas Fury', NULL, 'Samuel L. Jackson', 'Nicholas Joseph \"Nick\" Fury est un espion, ancien directeur du S.H.I.E.L.D. et fondateur des Avengers. Fury a commencé sa carrière au sein de l\'armée américaine à la fin des années 1960, atteignant le grade de colonel avant sa libération honorable. Il est devenu plus tard un agent de la CIA pendant la guerre froide, opérant principalement en territoire soviétique. Continuant à servir le monde, Fury a rejoint le S.H.I.E.L.D. pour lutter contre les ennemis les plus dangereux de la Terre. ', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `MovieComments`
--

CREATE TABLE `MovieComments` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `MovieRates`
--

CREATE TABLE `MovieRates` (
  `movieRateID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `movieID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Movies`
--

CREATE TABLE `Movies` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `director` text NOT NULL,
  `date` date NOT NULL,
  `rate` float(5,0) NOT NULL DEFAULT 3,
  `synopsis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Movies`
--

INSERT INTO `Movies` (`id`, `title`, `director`, `date`, `rate`, `synopsis`) VALUES
(1, 'Avengers', 'Joss Whedon', '2012-04-20', 3, 'Lorsque Nick Fury, le directeur du S.H.I.E.L.D., l\'organisation qui préserve la paix au plan mondial, cherche à former une équipe de choc pour empêcher la destruction du monde, Iron Man, Hulk, Thor, Captain America, Hawkeye et Black Widow répondent présents.\r\nLes Avengers ont beau constituer la plus fantastique des équipes, il leur reste encore à apprendre à travailler ensemble, et non les uns contre les autres, d\'autant que le redoutable Loki a réussi à accéder au Cube Cosmique et à son pouvoir illimité... '),
(2, 'Avengers : L’Ère d’Ultron ', 'Joss Whedon', '2015-04-22', 2, 'Alors que Tony Stark tente de relancer un programme de maintien de la paix jusque-là suspendu, les choses tournent mal et les super-héros Iron Man, Captain America, Thor, Hulk, Black Widow et Hawkeye vont devoir à nouveau unir leurs forces pour combattre le plus puissant de leurs adversaires : le terrible Ultron, un être technologique terrifiant qui s’est juré d’éradiquer l’espèce humaine.\r\nAfin d’empêcher celui-ci d’accomplir ses sombres desseins, des alliances inattendues se scellent, les entraînant dans une incroyable aventure et une haletante course contre le temps… '),
(3, 'Avengers : Infinity War', 'Joe Russo, Anthony Russo', '2018-04-25', 5, 'Les Avengers et leurs alliés devront être prêts à tout sacrifier pour neutraliser le redoutable Thanos avant que son attaque éclair ne conduise à la destruction complète de l’univers. '),
(4, 'Avengers: Endgame', 'Joe Russo, Anthony Russo', '2019-04-24', 4, 'Thanos ayant anéanti la moitié de l’univers, les Avengers restants resserrent les rangs dans ce vingt-deuxième film des Studios Marvel, grande conclusion d’un des chapitres de l’Univers Cinématographique Marvel.');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CharacterComments`
--
ALTER TABLE `CharacterComments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_CharacterComments_characterId` (`characterId`),
  ADD KEY `fk_CharacterComments_userId` (`userId`);

--
-- Indexes for table `CharacterRates`
--
ALTER TABLE `CharacterRates`
  ADD PRIMARY KEY (`characterRateID`),
  ADD KEY `fk_CharacterRates_userId` (`userID`),
  ADD KEY `fk_CharacterRates_characterId` (`characterID`);

--
-- Indexes for table `Characters`
--
ALTER TABLE `Characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MovieComments`
--
ALTER TABLE `MovieComments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_MovieComments_movieId` (`movieId`),
  ADD KEY `fk_MovieComments_userId` (`userId`);

--
-- Indexes for table `MovieRates`
--
ALTER TABLE `MovieRates`
  ADD PRIMARY KEY (`movieRateID`),
  ADD KEY `fk_MovieRates_userId` (`userID`),
  ADD KEY `fk_MovieRates_movieId` (`movieID`);

--
-- Indexes for table `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `MovieRates`
--
ALTER TABLE `MovieRates`
  MODIFY `movieRateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3006;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CharacterComments`
--
ALTER TABLE `CharacterComments`
  ADD CONSTRAINT `fk_CharacterComments_characterId` FOREIGN KEY (`characterId`) REFERENCES `Characters` (`id`),
  ADD CONSTRAINT `fk_CharacterComments_userId` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`);

--
-- Constraints for table `CharacterRates`
--
ALTER TABLE `CharacterRates`
  ADD CONSTRAINT `fk_CharacterRates_characterId` FOREIGN KEY (`characterID`) REFERENCES `Characters` (`id`),
  ADD CONSTRAINT `fk_CharacterRates_userId` FOREIGN KEY (`userID`) REFERENCES `Users` (`id`);

--
-- Constraints for table `MovieComments`
--
ALTER TABLE `MovieComments`
  ADD CONSTRAINT `fk_MovieComments_movieId` FOREIGN KEY (`movieId`) REFERENCES `Movies` (`id`),
  ADD CONSTRAINT `fk_MovieComments_userId` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`);

--
-- Constraints for table `MovieRates`
--
ALTER TABLE `MovieRates`
  ADD CONSTRAINT `fk_MovieRates_movieId` FOREIGN KEY (`movieID`) REFERENCES `Movies` (`id`),
  ADD CONSTRAINT `fk_MovieRates_userId` FOREIGN KEY (`userID`) REFERENCES `Users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
