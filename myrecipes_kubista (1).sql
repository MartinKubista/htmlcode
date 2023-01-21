-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: So 21.Jan 2023, 13:34
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
(15, 'velky-postup51400_16737882381.jpg', 32, 'Pripravíme si suroviny, mäso umyjeme, osušíme, pokrájame na pásiky, okoreníme mletým čiernym korením, osolíme podľa seba.\r\n\r\n'),
(15, 'velky-postup51400_16737882622.jpg', 33, 'Mäso orestujeme na oleji a vyberieme do druhej misky. Cibuľu, šalotku, cesnak pokrájame na drobno a orestujeme vo výpeku do sklovita. Pridáme šampiňóny bez nálevu, restujeme za občasného miešania. Kyslé uhorky pokrájame na kolieska a osmažíme na masle.\r\n\r\n'),
(15, 'velky-postup51400_16737882833.jpg', 34, 'Uhorky pridáme k šampiónom spolu s horčicou a pretlakom a restujeme. Podlejeme vínom. Mäso vrátime do základu, podlejeme vývarom a dusíme pod pokrievkou za občasného miešania 35-40 minút domäkka. Nakoniec vmiešame smotanu (33 %) a 1 PL masla a necháme prevrieť. Podávame s ryžou. Dobrú chuť.\r\n\r\n');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `recepty`
--

CREATE TABLE `recepty` (
  `recept_id` int(255) NOT NULL,
  `nazov_receptu` varchar(255) NOT NULL,
  `popis_receptu` varchar(500) NOT NULL,
  `array_suroviny` text NOT NULL,
  `array_mnozstvo` text NOT NULL,
  `array_jednotka` text NOT NULL,
  `array_postup` text NOT NULL,
  `options` text NOT NULL,
  `priprava_v_minutach` int(11) DEFAULT NULL,
  `varenie_pecenie` int(11) DEFAULT NULL,
  `teplota` int(11) DEFAULT NULL,
  `pocet_porci` int(11) DEFAULT NULL,
  `image_data` text NOT NULL,
  `url_ar` varchar(255) NOT NULL,
  `id_author` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `date_of_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `suroviny` text DEFAULT NULL,
  `new_old` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Sťahujem dáta pre tabuľku `recepty`
--

INSERT INTO `recepty` (`recept_id`, `nazov_receptu`, `popis_receptu`, `array_suroviny`, `array_mnozstvo`, `array_jednotka`, `array_postup`, `options`, `priprava_v_minutach`, `varenie_pecenie`, `teplota`, `pocet_porci`, `image_data`, `url_ar`, `id_author`, `username`, `date_of_create`, `suroviny`, `new_old`) VALUES
(1, 'Kokosová roláda', 'Pre milovníkov kokosových zákuskov. Roláda vhodná na svadby, sviatočné posedenie, oslavy. Kokosová plnka prekvapí chuťou.', '', '', '', '', 'Koláče a dezerty', 50, 15, 180, 20, 'rolada.jpg', '', 0, 'admin', '2023-01-14 19:54:42', 'Cesto:\r\n6 ks	vajcia,\r\n6 PL	cukor kryštálový,\r\n6 PL	múka polohrubá,\r\n1 ČL	prášok do pečiva,\r\nštipka soli,\r\n\r\nPlnka:\r\n300 ml mlieko,\r\n1 bal. (v prášku) puding kokosový,\r\n4 PK cukor kryštálový,\r\n200 g zmäknuté maslo,\r\n1 PL kokos jemne strúhaný,\r\n\r\nNa potretie:\r\nlekvár ríbezľový (alebo džem)	', 'old'),
(13, 'Mleté mäso na paradajkách s penne a bazalkou', 'Niekedy stačí lákavá fotka na nete a hneď viete, čo variť. To bol aj môj dnešný prípad.', '', '', '', '', 'Cestoviny', 15, 35, 0, 4, 'main.jpg', '', 0, 'Jozef', '2023-01-19 21:38:40', '400 g prerastené (bôčik, pliecko)	mäso bravčové, 400 ml polené (z konzervy) paradajky, 200 g cestoviny penne, 2 ks cibuľa, 1 hrsť (čerstvá) bazalka, 1 hrsť (čerstvá) rukola, 1 strúčik cesnak, 3 PL olej rastlinný, 1/2 ČL korenie čierne mleté, 1/4 KL orech muškátový mletý, soľ', 'new'),
(14, 'yut', 'yut', '', '', '', '', 'Polievky', 0, 0, 0, 0, '', '', 0, 'admin', '2023-01-19 22:32:03', 'tyu', 'new'),
(15, 'áíít', 'yiuyityu', '', '', '', '', 'Polievky', 5, 4, 5, 4, '', '', 0, 'Jozef', '2023-01-20 05:43:40', 'iuyytiu', 'new');

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
(18, 'admin', 'chutné', '2023-01-16 17:32:37', 2);

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
(3, 'admin', 'admin@admin.com', 'a', '0000-00-00 00:00:00.000000', 'p.jpg', 'admin'),
(4, 'Martin', 'kubistam840@azet.sk', '123456789', '2023-01-09 21:08:38.071406', NULL, 'user'),
(5, 'novy', 'a@s', '96e79218965eb72c92a549dd5a330112', '2023-01-15 11:51:07.432507', 'profil.png', 'user'),
(6, 'Jozef', 'jozef@jozef.sk', '123456789', '2023-01-19 21:17:20.462211', NULL, 'user');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pre tabuľku `recepty`
--
ALTER TABLE `recepty`
  MODIFY `recept_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pre tabuľku `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pre tabuľku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
