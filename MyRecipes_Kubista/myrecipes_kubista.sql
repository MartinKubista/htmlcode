-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Út 17.Jan 2023, 21:58
-- Verzia serveru: 10.4.21-MariaDB
-- Verzia PHP: 8.0.10

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
(2, '', 7, 'Cottage cheese rozmixujeme najemno, pridáme ošúpané zrelé avokádo, najemno nastrúhaný syr (ja som použila goral tehlu), prelisovaný cesnak a rozmixujeme všetko spolu do hladka.'),
(2, 'natierka.jpg', 8, 'Podľa chuti pridáme štipku soli a mletého čierneho korenia. Dobrú chuť 🙂');

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
(2, 'Avokádová nátierka', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop p', '', '', '', '', 'Nátierky', 15, 0, 0, 0, 'avokado.jpg', '', 0, 'admin', '2023-01-14 20:04:09', '180 g cheese cottage\r\n1 ks zrelé avokádo\r\n3 strúčiky cesnaku\r\n20 g syr tvrdý\r\nsoľ\r\nkorenie čierne mleté\r\n', 'new'),
(7, 'novy', '', '', '', '', '', '', 0, 0, 0, 0, '', '', 0, 'admin', '2023-01-17 20:26:34', '', 'new');

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
(4, 'Martin', 'kubistam840@azet.sk', '25f9e794323b453885f5181f1b624d0b', '2023-01-09 21:08:38.071406', NULL, 'user'),
(5, 'novy', 'a@s', '96e79218965eb72c92a549dd5a330112', '2023-01-15 11:51:07.432507', 'profil.png', 'user');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pre tabuľku `recepty`
--
ALTER TABLE `recepty`
  MODIFY `recept_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pre tabuľku `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pre tabuľku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
