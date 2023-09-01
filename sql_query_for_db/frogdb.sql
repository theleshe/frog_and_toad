-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 01 2023 г., 19:30
-- Версия сервера: 5.7.39
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `frogdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `frogtypes`
--

CREATE TABLE `frogtypes` (
  `id_frtoad` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(355) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `frogtypes`
--

INSERT INTO `frogtypes` (`id_frtoad`, `name`, `description`, `avatar`) VALUES
(1, 'Common Frog', 'The common frog or grass frog (Rana temporaria), also known as the European common frog, European common brown frog, European grass frog, European Holarctic true frog, European pond frog or European brown frog, is a semi-aquatic amphibian of the family Ranidae, found throughout much of Europe as far north as Scandinavia and as far east as the Urals, except for most of the Iberian Peninsula, southern Italy, and the southern Balkans.', 'common_frog.jpg'),
(2, 'Cranwells Horned Frog', 'Cranwell\'s horned frog (Ceratophrys cranwelli), also called commonly the Chacoan horned frog, is a terrestrial frog in the family Ceratophryidae. The species is endemic to the dry Gran Chaco region of Argentina, Bolivia, Paraguay and Brazil. It, like other members of its genus, Ceratophrys, is commonly called the Pac-man frog, because of its resemblance to the video game character of the same name.', 'cranwells_horned_frog.jpg'),
(3, 'Golden Mantella', 'The golden mantella (Mantella aurantiaca) is a small, terrestrial frog endemic to Madagascar. It has an extremely restricted distribution in three distinct areas centered on the town of Moramanga - Beparasy and Ambohibary Communes, Torotorofotsy Wetland northwest of Andasibe, and in the area of Ambakoana. Mantella aurantiaca is one of Madagascar\'s most threatened amphibian species due to its limited distribution in an area under tremendous anthropogenic pressure.', 'golden_mantella.jpg'),
(4, 'Poison Dart Frog', 'Poison dart frog (also known as dart-poison frog, poison frog or formerly known as poison arrow frog) is the common name of a group of frogs in the family Dendrobatidae which are native to tropical Central and South America. These species are diurnal and often have brightly colored bodies. This bright coloration is correlated with the toxicity of the species, making them aposematic.', 'poison_dart_frog.jpg'),
(5, 'Red-Eyed Tree Frog', 'A female red-eyed tree frog has laid a batch of eggs on a leaf. She chose the spot carefully—the leaf hangs over a pond.\r\nWhen the eggs are ready to hatch, the tadpoles inside start swirling around vigorously. The activity breaks each egg open, releasing the little tadpoles. All the tadpoles wash down the leaf in a little stream of moisture from the hatching eggs, and—plop! plop! plop!—they land in the pond below.', 'red_eyed_tree_frog.jpg'),
(6, 'American Toad', 'The American toad (Anaxyrus americanus) is a common species of toad found throughout Canada and the eastern United States. It is divided into three subspecies: the eastern American toad (A. a. americanus), the dwarf American toad (A. a. charlesmithi) and the rare Hudson Bay toad (A. a. copei). Recent taxonomic treatments place this species in the genus Anaxyrus instead of Bufo.', 'american_toad.jpg'),
(7, 'Arroyo Toad', 'The arroyo toad is a stocky, blunt-nosed, warty-skinned species of toad, 5 to 7.5 cm (2.0 to 3.0 in) long. It has horizontal pupils, and is greenish, grey or salmon on the dorsum with a light-colored stripe across the head and eyelids. It has light sacral and mid-dorsal patches, large, oval and widely separated parotoid glands, and weak or absent cranial crests. The juvenile of this species are ashy-white, olive or salmon on the dorsal side, with or without black spotting.', 'arroyo_toad.jpg'),
(8, 'Colorado River Toad', 'The Colorado River toad can grow to about 190 millimetres (7.5 in) long and is the largest toad in the United States apart from the non-native cane toad (Rhinella marina). It has a smooth, leathery skin and is olive green or mottled brown in color. Just behind the large golden eye with horizontal pupil is a bulging kidney-shaped parotoid gland. Below this is a large circular pale green area which is the tympanum or ear drum.', 'colorado_river_toad.jpg'),
(9, 'Texas Toad', 'The Texas toad is native to the United States where it is found in the state of Texas, wherein 2009 it was designated as the Texas State Amphibian, its range also extends northward to Oklahoma, westward to New Mexico and southward to northern Mexico. It is a desert species and is found in dry grassland, savannahs with scattered mesquite and open woodland, usually on sandy or frequently inundated soils.', 'texas_toad.jpg'),
(10, 'Western Toad', 'It has a white or cream dorsal stripe, and is dusky gray or greenish dorsally with skin glands concentrated within the dark blotches. Its parotoid glands are oval, widely separated, and larger than the upper eyelids. It has a mottled venter and horizontal pupils but lacks cranial crests. Compared to females, males have smoother skin, reduced dorsal blotching, and nuptial pads (thickened skin) on their forefeet during breeding season.', 'western_toad.jpg'),
(11, 'first frog', 'Titan triggerfish triplefin blenny x-ray tetra, green swordtail Australasian salmon devil ray--featherback spotted dogfish scissor-tail rasbora. Seahorse sea raven ladyfish featherback bass tuna crocodile icefish. False moray Reedfish redmouth whalefish catalufa northern Stargazer killifish stream catfish flabby whalefish, cod javelin finback cat shark. Wasp fish Red salmon flathead great white shark, yellowbelly tail catfish. Cod electric eel lined sole frilled shark.', 'first_frog.jpg'),
(12, 'first toad', 'Morwong butterfly ray; black dragonfish buffalofish luderick cownose ray Colorado squawfish seahorse. Creek chub; guitarfish greenling kelp perch chimaera, slickhead morwong canary rockfish; common tunny lyretail dogfish shark. Haddock whiting knifejaw bluefin tuna piranha Chinook salmon hardhead catfish striped bass peacock flounder thorny catfish. Wormfish yellowbelly tail catfish pickerel houndshark salamanderfish pink salmon elephantnose fish.', 'first_toad.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_frtoad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `id_frtoad`) VALUES
(1, 'thelefrog', 'cc9937a32f473bf7c753d90d3908eaaa', 11),
(2, 'theletoad', 'cef768bb183e5571a3a65e3d8d3bc532', 12),
(3, 'frog1', 'c4ca4238a0b923820dcc509a6f75849b', 4),
(4, 'frog2', 'c81e728d9d4c2f636f067f89cc14862c', 2),
(5, 'toad1', 'c4ca4238a0b923820dcc509a6f75849b', 8),
(6, 'toad2', 'c81e728d9d4c2f636f067f89cc14862c', 9),
(7, 'toad3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 9);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `frogtypes`
--
ALTER TABLE `frogtypes`
  ADD PRIMARY KEY (`id_frtoad`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `frogtypes`
--
ALTER TABLE `frogtypes`
  MODIFY `id_frtoad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
