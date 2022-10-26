-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2022 at 09:54 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hulladekudvar`
--
CREATE DATABASE IF NOT EXISTS `hulladekudvar` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `hulladekudvar`;

-- --------------------------------------------------------

--
-- Table structure for table `fajta`
--

CREATE TABLE `fajta` (
  `id` int(255) NOT NULL,
  `nev` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `fajta`
--

INSERT INTO `fajta` (`id`, `nev`) VALUES
(1, 'műanyag és fém'),
(2, 'papír'),
(3, 'italoskarton'),
(4, 'színes üveg'),
(5, 'fehér üveg'),
(6, 'hungarocell'),
(7, 'elem'),
(8, 'akkumulátor'),
(9, 'elektronikai hulladék'),
(10, 'elektromos hulladék'),
(11, 'fénycső, világítótest'),
(12, 'fáradtolaj'),
(13, 'étolaj'),
(14, 'használtruha'),
(15, 'zöldhulladék'),
(16, 'építési, bontási törmelék'),
(17, 'festék'),
(18, 'gumiabroncs'),
(19, 'lom');

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `csaladNev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `keresztNev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `felhasznalonev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `csaladNev`, `keresztNev`, `felhasznalonev`, `jelszo`) VALUES
(1, 'sfdsdfsdfs', 'sfdsdfsdfs', 'sfdsdfsdfs', '28e88541b9f5805ef04d53dfa03e71faab1444b1'),
(2, 'aaaaaaaa', 'aaaaaaaa', 'aaaaaaaa', 'b480c074d6b75947c02681f31c90c668c46bf6b8'),
(3, 'a', 'a', 'a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8'),
(4, 'Kiss', 'Imre', 'kimi', '0b3377404f22e868ac22d506e8b0fa3e32f42654');

-- --------------------------------------------------------

--
-- Table structure for table `gyujt`
--

CREATE TABLE `gyujt` (
  `helyid` int(255) NOT NULL,
  `fajtaid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `gyujt`
--

INSERT INTO `gyujt` (`helyid`, `fajtaid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(7, 14),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 11),
(8, 12),
(8, 13),
(8, 14),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(9, 13),
(9, 14),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(10, 10),
(10, 11),
(10, 12),
(10, 13),
(10, 14),
(10, 15),
(10, 16),
(10, 17),
(10, 18),
(10, 19),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 8),
(11, 9),
(11, 10),
(11, 11),
(11, 12),
(11, 13),
(11, 14),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(12, 6),
(12, 7),
(12, 8),
(12, 9),
(12, 10),
(12, 11),
(12, 12),
(12, 13),
(12, 14),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(13, 13),
(13, 14),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(14, 6),
(14, 7),
(14, 8),
(14, 9),
(14, 10),
(14, 11),
(14, 12),
(14, 13),
(14, 14),
(14, 15),
(14, 16),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 6),
(15, 7),
(15, 8),
(15, 9),
(15, 10),
(15, 11),
(15, 12),
(15, 13),
(15, 14),
(15, 19),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
(16, 6),
(16, 7),
(16, 8),
(16, 9),
(16, 10),
(16, 11),
(16, 12),
(16, 13),
(16, 14),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(17, 6),
(17, 7),
(17, 8),
(17, 9),
(17, 10),
(17, 11),
(17, 12),
(17, 13),
(17, 14),
(17, 15),
(17, 16),
(17, 17),
(17, 18),
(17, 19);

-- --------------------------------------------------------

--
-- Table structure for table `hely`
--

