-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mariadb:3306
-- Generation Time: Dec 19, 2022 at 05:43 PM
-- Server version: 10.6.11-MariaDB-1:10.6.11+maria~ubu2004
-- PHP Version: 8.0.25

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `rate` double NOT NULL DEFAULT 3,
  `pictureAddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Characters`
--

INSERT INTO `Characters` (`id`, `identity`, `herosName`, `actor`, `origins`, `status`, `rate`, `pictureAddress`) VALUES
(1, 'Anthony Stark', 'Iron Man', 'Robert Downey Jr.', 'Anthony Edward ?? Tony ?? Stark est un industriel am??ricain, n??e ?? Long Island dans l\'??tat de New York fils de Howard Stark un scientifique avec un go??t prononc?? pour l\'alcool ?? la t??te de Stark Industries et de Maria Collins-Carbonell Stark. Avec l\'entreprise de son p??re, il fabrique notamment des armes pour le gouvernement am??ricain. Cela l\'am??ne ?? se rendre au Viet N??m alors en guerre contre les ??tats-Unis pour d??montrer la puissance des ??transistors?? qui permettent de d??cupler la puissance de n\'importe quelle arme. Mais il saute malencontreusement sur une mine qui projette des ??clats pr??s de son c??ur.', 0, 3, 'character1.png'),
(2, 'Steven Rogers', 'Captain America', 'Chris Evans', 'Apr??s avoir aval?? le s??rum du super-soldat durant la Seconde Guerre mondiale, Steven Rogers est devenu un super-h??ros sous le nom de Captain America.', 0, 3, 'character2.png'),
(3, 'Bruce Banner', 'Hulk', 'Mark Ruffalo, Eric Bana', 'Quand Bruce Banner re??ut des rayons gamma de plein fouet, il fut condamn?? ?? se transformer en colosse vert, d??s qu\'il se met en col??re.', 1, 3, 'character3.png'),
(4, 'Thor', NULL, 'Chris Hemsworth\r\n', 'Dans la mythologie scandinave, Thor (en vieux norrois : ????rr, litt??ralement ?? foudre ??) est le dieu du tonnerre, de la guerre et de la forge. C\'est un dieu guerrier tr??s puissant qui repr??sente le combat, la force et le courage. Il est grand et fort. C\'est un gros mangeur et buveur.', 1, 3, 'character4.png'),
(5, 'Natasha Romanoff', 'Black Widow ', 'Scarlett Johansson', 'Abandonn??e ?? sa naissance, Natasha a ??t?? form??e dans la chambre Rouge, un centre d???entra??nement pour espions top secret. C???est l?? qu???elle a ??t?? form??e aux arts martiaux et aux techniques d???espionnage. Elle est en sortie en tant que la Veuve Noire, une espionne de haut niveau. La Veuve Noire est entra??n??e ?? la perfection. Cela lui donne un niveau extr??me de force, d???agilit?? et d???endurance.', 0, 3, 'character5.png'),
(6, 'Clinton Barton', 'Hawkeye', 'Jeremy Renner', 'Enfant, Clint Francis Barton s\'??chappe d\'un orphelinat pour rejoindre un cirque. Entrain?? par Trickshot et Swordsman, il rejette ce dernier quand il d??couvre qu\'il est un criminel.', 1, 3, 'character6.png'),
(7, 'Peter Parker', 'Spider-Man', 'Tom Holland', 'Orphelin depuis l?????ge de 6 ans, Peter Parker a ??t?? confi?? ?? son oncle et ?? sa tante, Benjamin et May Parker. Fragile ??motionnellement et physiquement, Peter d??veloppe tr??s t??t un int??r??t pour les sciences et c???est au cours d???une exp??rience ?? laquelle il assiste qu???il est mordu par une araign??e radioactive. Cette morsure lui octroie des super-pouvoirs : il peut s???accrocher ?? n???importe quelle surface et escalader un b??timent ou toute autre construction ?? la mani??re d???une araign??e, son agilit?? et ses r??flexes ??tant exacerb??s. L???ensemble de ses capacit??s (force, endurance, r??sistance, sens et capacit??s de r??g??n??ration) sont de loin sup??rieures ?? celles d???un ??tre humain ordinaire et il poss??de un sixi??me sens : un ?? sens d???araign??e ?? qui l???avertit de tout danger imminent. Last but not least, Spider-Man peut ??galement projeter de ses mains une toile extr??ment solide et collante, qui lui permet d???immobiliser ses ennemis ou de se d??placer plus rapidement.', 1, 3, 'character7.png'),
(8, 'Stephen Strange', 'Docteur Strange', 'Benedict Cumberbatch', 'Stephen Strange neuro- chirurgien brillant mais ??go??ste, perd  suite ?? un accident de voiture la capacit?? d???op??rer, recherchant dans le monde entier  un moyen de  r??parer ses mains et il fait la rencontre de l???Ancien. Devenu son ??l??ve dans les arts mystiques, il lui succ??de comme Sorcier Supr??me. ', 1, 3, 'character8.png'),
(9, 'Carol Danvers', 'Captain Marvel', 'Brie Larson', 'L\'ancienne pilote de l\'Air Force et agente de renseignement Carol Danvers a poursuivi son r??ve d\'exploration spatiale en tant qu\'employ??e de la NASA, mais sa vie a chang?? ?? jamais lorsqu\'elle a ??t?? accidentellement transform??e en un hybride humain-Kree dot?? de pouvoirs extraordinaires.', 1, 3, 'character9.png'),
(10, 'Samuel Wilson', 'Falcon', 'Anthony Mackie', 'Samuel Wilson est ?? l\'origine un jeune bandit du ghetto de New York. L\'EXO-7 est un jet pack ail?? militaire exp??rimental. Sam Wilson a obtenu l\'un d\'eux pour aider Captain America et utilise maintenant une version avanc??e en tant que membre des Avengers.\r\n\r\n', 1, 3, 'character10.png'),
(11, 'Wanda Maximoff', 'Scarlet Witch', 'Elizabeth Olsen', 'Afin d\'aider son pays natal, la Sokovie, ?? ??tre d??barrass?? des conflits, Wanda et son fr??re jumeau, Pietro, rejoignirent HYDRA et accept??rent d\'??tre les cobayes d\'exp??rimentations. Ils re??urent des super-pouvoirs, Wanda pouvant d??sormais utiliser la manipulation d\'??nergie, la t??l??kin??sie et la t??l??pathie.', 1, 3, 'character11.png'),
(12, 'Vision', NULL, 'Paul Bettany', 'Vision est un andro??de (parfois appel?? \"synthezo??de\") construit par le m??chant robot Ultron. Initialement destin?? ?? agir en tant que \"fils\" d\'Ultron et ?? d??truire les Avengers, Vision s\'est plut??t retourn?? contre son cr??ateur et a rejoint les Avengers pour se battre pour les forces du bien.', 0, 3, 'character12.png'),
(13, 'Scott Lang', 'Ant-Man', 'Paul Rudd', 'Scott Edward Lang est un voleur repenti. Afin de sauver sa fille, il commet un cambriolage et s\'empare des containers de gaz r??tr??cissant et du costume d\'Henry Pym, le premier Homme-fourmi. Apr??s avoir v??rifi?? que Lang en fera bon usage, Hank Pym lui donne sa permission de les garder et de les utiliser.', 1, 3, 'character13.png'),
(14, 'Peter Quill', 'Star-Lord', 'Chris Pratt', 'Fils d???une humaine et d???un spartoi (un extraterrestre ?? la forme humano??de), Peter Quill est donc ?? la fois li?? ?? la Terre mais aussi au reste de la Galaxie. Il finit par endosser le manteau de Star-Lord et devenir un policier intergalactique et un des nombreux protecteurs de l???univers.', 1, 3, 'character14.png'),
(15, 'T\'Challa', 'Black Panther', 'Chadwick Boseman', 'T\'Challa est le prince h??ritier du Wakanda, un royaume imaginaire situ?? en Afrique centrale. Tr??s avanc?? technologiquement, le Wakanda est le seul endroit au monde o?? existent des mines de vibranium, le m??tal si sp??cial dans l\'univers Marvel.', 1, 3, 'character15.png'),
(16, 'Thanos', NULL, 'Josh Brolin', 'Thanos est un Titan, une branche de la race des ??ternels qui quitt??rent la Terre il y a plusieurs si??cles pour Titan, la lune de Saturne, et qui donna ?? leur peuple leur nom. Il est le fils du mentor Alars et de Sui-san.', 0, 3, 'character16.png'),
(17, 'Ultron', NULL, 'James Spader', 'Ultron a ??t?? construit par Tony Stark alors qu\'il exp??rimentait la robotique ?? haute intelligence. Ultron est devenu sensible et s\'est rebell??.', 0, 3, 'character17.png'),
(18, 'Gamora', NULL, 'Zoe Saldana', 'Gamora est une guerri??re assassine entra??n??e, dont la vie sous la col??re de son p??re adoptif Thanos l\'am??ne ?? se retourner contre lui. R??alisant que l\'univers est menac?? par de puissantes Infinity Stones, elle assume le r??le de Gardien de la Galaxie.', 0, 3, 'character18.png'),
(19, 'Arthur Douglas', 'Drax le Destructeur ', 'Dave Bautista', 'L\'histoire d\'origine du personnage raconte que la famille d\'Arthur Douglas a ??t?? attaqu??e et tu??e par Thanos. Ayant besoin d\'un champion pour combattre Thanos, l\'??tre connu sous le nom de Kronos a pris l\'esprit d\'Arthur et l\'a plac?? dans un nouveau corps puissant, et Drax le Destructeur est n??.', 1, 3, 'character19.png'),
(20, 'Rocket Raccoon', NULL, 'Bradley Cooper', 'Rocket vient d\'une plan??te appel??e Halfworld. Ce monde ??tait essentiellement un gigantesque asile d\'ali??n??s destin?? ?? prendre soin des \"Loonies\". Apr??s que le financement de l\'asile ait ??t?? coup??, les m??decins ont fui la plan??te et ont laiss?? les robots en charge des \"Loonies\". Les Loonies ont procr???? et cr???? beaucoup d\'autres de leur esp??ce.', 1, 3, 'character20.png'),
(21, 'Groot', NULL, 'Vin Diesel', 'Groot est un monstre arbre extraterrestre.', 1, 3, 'character21.png'),
(22, 'Loki', NULL, 'Tom Hiddleston', 'Orn?? au roi des g??ants du givre Laufey de Jotunheim et abandonn?? en raison de sa stature rabougrie, Loki a ??t?? cach?? aux autres de son esp??ce. Apr??s avoir tu?? Laufey, Odin, souverain d\'Asgard, trouva Loki et le prit sous son aile pour ??tre ??lev?? aux c??t??s de son fils, Thor.', 0, 3, 'character22.png'),
(23, 'Nicholas Fury', NULL, 'Samuel L. Jackson', 'Nicholas Joseph \"Nick\" Fury est un espion, ancien directeur du S.H.I.E.L.D. et fondateur des Avengers. Fury a commenc?? sa carri??re au sein de l\'arm??e am??ricaine ?? la fin des ann??es 1960, atteignant le grade de colonel avant sa lib??ration honorable. Il est devenu plus tard un agent de la CIA pendant la guerre froide, op??rant principalement en territoire sovi??tique. Continuant ?? servir le monde, Fury a rejoint le S.H.I.E.L.D. pour lutter contre les ennemis les plus dangereux de la Terre. ', 1, 3, 'character23.png');

