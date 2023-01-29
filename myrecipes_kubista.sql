-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Sun 29.Jan 2023, 17:35
-- Verzia serveru: 10.4.22-MariaDB
-- Verzia PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `myrecipes_kubista`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `images`
--

CREATE TABLE `images` (
  `recept_id` int(11) NOT NULL,
  `array_image` text NOT NULL,
  `id` int(11) NOT NULL,
  `postup` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `images`
--

INSERT INTO `images` (`recept_id`, `array_image`, `id`, `postup`) VALUES
(1, '1.jpg', 3, 'Suroviny na cesto.'),
(1, '2.jpg', 4, 'Suroviny na plnku.'),
(1, '3.jpg', 5, 'Cesto: Bielky, soľ, cukor vyšľaháme do tuha. Potom postupne zašľaháme po jednom žĺtku a nakoniec vmiešame preosiatu polohrubú múku spojenú s práškom do pečiva.'),
(1, '4.jpg', 6, 'Väčší plech (30x40 cm) vyložíme papierom na pečenie a rovnomerne rozotrieme pripravené cesto. Rúru predhrejeme na 180 stupňov a pečieme 15 minút do zlatista.'),
(13, '11.jpg', 27, 'Recept som si vytvorila podľa fotky, takže je to čistá improvizácia. Ako prvé som dala do väčšieho množstva osolenej vody variť cestoviny penne. Počas varu som odobrala z vody za šálku, ak by som potrebovala k podliatiu mäsa. V jenskej mise som rozhorúčila olej a opekala na ňom očistenú a nadrobno nakrájanú cibuľu. Keď sa už začala prichytávať, pridala som nadrobno nasekaný cesnak, miešala asi pol minútky a celé som zaliala obsahom konzervy polených paradajok. Za občasného miešania si to tam potom pomaly bublalo.\r\n\r\n'),
(13, '22.jpg', 28, 'Po častiach som pridala pomleté mäso a vareškou som hrudky porozbíjala, nech sa masa zjednotí. Počas miešania som to ešte osolila a okorenila. Vodu z varenia cestovín som prilievala počas dusenia podľa potreby. Pozor na solenie, ak je to dosť slané, radšej prilejte len obyčajnú vodu. Asi po 10 minútach som pridala čerstvú bazalku nakrájanú na pásiky, keďže mala urastené listy.\r\n\r\n'),
(13, '33.jpg', 29, 'Neskôr som tam hodila aj trocha rukoly, aby tam bolo viac zelene😀\r\n\r\n'),
(13, '44.jpg', 30, 'Cestoviny sa medzičasom uvarili, scedila som ich a nechala odkvapkať. Po 25 minútach sa mäsová omáčka zredukovala do hustejšej, chuťovo bola v poriadku, tak som k nej primiešala penne.\r\n\r\n'),
(13, '55.jpg', 31, 'V tejto fáze, kto to preferuje, môže vrch posypať strúhaným syrom a dať ešte zapiecť pod gril do rúry. Tento krok som teraz vynechala. Syr sme mali totiž na inej cestovine, v Cacio e pepe, kde pre zmenu nejde mäso. Tak sme “ oslávili” medzinárodný deň talianskej kuchyne. Síce o pár dní neskôr, ale chutne.\r\n\r\n'),
(17, 'velky-postup875_16733222731.jpg', 38, 'Kuracie stehná a zelenina na štarte.\r\n\r\n'),
(17, 'velky-postup875_16733223032.jpg', 39, 'Stehná som dočistil, umyl, osušil, obojstranne posypal soľou i čerstvo mletým čiernym korením.\r\n\r\n'),
(17, 'velky-postup875_16733223273.jpg', 40, 'Mäso som do zlatohneda opiekol na troške oleja a odložil na pomocný tanier.\r\n\r\n'),
(17, 'velky-postup875_16733223674.jpg', 41, 'Do výpeku som pridal ďalšie 3 PL oleja, na ktorom som do sklovita orestoval plátky šalotky.\r\n\r\n'),
(17, 'velky-postup875_16733224045.jpg', 42, 'Pridal pokrájané dva stonky zeleru, mladú cuketku a hrubostenné papriky (tentoraz som mal oranžovú, červenú, žltú a zelenočervenú), premiešal, zo 5-7 minút podusil.\r\n\r\n'),
(17, 'velky-postup875_16733224296.jpg', 43, 'Posypal som koreninami (mletá sladká paprika, „Nahrin“ na kuracinu, „Creole“), hranu som nadstavil pálivou salsou (domáci „silný Piťo“ sa mi už dávno minul) a dochucovanie som zavŕšil na plátky pokrájanými strúčikmi cesnaku. Pomiešal, podusil, zalial pol litrom kuracieho vývaru.\r\n\r\n'),
(17, 'velky-postup875_16733224567.jpg', 44, 'Nechal som prejsť varom, vložil predpečené kuracie stehná.\r\n\r\n'),
(17, 'velky-postup875_16733224848.jpg', 45, 'Prikryté som dusil asi polhodinku na 1/3 ohreve.\r\n\r\n'),
(17, 'velky-postup875_16733225319.jpg', 46, 'Odparila sa asi polovica tekutiny a mäso bolo ako „hodváb“, priam pre tretie zuby dôchodcov.\r\n\r\n'),
(17, 'velky-postup875_1673322583 (1)0.jpg', 47, 'Podával som s orzom, alias slovenskou ryžou, ale na druhu prílohy naozaj nezáleží.\r\n\r\n'),
(19, 'velky-postup35895_16742943571.jpg', 48, 'Na tieto pancakes je viacero verzií, mne sa páčil práve Nadiyin postup. Ananásové plátky z konzervy necháme na sitku odkvapkať od nálevu. Maslo rozpustíme a vlažné ho rozhabarkujeme s mliekom a vajcom. V mise zmiešame múku so štipkou soli, práškovým cukrom a práškom do pečiva. Prilejeme mliečnu zmes a dôkladne premiešame, dostaneme hustejšie ale tekuté cestíčko.\r\n\r\n'),
(19, 'velky-postup35895_16742945662.jpg', 49, 'K opekaniu som použila kokosový olej, dá sa aj maslo. Panvičku som potrela olejom a na horúci som naberačkou priliala trocha cesta. Do stredu som vtlačila koliesko ananásu. Z oboch strán som koláčik opiekla do červena, na miernom ohni, aby neostalo cesto surové.\r\n\r\n'),
(19, 'velky-postup35895_16742947743.jpg', 50, 'Mne sa osvedčilo dať menej cesta, v podstate musí vystačiť na všetky kolieska ananásu. Vyšlo ich 13 kusov, porcia pre 3-4 osoby. Sú veľmi chutné, šťavnaté.\r\n\r\n');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `recepty`
--

CREATE TABLE `recepty` (
  `recept_id` int(255) NOT NULL,
  `nazov_receptu` varchar(255) NOT NULL,
  `popis_receptu` varchar(500) NOT NULL,
  `options` text NOT NULL,
  `priprava_v_minutach` int(11) DEFAULT NULL,
  `varenie_pecenie` int(11) DEFAULT NULL,
  `teplota` int(11) DEFAULT NULL,
  `pocet_porci` int(11) DEFAULT NULL,
  `image_data` text NOT NULL,
  `id_author` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date_of_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `suroviny` text DEFAULT NULL,
  `new_old` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `recepty`
--

INSERT INTO `recepty` (`recept_id`, `nazov_receptu`, `popis_receptu`, `options`, `priprava_v_minutach`, `varenie_pecenie`, `teplota`, `pocet_porci`, `image_data`, `id_author`, `username`, `date_of_create`, `suroviny`, `new_old`) VALUES
(1, 'Kokosová roláda', 'Pre milovníkov kokosových zákuskov. Roláda vhodná na svadby, sviatočné posedenie, oslavy. Kokosová plnka prekvapí chuťou.', 'Koláče a dezerty', 50, 15, 180, 20, 'rolada.jpg', 0, 'admin', '2023-01-14 19:54:42', 'Cesto:\r\n6 ks	vajcia,\r\n6 PL	cukor kryštálový,\r\n6 PL	múka polohrubá,\r\n1 ČL	prášok do pečiva,\r\nštipka soli,\r\n\r\nPlnka:\r\n300 ml mlieko,\r\n1 bal. (v prášku) puding kokosový,\r\n4 PK cukor kryštálový,\r\n200 g zmäknuté maslo,\r\n1 PL kokos jemne strúhaný,\r\n\r\nNa potretie:\r\nlekvár ríbezľový (alebo džem)	', 'old'),
(13, 'Mleté mäso na paradajkách s penne a bazalkou', 'Niekedy stačí lákavá fotka na nete a hneď viete, čo variť. To bol aj môj dnešný prípad.', 'Cestoviny', 15, 35, 0, 4, 'main.jpg', 0, 'Jozef', '2023-01-19 21:38:40', '400 g prerastené (bôčik, pliecko)	mäso bravčové, 400 ml polené (z konzervy) paradajky, 200 g cestoviny penne, 2 ks cibuľa, 1 hrsť (čerstvá) bazalka, 1 hrsť (čerstvá) rukola, 1 strúčik cesnak, 3 PL olej rastlinný, 1/2 ČL korenie čierne mleté, 1/4 KL orech muškátový mletý, soľ', 'old'),
(17, 'Kuracie stehná na mäsitých paprikách', 'Vo väčšine domácností, ktoré mi bolo umožnené spoznať v priebehu mojej ¾-storočnej púte po našej spoločnej Matičke Zemi, som videl chutnú, pestrú i praktickú „symbiózu“ rôznych druhov mäsa s rôznymi druhmi zeleniny. Záleží iba na Vás a pestrosti chúťok Vašich „stravníkov“, čo si vyberiete a v ktorom technologickom kroku to vložíte do prípravy daného jedla. Ja som dnes skombinoval hrubostenné papriky, jemnú cuketku a stonky zeleru s kuracím mäsom. Jednoducho povedané, kurací paprikáš na zelenine.', 'Mäsité jedlá', 115, 35, 200, 2, 'velky-postup875_1673322583.jpg', 0, 'admin', '2023-01-22 15:06:28', '2 ks(s kosťou a kožou) stehno kuracie, podľa potreby soľ, podľa potreby korenie čierne čerstvo mleté, 3-4 PL(alebo slnečnicový) olej kukuričný, 2-3 ks(cibuľa) šalotka, 1-2 ks zeler stonkový, 1 ks menšia cuketa, 3-4 ks farebná	paprika, hrubostenná, 2 KL(Nahrin) korenie na kuracie mäso, 1 KL korenie Creole,  2-3 KL paprika červená sladká mletá, 2-3 KL(Border Original Hot) salsa, 3-4 strúčiky cesnak, 400-500 ml(horúca voda)	vývar mäsový, 250 ml (orzo) ryža slovenská', 'old'),
(19, 'Ananásové lievance', 'Spestrenie raňajok, desiatej alebo použiteľné ako nenáročný dezert. Nápad z BBC food od Nadiye Hussain.\r\n\r\n', 'Koláče a dezerty', 10, 0, 0, 3, 'velky-recept35895_1674294871.jpg', 0, 'Milan', '2023-01-22 16:24:58', '340 g (plátky z konzervy)	ananás, 125 g múka hladká, 1 ks vajce, 2 PL rozpustené maslo,1 ČL cukor práškový, 1/2 KL prášok do pečiva, 130 ml mlieko, štipka soľ, (alebo olej) maslo', 'old');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `recept_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `reviews`
--

INSERT INTO `reviews` (`id`, `username`, `review`, `datetime`, `recept_id`) VALUES
(9, 'Martin', 'veľmi dobré', '2023-01-14 21:09:33', 1),
(10, 'Martin', 'výborné', '2023-01-14 21:09:45', 1),
(11, 'Martin', 'výborné', '2023-01-14 21:10:35', 1),
(18, 'admin', 'chutné', '2023-01-16 17:32:37', 2),
(20, 'admin', 'dsd', '2023-01-21 20:05:05', 14),
(21, 'admin', 'sdssd', '2023-01-21 20:05:07', 14),
(22, 'Milan', 'fggf', '2023-01-22 21:18:40', 13),
(23, 'Milan', 'fggf', '2023-01-22 21:19:05', 13),
(24, 'Milan', 'fggf', '2023-01-22 21:19:08', 13),
(25, 'Milan', 'fggf', '2023-01-22 21:19:09', 13),
(26, 'Milan', 'fggf', '2023-01-22 21:19:16', 13),
(27, 'Milan', 'fggf', '2023-01-22 21:19:17', 13),
(28, 'Milan', 'fdfdfd', '2023-01-22 21:19:36', 13),
(29, 'Milan', 'fdfdfd', '2023-01-22 21:19:40', 13),
(30, 'Milan', 'fdfdfd', '2023-01-22 21:19:42', 13),
(31, 'Milan', 'fdfdfd', '2023-01-22 21:24:29', 13),
(32, 'Milan', 'fdfdfd', '2023-01-22 21:24:30', 13),
(33, 'admin', 'fdfdf', '2023-01-23 20:50:40', 17),
(34, 'admin', 'sdds', '2023-01-23 20:50:48', 17);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `Date_of_registration` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `avatar` varchar(100) DEFAULT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `Date_of_registration`, `avatar`, `user_type`) VALUES
(3, 'admin', 'admin@admin.com', 'admin', '0000-00-00 00:00:00.000000', 'user.png', 'admin'),
(4, 'Martin', 'kubistam840@azet.sk', '123456789', '2023-01-09 21:08:38.071406', NULL, 'user'),
(5, 'novy', 'a@s', '96e79218965eb72c92a549dd5a330112', '2023-01-15 11:51:07.432507', 'profil.png', 'user'),
(6, 'Jozef', 'jozef@jozef.sk', '123456789', '2023-01-19 21:17:20.462211', NULL, 'user'),
(7, 'Milan', 'milan@milan.com', '123456789', '2023-01-22 15:57:37.428977', 'user.png', 'user');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `recepty`
--
ALTER TABLE `recepty`
  ADD PRIMARY KEY (`recept_id`);

--
-- Indexy pre tabuľku `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pre tabuľku `recepty`
--
ALTER TABLE `recepty`
  MODIFY `recept_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pre tabuľku `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pre tabuľku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