CREATE TABLE `hely` (
  `id` int(255) NOT NULL,
  `kerulet` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `cim` varchar(250) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `hely`
--

INSERT INTO `hely` (`id`, `kerulet`, `cim`) VALUES
(1, 'III.', 'Testvérhegyi út 10/a'),
(2, 'IV.', 'Ugró Gyula sor 1-3.'),
(3, 'IV.', 'Zichy Mihály utca - Istvántelki út sarok'),
(4, 'VIII.', 'Sárkány utca 5.'),
(5, 'IX.', 'Ecseri út 9.'),
(6, 'X.', 'Fehér köz 2.'),
(7, 'XI.', 'Bánk bán utca 8-10.'),
(8, 'XIII.', 'Tatai út 96.'),
(9, 'XIV.', 'Füredi út 74.'),
(10, 'XV.', 'Károlyi Sándor út 166.'),
(11, 'XV.', 'Zsókavár utca 65. szám után'),
(12, 'XVI.', 'Csömöri út 2-4.'),
(13, 'XVII.', 'Gyökér köz 4.'),
(14, 'XVIII.', 'Jegenye fasor 15. mellett'),
(15, 'XVIII.', 'Besence utca 1/a.'),
(16, 'XXI.', 'Mansfeld Péter utca 86.'),
(17, 'XXII.', 'Nagytétényi út 341-343.');

-- --------------------------------------------------------

--
-- Table structure for table `hirek`
--

CREATE TABLE `hirek` (
  `id` int(10) NOT NULL,
  `hirCim` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `cikkTartalom` varchar(10000) COLLATE utf8_hungarian_ci NOT NULL,
  `forrasLink` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `kepLink` varchar(300) COLLATE utf8_hungarian_ci NOT NULL,
  `publikalasIdo` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `hirek`
--

INSERT INTO `hirek` (`id`, `hirCim`, `cikkTartalom`, `forrasLink`, `kepLink`, `publikalasIdo`) VALUES
(2, 'Kicsavart izzó, 20 fok, biciklizés – így spórolnak az ellenzéki politikusok', 'Az elmúlt hetekben több kormánypárti politikus beszélt már arról, hogy a saját háztartásában mit tesz a megugró rezsiköltségek ellensúlyozása érdekében. Most az ellenzéki politikusoktól kérdeztük: hogyan és min spórolnak?\r\nAz energiaválság közepette a legtöbb magyar háztartásban központi témává vált az energiatakarékosság, a gázzal és a villannyal való spórolás. Nincs ez másképp a politikusoknál sem, ősszel több kormánypárti politikus nyilatkozott saját praktikáiról.\r\n\r\nKocsis Máté a Fidesz–KDNP kihelyezett frakcióülésének szünetében tartott sajtótájékoztatón az Index kérdésére például arról beszélt, hogy a spórolás érdekében megszüntette az egyik akváriumát, aranyhalait egyik barátja kerti tavába vitte át.\r\n\r\n35 éve tartok halakat, fájó döntés volt, de meghoztam\r\n\r\n– mondta a Fidesz frakcióvezetője, majd hozzátette, hogy nem ez az egyetlen, amivel takarékoskodásra törekszik, hangsúlyozta, hogy már eddig is „villanylekapcsolgató volt”, de ezt ma már „mesterfokon űzi a közintézményekben is\".\r\n\r\nEgyébként Kocsis Máté aranyhalakhoz köthető döntése még hetekkel a sajtótájékoztató után sem felejtődött el, a több helyen is beázó Karinthy Frigyes Gimnázium például a frakcióvezető aranyhalainak ajánlotta fel a tantermekben, irodákban összegyűlt vizet.\r\n\r\nSimicskó István, a KDNP frakcióvezetője ugyanezen a sajtótájékoztatón szintén az Index kérdésére elárulta, hogy már három éve tettetett a házára néhány napelemet, és most a bővítésen gondolkozik. (Az október 13-i Kormányinfón jelentették be, hogy a kormány ideiglenesen felfüggeszti a betáplálási lehetőséget az újonnan csatlakozó lakossági napelemes rendszerek esetében.)\r\n\r\nÉn is mániákus villanylekapcsoló vagyok, de olyan egészen apró megoldásokat is alkalmazok, hogy egy hat izzót tartalmazó csillárból hármat kicsavartam\r\n\r\n– jegyezte meg a politikus.\r\n\r\nNem sokkal később Gulyás Gergely Miniszterelnökséget vezető miniszter egy szeptember végi Kormányinfón beszélt arról, hogy bár eddig sem pazarolta az energiát, miután most mindenki reggeltől estig erről beszél, óhatatlanul is eszébe jut, hogy lekapcsolja a lámpát, illetve hogy kevesebb villanyt és gázt használjon.\r\n\r\n„Eddig sem voltam nagyfogyasztó, így ez a mérséklés nemzetgazdasági szinten nem fog megváltást jelenteni” – jegyezte meg.\r\n\r\nSzintén a Kormányinfón Szentkirályi Alexandra kormányszóvivő röviden úgy nyilatkozott, hogy eddig is észszerűen használta a különböző energiaforrásokat, és a lányának is ezt tanítja.\r\n\r\nBrüsszelben sem könnyű\r\nGyöngyösi Márton, a Jobbik elnöke pártja európai parlamenti képviselőjeként életvitelszerűen Brüsszelben él, így az ő helyzete némileg speciális.\r\n\r\nArra a kérdésre, hogy Belgiumban mennyire érzékelhető a rezsipánik, azt felelte, hogy pánik az nincs, az ott élőknek ugyanis van megtakarítása, amellett, hogy a többség a piaci folyamatokkal is tisztában van, és érti, hogy mi miért történik.\r\n\r\nEttől függetlenül az áremelkedés itt is brutális. Eddig általányt fizettem, és mindig visszautalt nekem az energiaszolgáltató egy bizonyos összeget. Ezzel szemben legutóbb egy közel 1000 eurós többletet kellett befizetnem, ennyivel lett drágább a szokott fogyasztásunk\r\n\r\n– mondta az Indexnek a Jobbik elnöke, aki egy 60-as, 70-es években épült 80 négyzetméteres bérelt apartmanban él.\r\n\r\nA politikus kiemelte, hogy a brüsszeli ingatlanok nagy hátránya, hogy az épületek egy jelentős része nincs leszigetelve, ebben közrejátszik többek között az is, hogy a térségben nincsenek olyan nagy hőkilengések, mint Magyarországon.\r\n\r\nEttől függetlenül most jól jönne a szigetelés. Tulajdonképpen már megfordult a fejemben, hogy átköltözzek egy újabb építésű, energiahatékonyabb apartmanba, el is kezdtem nézni az alternatívákat. Ha marad a mostani energiaár, akkor elképzelhető, hogy a következő hónapokban költözéssel próbálok faragni a rezsiköltségeken\r\n\r\n– mondta az EP-képviselő, aki emellett, ha csak lehet, Brüsszelben és Budapesten is tömegközlekedéssel jár, autót csak a legszükségesebb esetekben használ.\r\n\r\nA gyerekekhez igazodva spórolnak\r\nFekete-Győr Andrásnak, a Momentum országgyűlési képviselőjének tavaly ősszel született meg kisfia, Álmos. A politikus még gyermeke érkezése előtt lépett a takarékosság jegyében.\r\n\r\nA megelőzésben hiszek, ezért takarékos, energiahatékony lakásba költöztünk tavaly, a kisfiam születése előtt. Az enyhe ősznek »hála« alig megy nálunk a fűtés, és még egy szobában alszunk a picivel, így még kevésbé tekerjük fel\r\n\r\n– nyilatkozta a politikus. Hozzátette, hogy a vízpazarlás a vesszőparipája: „mindig is zavart, de erre szerencsére külön nem kell figyelni, egy baba mellett úgyis csak egy rövid zuhany fér bele a reggelekbe.”\r\n\r\nDócs Dávid, a Mi Hazánk alelnöke, Cserháthaláp korábbi polgármestere arról beszélt, hogy már településvezetőként is energiatakarékosságra törekedett, de magánemberként is ezt teszi, négygyermekes édesapaként úgy véli, hogy ez elengedhetetlen.\r\n\r\nA gyerekszobában a csillárból én is kitekertem egy izzót, három helyett csak kettő ég. Ugyanezt megtettük a fürdőszobában is, feleennyi fény is bőven elég\r\n\r\n– emelte ki Dócs Dávid. Hangsúlyozta, hogy a rezsiválság mellett élelmiszerválság is van, így ételt soha nem dobnak ki.\r\n\r\n„Legnehezebben az üzemanyaggal tudok spórolni, politikusként ugyanis sokat utazom, de igyekszem egy útba minél több elintéznivalót besűríteni, így kevesebbszer kell elindulni” – tette hozzá a Mi Hazánk politikusa.\r\n\r\nMár évekkel ezelőtt léptek\r\nVarju László, a Demokratikus Koalíció országgyűlési képviselője, a párt alelnöke, aki egyben az árnyékkormány energia- és rezsiügyi árnyékminisztere is, lapunknak elárulta: három-négy évvel ezelőtt családilag hoztak egy döntést, miszerint a lehető legkisebb fenntartási költségre törekednek.\r\n\r\nEgy pici, ám jól szigetelt okosotthonban élek, ahol a fűtés rendkívül korszerű. Automatikusan lekapcsol, ha nem vagyunk otthon, és távolról is tudjuk szabályozni, hogy mire hazaérünk, a lakás egy picit bemelegedjen. Emellett már régóta energiatakarékos izzókat használunk\r\n\r\n– mondta Varju László, akinek Dócs Dávidhoz hasonlóan az üzemanyaggal való spórolás adja fel a leckét a leginkább, de a jövőben ezen is szeretne változtatni.\r\n\r\nSchmuck Erzsébetnek, az LMP társelnökének bár van egy budapesti kislakása, valójában egy vidéki családi házban él, és mint mondja, takarékoskodni leginkább az utóbbiban lehet. Környezetvédőként, zöld megoldásokat előnyben részesítő politikusként úgy véli, hogy már jó előre lehetett látni, hogy az energiaválság be fog következni, ezért még évekkel ezelőtt takarékoskodásba, korszerűsítésbe kezdett.\r\n\r\nKiemelte, hogy faelgázosító kazánnal fűtenek, leszigetelték a házat, kicserélték a rossz nyílászárókat, napkollektorokat szereltek fel – ami jelenleg a meleg vizet biztosítja –, de a napelemen is gondolkoznak.\r\n\r\nEzek a lépések látványos megtakarítást eredményeztek, fontosnak tartom kiemelni ugyanakkor, hogy állami támogatás, hitel nélkül hasonlóba csak kevesen tudnak belevágni\r\n\r\n– mutatott rá az LMP-s politikus.\r\n\r\nSzabó Rebeka, a Párbeszéd társelnöke kérdésünkre azt válaszolta: ökológusként, zöld politikusként csak azokról a praktikákról tud beszámolni, amelyeket már az energiaválságot megelőzően is alkalmazott.\r\n\r\nNálunk maximum 20 fok van, éjszaka pedig egyáltalán nem fűtök, inkább betakarózom és vastag pizsamát vagy pulcsit veszek fel. Ügyelek továbbá az elektromos készülékek áramtalanítására, és ahol csak lehet, energiatakarékos programot használok. Emellett nem liftezek, és szinte mindenhova biciklivel vagy busszal járok\r\n\r\n– mondta az Indexnek Szabó Rebeka.\r\n\r\nA Párbeszéd politikusa Schmuck Erzsébethez hasonlóan kitért arra is, tisztában van azzal, hogy a fenti spórolási praktikákat nem mindenki engedheti meg magának.\r\n\r\n„Sok háztartásban nem az a kérdés, hogy telepakolom-e a mosogatógépet vagy sem, mert nincs is ilyen berendezés. A mostani válság nagyon súlyosan érinti a rászoruló családokat, ezért is indítottunk egy petíciót. Célunk, hogy 200 ezer forintos rezsitámogatást kapjanak azok a fogyasztók, akiknek átlag alatti jövedelme van” – jelentette ki Szabó Rebeka.\r\n\r\nKunhalmi Ágnes, az MSZP frissen újraválasztott társelnöke szintén arról beszélt, hogy számos háztartásban jelenleg azon törik a fejüket az emberek, hogy a gyógyszert vegyék meg vagy inkább a rezsit fizessék ki. A politikus úgy véli, hogy ebben a helyzetben visszatetsző lenne a saját életéről, a saját praktikáiról nyilatkozni, és ugyanígy vélekednek képviselőtársai is.\r\n\r\n„Most nem magunkról kell beszélni, hanem arról, hogy hogyan lehet a problémákat megoldani. Tulajdonképpen erről szól a rezsistop-javaslatcsomagunk, ami többek között a lakossági energiahordozók áfacsökkentését és szigetelési programok indítását szorgalmazza” – emelte ki Kunhalmi Ágnes.\r\n\r\n(Borítókép: Index)', 'https://index.hu/belfold/2022/10/26/energiavalsag-rezsikoltseg-sporolas-ellenzeki-politikusok-partok/', 'https://kep.index.hu/1/0/4586/45860/458601/45860142_0d9b4b605011282deb96591c6a60351d_wm.jpg', '2022-10-26 17:44:32'),
(3, 'Kicsavart izzó, 20 fok, biciklizés – így spórolnak az ellenzéki politikusok', 'Az elmúlt hetekben több kormánypárti politikus beszélt már arról, hogy a saját háztartásában mit tesz a megugró rezsiköltségek ellensúlyozása érdekében. Most az ellenzéki politikusoktól kérdeztük: hogyan és min spórolnak?\r\nAz energiaválság közepette a legtöbb magyar háztartásban központi témává vált az energiatakarékosság, a gázzal és a villannyal való spórolás. Nincs ez másképp a politikusoknál sem, ősszel több kormánypárti politikus nyilatkozott saját praktikáiról.\r\n\r\nKocsis Máté a Fidesz–KDNP kihelyezett frakcióülésének szünetében tartott sajtótájékoztatón az Index kérdésére például arról beszélt, hogy a spórolás érdekében megszüntette az egyik akváriumát, aranyhalait egyik barátja kerti tavába vitte át.\r\n\r\n35 éve tartok halakat, fájó döntés volt, de meghoztam\r\n\r\n– mondta a Fidesz frakcióvezetője, majd hozzátette, hogy nem ez az egyetlen, amivel takarékoskodásra törekszik, hangsúlyozta, hogy már eddig is „villanylekapcsolgató volt”, de ezt ma már „mesterfokon űzi a közintézményekben is\".\r\n\r\nEgyébként Kocsis Máté aranyhalakhoz köthető döntése még hetekkel a sajtótájékoztató után sem felejtődött el, a több helyen is beázó Karinthy Frigyes Gimnázium például a frakcióvezető aranyhalainak ajánlotta fel a tantermekben, irodákban összegyűlt vizet.\r\n\r\nSimicskó István, a KDNP frakcióvezetője ugyanezen a sajtótájékoztatón szintén az Index kérdésére elárulta, hogy már három éve tettetett a házára néhány napelemet, és most a bővítésen gondolkozik. (Az október 13-i Kormányinfón jelentették be, hogy a kormány ideiglenesen felfüggeszti a betáplálási lehetőséget az újonnan csatlakozó lakossági napelemes rendszerek esetében.)\r\n\r\nÉn is mániákus villanylekapcsoló vagyok, de olyan egészen apró megoldásokat is alkalmazok, hogy egy hat izzót tartalmazó csillárból hármat kicsavartam\r\n\r\n– jegyezte meg a politikus.\r\n\r\nNem sokkal később Gulyás Gergely Miniszterelnökséget vezető miniszter egy szeptember végi Kormányinfón beszélt arról, hogy bár eddig sem pazarolta az energiát, miután most mindenki reggeltől estig erről beszél, óhatatlanul is eszébe jut, hogy lekapcsolja a lámpát, illetve hogy kevesebb villanyt és gázt használjon.\r\n\r\n„Eddig sem voltam nagyfogyasztó, így ez a mérséklés nemzetgazdasági szinten nem fog megváltást jelenteni” – jegyezte meg.\r\n\r\nSzintén a Kormányinfón Szentkirályi Alexandra kormányszóvivő röviden úgy nyilatkozott, hogy eddig is észszerűen használta a különböző energiaforrásokat, és a lányának is ezt tanítja.\r\n\r\nBrüsszelben sem könnyű\r\nGyöngyösi Márton, a Jobbik elnöke pártja európai parlamenti képviselőjeként életvitelszerűen Brüsszelben él, így az ő helyzete némileg speciális.\r\n\r\nArra a kérdésre, hogy Belgiumban mennyire érzékelhető a rezsipánik, azt felelte, hogy pánik az nincs, az ott élőknek ugyanis van megtakarítása, amellett, hogy a többség a piaci folyamatokkal is tisztában van, és érti, hogy mi miért történik.\r\n\r\nEttől függetlenül az áremelkedés itt is brutális. Eddig általányt fizettem, és mindig visszautalt nekem az energiaszolgáltató egy bizonyos összeget. Ezzel szemben legutóbb egy közel 1000 eurós többletet kellett befizetnem, ennyivel lett drágább a szokott fogyasztásunk\r\n\r\n– mondta az Indexnek a Jobbik elnöke, aki egy 60-as, 70-es években épült 80 négyzetméteres bérelt apartmanban él.\r\n\r\nA politikus kiemelte, hogy a brüsszeli ingatlanok nagy hátránya, hogy az épületek egy jelentős része nincs leszigetelve, ebben közrejátszik többek között az is, hogy a térségben nincsenek olyan nagy hőkilengések, mint Magyarországon.\r\n\r\nEttől függetlenül most jól jönne a szigetelés. Tulajdonképpen már megfordult a fejemben, hogy átköltözzek egy újabb építésű, energiahatékonyabb apartmanba, el is kezdtem nézni az alternatívákat. Ha marad a mostani energiaár, akkor elképzelhető, hogy a következő hónapokban költözéssel próbálok faragni a rezsiköltségeken\r\n\r\n– mondta az EP-képviselő, aki emellett, ha csak lehet, Brüsszelben és Budapesten is tömegközlekedéssel jár, autót csak a legszükségesebb esetekben használ.\r\n\r\nA gyerekekhez igazodva spórolnak\r\nFekete-Győr Andrásnak, a Momentum országgyűlési képviselőjének tavaly ősszel született meg kisfia, Álmos. A politikus még gyermeke érkezése előtt lépett a takarékosság jegyében.\r\n\r\nA megelőzésben hiszek, ezért takarékos, energiahatékony lakásba költöztünk tavaly, a kisfiam születése előtt. Az enyhe ősznek »hála« alig megy nálunk a fűtés, és még egy szobában alszunk a picivel, így még kevésbé tekerjük fel\r\n\r\n– nyilatkozta a politikus. Hozzátette, hogy a vízpazarlás a vesszőparipája: „mindig is zavart, de erre szerencsére külön nem kell figyelni, egy baba mellett úgyis csak egy rövid zuhany fér bele a reggelekbe.”\r\n\r\nDócs Dávid, a Mi Hazánk alelnöke, Cserháthaláp korábbi polgármestere arról beszélt, hogy már településvezetőként is energiatakarékosságra törekedett, de magánemberként is ezt teszi, négygyermekes édesapaként úgy véli, hogy ez elengedhetetlen.\r\n\r\nA gyerekszobában a csillárból én is kitekertem egy izzót, három helyett csak kettő ég. Ugyanezt megtettük a fürdőszobában is, feleennyi fény is bőven elég\r\n\r\n– emelte ki Dócs Dávid. Hangsúlyozta, hogy a rezsiválság mellett élelmiszerválság is van, így ételt soha nem dobnak ki.\r\n\r\n„Legnehezebben az üzemanyaggal tudok spórolni, politikusként ugyanis sokat utazom, de igyekszem egy útba minél több elintéznivalót besűríteni, így kevesebbszer kell elindulni” – tette hozzá a Mi Hazánk politikusa.\r\n\r\nMár évekkel ezelőtt léptek\r\nVarju László, a Demokratikus Koalíció országgyűlési képviselője, a párt alelnöke, aki egyben az árnyékkormány energia- és rezsiügyi árnyékminisztere is, lapunknak elárulta: három-négy évvel ezelőtt családilag hoztak egy döntést, miszerint a lehető legkisebb fenntartási költségre törekednek.\r\n\r\nEgy pici, ám jól szigetelt okosotthonban élek, ahol a fűtés rendkívül korszerű. Automatikusan lekapcsol, ha nem vagyunk otthon, és távolról is tudjuk szabályozni, hogy mire hazaérünk, a lakás egy picit bemelegedjen. Emellett már régóta energiatakarékos izzókat használunk\r\n\r\n– mondta Varju László, akinek Dócs Dávidhoz hasonlóan az üzemanyaggal való spórolás adja fel a leckét a leginkább, de a jövőben ezen is szeretne változtatni.\r\n\r\nSchmuck Erzsébetnek, az LMP társelnökének bár van egy budapesti kislakása, valójában egy vidéki családi házban él, és mint mondja, takarékoskodni leginkább az utóbbiban lehet. Környezetvédőként, zöld megoldásokat előnyben részesítő politikusként úgy véli, hogy már jó előre lehetett látni, hogy az energiaválság be fog következni, ezért még évekkel ezelőtt takarékoskodásba, korszerűsítésbe kezdett.\r\n\r\nKiemelte, hogy faelgázosító kazánnal fűtenek, leszigetelték a házat, kicserélték a rossz nyílászárókat, napkollektorokat szereltek fel – ami jelenleg a meleg vizet biztosítja –, de a napelemen is gondolkoznak.\r\n\r\nEzek a lépések látványos megtakarítást eredményeztek, fontosnak tartom kiemelni ugyanakkor, hogy állami támogatás, hitel nélkül hasonlóba csak kevesen tudnak belevágni\r\n\r\n– mutatott rá az LMP-s politikus.\r\n\r\nSzabó Rebeka, a Párbeszéd társelnöke kérdésünkre azt válaszolta: ökológusként, zöld politikusként csak azokról a praktikákról tud beszámolni, amelyeket már az energiaválságot megelőzően is alkalmazott.\r\n\r\nNálunk maximum 20 fok van, éjszaka pedig egyáltalán nem fűtök, inkább betakarózom és vastag pizsamát vagy pulcsit veszek fel. Ügyelek továbbá az elektromos készülékek áramtalanítására, és ahol csak lehet, energiatakarékos programot használok. Emellett nem liftezek, és szinte mindenhova biciklivel vagy busszal járok\r\n\r\n– mondta az Indexnek Szabó Rebeka.\r\n\r\nA Párbeszéd politikusa Schmuck Erzsébethez hasonlóan kitért arra is, tisztában van azzal, hogy a fenti spórolási praktikákat nem mindenki engedheti meg magának.\r\n\r\n„Sok háztartásban nem az a kérdés, hogy telepakolom-e a mosogatógépet vagy sem, mert nincs is ilyen berendezés. A mostani válság nagyon súlyosan érinti a rászoruló családokat, ezért is indítottunk egy petíciót. Célunk, hogy 200 ezer forintos rezsitámogatást kapjanak azok a fogyasztók, akiknek átlag alatti jövedelme van” – jelentette ki Szabó Rebeka.\r\n\r\nKunhalmi Ágnes, az MSZP frissen újraválasztott társelnöke szintén arról beszélt, hogy számos háztartásban jelenleg azon törik a fejüket az emberek, hogy a gyógyszert vegyék meg vagy inkább a rezsit fizessék ki. A politikus úgy véli, hogy ebben a helyzetben visszatetsző lenne a saját életéről, a saját praktikáiról nyilatkozni, és ugyanígy vélekednek képviselőtársai is.\r\n\r\n„Most nem magunkról kell beszélni, hanem arról, hogy hogyan lehet a problémákat megoldani. Tulajdonképpen erről szól a rezsistop-javaslatcsomagunk, ami többek között a lakossági energiahordozók áfacsökkentését és szigetelési programok indítását szorgalmazza” – emelte ki Kunhalmi Ágnes.\r\n\r\n(Borítókép: Index)', 'https://index.hu/belfold/2022/10/26/energiavalsag-rezsikoltseg-sporolas-ellenzeki-politikusok-partok/', 'https://kep.index.hu/1/0/4586/45860/458601/45860142_0d9b4b605011282deb96591c6a60351d_wm.jpg', '2022-10-26 17:47:00'),
(4, 'Kicsavart izzó, 20 fok, biciklizés – így spórolnak az ellenzéki politikusok', 'Az elmúlt hetekben több kormánypárti politikus beszélt már arról, hogy a saját háztartásában mit tesz a megugró rezsiköltségek ellensúlyozása érdekében. Most az ellenzéki politikusoktól kérdeztük: hogyan és min spórolnak?\r\nAz energiaválság közepette a legtöbb magyar háztartásban központi témává vált az energiatakarékosság, a gázzal és a villannyal való spórolás. Nincs ez másképp a politikusoknál sem, ősszel több kormánypárti politikus nyilatkozott saját praktikáiról.\r\n\r\nKocsis Máté a Fidesz–KDNP kihelyezett frakcióülésének szünetében tartott sajtótájékoztatón az Index kérdésére például arról beszélt, hogy a spórolás érdekében megszüntette az egyik akváriumát, aranyhalait egyik barátja kerti tavába vitte át.\r\n\r\n35 éve tartok halakat, fájó döntés volt, de meghoztam\r\n\r\n– mondta a Fidesz frakcióvezetője, majd hozzátette, hogy nem ez az egyetlen, amivel takarékoskodásra törekszik, hangsúlyozta, hogy már eddig is „villanylekapcsolgató volt”, de ezt ma már „mesterfokon űzi a közintézményekben is\".\r\n\r\nEgyébként Kocsis Máté aranyhalakhoz köthető döntése még hetekkel a sajtótájékoztató után sem felejtődött el, a több helyen is beázó Karinthy Frigyes Gimnázium például a frakcióvezető aranyhalainak ajánlotta fel a tantermekben, irodákban összegyűlt vizet.\r\n\r\nSimicskó István, a KDNP frakcióvezetője ugyanezen a sajtótájékoztatón szintén az Index kérdésére elárulta, hogy már három éve tettetett a házára néhány napelemet, és most a bővítésen gondolkozik. (Az október 13-i Kormányinfón jelentették be, hogy a kormány ideiglenesen felfüggeszti a betáplálási lehetőséget az újonnan csatlakozó lakossági napelemes rendszerek esetében.)\r\n\r\nÉn is mániákus villanylekapcsoló vagyok, de olyan egészen apró megoldásokat is alkalmazok, hogy egy hat izzót tartalmazó csillárból hármat kicsavartam\r\n\r\n– jegyezte meg a politikus.\r\n\r\nNem sokkal később Gulyás Gergely Miniszterelnökséget vezető miniszter egy szeptember végi Kormányinfón beszélt arról, hogy bár eddig sem pazarolta az energiát, miután most mindenki reggeltől estig erről beszél, óhatatlanul is eszébe jut, hogy lekapcsolja a lámpát, illetve hogy kevesebb villanyt és gázt használjon.\r\n\r\n„Eddig sem voltam nagyfogyasztó, így ez a mérséklés nemzetgazdasági szinten nem fog megváltást jelenteni” – jegyezte meg.\r\n\r\nSzintén a Kormányinfón Szentkirályi Alexandra kormányszóvivő röviden úgy nyilatkozott, hogy eddig is észszerűen használta a különböző energiaforrásokat, és a lányának is ezt tanítja.\r\n\r\nBrüsszelben sem könnyű\r\nGyöngyösi Márton, a Jobbik elnöke pártja európai parlamenti képviselőjeként életvitelszerűen Brüsszelben él, így az ő helyzete némileg speciális.\r\n\r\nArra a kérdésre, hogy Belgiumban mennyire érzékelhető a rezsipánik, azt felelte, hogy pánik az nincs, az ott élőknek ugyanis van megtakarítása, amellett, hogy a többség a piaci folyamatokkal is tisztában van, és érti, hogy mi miért történik.\r\n\r\nEttől függetlenül az áremelkedés itt is brutális. Eddig általányt fizettem, és mindig visszautalt nekem az energiaszolgáltató egy bizonyos összeget. Ezzel szemben legutóbb egy közel 1000 eurós többletet kellett befizetnem, ennyivel lett drágább a szokott fogyasztásunk\r\n\r\n– mondta az Indexnek a Jobbik elnöke, aki egy 60-as, 70-es években épült 80 négyzetméteres bérelt apartmanban él.\r\n\r\nA politikus kiemelte, hogy a brüsszeli ingatlanok nagy hátránya, hogy az épületek egy jelentős része nincs leszigetelve, ebben közrejátszik többek között az is, hogy a térségben nincsenek olyan nagy hőkilengések, mint Magyarországon.\r\n\r\nEttől függetlenül most jól jönne a szigetelés. Tulajdonképpen már megfordult a fejemben, hogy átköltözzek egy újabb építésű, energiahatékonyabb apartmanba, el is kezdtem nézni az alternatívákat. Ha marad a mostani energiaár, akkor elképzelhető, hogy a következő hónapokban költözéssel próbálok faragni a rezsiköltségeken\r\n\r\n– mondta az EP-képviselő, aki emellett, ha csak lehet, Brüsszelben és Budapesten is tömegközlekedéssel jár, autót csak a legszükségesebb esetekben használ.\r\n\r\nA gyerekekhez igazodva spórolnak\r\nFekete-Győr Andrásnak, a Momentum országgyűlési képviselőjének tavaly ősszel született meg kisfia, Álmos. A politikus még gyermeke érkezése előtt lépett a takarékosság jegyében.\r\n\r\nA megelőzésben hiszek, ezért takarékos, energiahatékony lakásba költöztünk tavaly, a kisfiam születése előtt. Az enyhe ősznek »hála« alig megy nálunk a fűtés, és még egy szobában alszunk a picivel, így még kevésbé tekerjük fel\r\n\r\n– nyilatkozta a politikus. Hozzátette, hogy a vízpazarlás a vesszőparipája: „mindig is zavart, de erre szerencsére külön nem kell figyelni, egy baba mellett úgyis csak egy rövid zuhany fér bele a reggelekbe.”\r\n\r\nDócs Dávid, a Mi Hazánk alelnöke, Cserháthaláp korábbi polgármestere arról beszélt, hogy már településvezetőként is energiatakarékosságra törekedett, de magánemberként is ezt teszi, négygyermekes édesapaként úgy véli, hogy ez elengedhetetlen.\r\n\r\nA gyerekszobában a csillárból én is kitekertem egy izzót, három helyett csak kettő ég. Ugyanezt megtettük a fürdőszobában is, feleennyi fény is bőven elég\r\n\r\n– emelte ki Dócs Dávid. Hangsúlyozta, hogy a rezsiválság mellett élelmiszerválság is van, így ételt soha nem dobnak ki.\r\n\r\n„Legnehezebben az üzemanyaggal tudok spórolni, politikusként ugyanis sokat utazom, de igyekszem egy útba minél több elintéznivalót besűríteni, így kevesebbszer kell elindulni” – tette hozzá a Mi Hazánk politikusa.\r\n\r\nMár évekkel ezelőtt léptek\r\nVarju László, a Demokratikus Koalíció országgyűlési képviselője, a párt alelnöke, aki egyben az árnyékkormány energia- és rezsiügyi árnyékminisztere is, lapunknak elárulta: három-négy évvel ezelőtt családilag hoztak egy döntést, miszerint a lehető legkisebb fenntartási költségre törekednek.\r\n\r\nEgy pici, ám jól szigetelt okosotthonban élek, ahol a fűtés rendkívül korszerű. Automatikusan lekapcsol, ha nem vagyunk otthon, és távolról is tudjuk szabályozni, hogy mire hazaérünk, a lakás egy picit bemelegedjen. Emellett már régóta energiatakarékos izzókat használunk\r\n\r\n– mondta Varju László, akinek Dócs Dávidhoz hasonlóan az üzemanyaggal való spórolás adja fel a leckét a leginkább, de a jövőben ezen is szeretne változtatni.\r\n\r\nSchmuck Erzsébetnek, az LMP társelnökének bár van egy budapesti kislakása, valójában egy vidéki családi házban él, és mint mondja, takarékoskodni leginkább az utóbbiban lehet. Környezetvédőként, zöld megoldásokat előnyben részesítő politikusként úgy véli, hogy már jó előre lehetett látni, hogy az energiaválság be fog következni, ezért még évekkel ezelőtt takarékoskodásba, korszerűsítésbe kezdett.\r\n\r\nKiemelte, hogy faelgázosító kazánnal fűtenek, leszigetelték a házat, kicserélték a rossz nyílászárókat, napkollektorokat szereltek fel – ami jelenleg a meleg vizet biztosítja –, de a napelemen is gondolkoznak.\r\n\r\nEzek a lépések látványos megtakarítást eredményeztek, fontosnak tartom kiemelni ugyanakkor, hogy állami támogatás, hitel nélkül hasonlóba csak kevesen tudnak belevágni\r\n\r\n– mutatott rá az LMP-s politikus.\r\n\r\nSzabó Rebeka, a Párbeszéd társelnöke kérdésünkre azt válaszolta: ökológusként, zöld politikusként csak azokról a praktikákról tud beszámolni, amelyeket már az energiaválságot megelőzően is alkalmazott.\r\n\r\nNálunk maximum 20 fok van, éjszaka pedig egyáltalán nem fűtök, inkább betakarózom és vastag pizsamát vagy pulcsit veszek fel. Ügyelek továbbá az elektromos készülékek áramtalanítására, és ahol csak lehet, energiatakarékos programot használok. Emellett nem liftezek, és szinte mindenhova biciklivel vagy busszal járok\r\n\r\n– mondta az Indexnek Szabó Rebeka.\r\n\r\nA Párbeszéd politikusa Schmuck Erzsébethez hasonlóan kitért arra is, tisztában van azzal, hogy a fenti spórolási praktikákat nem mindenki engedheti meg magának.\r\n\r\n„Sok háztartásban nem az a kérdés, hogy telepakolom-e a mosogatógépet vagy sem, mert nincs is ilyen berendezés. A mostani válság nagyon súlyosan érinti a rászoruló családokat, ezért is indítottunk egy petíciót. Célunk, hogy 200 ezer forintos rezsitámogatást kapjanak azok a fogyasztók, akiknek átlag alatti jövedelme van” – jelentette ki Szabó Rebeka.\r\n\r\nKunhalmi Ágnes, az MSZP frissen újraválasztott társelnöke szintén arról beszélt, hogy számos háztartásban jelenleg azon törik a fejüket az emberek, hogy a gyógyszert vegyék meg vagy inkább a rezsit fizessék ki. A politikus úgy véli, hogy ebben a helyzetben visszatetsző lenne a saját életéről, a saját praktikáiról nyilatkozni, és ugyanígy vélekednek képviselőtársai is.\r\n\r\n„Most nem magunkról kell beszélni, hanem arról, hogy hogyan lehet a problémákat megoldani. Tulajdonképpen erről szól a rezsistop-javaslatcsomagunk, ami többek között a lakossági energiahordozók áfacsökkentését és szigetelési programok indítását szorgalmazza” – emelte ki Kunhalmi Ágnes.\r\n\r\n(Borítókép: Index)', 'https://index.hu/belfold/2022/10/26/energiavalsag-rezsikoltseg-sporolas-ellenzeki-politikusok-partok/', 'https://kep.index.hu/1/0/4586/45860/458601/45860142_0d9b4b605011282deb96591c6a60351d_wm.jpg', '2022-10-26 17:48:31'),
(5, 'valami', 'sdfsdfsdf', 'https://index.hu/belfold/2022/10/26/energiavalsag-rezsikoltseg-sporolas-ellenzeki-politikusok-partok/', 'https://kep.index.hu/1/0/4586/45860/458601/45860142_0d9b4b605011282deb96591c6a60351d_wm.jpg', '2022-10-26 19:25:00'),
(6, 'sdfsdf', 'sdfsdfs', 'dfsdf', 'sdfsdfs', '2022-10-07 19:55:00'),
(7, 'dfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', '2022-10-04 22:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `hozzaszolas`
--

CREATE TABLE `hozzaszolas` (
  `id` int(10) NOT NULL,
  `felhasznalokID` int(10) NOT NULL,
  `hirekID` int(10) NOT NULL,
  `publikalasIdo` datetime NOT NULL,
  `tartalom` varchar(5000) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `hozzaszolas`
--

INSERT INTO `hozzaszolas` (`id`, `felhasznalokID`, `hirekID`, `publikalasIdo`, `tartalom`) VALUES
(1, 3, 5, '2022-10-26 20:46:57', 'Ez egy hozzászólás'),
(2, 3, 5, '2022-10-26 20:52:44', 'sdfsdfsdf'),
(3, 3, 5, '2022-10-26 20:53:20', 'sdfsdf'),
(4, 3, 5, '2022-10-26 21:00:58', 'SDFSDFSD'),
(5, 3, 5, '2022-10-26 21:01:53', 'ALMA'),
(6, 3, 7, '2022-10-26 21:04:04', 'sdfsfsdfaa'),
(7, 3, 6, '2022-10-26 21:04:14', 'dfgdfgdfgdf'),
(8, 3, 6, '2022-10-26 21:05:23', 'eeeeeeeeeeeeeeeeeeeeeee'),
(9, 3, 5, '2022-10-26 21:05:52', 'aaaaaaaaaaaaaaaaaaaaa'),
(10, 3, 4, '2022-10-26 21:06:43', 'ddddddddddddd'),
(11, 3, 7, '2022-10-26 21:23:07', 'Teszt'),
(12, 3, 7, '2022-10-26 21:23:13', 'sdfsdf'),
(13, 4, 5, '2022-10-26 21:35:51', 'dftderf'),
(14, 4, 4, '2022-10-26 21:37:23', '56465465');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fajta`
--
ALTER TABLE `fajta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gyujt`
--
ALTER TABLE `gyujt`
  ADD UNIQUE KEY `helyid` (`helyid`,`fajtaid`),
  ADD KEY `fajtaid` (`fajtaid`);

--
-- Indexes for table `hely`
--
ALTER TABLE `hely`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hirek`
--
ALTER TABLE `hirek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hozzaszolas`
--
ALTER TABLE `hozzaszolas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hirek`
--
ALTER TABLE `hirek`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hozzaszolas`
--
ALTER TABLE `hozzaszolas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gyujt`
--
ALTER TABLE `gyujt`
  ADD CONSTRAINT `gyujt_ibfk_1` FOREIGN KEY (`fajtaid`) REFERENCES `fajta` (`id`),
  ADD CONSTRAINT `gyujt_ibfk_2` FOREIGN KEY (`helyid`) REFERENCES `hely` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