-- --------------------------------------------------------

--
-- Table structure for table `CharactersMoviesAssociation`
--

CREATE TABLE `CharactersMoviesAssociation` (
  `movieID` int(11) NOT NULL,
  `characterID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `synopsis` text DEFAULT NULL,
  `pictureAddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Movies`
--

INSERT INTO `Movies` (`id`, `title`, `director`, `date`, `rate`, `synopsis`, `pictureAddress`) VALUES
(1, 'Avengers', 'Joss Whedon', '2012-04-20', 3, 'Lorsque Nick Fury, le directeur du S.H.I.E.L.D., l\'organisation qui pr??serve la paix au plan mondial, cherche ?? former une ??quipe de choc pour emp??cher la destruction du monde, Iron Man, Hulk, Thor, Captain America, Hawkeye et Black Widow r??pondent pr??sents.\r\nLes Avengers ont beau constituer la plus fantastique des ??quipes, il leur reste encore ?? apprendre ?? travailler ensemble, et non les uns contre les autres, d\'autant que le redoutable Loki a r??ussi ?? acc??der au Cube Cosmique et ?? son pouvoir illimit??... ', 'avengers1.jpg'),
(2, 'Avengers : L?????re d???Ultron ', 'Joss Whedon', '2015-04-22', 3, 'Alors que Tony Stark tente de relancer un programme de maintien de la paix jusque-l?? suspendu, les choses tournent mal et les super-h??ros Iron Man, Captain America, Thor, Hulk, Black Widow et Hawkeye vont devoir ?? nouveau unir leurs forces pour combattre le plus puissant de leurs adversaires : le terrible Ultron, un ??tre technologique terrifiant qui s???est jur?? d?????radiquer l???esp??ce humaine.\r\nAfin d???emp??cher celui-ci d???accomplir ses sombres desseins, des alliances inattendues se scellent, les entra??nant dans une incroyable aventure et une haletante course contre le temps??? ', 'avengers2.jpg'),
(3, 'Avengers : Infinity War', 'Joe Russo, Anthony Russo', '2018-04-25', 3, 'Les Avengers et leurs alli??s devront ??tre pr??ts ?? tout sacrifier pour neutraliser le redoutable Thanos avant que son attaque ??clair ne conduise ?? la destruction compl??te de l???univers. ', 'avengers3.jpg'),
(4, 'Avengers: Endgame', 'Joe Russo, Anthony Russo', '2019-04-24', 3, 'Thanos ayant an??anti la moiti?? de l???univers, les Avengers restants resserrent les rangs dans ce vingt-deuxi??me film des Studios Marvel, grande conclusion d???un des chapitres de l???Univers Cin??matographique Marvel.', 'avengers4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `administrator` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`username`, `password`, `administrator`) VALUES
('admin', '????????????n????????:b?????????????]Z???????????????:???l???', 1);

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
-- Dumping data for table `UsersInformations`
--

INSERT INTO `UsersInformations` (`userUsername`, `emailAddress`, `gender`, `age`) VALUES
('admin', 'admin@avengers.com', 'Autre', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `CharacterRates`
--
ALTER TABLE `CharacterRates`
  MODIFY `characterRateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `Characters`
--
ALTER TABLE `Characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `MovieComments`
--
ALTER TABLE `MovieComments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `MovieRates`
--
ALTER TABLE `MovieRates`
  MODIFY `movieRateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

--
-- AUTO_INCREMENT for table `Movies`
--
ALTER TABLE `Movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=0;

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
