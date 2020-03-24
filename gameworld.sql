-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 16 dec 2019 om 09:34
-- Serverversie: 10.4.8-MariaDB
-- PHP-versie: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--
CREATE DATABASE IF NOT EXISTS `gameworld` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gameworld`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gamecategory`
--

DROP TABLE IF EXISTS `gamecategory`;
CREATE TABLE IF NOT EXISTS `gamecategory` (
  `gameCategoryId` int(3) NOT NULL AUTO_INCREMENT,
  `gameCategoryTitle` varchar(255) NOT NULL,
  `gameCategoryDescription` text NOT NULL,
  PRIMARY KEY (`gameCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `gamecategory`
--

INSERT INTO `gamecategory` (`gameCategoryId`, `gameCategoryTitle`, `gameCategoryDescription`) VALUES
(1, 'PS4', 'Playstation bla bla'),
(2, 'XBOX', ''),
(3, 'PC', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE IF NOT EXISTS `games` (
  `gameId` int(5) NOT NULL AUTO_INCREMENT,
  `gameTitle` varchar(255) NOT NULL,
  `gameDescription` text NOT NULL,
  `gameImage` varchar(255) NOT NULL,
  `gamePrice` double NOT NULL,
  `gameCategory` int(3) NOT NULL,
  `gameCategoryTitle` varchar(255) NOT NULL,
  PRIMARY KEY (`gameId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`gameId`, `gameTitle`, `gameDescription`, `gameImage`, `gamePrice`, `gameCategory`, `gameCategoryTitle`) VALUES
(1, 'Call of Duty', 'Een van de meest onderscheiden games in de geschiedenis is terug. Call of Duty 4: Modern Warfare is geremasterd in high-definition en bevat nu verbeterde textures, high-dynamic range-belichting en nog veel meer. Je herleeft de iconische campaign terwijl je de wereld rondreist met Capt. Price, Gaz en Soap en populaire missies uitvoert als All Ghillied Up, Mile High Club en Crew Expendable.\r\n', 'playstation/callofduty.jpg', 29, 1, 'PS4'),
(2, 'Fallout 4', 'Bethesda Game Studios, de succesvolle ontwikkelaars van Fallout 3 en The Elder Scrolls V: Skyrim, verwelkomen je in de wereld van Fallout 4 – de meest ambitieuze game ooit van de studio en de nieuwe generatie in open-world gaming.\r\n\r\nAls de enige overlevende van Vault 111 stap jij in een door nucleaire oorlog verwoeste wereld. Iedere seconde is een gevecht om te overleven in de ruïnes van Boston en jij bent geheel vrij in al jouw keuzes. Alleen jij kunt het lot bepalen van het Wasteland. Welkom thuis.\r\n\r\n', 'playstation/fallout4.jpg', 23, 1, 'PS4'),
(3, 'Farcry 5', 'Pre-orderbonus: Bereid jezelf voor op het einde met vroege toegang tot: - Het DOOMSDAY PREPPER PACK met de Doomsday Prepper Outfit, het Doomsday busje en het Doomsday 1911 handgeweer. - Het CHAOS PACK: een compleet pack aan extra opties die je kunt gebruiken met 4x snelle boosts, 4x razende boosts, 4x Molotov Cocktails en 4x lokaas voor dieren om te gebruiken wanneer je het verzet leidt in het gevecht tegen Eden. Altijd al gedroomd van een rustgevende vakantie in Montana, U.S.A? Dit is je kans. Welkom in Hope County, Montana. Dit idyllische plekje is de thuis van een gemeenschap van vrijheidslievende mensen en een fanatieke Doomsday-sekte, beter bekend als The Project at Edens Gate.', 'playstation/farcry5.jpg', 20, 1, 'PS4'),
(4, 'Fifa 20', 'EA SPORTS FIFA 20, aangedreven door Frostbite, brengt de twee aspecten van \'The World\'s Game\' tot leven: het prestige van het als prof spelen en de totaal nieuwe straatvoetbalervaring in EA SPORTS VOLTA. FIFA 20 vernieuwt het hele spel. VOETBALINTELLIGENTIE ontgrendelt een ongekend platform voor realisme wat betreft gameplay, FIFA Ultimate Team biedt meer manieren om je droomteam samen te stellen en met EA SPORTS VOLTA speel je authentiek straatvoetbal.', 'playstation/fifa20.jpg', 55, 1, 'PS4'),
(5, 'Grand Theft Auto V', 'Ervaar de ultieme versie van GTA V, met talloze grafische en technische verbeteringen, verbluffende details, een video-editor met geavanceerde filmfuncties en het voortdurend uitbreidende GTA Online, met toegang tot de nieuwste voertuigen en gameplay-functies dankzij gratis updates, waaronder de recente update met import-/exportfunctionaliteit.\r\n\r\nGrand Theft Auto V voor Playstation 4 maakt volledig gebruik van de kracht van next gen-spelcomputers door verbeteringen te leveren zoals verhoogde resolutie en grafische details, hogere verkeersdichtheid, weidsere uitzichten, verbeterde AI, de toevoeging van nieuwe wilde dieren en geavanceerde weer- en schade-effecten voor een ultieme open wereld-ervaring.\r\n\r\n', 'playstation/gta5.jpg', 20, 1, 'PS4'),
(6, 'Minecraft', 'Hak bomen om om houten voorwerpen te maken, delf mijnen om stenen structuren te maken of houd gewassen en dieren om ze te verhandelen met dorpelingen voor andere nuttige voorwerpen. De rivieren en meren van de wereld stromen waar jij wilt dat ze stromen en je kunt zo hoog bouwen als je wilt, of juist diep onder de grond. De wereld om je heen wordt willekeurig gegenereerd en is kilometers lang en breed, dus je hebt alle vrijheid om het perfecte plekje voor je kamp te zoeken. Leg een vlakke basis aan en begin met bouwen, of je je nu thuis voelt op een besneeuwde heuvel, in een dichtbegroeid bos of op een gortdroge woestijnvlakte.\r\n', 'playstation/minecraft.jpg', 39, 1, 'PS4'),
(7, 'Battlefield V', 'Stort je in het grootste conflict in de geschiedenis van de mensheid met Battlefield™ V en zie de serie terugkeren naar haar wortels in een ongekende weergave van de Tweede Wereldoorlog. Battefield V kopen? Lees onderstaande pre-order bonussen\r\n\r\nSpeel grootschalige multiplayer met je squad in modes als het enorme Grand Operations en het coöperatieve Combined Arms, of wees getuige van menselijk drama tijdens een wereldwijde strijd in de singleplayer War Stories. Terwijl je vecht op epische, onverwachte locaties over de hele wereld geniet je van de meest uitgebreide en realistische Battlefield ooit.\r\n\r\n', 'xbox/battlefield.jpg', 26, 2, 'XBOX'),
(8, 'Dayz', 'DayZ is een meedogenloos en meeslepend online open-wereld spel waarin elke speler een doel nastreeft - om zo lang als mogelijk te overleven, met alle mogelijke middelen. Strompel binnen in een harde post-apocalyptische wereld en vecht voor je leven, met maximaal 60 spelers op een server, waar een natie van zombies slechts een van de vele dingen is die je kunnen doden. Hongersnood, infecties, bloedverlies en andere spelers zijn er allemaal op uit om van elke dag je laatste te maken. Probeer je om alleen te overleven of samen te werken met vrienden om samen de vijandige wereld te verslaan?', 'xbox/dayz.jpg', 33, 2, 'XBOX'),
(9, 'DragonBallZ', 'Dragon Ball: Xenoverse is in ontwikkeling bij de Japanse ontwikkelaar Dimps, die eerder verantwoordelijk waren voor de Dragon Ball Z: Budokai-games.\r\n\r\nDragon Ball: Xenoverse is de eerste Dragon Ball-game die voor de next-gen console verschijnt. In de vechtgame kun je weer vechten met vele bekende personages waaronder Goku, Picollo, Vegeta, Frieza en Cell om er maar een paar te noemen uit het rijke DB universum.\r\n', 'xbox/dragonballz.jpg', 22, 2, 'XBOX'),
(10, 'Forza 6', 'Van de makers van de bestverkopende en prijzen winnende Xbox raceserie, komt nu het vervolg uit: Forza Motorsport 6. Verzamel, customize en race de wagens van je dromen en ervaar het videogame debuut van de Ford GT.\r\n', 'xbox/forza6.jpg', 64, 2, 'XBOX'),
(11, 'Friday the 13TH', 'Friday the 13th staat synoniem voor horror. Spelers in de game kruipen in de huid van Jason Voorhees of gaan de strijd aan als kamp begeleider voor de allereerste keer in de gaming geschiedenis. Als gamer ben je getuige van de totaal losgeslagen waanzin van een koelbloedige moordenaar als Jason zijn weg baant door Camp Crystal Lake. Het spel is een helemaal tot in het kleinste detail een getrouw eerbetoon aan de franchise. De echte fans kunnen verzekerd zijn dat alles in Friday the 13th: The Game nauwgezet en nauwkeurig natuurgetrouw gemaakt is.', 'xbox/fridaythe13th.jpg', 33, 2, 'XBOX'),
(12, 'Rocket League', 'Rocket League is een race-voetbalgame ontwikkeld door Psyonix. In het spel besturen spelers een auto waarmee ze moeten proberen doelpunten te scoren op een veld dat overeenkomsten vertoont met een voetbalveld. Rocket League is een voetbalspel waar spelers in plaats van een mens een auto besturen. Een wedstrijd wordt gespeeld tussen 2 teams, welke elk uit minimum 1 speler bestaat en maximum 4 spelers kan bevatten. Elke wedstrijd wordt gespeeld in een afgesloten kooi en duurt vijf minuten. De auto\'s hebben verschillende functies. Zo kunnen zij zeer snel remmen, springen in de lucht en op verticale oppervlaktes rijden. Het team met de meeste doelpunten wint de ronde. Bij een gelijkspel volgt een verlenging volgens het golden goal-principe. ', 'xbox/rocketleague.jpg', 27, 2, 'XBOX'),
(13, 'Anthem', 'Op een door de goden maar half-voltooide wereld bedreigt een duistere groepering de hele mensheid. Alleen de Freelancers staan tussen deze schurken en de eeuwenoude technologie die ze in handen proberen te krijgen.Speel met drie andere spelers en bouw handgemaakte krachtige, unieke, hightech exosuits. Verken uitgestrekte ruïnes, vecht tegen dodelijke vijanden en verzamel buitenaardse artefacten. Met elke missie worden jij en je Javelin-exosuit krachtiger. Vecht tegen de gevaren van een continue veranderende wereld. Sta samen op tegen het kwaad. Triumph as one. AnthemTM is een co-op actie-RPG in een nieuwe, mysterieuze wereld van BioWareTM en EA.\r\n\r\n', 'pc/anthem.jpg', 26, 3, 'PC'),
(14, 'Doom', 'DOOM® Eternal™ is het directe vervolg op de bekroonde DOOM® (2016) gemaakt door id Software. Ervaar de ultieme combinatie van snelheid en kracht met de volgende stap in First-Person gevechten. Keer terug als de DOOM Slayer en neem wraak op alle legers van de Hell. Vecht door verschillende dimensies, op een compleet nieuwe sountrack gecomponeerd door Mick Gordon, terwijl je nieuwe en klassieke demonen afmaakt met krachtige nieuwe wapens en vaardigheden.\r\n', 'pc/doom.jpg', 60, 3, 'PC'),
(15, 'Fear the Wolves', 'Fear the Wolves is a competitive Battle Royale FPS by Vostok Games, bringing unique elements inspired by classic FPS games to the world’s hottest genre. The game drops players, as duos or lone wolves, into the oppressive environments of a radiation-ravaged Chernobyl spread across a section of the 25km2 map.\r\n\r\nTo secure the top spot, players will need to worry about more than just other survivors. Across the hostile wastes, everyone is threatened by deadly anomalies and the dynamically-changing weather – voted for by players and spectators, both in-game and on streaming platforms. As time wares on and day turns to dusk, survivors must stay on their toes and constantly adapting to new situations.\r\n', 'pc/fearthewolves.jpg', 10, 3, 'PC'),
(16, 'Ghost Recon', 'Dit deel uit de Ghost Recon-serie speelt zich af in het jaar 2013. het Amerikaanse leger heeft een Integrated Warfighter System (IWS) ontwikkeld, een complexe combinatie van de nieuwste technologiën die een soldaat in de ultieme strijdkracht kan veranderen. IWS combineert de nieuwste wapensystemen, satellietcommunicatie en verbeterde overlevingskansen in een volledig geïntegreerd gevechtssysteem die nu voor het eerst het slagveld opgaat.\r\n', 'pc/ghostrecon.jpg', 18, 3, 'PC'),
(17, 'The Division 2', 'Advanced Tips & Strategy Guide. This is the most comprehensive and only detailed guide you will find online. Available for instant download on your mobile phone, eBook device, or in paperback form.\r\n', 'pc/thedivision2.jpg', 16, 3, 'PC'),
(18, 'The Surge 2', 'Op weg naar Jericho City, wordt je vliegtuig neergehaald door een mysterieuze storm en stort neer in de omgeving. Weken later word je wakker in een verwaarloosde gevangenis in de stad. Soldaten passen de krijgswet toe, robots zijn op rooftocht en een duistere zandstorm hangt boven de stad.\r\n\r\nOntdek het uitgestrekte, verwoeste Jericho City om te overleven. Ga de strijd aan met meedogenloze gevaren in gewelddadige gevechten, hak en scheur de ledematen van je tegenstanders om materiaal te stelen dat je sterker zal maken, sterk genoeg om de meest gevreesde vijanden in de stad te confronteren.\r\n\r\n', 'pc/thesurge2.jpg', 45, 3, 'PC');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
