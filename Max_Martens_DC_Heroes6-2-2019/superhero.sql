-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 27 feb 2019 om 12:07
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superhero`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hero`
--

CREATE TABLE `hero` (
  `heroId` int(3) NOT NULL COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable',
  `heroName` varchar(50) NOT NULL COMMENT 'the name of the hero, just a string',
  `heroDescription` text NOT NULL COMMENT 'some information of the hero, just a string',
  `heroPower` text NOT NULL,
  `heroImage` varchar(50) NOT NULL COMMENT 'the image of the hero is strored as a string. The actual image is strored on the server. Use the string as the source of the HTML img-tag.',
  `teamId` int(3) NOT NULL COMMENT 'this is the teamId. Used as a referenc to the team table.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hero`
--

INSERT INTO `hero` (`heroId`, `heroName`, `heroDescription`, `heroPower`, `heroImage`, `teamId`) VALUES
(1, 'Antman', 'Ant-Man is the name of several fictional superheroes appearing in books published by Marvel Comics. Created by Stan Lee, Larry Lieber and Jack Kirby, Ant-Man\'s first appearance was in Tales to Astonish #35 (September 1962). The persona was originally the brilliant scientist Hank Pym\'s superhero alias after inventing a substance that can change size, but Scott Lang and Eric O\'Grady also took on the mantle after the original changed his superhero identity to various other aliases.', 'is small', 'antMan.png', 1),
(2, 'Badman', 'Batman is a fictional superhero appearing in American comic books published by DC Comics. The character was created by artist Bob Kane and writer Bill Finger, and first appeared in Detective Comics #27, in 1939. Originally named the \"Bat-Man\", the character is also referred to by such epithets as the Caped Crusader, the Dark Knight, and the World\'s Greatest Detective.', 'x-ray vision and flight and super stringth', 'badman.jpg', 1),
(3, 'Blackpanther', 'Black Panther is a fictional superhero appearing in American comic books published by Marvel Comics. The character was created by writer-editor Stan Lee and writer-artist Jack Kirby, first appearing in Fantastic Four #52 (cover-dated July 1966) in the Silver Age of Comic Books. Black Panther\'s real name is T\'Challa, king and protector of the fictional African nation of Wakanda. ', 'bulletproof\r\nsmart\r\n', 'blackPanther.jpg', 1),
(4, 'BlackWidow', 'The Black Widow\'s first appearances were as a recurring, non-costumed, Russian-spy antagonist in the feature \"Iron Man\", beginning in Tales of Suspense #52 (April 1964). Five issues later, she recruits the besotted costumed archer and later superhero Hawkeye to her cause. Her government later supplies her with her first Black Widow costume and high-tech weaponry, but she eventually defects to the United States after appearing, temporarily brainwashed against the U.S., in the superhero-team series The Avengers #29 (July 1966). ', 'delayed aging and super speed', 'blackWidow.jpg', 1),
(5, 'Buckybarnes', 'James Buchanan \"Bucky\" Barnes is a Marvel Comics character who is the protégé and childhood friend of Captain America and the tritagonist in Captain America: The First Avenger. He is a member of an elite special unit of Allied soldiers formed in World War II known as the Howling Commandos.', 'Superhuman Strength\r\nEnhanced Reaction Time', 'buckyBarnes.jpg', 1),
(6, 'Captainamerican', 'He stands for something. Ever since his creation as a comic book character in the 1940s, Captain America has been written as a person who embodies what\'s best about the United States, traits such as individualism, justice, and fairness.', 'agility\r\nstrength', 'captainAmerican.jpg', 2),
(7, 'Deadpool', 'Deadpool (Wade Winston Wilson) is a fictional character appearing in American comic books published by Marvel Comics. Created by writer Fabian Nicieza and artist/writer Rob Liefeld, the character first appeared in The New Mutants #98 (cover-dated February 1991). Initially Deadpool was depicted as a supervillain when he made his first appearance in The New Mutants and later in issues of X-Force, but later evolved into his more recognizable antiheroic persona. Deadpool, whose real name is Wade Wilson, is a disfigured mercenary with the superhuman ability.', 'healing\r\naiming', 'deadpool.jpg', 2),
(8, 'Doctorstrange', 'Doctor Strange serves as the Sorcerer Supreme, the primary protector of Earth against magical and mystical threats. Inspired by stories of black magic and Chandu the Magician, Strange was created during the Silver Age of Comic Books to bring a different kind of character and themes of mysticism to Marvel Comics.', 'magic', 'doctorStrange.jpg', 2),
(9, 'Drax', 'Drax is in de strips eerst beter bekend als een mens genaamd Arthur Sampson Douglas, maar nadat superschurk Thanos zijn vrouw en dochter heeft vermoord, verandert alles. Arthurs geest wordt in een compleet nieuw en krachtig lichaam geplaatst om de strijd aan te kunnen tegen Thanos en zo ontstaat Drax the Destroyer. Later wordt hij lid van de superheldengroep ', 'strength \r\nresilience \r\nflight', 'drax.jpg', 2),
(10, 'Gamora', 'Gamora is a member of the Zehoberei species. The Omnicidal space tyrant, Thanos killed Gamora\'s parents in front of her, but spared her and raised her as his own child. Over the course of her life Thanos cybernetically changed her body, with the goal of turning her into the ultimate weapon. The interstellar judge, Ronan the Accuser, trained Gamora as a Galaxy-Class Killer along with mercenaries such as Korath the Pursuer and the Luphomoid known as Nebula. ', 'stone\'s power', 'gamora.jpg', 2),
(11, 'Hawkeye', 'Hawkeye, het alter ego van Clinton Francis \"Clint\" Barton, is een fictieve superheld uit de strips van Marvel Comics, die ook lange tijd lid was van de Avengers. Hij werd bedacht door Stan Lee en Don Heck, en verscheen voor het eerst in Tales of Suspense #57 (september 1964). In vroege Nederlandse uitgaven heette hij Haviksoog.', 'archer', 'hawkeye.jpg', 3),
(12, 'Hulk', 'De Hulk, alias Dr. Robert Bruce Banner is een stripfiguur in de gelijknamige comics van Marvel Comics. Hij werd gecreëerd door Stan Lee en Jack Kirby. De Hulk gaat vaak door voor een superheld, maar is in feite meer een antiheld: hij moet dan ook vaak andere helden van zich afslaan. Sinds zijn eerste verschijning in mei 1962 is de Hulk een van \'s werelds herkenbaarste stripfiguren geworden. In de Nederlandse vertaling heet de strip aanvankelijk Rauwe Bonk, nadien de Verbijsterende Hulk.', 'transform to super strengt \r\ntransform to huge man', 'hulk.jpg', 3),
(13, 'Ironman', 'Iron Man\'s creatie was een samenwerking tussen verschillende schrijvers en tekenaars. Stan Lee bedacht de verhalen, Larry Lieber werkte ze uit, Don Heck deed vooral in de eerste Iron Man strips veel van het tekenwerk en gaf de bekendste personages, waaronder Tony Stark zelf, hun uiterlijk, en Jack Kirby ontwierp steeds de cover van een strip. Bovendien bedacht hij Iron Mans oorspronkelijke harnas.', 'strong in suit\r\nlaser shooter', 'ironman.jpg', 3),
(14, 'Loki', 'Loki (Loki Laufeyson) is een fictieve superschurk uit de strips van Marvel Comics, gebaseerd op de god Loki uit de Noorse Mythologie. Hij verscheen voor het eerst in de strip Venus #6 (Augustus 1949), waarin hij werd afgebeeld als een van de Olympische goden verbannen naar de onderwereld. Hij maakte zijn officiële debuut in Journey into Mystery (1e serie) #85 (Oktober 1962), waarin hij werd geherintroduceerd door Stan Lee en Larry Lieber. Loki’s belangrijkste bijdrage aan de Marvel-strips is ongetwijfeld het feit dat de originele Avengers zijn ontstaan dankzij hem.', 'telekinesis and immortality', 'loki.jpg', 3),
(15, 'Groot', 'Groot is a fictional superhero appearing in American comic books published by Marvel Comics. Created by Stan Lee, Larry Lieber and Jack Kirby, the character first appeared in Tales to Astonish #13 (November 1960). An extraterrestrial, sentient tree-like creature, the original Groot first appeared as an invader that intended to capture humans for experimentation', 'small and can be a big tree', 'groot.jpg', 3),
(16, 'Rocketraccoon', 'Powers and abilities. Rocket Raccoon possesses the normal attributes of an Earth raccoon, including speed (which has been additionally amplified by his training), and an acute sense of smell, sight, hearing and touch.', 'speed', 'rocketRaccoon.jpg', 4),
(17, 'Scarlet', 'Scarlet Witch, het alter ego van Wanda Maximoff, is een personage uit de strips van Marvel Comics. Ze is een mutant die bij haar introductie in de strips nog een superschurk was, maar later een superheldin werd. Ze werd bedacht door Stan Lee en Jack Kirby. In de Nederlandse vertaling van de Marvel Comics heeft ze jarenlang bekendgestaan als de Rode Feeks', 'she can short circuit machinery and she can create reality distorting illusions', 'scarlet.png', 4),
(18, 'Spiderman', 'When meek Peter Parker was bitten during a radioactive spider during a science demonstration, he found he had gained super-human abilities. Peter first began to use his powers to gain fame and fortune as Spider-Man, but after his beloved uncle was killed by a criminal he could have caught earlier in the day, Peter realized his great power came with great responsibility to help others. From that day Spider-Man eschewed fame and fortune in favor of using his powers to help others and fight evil.', 'shooting a web', 'spiderman.jpg', 4),
(19, 'Starlord', 'Star-Lord, echte naam Peter Quill, is een fictief personage uit de strips van Marvel Comics. Hij kwam voor het eerst voor in Marvel Preview #4 (januari 1976) en werd bedacht door Steve Englehart en Steve Gan. Star-Lord is lid en leider van de superheldengroep Guardians of the Galaxy.', 'strengt \r\nspeed', 'starLord.jpg', 4),
(20, 'Superman', 'Superman, ook wel \'De Man van Staal\' genoemd[1], is een personage en imaginaire superheld die zijn eerste verschijning maakte in de Amerikaanse Action Comics #1 in 1938. Hij is als stripfiguur de eerste superheld die bovenmenselijke krachten bezit en lanceerde hiermee een genre waarin meer superhelden volgden, zoals Batman en Wonder Woman', 'fight\r\nstrengt', 'superman.png', 4),
(21, 'Thanos', 'Thanos is een personage uit de strips van Marvel Comics. Hij is bedacht door Jim Starlin en maakte zijn debuut in Iron Man #55 (Februari 1973). Zijn naam is afgeleid van Thanatos, de personificatie van de dood in de Griekse Mythologie. Het personage heeft nadien ook zijn opwachting gemaakt in animatieseries en videospellen gebaseerd op de strips, en het Marvel Cinematic Universe. Hij staat 46e op IGN\'s lijst van 100 grootste stripboek-superschurken aller tijden.', 'strengt\r\nforce', 'thanos.jpg', 5),
(22, 'The thing', 'The Thing (Ben Grimm) is a fictional superhero appearing in American comic books published by Marvel Comics. The character is a founding member of the Fantastic Four. The Thing was created by writer-editor Stan Lee and artist Jack Kirby, and he first appeared in The Fantastic Four #1 (November 1961).', 'strengt \r\nstrong body', 'thing.jpg', 5),
(23, 'Thor', 'Thor (in het Nederlands ook wel De Machtige Thor genoemd) is een fictieve superheld uit de comics van Marvel Comics. Hij is gebaseerd op dondergod Thor uit de Noorse mythologie. Hij werd bedacht door Stan Lee, Larry Lieber en Jack Kirby en verscheen voor het eerst in de strip Journey into Mystery #83 (augustus 1962).', 'lightning\r\nflight', 'thor.jpg', 5),
(24, 'Vision', 'The Vision is a fictional superhero appearing in American comic books published by Marvel Comics. He is an android and a member of the Avengers who first appeared in The Avengers #57 (October 1968). The character is portrayed by Paul Bettany in the Marvel Cinematic Universe in the 2015 film Avengers: Age of Ultron, the 2016 film Captain America: Civil War, and the 2018 film Avengers: Infinity War. He is loosely based on the Timely Comics character of the same name.', 'he can change his density and he absorbs solar energy', 'vision.jpg', 5),
(25, 'Wolverine', 'Wolverine, geboren James Howlett, maar meer bekend als Logan, is een fictieve superheld uit de comics van Marvel Comics. Hij is al lid geweest van verschillende superheldenteams waaronder de X-Men en de Avengers. Wolverine is de Engelse naam voor het roofdier de veelvraat.', 'sharp steel nails\r\nand transform to wolf', 'wolverine.png', 5),
(26, 'Silversurfer', 'De Silver Surfer is een fictieve superheld uit de strips van Marvel Comics. Hij werd bedacht door Stan Lee en Jack Kirby, en verscheen voor het eerst in The Fantastic Four #48 (maart 1966). Voor een in twee delen verschenen verhaal dat door Jean Giraud (Moebius) werd getekend kregen Lee en Giraud in 1989 de Eisner-prijs.', 'Cosmic and granting him superhuman strength', 'Silversurfer.jpg', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(3) NOT NULL COMMENT 'unique rating is, auto incremented',
  `heroId` int(3) NOT NULL COMMENT 'the heroId used as reference to the hero table, can''t be unique in thie table',
  `rating` int(3) NOT NULL COMMENT 'rating is defined as an integer from 0 (min) to 10 (max)',
  `ratingDate` datetime NOT NULL COMMENT 'the date of this rating. Dates are presented as an integer (timestamp) and displayed as a human readable date and time string using the PHP strftime() function',
  `ratingReview` text NOT NULL COMMENT 'a textual review added by the user\\nthe form where the user can rate the hero by using stars (radio-buttons)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `rating`
--

INSERT INTO `rating` (`ratingId`, `heroId`, `rating`, `ratingDate`, `ratingReview`) VALUES
(116, 1, 5, '2019-02-27 12:09:36', 'ant man is the best'),
(117, 2, 4, '2019-02-27 12:09:58', 'look at badman'),
(118, 2, 0, '2019-02-27 12:10:03', 'i hate him');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE `team` (
  `teamId` int(3) NOT NULL COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable',
  `teamName` varchar(50) NOT NULL COMMENT 'team name, just an ordinary string',
  `teamDescription` text NOT NULL COMMENT 'team description, just a string',
  `teamImage` varchar(100) NOT NULL COMMENT 'team image, stored as a string and used with the source of the HTML-tag'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`) VALUES
(1, 'The Swift Squids', 'we are dominating', 'TheSwiftSquids.jpg'),
(2, 'The Salty Seastars', 'we are salty', 'TheSaltySeastars.jpg'),
(3, 'The Distinct Camels', 'we are the best camels there are', 'TheDistinctCamels.jpg'),
(4, 'The Damaged Rhinoceroses', 'we are the best and not the worsed', 'TheDamagedRhinoceroses.jpeg'),
(5, 'The Strong Cobras', 'we are the strongest', 'TheStrongCobras.png');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`heroId`);

--
-- Indexen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexen voor tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `heroId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable', AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique rating is, auto incremented', AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT voor een tabel `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
