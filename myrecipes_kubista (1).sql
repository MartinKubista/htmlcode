-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Út 31.Jan 2023, 16:52
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
(19, 'velky-postup35895_16742947743.jpg', 50, 'Mne sa osvedčilo dať menej cesta, v podstate musí vystačiť na všetky kolieska ananásu. Vyšlo ich 13 kusov, porcia pre 3-4 osoby. Sú veľmi chutné, šťavnaté.\r\n\r\n'),
(25, '', 65, 'Pripravil som si domáci karamel: Cukor som nechal skaramelizovať, prilial som smotanu a za stáleho miešania nechal rozpustiť. Karamel som cez sitko prelial do nádoby a nechal úplne vychladnúť. Uvarila som kávu (s 200 ml vody), ktorú som tiež nechal úplne vychladnúť.\r\n\r\n'),
(26, '', 66, 'Pripravil som si domáci karamel: Cukor som nechal skaramelizovať, prilial som smotanu a za stáleho miešania nechal rozpustiť. Karamel som cez sitko prelial do nádoby a nechala úplne vychladnúť. Uvarila som kávu (s 200 ml vody), ktorú som tiež nechal úplne vychladnúť.\r\n\r\n'),
(26, '', 67, 'Do mixéra som nalial vychladnutú kávu. Pridal som kryštálový a vanilkový cukor, karamel, ľadové kocky a nakoniec mlieko.\r\n\r\n'),
(26, '', 68, 'Rozmixoval som a nalial som si do pohára, ktorého vnútorné steny som predtým polial karamelom.\r\n\r\n'),
(26, '', 69, 'Na vrch som dal šľahačku a nakoniec som ešte vrch polial karamelom. Skvelá na horúce letné dni. Dobrú chuť! :-)\r\n\r\n'),
(27, '', 70, 'Asi 20 veľkých kvetov bazy rozložíme na papier na pečenie. Kilo cukru nasypeme do 3 litrov vody a varíme asi 3 minúty. Jeden biocitrón umyjeme, poutierame dosucha a nakrájame na plátky.\r\n\r\n'),
(27, '', 71, 'Plátky biocitróna, 60 g kyseliny citrónovej a kvety vložíme do päťlitrového pohára, zalejeme horúcim cukrovým sirupom a necháme vychladnúť. Pohár pevne uzavrieme a necháme na chladnom mieste odpočívať aspoň 24 hodín.\r\n\r\n'),
(27, '', 72, 'Sirup prelejeme cez gázu, prelejeme do fliaš a dobre uzatvoríme. Uchovávame v chladničke, spotrebujeme do troch mesiacov.\r\n\r\n'),
(27, '', 73, 'Ak pripravujeme sirup s medom a nechceme ho variť, pohár s kvetmi bazy, plátkami citróna a kyselinou citrónovou zalejeme horúcou prevarenou vodou. Keď vychladne na 45 – 50 °C, primiešame tekutý med, necháme vychladiť a postupujeme ako pri príprave sirupu s cukrom. Uchovávame v chladničke a spotrebujeme do štyroch týždňov.\r\n\r\n'),
(28, '', 74, 'Banán a mango očistíme, nakrájame a dáme do nádoby LuliChef.\r\n\r\n'),
(28, '', 75, 'Navrch nasypeme kokos.\r\n\r\n'),
(28, '', 76, 'A zalejeme vodou po rysku.\r\n\r\n'),
(28, '', 77, 'V menu vyberieme tlačidlo Smoothie a čakáme dve minútky. Dobrú chuť!\r\n\r\n'),
(29, 'velky-sirup-shutterstock_1418397347-1.jpg', 78, 'Ak máme mäso v celku tak ho pomelieme, najlepšie sa hodí bravčové pliecko. Zeleninu očistíme.\r\n\r\n'),
(29, 'velky-postup898_16691090662.jpg', 79, 'Kel nakrájame na rezance, mrkvu a zemiaky na kocky, cibuľu a cesnak nadrobno.\r\n\r\n'),
(29, 'velky-postup898_16691090973.jpg', 80, 'Na masti opražíme cibuľu a pridáme cesnak, ktorý necháme rozvoňať.\r\n\r\n'),
(29, 'velky-postup898_16691091224.jpg', 81, 'Odstavíme z plameňa a pridáme mletú papriku. Zamiešame, aby sa rozpustila v tuku, pridáme mleté mäso, rascu a mleté korenie, vrátime na oheň a chvíľu opečieme.\r\n\r\n'),
(29, 'velky-postup898_16691091535.jpg', 82, 'Zalejeme polovicou vývaru, pridáme zemiaky s mrkvou a varíme asi 20 minút.\r\n\r\n'),
(29, 'velky-postup898_16691092076.jpg', 83, 'Pridáme nakrájaný kel, dobre premiešame a necháme chvíľu podusiť. Kel tak stratí trocha na objeme.\r\n\r\n'),
(29, 'velky-postup898_16691092357.jpg', 84, 'Doplníme zvyšný vývar a ochutíme soľou, prípadne ešte dolejeme vodou, aby bol kel ponorený a povaríme 10 minút.\r\n\r\n'),
(29, 'velky-postup898_16691092578.jpg', 85, 'Na panvici nasucho opražíme hladkú múku do pieskovej farby.\r\n\r\n'),
(29, 'velky-postup898_16691092819.jpg', 86, 'Pridáme trocha oleja alebo tuku a opražíme.\r\n\r\n'),
(29, 'velky-postup898_1669109307-10.jpg', 87, 'Zalejeme trochou studenej vody a metličkou rozmiešame.\r\n\r\n'),
(29, 'velky-postup898_1669109363-11.jpg', 88, 'Zápražku vlejeme do polievky a povaríme ešte aspoň 10-15 minút. Kto nechce, nemusí zahusťovať, polievka bude chutná aj tak.\r\n\r\n'),
(29, 'velky-postup898_1669109396-12.jpg', 89, 'Podávame s chlebom alebo so slaným posúchom...\r\n\r\n'),
(30, 'velky-postup120740_167370758611.jpg', 90, 'Do vody dáme štipku soli a jednu ČL olivového oleja a uvaríme si ľubovoľné cestoviny. Ja som použila vretienka. Kým sa cestoviny varia, nakrájame si pór a papriku.\r\n\r\n'),
(30, 'velky-postup120740_16737076612.jpg', 91, 'Uvarené cestoviny scedíme, prepláchneme studenou vodou, necháme odkvapkať a vysypeme do misky. Pridáme šťavy zbaveného tuniaka (čiže pevný podiel cca 112 g), k tomu nakrájanú zeleninku, kukuricu, lyžicu majonézy, korenie a druhú ČL olivového oleja. Všetko spolu premiešame a podľa chuti dosolíme.\r\n\r\n'),
(30, 'velky-postup120740_16737077503.jpg', 92, 'Dáme cca na pol hodinky do chladničky a studený cestovinový šalát podávame. Dobrú chuť 🙂\r\n\r\n'),
(31, '', 93, 'Zo šampiňónov odstránime stopky, ktoré nakrájame na malé kocky.\r\n\r\n'),
(31, '', 94, 'Do panvice dáme zohriať olej, do ktorého pridáme oravskú slaninu, červenú cibuľu, pór, stopky šampiňónov nakrájané na kocky, kapiu a na koniec nakrájanú paradajku.\r\n\r\n'),
(31, '', 95, 'Sprudka o restujeme, pridáme soľ, mleté biele korenie a provensalské bylinky. Touto zmesou naplníme pripravené hlavičky, posypeme strúhaným parmezánom a dáme zapiecť do vyhriatej rúry.\r\n\r\n'),
(31, '', 96, 'Do malého hrnca pridáme bambino syr a na malom ohni ho roztopíme. Pridáme smotanu na varenie, osolíme a krátko povaríme, potom zahustíme škrobom rozrobeným vo vode.\r\n\r\n'),
(31, '', 97, 'Podávame ako predjedlo, prípadne ako hlavné jedlo a servírujeme tak, že na tanier na spodok dáme trochu omáčky a zapečené šampiňóny poukladáme navrch.\r\n\r\n'),
(32, 'velky-postup35895_1672930846111.jpg', 98, 'Tieto rýchle restované jedlá rada pripravujem na panvici. Najprv prichystám suroviny a potom to už ide fakt ako v zime na saniach - hladko a rýchlo. Kuraciu pečeň očistím od neželaných častí, opláchnem a pokrájam na menšie kusy. Očistenú cibuľu nasekám na mesiačiky a hodím ju na rozohriatu masť v panvici. Teplota je vyššia, sem-tam premiešam. Keď je už z väčšej časti pripečená, primiešam paradajkový pretlak a zarestujem ho chvíľu. Prisypem pečeň a varechou niekedy poprevraciam obsah panvice.\r\n\r\n'),
(32, 'velky-postup35895_1672930972222.jpg', 99, 'Posypem majoránom a mletým čiernym korením, premiešam a mletú papriku pridám až vo chvíli, keď pečeň stráca surovú farbu a vyrestovala sa na tuk. Netrvá to len pár minutiek.\r\n\r\n'),
(32, 'velky-postup35895_16729311723333.jpg', 100, 'Po dôkladnom premiešaní je skoro hotovo, vypnem zdroj tepla a jedlo už len osolím.\r\n\r\n'),
(32, 'velky-postup35895_16729315214444.jpg', 101, 'Jesť sa to má okamžite, teda každý už musí sedieť pri stole s príborom v ruke:-) Najlepšia príloha je podľa mňa čerstvý biely chlieb. Keď nie je, radšej vopred udusím trocha ryže. Hodí sa čerstvý zeleninový šalát aj sterilizovaná zelenina. Teraz sme mali v týždni mäso s lečom, a bolo aj lečo s vajcom, no často robím túto pečienku aj tak, že miesto pretlaku pridám práve lečo. Je to dobrota tak či tak.\r\n\r\n'),
(33, 'velky-postup35895_16749126111.jpg', 102, 'V polovici vlažného mlieka rozmiešame cukor a rozdrobené droždie, necháme vzísť. Vo väčsej miske zmiešame preosiate múky so soľou, prilejeme olej, vzídený kvások a zvyšok vlažného mlieka. Tekutinu dávame postupne počas miesenia, aby sme dostali vláčne ale nie príliš riedke cesto. Možno ani uvedené množstvo mlieka nebude potrebné, každá múka saje tekutinu inak. Keď je dobre zmiesené, prikryté ho necháme nakysnúť asi 30 minút.\r\n\r\n'),
(33, 'velky-postup35895_167491267722.jpg', 103, 'Cesto by malo narásť, v ideálnom prípade zhruba na dvojnásobok.\r\n\r\n'),
(33, 'velky-postup35895_1674912943333.jpg', 104, 'Na jemne pomúčenej doske ho rozdelíme na približne rovnaké diely. Vážiť zvyknem skôr pri pečení na plechu, kde je dobré mať naozaj identické kusy, aby boli cestá rovnako hrubé. Ale kto má rád symetriu, môže si vážiť aj langoše. Každý kus potom sformujeme do guľata tak, že okraje pozberáme do stredu a prevrátime. Prikryté utierkou necháme ešte trocha pribrať na objeme, keďže manipuláciou z nich vytláčame vzduch.\r\n\r\n'),
(33, 'velky-postup35895_1674913325444.jpg', 105, 'Prichystáme plnku zmiešaním bryndze so strúhanou mozzarellou. V podstate môžete použiť aj iný syr, len aby chuťovo neprebil bryndzu. V pôvodnom recepte tam popri mozzarelle dávali aj kaškaval. Ten som nezohnala. Bochníčky cesta rozťapkáme na placku, môžeme aj rozvaľkať mini valčekom.\r\n\r\n'),
(33, 'velky-postup35895_1674913789555.jpg', 106, 'Na polovicu langošíka navrstvíme plnku a prikryjeme druhou polovicou, okraje dôkladne prstami spojíme, aby plnka počas pečenia nevytiekla. Nie je to príjemné, keď vám vytečený syr prská do tváre a potom sa priškvarí na panvicu. Miesto vyprážania v oleji sa dá piecť aj v rúre, ak niekto uprednostňuje to. Mám tu z dávnych čias recept na slané šišky a posúchy plnené cottage syrom, tam som robila aj-aj verziu. V rumunskom videorecepte boli langoše obvyklej veľkosti, ale viem, že u nás sa zjedia skôr menšie.\r\n\r\n'),
(33, 'velky-postup35895_1674914771666.jpg', 107, 'Znova ich prikryjeme a vo vhodnej nádobe rozhorúčime olej. Musí ho byť dostatok, aby sa naplnené cesto opieklo aj z bokov, inak si budete musieť langoše počas vyprážania otáčať aj nastojato. Vypražené si uložte tak, aby sa zbavili prebytočného tuku.\r\n\r\n'),
(33, 'velky-postup35895_1674914800777.jpg', 108, 'Plnené langoše síce nie sú novinkou, ale takéto som ešte nerobila. Aj keď na ploché sa dá začerstva nastrúhať syr a pomrviť bryndza, roztopená plnka vo vnútri je iný level. Po vychladnutí sú dobré tiež, aj keď plnka sa už nerozteká.\r\n\r\n'),
(34, 'velky-postup41277_1670869938111.jpg', 109, 'Korpus: Vajíčka, cukor a maslo vyšľaháme. Pridáme múku preosiatu s práškom do pečiva a kakaom. Nakoniec vmiešame postrúhané jablká. Keď sú zdravé, ja ich nešúpem.\r\n\r\n'),
(34, 'velky-postup41277_1670869956222.jpg', 110, 'Formu s priemerom 24 cm vymastíme a vysypeme múkou a vlejeme do nej cesto.\r\n\r\n'),
(34, 'velky-postup41277_1670869973333.jpg', 111, 'Upečieme vo vyhriatej rúre pri 180 stupňoch, 45 - 50 minút. Vyskúšame špaľlou, keď je dole lepkavá, tortu ešte dopečieme.\r\n\r\n'),
(34, 'velky-postup41277_1670869992444.jpg', 112, 'Upečený korpus necháme vychladnúť. Vydutý vrch korpusu odrežeme, aby sme tortu vyrovnali. Prerežeme na polovicu. Ja to robím nasledovne: Nožom po celom obvode urobím plytký zárez.\r\n\r\n'),
(34, 'velky-postup41277_1670870006555.jpg', 113, 'Do spomenutého zárezu po obvode dám špagátik, ktorého konce prekrížim a potiahnem. Tým sa korpus rovnomerne prereže. To je výhodné, keď treba korpus prerezať na 3 časti. Spodnú časť natrieme džemom - a nešetríme, priložíme druhú časť a vrch tiež potrieme džemom - teraz už menej.\r\n\r\n'),
(34, 'velky-postup41277_1670870056666.jpg', 114, 'Celú tortu, aj boky polejeme čokoládovou polevou, ktorú pripravíme nasledovne: smotanu zohrejeme na 75 stupňov, nalejeme ju na polámané kúsky čokolády a miešame do lesklej hmoty. Je dôležité dať silnejšiu čokoládu, dáva špecifickú chuť, várová čokoláda je málo.\r\n\r\n'),
(34, 'velky-postup41277_1670870069777.jpg', 115, 'Tortu vložíme do chladničky a po stuhnutí nakrájame. Sacherova torta má mať čokoládové pečiatky, ale kde by som ich vzala. Myslím, že môže byť aj šľahačka, či orech alebo lentilky.\r\n\r\n'),
(35, 'velky-postup6371_1365966690111.jpg', 116, 'Rybu som si najprv rozmrazila.\r\n\r\n'),
(35, 'velky-postup6371_1365966730222.jpg', 117, 'Umyla som ju pod tečúcou vodou . Papierovými utierkami som ju dobre vyutierala dosucha. Na koži som spravila 3 plytké zárezy .\r\n\r\n'),
(35, 'velky-postup6371_1365966804333.jpg', 118, 'Do misky som dala 3 pl hladkej múky .\r\n\r\n'),
(35, 'velky-postup6371_1365966830444.jpg', 119, 'Pridala som 1 čl mletej červenej papriky , mleté čierne korenie , soľ a korenie na ryby.\r\n\r\n'),
(35, 'velky-postup6371_1365966855555.jpg', 120, 'pl masla som vymiešala s pretlačeným strúčikom cesnaku a šťavou z polovice citróna.\r\n\r\n'),
(35, 'velky-postup6371_1365966911666.jpg', 121, 'K tomu som pridala posekanú mrazenú petržlenovú vňať. Vymiešala som to . Ochutené maslo som vložila do vnútra ryby.\r\n\r\n'),
(35, 'velky-postup6371_1365966947777.jpg', 122, 'Očistila som si asi 1 kg zemiakov. 10 minút som ich povarila . Vodu som zliala . Vychladnuté zemiaky som nakrájala.\r\n\r\n'),
(35, 'velky-postup6371_1365966975888.jpg', 123, 'Korenie na zemiaky som rozmiešala v oleji. Na plechu som nakrájané zemiaky premiešala. Piekla som ich na 200 °C asi 20 minút.\r\n\r\n'),
(35, 'velky-postup6371_1365967006999.jpg', 124, 'Tu sú zemiaky už upečené.\r\n\r\n'),
(35, 'velky-postup6371_1365967034101010.jpg', 125, 'Kým sa zemiaky piekli , ryby som nasolila , obalila v múke. Do vnútra každej ryby som vložila za čl ochuteného masla. Na väčšej panvici som roztopila zvyšné maslo s trochou oleja . Ryby som opekala z každej strany 5 minút. Mäsko bolo lahodné , šťavnaté .\r\n\r\n'),
(36, 'velky-postup51400_1674061841111.jpg', 126, 'Suroviny na cesto.\r\n\r\n'),
(36, 'velky-postup51400_1674061873222.jpg', 127, 'Do vlažného mlieka, vody pridáme 1 ČL cukru, rozdrobíme čerstvé droždie a necháme nakysnúť kvások. Múku preosejeme do misy, pridáme zbytok surovín okrem masla, z ktorých vypracujeme hladké cesto. Cesto hneď preložíme na pomúčenú pracovnú dosku.\r\n\r\n'),
(36, 'velky-postup51400_1674062010333.jpg', 128, 'Cesto rozvaľkáme na väčší plát. Na jednu polovicu cesta poukladáme plátky masla.\r\n\r\n'),
(36, 'velky-postup51400_1674062146444.jpg', 129, 'Cesto preložíme na seba, opäť rozvaľkáme, rozložíme plátky masla. Postup opakujeme 3x pokiaľ sa nám neminie maslo.\r\n\r\n'),
(36, 'velky-postup51400_1674062231555.jpg', 130, 'Maslové cesto zložíme.\r\n\r\n'),
(36, 'velky-postup51400_1674062450666.jpg', 131, 'Zakryjeme čistou utierkou a necháme kysnúť aspoň 30 minút.\r\n\r\n'),
(36, 'velky-postup51400_1674062527777.jpg', 132, 'Nakysnuté cesto rozvaľkáme na pomúčenej pracovnej doske.\r\n\r\n'),
(36, 'velky-postup51400_1674062610888.jpg', 133, 'Pokrájame do tvaru trojuholníkov. Na širšiu stranu dáme plnku, u mňa to bola Nutella.\r\n\r\n'),
(36, 'velky-postup51400_1674062712999.jpg', 134, 'Zrolujeme a poukladáme na plech vyložený papierom na pečenie. Necháme nakysnúť na plechu 15 minút. Pred vložením do rúry potrieme rozšľahaným vajíčkom.\r\n\r\n'),
(36, 'velky-postup51400_1674062791101010.jpg', 135, 'Rúru predhrejeme 190 stupňov a pečieme 17-20 minút do zlatista. Dobrú chuť.\r\n\r\n'),
(37, 'velky-postup898_167092754711.jpg', 136, 'Aby som nerobil reklamu žiadnemu reťazcu, dovolil som si prelepiť značky výrobcov. Uvedené gramáže sú už v čistom stave, takže fazuľa, filety v oleji, hrášok bez nálevu. Slede v paradajkovej omáčke použijeme aj s omáčkou.\r\n\r\n'),
(37, 'velky-postup898_16709275781222.jpg', 137, 'Cibuľu pokrájame na tenké plátky a podusíme na miernom plameni na oleji, nemala by sa opražiť. Necháme vychladnúť.\r\n\r\n'),
(37, 'velky-postup898_167092768333.jpg', 138, 'Paprikový šalát mám spravený z kapie a cibule.'),
(37, 'velky-postup898_1670927715444.jpg', 139, 'Do misky vložíme obsah všetkých 3 druhov rybích konzerv bez oleja, s paradajkovou omáčkou. Prípadné väčšie kusy rozdelíme na menšie.\r\n\r\n'),
(37, 'velky-postup898_1670927752555.jpg', 140, 'Pridáme vychladnutú podusenú cibuľu...\r\n\r\n'),
(37, 'velky-postup898_1670927830666.jpg', 141, '...pridáme scedenú fazuľu, paprikový šalát, kapiu nakrájanú na rezance a feferóny nakrájané na drobno, worcester a karí korenie.\r\n\r\n'),
(37, 'velky-postup898_1670927879777.jpg', 142, 'Nakoniec pridáme hrášok a zľahka premiešame. Odložíme do chladničky na pár hodín, najlepšie do druhého dňa, aby sa nasiakli chute.\r\n\r\n'),
(37, 'velky-postup898_1670927929888.jpg', 143, 'Podávame s pečivom a pivom. Môžeme ho použiť ako prílohu ku klasickým majonézovým šalátom.\r\n\r\n'),
(37, 'velky-postup898_1670927973999.jpg', 144, 'Tu je ukážka pôvodného receptu z knihy receptúr studených pokrmov.\r\n\r\n'),
(38, 'velky-postup19712_1359202526111.jpg', 145, 'Nazhromaždíme všetky suroviny, aby sme zistili čo nám chýba :o)\r\n\r\n'),
(38, 'velky-postup19712_1359202568222.jpg', 146, 'Kuracie a morčacie mäsko umyjeme, vložíme do hrnca, zelejeme STUDENOU vodou, robíme vývar! Bez rozpakov prihoďte bujón, aj dva. Ja som mala hovädzí. Počkajte kým voda zovrie, stíšte a pomaly varte, kým mäsko nieje mäkké.\r\n\r\n'),
(38, 'velky-postup19712_1359202759333.jpg', 147, 'Hríby dajte do misky a zalejte horúcou vodou. Prikryte a nechajte aspoň 15 minút odpočívať v pokoji. Radili mi, že aspoň dva druhy hríbov nech tam sú, spravila som tak, ale priznávam, nevidím v nich po zapracovaní do polievky žiaden rozdiel...\r\n\r\n'),
(38, 'velky-postup19712_1359202805444.jpg', 148, 'Teraz otravná časť: očistíme mrkvu a nakrájame na čo najmenšie kúsky. Lenivci nastrúhajú na strúhadle ale mrkva po uvarení nebude chrumkavá. Bambusové výhonky nakrajáme tiež na menšie kúsky. Hríby scedíme a tiež nakrájame na menšie kúsky.\r\n\r\n'),
(38, 'velky-postup19712_1359202844555.jpg', 149, 'Vrátime sa k polievke. Vyberieme uvarené mäsko a na výmenu pridáme do vývaru nakrájané hríby, necháme variť na miernom ohni.\r\n\r\n'),
(38, 'velky-postup19712_1359202910666.jpg', 150, 'Na panvici rozpustíme plátok masla a pridáme mleté mäso. Keď sa mäsko opečie pekne do ružova, pridáme do panvice nakrájanú mrkvu a minútku poopekáme spolu s mäskom. Po opečení zmes pridáme do polievky. Pridáme tam aj nakrájaný bambus.\r\n\r\n'),
(38, 'velky-postup19712_1359203003777.jpg', 151, 'Začíname dochucovať /udávam množstvá tak ako som dávala ja, samozrejme nieje to striktné, vychuťte si to podľa seba. Sojovka, cili, ocot, cukor. Zamiešajte, ochutnajte, mne sa zdala málo slaná, tak som prisypala trochu soli, alebo pridajte ešte sójovku. Do misky so vyklepnite tri vajíčka a poriadne rozmixujte.\r\n\r\n'),
(38, 'velky-postup19712_1359203034888.jpg', 152, 'Polievku dajte na silný oheň nech poriadne bublá a skúste jednou rukou miešať polievku a druhou do nej z misky pomaly prilievajte vajíčka. Tadáááááá a už sa to podobá?!?\r\n\r\n'),
(38, 'velky-postup19712_1359203117999.jpg', 153, 'Mäsko medzitým vychladlo, môžete ho nakrájať na kúsky a pridať naspäť do polievky. Kosti,kože a vyvarená žalúdky sme dobrovolne odovzdali štvornohým kamarátom. Do polievky pojde iba čisté kuracie mäsko.\r\n\r\n'),
(38, 'velky-postup19712_1359203154101010.jpg', 154, 'Prichádza finále: Do hrnčeka dajte dve lyžice škrobu a rozmixujte v studenej vode. Prilejte do polievky a nechajte ešte 5 minút povariť.\r\n\r\n'),
(38, 'velky-postup19712_1359203189111111.jpg', 155, 'Hotovo! Polievku už po naservírovaní môžete dozdobiť koriandrom, alebo pažítkou. DOBRÚ CHUŤ!\r\n\r\n'),
(38, '', 156, 'Všetky suroviny sú z bežných obchodných reťazcov, ak však máte možnosť nakúpiť v \"špeci azia shope\" určite to nebude zlá voľba. Domorodci vraveli, že polievka má byť z troch druhov mäsa. Pokojne si ju však môžete pripraviť vegetariánsky zo sójovej drte a tofu. Ešte špeci tip, v jednom bistre mi povedali že po odstavenej polievky ešte pridávaju na drobno nakrájanu redkvičku, neskúšala som ,o)\r\n\r\n'),
(39, '', 157, 'Mrkvu si nastrúhame najemno. K mrkve nastrúhame tofu, môžeme na hrubšie.\r\n\r\n'),
(39, '', 158, 'Pridáme jemný tvaroh, prelisovaný cesnak, cibuľu nastrúhanú na drobno a dobre premiešame. Nátierku ochutíme horčicou, kečupom a vegetou.\r\n\r\n'),
(39, '', 159, 'Podávame na čerstvom chlebe alebo pečive.\r\n\r\n'),
(40, '', 160, 'Do misky nalejeme chilli omáčku a následne do nej namočíme okraje pohárikov, v ktorých budeme nápoj servírovať.\r\n\r\n'),
(40, '', 161, 'Následne poháriky obalíme v štipľavej mletej paprike, aby vznikol pálivý lem.\r\n\r\n'),
(40, '', 162, 'Do shakera nalejeme 50 ml vodky, 100 ml mangového džúsu, pridáme ľad a poriadne pretrepeme.\r\n\r\n'),
(40, '', 163, 'Drink zo shakeru nalejeme do pripravených pohárikov s pálivým lemom. Nech vám šmakuje, vaši Dvaja Šmakutíri\r\n\r\n'),
(41, 'stredny-1-49111.jpg', 164, 'Gurmáni a feinschmekri - praví znalci kvalitnej špargle (asparagus), ako delikatesu používajú iba jej krehkejšiu časť s hlavičkou ( chytiť jeden \"klások\" do prstov a ohnúť; časť s havičkou sa použije na jedenie; uvariť v mierne slanej vode a po jej zliati, na tanieri obliať prepraženým maslom); zbytok vyhadzujú. Ja som však človek \"sporovlivý\" a tak prvý skontrolovaný klások vrátim medzi ostatné, na jeho úrovni zväzok prerežem a časť bez hlavičiek použijem do mojej krémovej polievky.'),
(41, 'stredny-2-48222.jpg', 165, 'Škrabkou na zemiaky každý kúsok olúpem a nožom pokrájam.'),
(41, 'stredny-3-29333.jpg', 166, 'V pracovnej miske zalejem čerstvou šťavou z 1/2 citróna a premiešam.'),
(41, 'stredny-4-25444.jpg', 167, 'V hrnci nechám zovrieť ~ 1,5 l vody, pridám 12÷18 guličiek ČK, 1 KL soli, 2÷3 bobkové listy a vetvičku tymiánu; povarím do zmäknutia špargle (~ 15÷20´), podľa skúšky jej tvrdosti; zlejem (vývar odložím v pracovnej miske k ruke), vyberiem bobkové listy a tymián.'),
(41, 'stredny-5-20555.jpg', 168, 'Paralelne, v druhom hrnci, uvarím Bechamellový dvojkový základ_omáčku; pozri časť \"Suroviny\".'),
(41, 'stredny-6-136666.jpg', 169, 'Scedené kúsky uvarenej špargle rozmixujem na konzistenciu pyré (guľôčky ČK vyhodím).'),
(41, 'stredny-7-6777.jpg', 170, 'Špargľové pyré vlejem počas miešania metličkou do Bechamellového základu; hustotu budúcej krémovej polievky korigujem odloženým vývarom zo špargle (~ 0,5÷0,7 l); dochutím vegetou a nechám ešte krát prevrieť; odstavím a na povrch krémovej polievky uložím 1 KL masla a prikryjem pokrievkou (nebude mať kožku).'),
(41, 'stredny-8-28888.jpg', 171, 'Finále_Servírovanie: pozri titulné foto (ak mi Čistinka láskavo pomôže radou, tak cez noc vložím aj ďalšie fotografie ako fotorecept; aj s tou úvodnou je ich 8 a ja sa za nič na svete neviem vpasovať do ich uloženia); v hlbokých tanieroch, tak 3/4 naberačky; vmiešať pokrájané mandle, avokádo, opečenú chlebovú striedku (krutóny), posypať petržlenovou vňaťou, prípadne MČK. - Bechamellový základ môžete pripraviť podľa vlastných možností, chutí a nápadov: na veľmidrobno posekaná šalotka, cesnak, cibuľa, cibuľka, pažítka, bylinky, oštiepok, Parmigiano Regganiano, údená Gouda, biely Cheddar, tavené syry, ... a do hotovej krémovej polievky, pre ortodoxných vyznávačov mäsa, vložiť kúsky varenej údenej šunky, pokrájanej na kocky, či pásiky.'),
(42, 'velky-postup89970_1607804584111.jpg', 172, 'Špagety uvaríme klasicky v osolenej vode. Scedíme a vsypeme späť do hrnca.\r\n\r\n'),
(42, 'velky-postup89970_1607804881222.jpg', 173, 'Slaninu a cibuľu nakrájame na kocky. V hlbokej panvici rozpalíme lyžicu oleja a chvíľu opekáme slaninu, potom pridáme cibuľu a nakoniec prelisovaný cesnak.\r\n\r\n'),
(42, 'velky-postup89970_1607805108333.jpg', 174, 'Pridáme špenát, 2 minúty miešame, kým sa nesparí a primiešame syr a oregano, chvíľku povaríme, kým sa syr neroztopí a odstavíme z ohňa.\r\n\r\n'),
(42, '', 175, 'Túto zmes dáme do hrnca s uvarenými špagetami a poriadne premiešame, nakoniec pridáme 2 surové vajíčka a hrsť parmezánu a znovu dôkladne premiešame.\r\n\r\n'),
(42, 'velky-postup89970_1607805529555.jpg', 176, 'Polovicu špagiet dáme do olejom vymastenej formy, moja mala 20x20 cm (kľudne môže byt aj okrúhla), na to uložíme encián a zakryjeme druhou polovicou špagiet. Môj encián mal 110 g, bol malý, nabudúce dám určite väčší alebo 2.\r\n\r\n'),
(42, 'velky-postup89970_1607805739666.jpg', 177, 'Nakoniec to celé zasypeme zvyšným parmezánom a dáme piecť do vyhriatej rúry.\r\n\r\n'),
(42, 'velky-postup89970_1607805843777.jpg', 178, 'Upečené vyberieme z formy a nakrájame.\r\n\r\n'),
(42, 'velky-postup89970_1607807370888.jpg', 179, 'Dobrú chuť.\r\n\r\n'),
(43, '', 180, 'Najprv očistíme huby a nakrájame ich na plátky (momentálne sú najdostupnejšie šampiňóny).\r\n\r\n'),
(43, '', 181, 'Cibuľu ošúpeme a nakrájame. Smažíme v hrnci na oleji do sklovita. Ošúpeme a rozdrvíme cesnak, pridáme k cibuli a krátko restujeme. Potom pridáme ryžu, zalejeme vínom a necháme ho odpariť.\r\n\r\n'),
(43, '', 182, 'Pridáme huby, všetko zalejeme vývarom, aby ryža bola zakrytá. Varíme na miernom ohni 25 minút, postupne prilievame zvyšok vývaru a opakovane miešame. Tesne pred dovarením ryže vmiešame trochu masla a dochutíme soľou a korením. Podľa chuti môžeme pridať nastrúhaný parmezán alebo nasekanú petržlenovú vňať.\r\n\r\n'),
(44, 'velky-postup61140_1665944914111.jpg', 183, 'Krkovičku nakrájame na cca 1cm hrubé plátky. Okoreníme, osolíme a potrieme horčicou.\r\n\r\n'),
(44, 'velky-postup61140_1665945189222.jpg', 184, 'Nakrájame cibuľu na hrubo, do hrnca dáme na bravčovú masť a cibuľu opražíme do zlatista. Potom rýchlo opražíme plátky mäsa z oboch strán, aby sa mäso zatiahlo. Mäso ukladáme do hrnca na cibuľu. Dáme piecť na 2 hodiny do rúry vyhriatej na 200 °C.\r\n\r\n'),
(44, 'velky-postup61140_1665945348333.jpg', 185, 'Kapustu nakrájame, dáme dusiť so soľou, rascou a skaramelizujeme cukor.\r\n\r\n'),
(44, 'velky-postup61140_1665945434444.jpg', 186, 'Dochutíme podľa seba a pridáme bešamel, aby bola kapusta fajn mazľavá.\r\n\r\n'),
(44, 'velky-postup61140_1665945494555.jpg', 187, 'Podávame s knedľou, prípadne lokše sú tiež fajn.\r\n\r\n'),
(45, 'velky-postup875_1645149244111.jpg', 196, 'Očistené a umyté zemiaky\r\n\r\n'),
(45, 'velky-postup875_1645149267222.jpg', 197, 'Zemiaky som postrúhala na „veľkých slzičkách“, zaliala ich studenou vodou a pridala kocky ľadu z mrazničky (tým som odstránila prebytočný škrob zo zemiakov a placky budú chrumkavejšie).\r\n\r\n'),
(45, 'velky-postup875_1645149292333.jpg', 198, 'Ľadovú vodu som zliala cez sitko, zemiaky postupne „vystískala“ v dlaniach a vkladala do väčšej zmiešovacej misy z jenského skla, posypala pokrájanou pažítkou.\r\n\r\n'),
(45, 'velky-postup875_1645149314444.jpg', 199, 'Posypala som strúhankou, poliala rozpusteným maslom a pridala aj ostatné zložky - pretlačené strúčiky cesnaku (ak niekto rád, môže ich pridať alebo ubrať podľa vlastnej chuti), oregano, soľ a čerstvé mleté čierne korenie, strúhaný tvrdší syr (žiaľ, oštiepok už dávno nemám), dve celé, ale rozbité vajíčka a aj pokrájané petržlenové a zelerové lístočky (to plackám neuškodí a navyše ich doma máme vo veľkej obľube). Dôkladne som zmiešala.\r\n\r\n'),
(45, 'velky-postup875_1645149343555.jpg', 200, 'Z polotekutého zemiakového „cesta“ som pomocou naberačky priamo na nevymastený pekáč ukladala a formoval oválne placky.\r\n\r\n'),
(45, 'velky-postup875_16451493726666.jpg', 201, 'Piekola som ich 20 minút v rúre vyhriatej na 200 ⁰C, kedy ich okraje získali červeno-hnedú farbu.\r\n\r\n'),
(45, 'velky-postup875_1645149396777.jpg', 202, 'Potom som ich „kuchyňskou špachtľou“ otočila a asi 10-12 minút opiekola aj na druhej strane.\r\n\r\n'),
(45, 'velky-postup875_1645149428888.jpg', 203, 'Servírovala som ich s čerstvou rukolou (arugulou), ale mohla som aj s jednoduchým zeleninovým šalátom, a sviežim dresingom z gréckeho jogurtu so štipkou soli, šťavou z ½ citróna a na drobno pokrájanou čerstvou bazaličkou voňavou!\r\n\r\n'),
(46, 'velky-postup984_1463752024111.jpg', 204, 'Lososa ochutíme soľou a čiernym korením.\r\n\r\n'),
(46, '', 205, 'Do trocha olivového oleja pridáme maslo a lososa opečieme najskôr kožou dole.\r\n\r\n'),
(46, 'velky-postup984_1463752038333.jpg', 206, 'Keď je koža opečená a chrumkavá, lososa otočíme a pomaly dopekáme aj z druhej strany. Potor na čas, pretože nechceme aby bol veľmi vysušený, ale práve aby vo vnutri zostal krásne šťavnatý.\r\n\r\n'),
(46, '', 207, 'Na záver pridáme na panvicu ešte trochu masla, čerstvého tymiámu a stiahneme z ohňa. Pokvapkáme šťavou z polovice citróna.\r\n\r\n'),
(46, 'velky-postup984_146375205955.jpg', 208, 'Panvicu môžeme prikryť a nechať ešte chvíľu odpočívať.\r\n\r\n'),
(46, '', 209, 'Medzitým si v osolenej vode uvaríme zemiaky a dochutíme len soľou, maslom a troškou tymiánu.\r\n\r\n'),
(47, 'velky-postup41277_1673259537111.jpg', 210, 'Suroviny.\r\n\r\n'),
(47, 'velky-postup41277_1673259560222.jpg', 211, 'Bielky vyšľaháme, pridáme kryštálový cukor a za stáleho miešania ďalej postupne pridávame múku, prášok do pečiva, orechy, minerálku a olej. Cesto dáme na vymastený a múkou vysypaný väčší plech a pečieme vo vyhriatej rúre pri 180 °C 20 minút.\r\n\r\n'),
(47, 'velky-postup41277_1673259639333.jpg', 212, 'Počas pečenia vymiešame žĺtky s práškovým cukrom do penista a rozotrieme na horúci koláč. Netreba sa báť surových žĺtkov, pretože sa poleva natiera na horúci korpus.\r\n\r\n'),
(47, 'velky-postup41277_16732597504444.jpg', 213, 'Po vychladnutí pofrkáme čokoládou.\r\n\r\n'),
(47, 'velky-postup41277_1673259920555.jpg', 214, 'Rezy sú veľmi dobré.\r\n\r\n'),
(48, 'velky-postup119081_1647615110111.jpg', 215, 'Žĺtky šľaháme s práškovým cukrom a vanilkovou pastou do peny.\r\n\r\n'),
(48, 'velky-postup119081_1647615171222.jpg', 216, 'Postupne prilievame horúcu vodu a ďalej šľaháme, pokiaľ nezískame hustú svetlú penu. Na nízkych otáčkach postupne zašľaháme olej.\r\n\r\n'),
(48, 'velky-postup119081_1647615257333.jpg', 217, 'Z bielkov a štipky soli vyšľaháme sneh. Keď sa začne tvoriť pena, prisypeme kryštálový cukor a vyšľaháme na tuhý lesklý sneh.\r\n\r\n'),
(48, 'velky-postup119081_1647615304444.jpg', 218, 'Múku, Zlatý klas a prášok do pečiva spolu premiešame a preosejeme. Do žĺtkovej peny striedavo pridávame preosiatu múčnu zmes a sneh z bielkov.\r\n\r\n'),
(48, '', 219, 'Dôkladne premiešame a cesto prenesieme do tortovej formy (priemer 24 cm), ktorej dno sme vystlali papierom na pečenie. Pečieme v rúre vyhriatej na 180 °C. Necháme mierne vychladnúť, nožom uvoľníme z formy, formu odstránime a necháme vychladnúť úplne (korpus môžeme prikryť utierkou, aby počas chladnutia nevyschol).\r\n\r\n'),
(48, '', 220, 'Smotanu na šľahanie vyšľaháme dotuha. Mascarpone, tvaroh a práškový cukor spolu dôkladne metličkou vymiešame. Pre chuť môžeme pridať aj citrónovú šťavu. Vyšľahanú šľahačku jemne vmiešame do krému.\r\n\r\n'),
(48, '', 221, 'Mandarínkový kompót scedíme. Korpus prerežeme na dve časti (niekomu možno vyjde aj na tri časti). Prvý plát položíme na podložku, okolo uložíme tortový ráfik (kto nemá, vôbec nevadí). Na korpus navrstvíme časť krému a uhladíme. Na krém rozložíme odkvapkané mandarínky a priložíme druhý korpus. Opatrne odstránime ráfik a tortu potrieme zvyšným krémom, pričom časť krému si odložíme na finálne zdobenie.\r\n\r\n'),
(48, '', 222, 'Môžete, tak ako ja, vytvoriť elegantný polonahý efekt, čo je dnes veľmi moderné. Krém nanesieme v hrubšej vrstve po bokoch torty a následne uhladíme cukrárskou kartou (alebo stierkou, nožom,...) tak, že väčšinu krému zotrieme, aby jemne presvitali aj korpusy.\r\n\r\n'),
(48, '', 223, 'Krém, ktorý sme si odložili na finálne zdobenie, prenesieme do cukrárskeho vrecka s ozdobnou špičkou a tortu ozdobíme podľa vlastnej fantázie. Dozdobíme mandarínkami a jahodami.\r\n\r\n'),
(48, 'velky-postup119081_1647681029101010.jpg', 224, 'Prajem dobrú chuť!\r\n\r\n'),
(49, 'velky-postup13090_1371022890111111.jpg', 225, 'Cviklu si umyjeme a v slanej vode uvaríme do mäkka. Vychadenú ošúpeme a pokrájame na drobné kocky /alebo na plátky cca 1 cm hrubé a tie potom pretlačíme cez koliesko ako zemiaky na šalát/. Do takto pripravenej zeleniny pridáme vínny ocot /alebo balsamico/ a necháme odstáť aspoň 15 min., aby chuť octa prešla cviklou.\r\n\r\n'),
(49, 'velky-postup13090_137102333922222.jpg', 226, 'Rovnako ako cviklu si nakrájame na malé kocky aj syr, cesnak prepučíme a spolu so soľou a čiernym korením pridáme k ochutenej cvikle. Zamiešame s pochúťkovou smotanou /môžeme pridať aj majonézu/. Nakoniec šalát posypeme posekanými vlašskými orechami a necháme vychladiť. Podávame ako prílohu alebo ako hlavné jedlo - komu ako chutí.\r\n\r\n'),
(50, 'velky-postup19712_13600610001111.jpg', 227, 'Ako vždy, najskôr nazhromaždíme všetky suroviny, ktoré budeme potrebovať k výrobe sushi. Určite viete, že je možné ho plniť prakticky hocičím, čo vám chutí. Mne je najsympatickejšie avokádo, preto som ho použila do každej rolky. Losos je klasika, ja som mala údeného, aj preto, že som nemala potuchy, koľko kúskov vyrobím a nechcela som, aby surové mäsko podľahlo skaze.\r\n\r\n'),
(50, 'velky-postup19712_13600610262222.jpg', 228, 'Ryžu je potrebné dôkladne premyť. Pokojne, 5- 6 krát v studenej vode. Prakticky premývame, až kým nieje voda číra. premývaním cez sitko ryžu nikdy dostatočne nepreperiete.\r\n\r\n'),
(50, 'velky-postup19712_13600610513333.jpg', 229, 'Keď je voda z ryže už čistá, vložte ryžu do hrnca na varenie a zalejte tak, aby voda bola 1,5 - 2 cm nad ryžou. Necháme stáť 30 minút. Potom ryžu dáme na silný oheň, počkáme kým začne vrieť, stíšime, prikryjeme, necháme variť 10 minúť. Vypneme, čakáme 10 minút a odokryjeme. Výsledok bude lesklá biela ryža.\r\n\r\n'),
(50, 'velky-postup19712_13600610954444.jpg', 230, 'Kým sme čakali na ryžu, v miske zmiešame ocot, hnedý cukor a trochu soli.\r\n\r\n'),
(50, 'velky-postup19712_13600611265555.jpg', 231, 'Ryžu premiestnime z hrnca do misky /nie kovovej/ a zalejeme pripravenou octovou zálievkou. Dôkladne premiešame. Necháme vychladnúť.\r\n\r\n'),
(50, 'velky-postup19712_13600611656666.jpg', 232, 'Kým ryža chladne, pripravíme si suroviny ktoré použijeme ako náplň. Kedže môj losos bol údený nakrájaný na tenučké plátky a surimi tyčinky som si lenivo zakúpila v dĺžke riasy, moja príprava bola iba ošúpať a nakrájať avokádo.\r\n\r\n'),
(50, 'velky-postup19712_13600612087777.jpg', 233, 'A ideme na to! Na rolovaciu podložku položíme morskú riasu, Lesklou stranou nadol.\r\n\r\n'),
(50, 'velky-postup19712_13600612458888.jpg', 234, 'Asi na 3/4 plochy rovnomerne rozvrstvíme studenú ryžu. Pomôže keď si prsty sem tam namočíte do misky z vodou. Ryža sa bude chytať na riasu, nie na ruky.\r\n\r\n'),
(50, 'velky-postup19712_13600612879999.jpg', 235, 'Na prst dáme wasabi pasty, asi ako hrášok veľkej\r\n\r\n'),
(50, 'velky-postup19712_13600613131010.jpg', 236, 'potrieme na celu dĺžku riasy\r\n\r\n'),
(50, 'velky-postup19712_1360061341111111.jpg', 237, 'a na wasabi naukladáme /varianta 1/ surimi tyčinku a avokado\r\n\r\n'),
(50, 'velky-postup19712_13600613721212.jpg', 238, 'alebo /varianta 2/ údený losos a avokádo\r\n\r\n'),
(50, 'velky-postup19712_13600614011313.jpg', 239, 'Zarolujeme. Koniec riasy môžete potrieť vodou, aby pekne držala. Ale funguje to aj bez toho.\r\n\r\n'),
(50, 'velky-postup19712_13600615671414.jpg', 240, 'Posledná varianta boli \"obrátené rolky\". Na tú stačí polovica riasy. Riasu teda preložte a zložte na polovicu, prelomte. Na celú plochu navrstvite ryžu. Ak máte po ruke, posypte sézamom. Otočte tak, aby ryža bola na podložke.\r\n\r\n'),
(50, 'velky-postup19712_13600616251515.jpg', 241, 'Uvidíte riasu, na ktorú som dala avokádo a lososa. Zavinieme. táto verzia sa neodporúča nováčikom. Osobne si myslím, že to nieje o nič zložitejšie ako normálne rolky.\r\n\r\n'),
(50, 'velky-postup19712_13600616711616.jpg', 242, 'Rolky krájame veľmi ostrím nožom najskôr na polovicu a tú ešte na 4 časti. Z jednej rolky teda bude 8 kúskov. Odporúčam po každom reze nôž ponoriť do vody a otrieť. Vyrobili sme 4 klasické a 2 obrátené rolky.\r\n\r\n'),
(50, 'velky-postup19712_13600617151717.jpg', 243, 'Potom už si len naložíme čo koľko vládzeme a papáme dochutené sójovou omáčkou\r\n\r\n'),
(51, '', 244, 'Krevety vyberieme z mrazničky, zalejeme studenou vodou a necháme povoliť - trvá to tak 10-15 minút - samozrejme ak máte možnosť, môžete použiť čerstvé. Pokiaľ sa krevety rozmrazujú, pripravíme si nátierku z avokáda - vyberieme dužinu, vidličkou roztlačíme, pridáme citrusovú šťavu, prelisovaný cesnak (1 väčší strúčik), soľ a korenie podľa chuti, a dobre vymiešame.\r\n\r\n'),
(51, '', 245, 'Rozohrejeme panvicu, krevety scedíme a osušíme, na panvicu dáme olej, pridáme druhý dlaňou alebo nožom rozpučený strúčik cesnaku. Keď cesnak zavonia, pridáme krevety a z oboch strán ich rýchlo opečieme - neopekáme príliš dlho, zostanú gumové a tuhé, stačia im tak 3-4 minúty.\r\n\r\n'),
(51, '', 246, 'Nátierku podávame s krevetami, posypané posekanou čerstvou vňaťou a nasucho opečenými plátkami chleba alebo bagety, prípadne s chrumkavou čerstvou bagetou - každý podľa svojej chuti.\r\n\r\n'),
(52, 'velky-postup30644_1625685113111.jpg', 247, 'Asi liter vody dáme variť s na kocky pokrájanými zemiakmi, poprášené čiernym korením a osolené.\r\n\r\n'),
(52, 'velky-postup30644_1625685163222.jpg', 248, 'Kým sa zemiaky uvaria, umyjeme šalát, nakrájame cibuľu aj s cíbikmi, tiež strúčiky cesnaku, hrubší plátok slaninky rozkrájame na kocky a necháme slaninku vytopiť a dáme si uvariť vajíčka na tvrdo.\r\n\r\n'),
(52, 'velky-postup30644_1625685469333.jpg', 249, 'Keď sú zemiaky uvarené, pridáme cíbiky, cibuľu, cesnak a trochu obvaríme. Medzitým si pripravíme zátrepku z poctivého mlieka a hladkej múky.\r\n\r\n'),
(52, 'velky-postup30644_1625685941444.jpg', 250, 'Keď máme obvarené (2-3 minútky), pridáme zátrepku a necháme ju prejsť varom - samozrejme miešame, aby sa nám neprichytila. Potom pridáme pokrájaný šalát, premiešame a vypíname plyn.\r\n\r\n'),
(52, 'velky-postup30644_1625683889555.jpg', 251, 'Uvarenú polievku dáme do taniera, pridáme vajíčko uvarené na tvrdo, pokvapkáme vytopenou masťou zo slaninky a posypeme oškvarkami. Pre tých čo majú radi kyslú šalátovú polievku odporúčam pridať trochu octu a premiešať. DOBRÚ CHUŤ\r\n\r\n'),
(53, '', 252, 'Šunku nakrájame, chren nastrúhame a zmiešame spolu s nátierkovým maslom a majonézou. Ochutíme soľou a korením. To je všetko, už len zjesť.\r\n\r\n'),
(53, '', 253, 'K surovinám ešte poviem, že som nemal čerstvý chren, ale domáci nakladaný, dal som ho 3 čajové lyžičky. Ale to nechám na každom podľa chuti a chrenu aký má. Soľ a korenie tiež každý podľa vlastných preferencií.\r\n\r\n'),
(54, '', 254, 'V hlbokej panvici na rozohriatom olivovom oleji orestujeme nakrájanú cibuľu.\r\n\r\n'),
(54, '', 255, 'Paellu varíme zakrytú približne 10 minút.\r\n\r\n'),
(54, '', 256, 'Potom do nej pridáme rozmrazené morské plody, prelisované strúčiky cesnaku, šťavu z 1/2 citróna alebo 1 limetky a v prípade potreby ešte 100 ml vývaru.\r\n\r\n'),
(54, '', 257, 'Paellu párkrát premiešame a odokrytú varíme ešte 8-10 minút. Ozdobíme na kolieska nakrájaným pórom, prípadne jarnou cibuľkou alebo petržlenovou vňaťou.\r\n\r\n'),
(55, 'velky-postup51400_1657462526111.jpg', 258, 'Cesto: Vodu, mlieko, soľ, maslo dáme variť do hrnca. Po zovretí a rozpustení masla plameň stiahneme, vmiešame po častiach múku zmiešanú s práškom do pečiva. Cesto na miernom ohni odpaľujeme pokiaľ sa neodlepuje od misy, netrvá to dlho. Cesto preložíme do mixéra, šľaháme pokiaľ mierne vychladne a potom do cesta postupne po jednom zašľaháme vajíčka.\r\n\r\n'),
(55, 'velky-postup51400_16574625472222.jpg', 259, 'Z tortových foriem spodné podnosy (priemer 23-24 cm) vyložíme papierom na pečenie a rozotrieme cesto.\r\n\r\n'),
(55, 'velky-postup51400_165746257433.jpg', 260, 'Rúru predhrejeme na 200 stupňov a pečieme 25-30 minút.\r\n\r\n'),
(55, 'velky-postup51400_165746260844.jpg', 261, 'Pudingový krém: V mlieku rozhabarkujeme vajíčka, kryštálový a vanilínový cukor, múku a dáme variť , uvaríme hustú hladkú kašu. Zakryjeme potravinovou fóliou a necháme vychladnúť. Maslo vymiešame do hladka a spojíme s vychladnutou kašou.\r\n\r\n'),
(55, 'velky-postup51400_165746266555.jpg', 262, 'Pudingový krém rozotrieme na 1 pripravený korpus, ktorý dáme na podnos (tanier). Šľahačkový krém: Smotanu na šľahanie vyšľaháme so Smetafixom, pridáme hrsť černíc alebo iné ovocie a došľaháme do tuha.\r\n\r\n'),
(55, 'velky-postup51400_165746269066.jpg', 263, 'Šľahačkový krém nanesieme na pudingový krém, vrch posypeme ovocím a zakryjeme druhým korpusom, zľahka pritlačíme. Dáme do chladničky stuhnúť.\r\n\r\n'),
(55, 'velky-postup51400_165746272077.jpg', 264, 'Pred podávaním pokrájame, posypeme práškovým cukrom.\r\n\r\n'),
(55, 'velky-postup51400_165746278688.jpg', 265, 'Kúsok ponúkam na ochutnávku, dobrú chuť.\r\n\r\n'),
(56, 'velky-postup898_164482996311111111111.jpg', 267, 'Filety rozmrazíme. Mal som tresku priamo ulovenú v Nórsku od kamaráta, ktorý tam chodí na rybačky. Ale robil som už aj z kupovanej, lepšie je však kúpiť kvalitnejšiu.\r\n\r\n'),
(56, 'velky-postup898_164483003022222222.jpg', 268, '3 litre vody zmiešame s 300 ml octu a soľou, vložíme sitko s celým korením a bobkovým listom, a dáme do nej variť mrkvu a cibuľu (cibule rozkrojiť na polovice). Keď začne voda vrieť, vložíme rybie filety a varíme 15-20 minút, podľa hrúbky. Potom vyberieme spolu s mrkvou a cibuľou a necháme vychladnúť. Vývar si odložíme. Uvarené filety dáme do misky, roztlačíme vidličkou na kúsky, pridáme asi 150 ml vývaru a ponorným mixérom rozmixujeme na kašu. Pridáme horčicu a zamiešame. Uvarenú cibuľu pokrájame na menšie kúsky a v mixéri rozmixujeme, pridáme k treske. Uhorky s mrkvou nastrúhame na jemno a pridáme k treske. Okoreníme mletým korením. Nakoniec pridáme majonézu a dobre premiešame. Dochutíme octom (asi 2 PL).\r\n\r\n'),
(56, 'velky-postup898_164483004833333333.jpg', 269, 'Dáme odležať do chlaničky, najlepšie do druhého dňa.\r\n\r\n'),
(57, '', 270, 'Filetu lososa uložíme kožou hore na hlbší plech s papierom na pečenie. Jemne posolíme a obložíme kúskami citróna. Pečieme asi 20 až 25 minút podľa veľkosti filety. Losos je hotový, keď sa koža jasne oddeľuje od mäsa. Kožu potom môžeme vidličkou jednoducho stiahnuť.\r\n\r\n'),
(57, '', 271, 'Lososa ešte pokvapkáme olivovým olejom, posolíme, pridáme čerstvo mleté farebné korenie a sezamové semienka. Dopečieme už len pár minút. Podávame s citrónom a balzamikovým octom.\r\n\r\n'),
(57, '', 272, 'K lososovi sa hodí rukola ochutená citrónovou šťavou, soľou a korením a jednoduchý dresing z bieleho jogurtu, zo soli a z pretlačeného cesnaku, pažítky alebo kôpru.\r\n\r\n'),
(58, 'velky-postup34291_162064027311.jpg', 273, 'Najprv v miske lyžicou premiešame múku s cukrom a so soľou. Následne dáme do múky na jemno postrúhaný surový zemiak, ktorý poriadne premiešame s múkou. Pridáme olej a v 3 dl vody rozmiešané droždie. Tých zvyšných cca 1,5 dl vody prilievame postupne počas vypracúvania cesta. Za každým priliatím treba tekutinu poriadne zapracovať do cesta a tým vlastne dostaneme nadýchané ľahké cesto. Výsledné cesto má byť ľahké, kypré a začína sa už oddeľovať od misky. Cesto nakoniec len pomocou trochy múky kratučko premiesime, aby sme dostali tvar bochníka. Poprášime múkou a necháme cca 45 minút kysnúť.\r\n\r\n'),
(58, 'velky-postup34291_162064031822.jpg', 274, 'Ako plnku si zatiaľ pripravíme špenát, ja mám vlastný zo záhradky :-) Ďalej 1 koliesko tureckého kravského syra v slanom náleve, to je cca 150 g. Ale môžete ho bez problémov nahradiť aj kravskou hrudkou. Ďalej pár plátkov tvrdého syra a 2 paradajky. Ak chcete, kľudne môžete pridať aj mozzarellu, alebo pridať pre chuť aj 1-2 strúčiky cesnaku.\r\n\r\n'),
(58, 'velky-postup34291_162064038033.jpg', 275, 'Nakysnuté cesto rozdelíme na 2 časti a vyvaľkáme do tvaru obdĺžnika. Na jednu stranu rozmrvíme najprv polku tureckého syra a naň uložíme polovicu špenátu. Špenát osolíme a poukladáme pár plátkov syra a na plátky pokrájanú paradajku. Podľa potreby ešte trocha osolíme a prikryjeme druhou stranou cesta. Okraje stlačiť vôbec netreba :-) Nakoniec börek preložíme na plech s papierom.\r\n\r\n'),
(58, 'velky-postup34291_162064043644.jpg', 276, 'Natrieme vrch vajcom, ktoré sme rozmiešali s 1 PL jogurtu a posypeme rôznymi semienkami. Ja som dala sezam a ľan, ale vždy dávam aj černušku, ktorá dáva pečivu jeho typickú tureckú chuť ;-P Börek dáme piecť do vopred vyhriatej rúry na 190 °C na 30minút. Ale pre istotu si to treba sledovať, lebo každá rúra trocha inak pečie.\r\n\r\n'),
(58, 'velky-postup34291_162064050255.jpg', 277, 'Upečený börek necháme chvílku vychladnúť.\r\n\r\n'),
(58, 'velky-postup34291_162064064277.jpg', 279, 'Börek je veľmi chutný, cesto ľahučké a veľmi fajné, mäkké. Plnka šťavnatá a výbornej chuti :-) Podľa chuti sa börek podáva s polievkou, pohárom Ayranu, alebo aj so šalátom. Prajem dobrú chuť!\r\n\r\n'),
(60, '', 281, 'Na plnku nakrájame slaninu a dáme na panvicu. Trochu orestujeme, potom pridáme cibuľku nadrobno nakrájanú a huby pokrájané na tenké pásiky. Opatrne osolíme, okoreníme a dusíme. Pridáme vajce s najemno nasekanou pažítkou.\r\n\r\n'),
(60, '', 282, 'Na pomúčenej doske vyvaľkáme cesto na tenko. Na cesto nanesieme pripravenú plnku, posypeme nastrúhanou nivou a zvinieme. Štrúdľu položíme na plech vystlaný papierom na pečenie. Konce zahneme, aby plnka nevytiekla.\r\n\r\n'),
(60, '', 283, 'Cesto potrieme rozmiešaným vajcom a štrúdľu vložíme do rúry na 180–190 °C a pečieme asi 30 minút.\r\n\r\n');

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
(19, 'Ananásové lievance', 'Spestrenie raňajok, desiatej alebo použiteľné ako nenáročný dezert. Nápad z BBC food od Nadiye Hussain.\r\n\r\n', 'Koláče a dezerty', 10, 0, 0, 3, 'velky-recept35895_1674294871.jpg', 0, 'Milan', '2023-01-22 16:24:58', '340 g (plátky z konzervy)	ananás, 125 g múka hladká, 1 ks vajce, 2 PL rozpustené maslo,1 ČL cukor práškový, 1/2 KL prášok do pečiva, 130 ml mlieko, štipka soľ, (alebo olej) maslo', 'old'),
(26, 'Karamelová ľadová káva', 'Podľa tohto receptu vám vyjdú 2 ľadové kávy, každá 300 ml. Suroviny si každý môže upraviť podľa seba. Ak máte radi silnejšiu kávu, pridajte viac kávy. Ak máte radi sladšiu kávu, pridajte cukor alebo odoberte. Každý si to už môže upraviť podľa svojej chuti :-)', 'Nápoje', 20, 0, 0, 0, 'velky-recept117509_1653690590.jpg', 0, 'Martin', '2023-01-29 17:47:07', '300 g cukor kryštálový, 200 ml smotana na šľahanie, 2 ČL káva instantná, 200 ml voda, 2 PL cukor kryštálový, 10 g	cukor vanilkový, 2 PL domáci karamel, 200 ml mlieko, ľad, šľahačka', 'old'),
(27, 'Sirup z bazových kvetov', 'Najlepší sirup z bazových kvetov', 'Nápoje', 30, 3, 0, 0, 'velky-sirup-shutterstock_1418397347-2.jpg', 0, 'Martin', '2023-01-29 17:54:12', '20 ks kvety bazy čiernej, 1 kg cukor kryštálový, 3 l voda, 1 ks bio citrón, 60 g kyselina citrónová', 'old'),
(28, 'Smoothie mango-banán s kokosom', 'Vitamínová bomba, exotická chuť.', 'Nápoje', 2, 2, 0, 1, 'velky-recept117479_1646749387.jpg', 0, 'Martin', '2023-01-29 17:57:38', '1 ks banán, 1 ks mango, 1 odmerka kokos strúhaný, 350 ml voda', 'old'),
(29, 'Kelová polievka s mletým mäsom', 'Na trhu mali pekné hlávky kelu, tak som jednu menšiu kúpil, tak prišla na rad sýta kelová polievka.', 'Polievky', 60, 0, 0, 4, 'velky-recept898_1669109520111.jpg', 0, 'Jozef', '2023-01-29 18:02:05', '1 menšia hlávka kel, 250 g mleté pliecko bravčové, 3 ks zemiaky, 1 ks cibuľa, 1 ks mrkva, 4 strúčiky cesnak, 3 KL paprika červená údená mletá, 1 KL	rasca mletá, 1 KL korenie čierne mleté, 1 PL múka hladká, olej alebo masť, 2 l voda alebo vývar, 2 KL soľ', 'old'),
(30, 'Cestovinový šalát s tuniakom', 'Dnes som si pre vás pripravil tento výborný cestovinový šalát s tuniakom.', 'Cestoviny', 15, 0, 0, 2, 'velky-recept120740_1673707871.jpg', 0, 'Jozef', '2023-01-29 18:12:01', '200 g cestoviny, 160 g tuniak vo vlastnej šťave, 20 g	pór, 30 g paprika červená, 30 g (Bonduelle) kukurica, 1 PL	majonéza, 2 ČL olej olivový, korenie mleté čierne, soľ', 'old'),
(31, 'Plnené zapekané šampiňóny na syrovej omáčke', 'Chcem sa s vami podeliť o tento úžasný recept.', 'Jedlá z húb', 0, 0, 0, 4, 'velky-sampiony_top.jpg', 0, 'Jozef', '2023-01-29 18:16:26', '8 ks	hlavičky šampiňónov, 2 PL olej, 200 g cibuľa, 100 g kapia, 100 g pór, 200 g	oravská slanina, 100 g paradajka, provensálske korenie, soľ, mleté biele korenie, syr bambino, 0,4 l	 Smotana na varenie, škrob Gustin', 'old'),
(32, 'Kuracia pečeň restovaná na cibuli', 'Najčastejšie ju robievam takto. Je to naozaj minútka, rýchle a dobré jedlo.\r\n\r\n', 'Mäsité jedlá', 20, 10, 0, 3, 'velky-recept35895_1672931612.jpg', 0, 'Milan', '2023-01-29 18:56:19', '500 g pečeň kuracia, 1 ks veľká cibuľa, 2 PL	pretlak paradajkový, 2 PL masť bravčová, 1 PL	 paprika červená mletá, 1 PL majorán sušený, 1 ČL korenie čierne mleté, soľ', 'old'),
(33, 'Bryndzové langošíky', 'Už dávno boli u nás langoše a keď som uvidela takéto, nebolo prečo váhať. Inšpirácia z rumunskej web stránky.', 'Bezmäsité jedlá', 20, 0, 0, 4, 'velky-recept35895_1674914410.jpg', 0, 'Milan', '2023-01-29 18:59:47', '200 g múka polohrubá, 150 g múka hladká, 200 ml vlažné mlieko, 10 g čerstvé droždie, 1 KL cukor, 1 ČL soľ, 1 PL olej, 200 g plnotučná bryndza, 50 g mozzarella, cca 250 ml	olej', 'old'),
(34, 'Jablková Sacher torta', 'Korpus tejto torty je vďaka jablkám šťavnatý, v strede je džem, na vrchu čokoláda. Vzhľadom sa podobá na Sacherovu tortu. Je jednoduchá na prípravu, zvládne ju úplne každý. Nám veľmi chutí.', 'Torty', 20, 50, 180, 8, 'velky-recept41277_1670871102-.jpg', 0, 'Milan', '2023-01-29 19:04:41', '300 g cukor kryštálový, 3 ks vajcia, 100 g rozpustené maslo, 250 g múka hladká, 1 ks prášok do pečiva, 40 g kakao, 300 g nastrúhané jablká, džem marhuľový, 150 g (54 %) čokoláda horká, 150 ml smotana na šľahanie', 'old'),
(35, 'Pečený pstruh na masle', 'Moja vnučka môže jesť ryby hoci aj každý deň. Na dnes si objednala cesnakovú polievku a rybu s chlebíkom a uhorkou. My sme ju mali so zemiakmi a čerstvým šalátom .', 'Jedlá z rýb', 20, 10, 180, 4, 'velky-recept6371_1365966641--.jpg', 0, 'Zuzana', '2023-01-29 19:09:16', '4 ks pstruh, korenie na ryby, 125 g maslo, 1 strúčik cesnak, soľ, korenie čierne mleté, 3 PL múka hladká, 1 ČL paprika červená mletá, vňať petržlenová, šťava citrónová', 'old'),
(36, 'Maslové croissanty plnené Nutellou', 'Výborne pečivo pre deti do školy, na výlety, cesty, raňajky, desiatu či večeru. Jemné, mäkké, voňavé.', 'Koláče a dezerty', 60, 17, 190, 16, 'velky-recept51400_1674062970--.jpg', 0, 'Zuzana', '2023-01-29 19:15:26', '650 g múka hladká, 100 ml vlažné	mlieko, 150 ml vlažná	voda, 2 ks vajcia, 2 ČL soľ, 1.5-2 PL cukor kryštálový, 1 bal. čerstvé droždie, 250 g čerstvé zmäknuté maslo, lekvár alebo džem, Nutella, vajce', 'old'),
(37, 'Rybí šalát feferónový takmer podľa ČSN', 'V pôvodnej receptúre podľa ČSN boli použité treska a úhor v oleji, ktoré sa dnes ťažko zháňajú, ak vôbec sú niekde v ponuke. Ja som tresku nahradil makrelou a úhora sleďom. Varenú bielu fazuľu som zjednodušil bielou fazuľou v slanom náleve z konzervy. Preto recept nie je presne podľa normy, ale chuťovo tento legendárny šalát aspoň pripomína. Používal sa v bufetoch ako pikantný prídavok ku klasickému vlašskému alebo pochúťkovému šalátu.', 'Salaty', 30, 0, 0, 5, 'velky-recept898_1670928086--.jpg', 0, 'Zuzana', '2023-01-29 19:25:07', '240 g fazuľa v slanom náleve, 250 g cibuľa, 70 g olej rastlinný, 200 g (filety) makrely v oleji, 100 g (filety) sleď v oleji, 85 g sleď v paradajkovej omáčke, 150 g (bez nálevu) hrášok sterilizovaný, 200 g (bez nálevu) kapia sterilizovaná, 230 g (bez nálevu) šalát paprikový, 150 g (bez nálevu) feferóny sterilizované, 17 g	omáčka worcesterská, 5 g korenie karí', 'old'),
(38, 'Čínska ostro-kyslá polievka', 'Po mnohých výzvedných akciách v čínskych bistrách a preštudovaní niekoľkých receptov z netu som sa odhodlala k uvareniu našej milovanej ostro kyslej polievky. Nechápem, prečo som s tým tak dlho čakala. Je vynikajúca.', 'Exotické jedlá', 20, 100, 0, 15, 'velky-recept19712_1359202113--.jpg', 0, 'Ema', '2023-01-29 19:32:16', '4 ks	krídla kuracie, 2 ks žalúdky morčacie, 2 ks (akýkoľvek) bujón, 15 g sušené	huby čínske, 2 ks mrkva, 25 g bambusové plátky sterilizované, platok (na dusenie) maslo, 120 g mäso hovädzie mleté, 6 PL omáčka sójová svetlá, 3 čl	čili pasta, 3 PL ocot, 3 PL cukor kryštálový, soľ, 3 ks vajcia, 2 PL škrob', 'old'),
(39, 'Domáca mrkvová nátierka s tofu a tvarohom', 'Dnes som skúsila tento nový recept. Je to domáca mrkvová nátierka s tofu a tvarohom.', 'Nátierky', 20, 0, 0, 3, 'velky-recept28480_1667730297ggfgfgfg.jpg', 0, 'Ema', '2023-01-29 19:37:17', '1 ks mrkva, 180 g ochutené tofu, 250 g tvaroh polotučný jemný, 1 ks malá cibuľa, 1 strúčik cesnak, 1 ČL horčica, 1 ČL kečup, 1/2 ČL vegeta', 'old'),
(40, 'Diabolské mango', 'Odvážili by ste sa ochutnať tento diabolský drink?\r\n', 'Nápoje', 2, 0, 0, 3, 'velky-recept113546_1613735228mango.jpg', 0, 'Ema', '2023-01-29 19:39:17', '100 ml džús mangový, 50 ml vodka, omáčka chilli, paprika červená štipľavá mletá, ľad', 'old'),
(41, 'Špargľa v hodvábnej sukničke', '....... neviem, či tento recept patrí do súťaže, ale aj tak by som Vám ho bol ponúkol, lebo poukazuje i na širokú variabilitu Bechamellovej dvojkovej omáčky; je môj pôvodný a v prípade nutnosti ho realizujem, so slovíčkami ospravedlnenia, ako náhradu za kyticu ruží, ale často keď si chcem \"šplhnúť\" u mojej nežnej polovičky. Som presvedčený, že bársaký variant mojej krémovej polievky Vám bude chutnať!', 'Polievky', 12, 25, 0, 4, 'velky-recept875_1271087313DFDF.jpg', 0, 'Adela', '2023-01-29 19:43:51', '1 zväzok špargľa, 1/2 ks citrónová šťava, 1.5 l voda vriaca, 1 KL soľ, 12/18 guličiek čierne korenie, 2/3 listy bobkový list, 1 vetvička tymián, 2 PL	olej olivový, maslo, múka hladká, 0.5 l mlieko studené, 1 ml	muškátový oriešok, 2 čl hríbový prášok, 4-6 PL smotana kyslá, 2-3 ml vegeta, 1 ml korenie biele mleté, 4 trojuholníky syr tavený, 10 dkg krutóny (chlebovej striedky opraženej na 1 PL oleja), 2-3 pl petržlenová vňať čerstvo posekaná, 2 pl mandle nahrubo posekané, čerstvé MČK', 'old'),
(42, 'Zapečené špagety s enciánom', 'Ahojte, dnes som sa rozhodla pre zapečené špagety s enciánom.', 'Cestoviny', 15, 25, 200, 4, 'velky-recept89970_1607806865.jpg', 0, 'Adela', '2023-01-29 19:48:47', '400 g špagety, 200 g (philadelphia) syr krémový, 150 g, slanina údená, 1 ks cibuľa, 200 g špenát, 2 ks vajcia, 150 g strúhaný	parmezán, 1-2 bal encián, 2 strúčiky cesnak, 2 ČL oregano, olej olivový, soľ', 'old'),
(43, 'Rizoto s hubami', 'Úžasné rizoto s hubami.', 'Jedlá z húb', 20, 0, 0, 4, 'velky-var12-ryza-rizoto-4xhuba.jpg', 0, 'Adela', '2023-01-29 19:52:26', '250 g ryža na rizoto, 250 g huby, 1 ks cibuľa, 2 strúčiky cesnak, 750 ml (zeleninový alebo mäsový) vývar, 200 ml víno biele, 2 PL olej, 2 PL maslo, korenie čierne mleté, soľ', 'old'),
(44, 'Pečená krkovička na horčici s červenou kapustou', 'Pečené krkovička na horčici s červenou kapustou.', 'Mäsité jedlá', 30, 120, 200, 5, 'velky-recept61140_1665945589,,.jpg', 0, 'Klára', '2023-01-29 20:08:31', '1,5 kg krkovička bravčová, 1 hlávka	kapusta hlávková červená, 2 ks cibuľa, horčica, rasca, korenie čierne mleté, soľ, masť bravčová, bešamel', 'old'),
(45, 'Zemiakové placky', 'Doma by som tento recept nazval „naľečňiki od Marušky z TV Jarková“. Tam totiž bývala jedna z mojich naozajstných pravých priateliek, kamalások. Nevyspytateľný život to zariadil tak, že dnes je tomu presne dva mesiace, čo nedobrovoľne „odišla“ do nebeskej kuchyne. Z hlbokého srdca jej ďakujem za nádherné priateľstvo, ktoré som s ňou a jej manželom Jurkom, strávil od novembra 1991. Teraz už síce „prevádzkuje“ svoje kuchárske, pekárske i cukrárske umenie anjelikom, ale v mojom srdci ostane stálico', 'Bezmäsité jedlá', 30, 30, 200, 4, 'velky-recept875_1645149887main.jpg', 0, 'Klára', '2023-01-29 20:12:11', '720 g (4 stredne veľké) zemiaky, 25 g rozpustené maslo, 120 g strúhaný (s menším obsahom tuku) syr, 120-150 ml (alebo petržlenová a zelerová vňať) pažítka, 2-3 ks (podľa veľkosti) vajcia, 3-4 strúčiky cesnak, 3-4 PL (nemusí byť) strúhanka, 1,5 KL oregano sušené, soľ, korenie čierne čerstvo mleté', 'old'),
(46, 'Losos na masle so zemiakmi', 'Keď pripravovať lososa, myslím si, že je najlepšie urobiť ho tak, aby čo najlepšie vynikla jeho prirodzená chuť. Preto som sa rozhodla pre lahodnú úpravu na masle s citrónom a bylinkami.', 'Jedlá z rýb', 15, 10, 0, 2, 'velky-recept984_1463751609los.jpg', 0, 'Klára', '2023-01-29 20:20:14', '200 g losos, olej olivový, maslo, korenie čierne, soľ, citrón,400 g zemiaky, tymian', 'old'),
(47, 'Frkanec - odľahčená verzia žĺtkovych rezov', 'Žĺtkové rezy sú starý poctivý recept. Raz mi však sesternica dala tento recept a od vtedy pečiem už len takto. 250 g masla je nahradené 100 ml oleja a 200 ml minerálky. Cesto je ľahšie, vzdušnejšie. Žĺtková poleva je pofŕkaná čokoládou - odtiaľ názov.', 'Koláče a dezerty', 20, 20, 180, 10, 'velky-recept41277_1673260025--.jpg', 0, 'Oľga', '2023-01-29 20:26:26', '300 g múka polohrubá, 250 g cukor kryštálový, 100 g posekané orechy vlašské, 1 bal prášok do pečiva, 200 ml voda minerálna, 100 ml olej, 4 ks bielky, 200 g cukor práškový, 4 ks žĺtky, poleva čokoládová', 'old'),
(48, 'Mandarínková torta', 'Tentokrát to bude ľahká torta plná sviežej jarnej chuti - piškótový korpus, mascarpone-tvarohový krém a mandarínky.', 'Torty', 60, 20, 180, 12, 'velky-recept119081_1647678688---.jpg', 0, 'Oľga', '2023-01-29 20:31:15', '5 ks vajcia, 75 g cukor práškový, 75 g cukor kryštálový, pasta vanilková, 3 PL (horúca) voda, 3 PL olej, 120 g múka polohrubá, 1 bal Zlatý klas, 1 bal prášok do pečiva, 500 ml (33 %) smotana na šľahanie, 500 g mascarpone, 250 g tvaroh odtučnený, cukor práškový, 1 konzerva kompót mandarínkový, 1 konzerva kompót mandarínkový, jahody', 'old'),
(49, 'Grécky cviklový šalát', 'Kto má rád cviklu - teda červenú repu, určite si nenechá ujsť tento zaujímavý spôsob jej spracovania. šalát je veľmi chutný a poslúži vám na chrumkavom toaste ako ľahká večera, alebo kľudne aj ako príloha k dobrému grilovanému mäsku ... Tak neváhajte s jeho prípravou , nieje vôbec zložitá a ochutnajte novú skvelú chuť tradičnej zeleniny.', 'Salaty', 30, 90, 0, 4, 'velky-recept13090_1371022087sdsdsds.jpg', 0, 'Oľga', '2023-01-29 20:34:35', '6 ks cvikla stredne veľká, 150 g syr balkánsky feta alebo NIVA, 2-4 strúčiky cesnak, 200 ml smotana pochúťková, 3 PL vínny ocot alebo balsamico, soľ morská, korenie čierne mleté, za hrsť orechy vlašské posekané', 'old'),
(50, 'Sushi', 'Na zavŕšenia môjho týždňa azíjskej kuchyne som ešte doma vyrábala sushi. Nielenže si ho môžete spraviť s prísadami aké vám najviac chutia ale je výrazne lacnejšie, ako keď si naň zájdete do sushi reštaurácie. Za 6,5 eura mi vyšlo 48 kúskov.', 'Exotické jedlá', 25, 10, 0, 48, 'velky-recept19712_1360061845sushi.jpg', 0, 'Laura', '2023-01-29 20:38:41', '250 g ryža sushi, 3 PL ocot ryžový, 1 PL cukor hnedý, štipka soľ, 5 plátkov riasa morská, 1 ks avokádo, 2 ks	surimi (krabie tyčinky), 150 g losos údený, pasta wasabi, omáčka sójová', 'old'),
(51, 'Avokádová nátierka s krevetami', 'Letná rýchlovka... ľahký obed či večera. Avokádovú nátierku máme radi, tentoraz som k nej pridala aj opečené krevety a spolu s opečeným chlebíkom to bola u nás fajnová večera...', 'Nátierky', 10, 3, 0, 2, 'velky-recept80664_1659605659.jpg', 0, 'Laura', '2023-01-29 20:45:10', '1 ks zrelé avokádo, podľa chuti (mrazené predvarené) krevety, 2 strúčiky cesnak, 1 ČL (alebo limetová) šťava citrónová, podľa chuti soľ, podľa chuti (alebo čierne korenie) korenie farebné čerstvo mleté, 1 PL olej olivový, podľa chuti čerstvá (alebo petržlenová) vňať koriandrová, chlieb alebo bageta', 'old'),
(52, 'Šalátová polievka', 'Babám sa zdrcla šalátová polievka, na ktorú si tak robili chuť, tak dnes som si kúpil poctivé mlieko v kravskom automate a varil z toho, čo záhradka dala.', 'Polievky', 60, 45, 0, 4, 'velky-recept30644_1625686502dsdsdd.jpg', 0, 'Laura', '2023-01-29 20:48:27', '2 ks	šalát, 1 ks cibuľa, 2 strúčiky cesnak, 3 ks zemiaky, 1 vajcia, 1 hrubší plátok slanina, múka hladká, korenie čierne mleté, soľ', 'old'),
(53, 'Šunkovo-chrenová nátierka', 'Ďalší výborný a expresný produkt z Breptovej kuchyne. Ako napovedá názov, určite bude chutiť každému, kto má rád šunkovú rolku s chrenom.', 'Nátierky', 10, 0, 0, 6, 'velky-recept113720_1649310551sdsdd.jpg', 0, 'Jano', '2023-01-29 21:04:20', '200 g šunka, 150 g maslo nátierkové, 90 g majonéza, 70 g čerstvý chren, soľ, korenie čierne mleté', 'old'),
(54, 'Jednoduchá paella s morskými plodmi', 'Tento recept pre vás pripravila Lucka, Fitrecepty. Čo môže pripomenúť príjemnú dovolenku v Španielsku viac, ako čerstvá a voňavá paella? Vyčarujte si španielsku atmosféru priamo u vás doma, a to do pol hodinky. Táto jednoduchá paella s morskými plodmi vám ulahodí, poďte ju vyskúšať. Je skutočne nenáročná na prípravu a tá si vyžaduje iba zopár surovín.', 'Exotické jedlá', 10, 20, 200, 4, 'velky-recept122764_1654085178dsds.jpg', 0, 'Jano', '2023-01-29 21:07:22', '200 g ryža SOS Classic, 400 g paradajky lúpané, krájané, 600 - 700 ml vývar zeleninový, 300 g mrazené	plody morské, 2 strúčiky cesnak, 1 PL olej olivový, 1 ks cibuľa, 1 ČL paprika červená mletá, 1 ČL soľ, 1/2 ČL (alebo oregano) tymian sušený, z 1/2 citróna šťava citrónová, petržlenová vňať, pór alebo jarná cibuľka', 'old'),
(55, 'Torta Karpatka', 'Pre milovníkov zákuskov z odpaľovaného cesta, teraz na spôsob torty. Odporúčam určite upiecť, nesklame svojou chuťou.', 'Torty', 50, 25, 200, 12, 'velky-recept51400_1657462819sdsdsds.jpg', 0, 'Jano', '2023-01-29 21:11:00', '100 ml mlieko, 100 ml voda, soľ, 80 g (čerstvé alebo Hera) maslo, 150 g múka hladká tortová, 1/2 bal prášok do pečiva, 4 ks väčšie vajcia, 500 ml mlieko, 4 PL cukor kryštálový 1 bal cukor vanilínový, 2 ks vajcia, 100 g múka hladká, 170 g zmäknuté maslo, ovocie, 250-300 ml (33-40 %) smotana na šľahanie, 1 bal Smetafix, černice, cukor práškový', 'old'),
(56, 'Treska v majonéze exklusiv', 'Jedná sa o zdokonalenú verziu môjho pôvodného receptu. Zmena sa týka hlavne technológie prípravy, pomer základných surovín zostal zachovaný, výsledný produkt chuťovo aj konzistenciou plne nahrádza starú dobrú československú tresku.', 'Salaty', 10, 20, 0, 10, 'velky-sdsdsdsdsdsdsdsdsdsd.jpg', 0, 'Jano', '2023-01-29 21:16:08', '1 kg (filety) treska, 3 ks stredná cibuľa, 2 PL horčica plnotučná, 3-4 ks	uhorka sladkokyslá, 2 ks mrkva, 300 ml (8 %) ocot, 3 KL soľ, 1 KL korenie čierne celé, 1 KL korenie čierne mleté, 3 ks list bobkový, 2 bal. (2x420 ml) majonéza', 'old'),
(57, 'Losos s rukolou a cesnakovým dresingom', 'Dnes som si pre vás pripravila lososa s rukolou spoločne s cesnakovým dresingom', 'Jedlá z rýb', 30, 20, 0, 4, 'velky-var18-losos-s-rukolovym-salatom-5xdfdfdfd.jpg', 0, 'Michal', '2023-01-29 21:20:00', '1 väčšia fileta bez kostí losos, 4 PL olej olivový, 1 bal rukola, semienka sezamové, citrón, korenie farebné mleté, soľ ocot balzamikový, 1 bal jogurt biely, cesnak alebo pažítka, kôpor', 'old'),
(58, 'Špenátový börek zo zemiakového cesta (Ispanaklı börek)', 'Je sezóna špenátu, tak sa snažím ho rôzne denne zaradiť do nášho jedálnička. Ponúkam Vám veľmi jednoduchý fantasticky chutný börek, ale tentoraz zo zemiakového cesta :-)', 'Bezmäsité jedlá', 20, 0, 0, 8, 'velky-recept34291_1620640739.jpg', 0, 'Michal', '2023-01-29 21:25:38', '700 g múka hladká, 1 ks surový zemiak, cca 4.5 dl voda, 0.5 dl olej, 21 g čerstvé droždiem 1 PL cukor kryštálový, 2 KL soľ, 350 g čerstvý špenát, gouda alebo iný syr na plátky, 150 g syr v slanom náleve, 2 ks paradajky, soľ, 1 ks vajce, 1 PL, jogurt biely, rasca čierna, semienka', 'old'),
(60, 'Hubová štrúdľa', 'Skúsil som spraviť hubovú štrudľu.', 'Jedlá z húb', 15, 30, 180, 10, 'velky-var18-majstri-hubova_strudla_001jhjh.jpg', 0, 'Michal', '2023-01-29 21:33:39', '1 bal cesto lístkové, 1 ks (na potretie) vajce, 1 bal syr niva, podľa dostupnosti, zmes huby, podľa chuti slanina, 1-2 ks cibuľa, pažítka, 1 ks vajce, korenie čierne mleté, soľ', 'old');

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
(11, 'Martin', 'výborné', '2023-01-14 21:10:35', 1),
(35, 'Michal', 'Super recept', '2023-01-31 16:04:11', 60);

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
(6, 'Jozef', 'jozef@jozef.sk', '123456789', '2023-01-19 21:17:20.462211', NULL, 'user'),
(7, 'Milan', 'milan@milan.com', '123456789', '2023-01-22 15:57:37.428977', 'user.png', 'user'),
(8, 'Zuzana', 'zuzana@zuzana.com', '123456789', '2023-01-29 17:31:24.850664', NULL, 'user'),
(9, 'Ema', 'ema@ema', '123456789', '2023-01-29 17:32:12.600531', NULL, 'user'),
(10, 'Adela', 'adela@adela.com', '123456789', '2023-01-29 17:32:53.986171', NULL, 'user'),
(11, 'Klára', 'klara@klara.com', '123456789', '2023-01-29 17:33:56.664817', NULL, 'user'),
(12, 'Oľga', 'olga@olga.com', '123456789', '2023-01-29 17:34:25.757874', NULL, 'user'),
(13, 'Laura', 'laura@laura.com', '123456789', '2023-01-29 17:35:00.785426', NULL, 'user'),
(14, 'Jano', 'jano@jano.com', '123456789', '2023-01-29 17:35:19.769872', NULL, 'user'),
(15, 'Michal', 'michal@michal.com', '123456789', '2023-01-29 17:35:35.391893', 'user.png', 'user');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT pre tabuľku `recepty`
--
ALTER TABLE `recepty`
  MODIFY `recept_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pre tabuľku `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pre tabuľku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
