-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Jun 04, 2024 at 06:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `artisacanciones`
--

CREATE TABLE `artisacanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `artisacanciones`
--

INSERT INTO `artisacanciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 7, 114),
(2, 29, 59),
(3, 21, 97),
(4, 15, 19),
(5, 16, 141),
(6, 56, 83),
(7, 30, 67),
(8, 51, 133),
(9, 31, 105),
(10, 53, 8),
(11, 20, 125),
(12, 33, 15),
(13, 9, 108),
(14, 53, 84),
(15, 1, 88),
(16, 43, 34),
(17, 14, 52),
(18, 23, 130),
(19, 16, 97),
(20, 22, 57),
(21, 47, 90),
(22, 10, 63),
(23, 50, 25),
(24, 50, 80),
(25, 12, 98),
(26, 59, 75),
(27, 51, 132),
(28, 10, 15),
(29, 29, 138),
(30, 5, 33);

-- --------------------------------------------------------

--
-- Table structure for table `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Andrew Martin', 'Home need such reduce energy key would. Vote brother black we foreign. Trade modern film.\nCollege movement source structure sea table view song. Know back last lead leader result very. Set south final lot road half.\nMedical agree purpose.\nTerm early good community fund until.'),
(2, 'Donald Watson', 'Specific central response far billion respond clear. Time skill safe.\nIndeed one deal generation. Future allow should value pay phone. Rock marriage law because heavy.\nCoach at price third. Later strong discussion hit nature well.\nDo else lot whole forward. Improve guy cost care effect reality kid.'),
(3, 'Tyler Armstrong', 'Tend main recent continue particularly very product. Concern student research.\nEnjoy two activity pull over who enough. Finally might check detail. Able these hit standard kind market good.\nSmile town tend sure event attorney. Vote month position support task western. Skin day myself important.'),
(4, 'Tanya Carpenter', 'Account statement miss financial industry to family themselves.\nItself identify one. Five area center all blood.\nChance certain describe be simply. Civil receive some drive. Piece realize chair officer yeah them food.\nTeach personal health keep general environment. Artist such stand detail she.'),
(5, 'Stephanie Hunter', 'We make question situation. Serve them necessary. Fire Democrat individual.\nSouth soldier fast live article certain.\nFish garden past. Campaign road great decade.\nEducation structure ago take stuff with. Even now call her method court rich. Thousand full middle like argue.'),
(6, 'Michael West', 'Step base foot quickly sense.\nBuilding white human which. Nearly media building here action.\nSuggest that everybody picture action notice beyond. New political kind Democrat land contain. Evening class join dinner support stuff hair stage. Nothing unit owner particular east will friend bank.'),
(7, 'Taylor Mcintosh', 'In tell source simple. Agency event strong. Drug same address window he beautiful director various.\nTechnology guy option line story probably. Much arm cultural shoulder. Product difficult century chance knowledge.'),
(8, 'Daniel Garrett', 'Exist thought child easy wear wait sing. Traditional another movie meet.\nWar senior southern gas same. Avoid seek listen evening include. However through writer agency white across. Peace whether doctor gas question who worker.'),
(9, 'Mary Zamora', 'Crime face by employee issue. Quite deep rise baby hundred.\nProperty know take none kid dinner alone. Space artist heart win later process safe. Goal best nor phone.\nExecutive coach pattern science send cause especially. Recent none spend.'),
(10, 'Lawrence Moses', 'Loss over cover have. Partner nice relate camera least less property.\nHusband turn economy law card away. Drop one race one time half blood wide.\nKind house brother soldier main. Social available plan music.'),
(11, 'Kathy Cisneros', 'Take level second.\nCatch although plan TV. Continue song nature. Draw help receive wear difference team recognize field.\nHerself growth evidence head line. Husband film hold price. Line culture however animal whether tax off.'),
(12, 'Sara Williams', 'No most pull. Capital gas memory present company positive major.\nDeep second without sign father maintain page. Quickly animal those player various. Must popular particularly fire. Tend every box lot.\nPublic task toward together turn. Stuff goal lot small. Determine good not century under.'),
(13, 'Matthew Miller', 'Resource represent police situation ahead pretty Mr. Reality full still present own hold field.\nSure night shoulder. Them let receive often child strategy.'),
(14, 'Daniel Morton', 'Enjoy bad evening soldier get will foot lot.\nPoor usually day lot company represent already music.\nSimply us that participant alone.\nInclude medical lay owner within top memory. Suffer mother investment participant contain have meeting. Movement section wish morning behind.'),
(15, 'William Moran', 'Teacher later understand choose off plan trade. Just among thousand away.\nThese cause tend nothing. Nor spend feel kind similar center total crime. Night window window last me knowledge enter.\nFive hard debate risk. Million to professional common theory such.\nDog mention down nature.'),
(16, 'Erica Williams', 'Reduce avoid citizen station today. Speech defense agreement high brother case.\nLife tough maybe camera audience let democratic employee. Positive behind final arm way parent play stand.'),
(17, 'Matthew Lewis', 'Others late his author pass source. Down book hard return almost boy open address.\nCar discussion even firm see same. World step sometimes second course customer ahead story. Inside strong run.'),
(18, 'Mallory Johnston', 'Wide news structure point however. Movie thought will region beyond factor responsibility help. Too officer right left.\nCivil garden example economy several among enjoy. Indicate future although should another conference produce.\nSister effort push card region suggest.'),
(19, 'Jennifer Huynh', 'Other own move level foreign item already. Experience than important cause little such like. Grow himself should religious water often everything.\nDream hard his standard. Everything where you walk. Can set meet politics local.'),
(20, 'Emily Cross', 'Method project direction its close. Performance cut brother across.\nBefore bill religious sound magazine film finish morning. Grow information right.\nFund probably often final our art. Improve window election him toward plan evening. Cell chair continue decade support option sure.'),
(21, 'Michael Buchanan MD', 'Economic poor tough degree cold way like.\nWhere able everybody close. Light career range benefit.\nSkill point school. After benefit hundred to themselves. Area move hot nation. Assume science cold want because.'),
(22, 'Christopher Rodriguez', 'Event remain loss reach light daughter lead. Film view want nothing. See right glass act.\nDay religious range throw couple traditional environmental. Range natural smile.\nLive instead arm culture season pull wear. Section radio nice.'),
(23, 'Cynthia Stanley', 'Ball up manage available respond. Simple each back foreign cut series. Pick matter under national actually middle if.\nDirection wide space with. Main continue cell energy catch time. Major writer explain tonight ability chance.\nCulture partner similar upon.'),
(24, 'Jason Robertson', 'Radio garden such quickly through pay movement. Hot beyond your mind that. Career plant describe this shake recent cost.\nWorker through drop stand trouble eat marriage single. Human sit worker big soldier something. Identify choice alone issue house space.'),
(25, 'Elizabeth Nelson', 'Alone age resource seek study city. Theory quite fly center low purpose. From southern reason.\nClear practice no large cause offer must executive. Describe go subject law responsibility from in maybe. Who find trade finish part herself.'),
(26, 'Anthony Gomez', 'Officer evidence cause. Use especially firm point north. Unit window summer arm last Mr national.\nKid sell fly agent position present toward. Pick natural from offer.\nArrive discover near political make federal drug. Career guy offer determine.'),
(27, 'Christina Brown', 'Concern side Republican eight family. Provide garden organization draw take.\nStore shake actually ahead generation enough.\nMaterial everything cup inside kid she.\nWhen police drive maybe. Drug control manager others. Need instead point report.'),
(28, 'Patricia Jackson', 'Stock similar woman head need. Would each wonder unit move. Style home kid its responsibility modern nature.\nDirector form seem sport project beyond. Institution tough within and team south step. Coach the environment major high yes.'),
(29, 'Carrie Williams', 'Let agent skin fast hit majority. Step always free against. Person you water between.\nApply public land remember into.\nArgue perform lawyer others I our.\nLast local can.\nProperty reality son. Message usually record loss actually fear.\nFinish sort do by community may oil. Suffer focus could across.'),
(30, 'Sarah Gilbert', 'Simple meet listen. Politics day it board responsibility three. Myself raise player show close. Remain job seem short.\nCamera establish friend part it everything. Order girl natural card. First air should spring final strong final.'),
(31, 'Felicia Tucker', 'Total rule use arm. Land white well show budget probably.\nArm bill someone occur. Then technology available law artist. Marriage information land black.\nSomeone much though partner hundred. World media value become however.'),
(32, 'Cynthia Willis', 'Goal pick sister know machine machine everyone. But others camera future.\nFeel claim between natural. Trip attack impact exist.\nHot interest speak campaign whole attack country. Film project suddenly drive security politics.'),
(33, 'Monica Lucero', 'Share artist minute practice. Right maybe community also though tax can appear. Newspaper whatever this.\nArrive education job billion. Involve actually apply career top.\nDuring six fund tend single eat hold. True result way make growth above million.'),
(34, 'Zachary Harris', 'I major strong financial third. Pull say this manager view community. Line significant build.\nThought however father room price city plan. Fine organization play friend other type girl. Word cost manage perhaps.'),
(35, 'Frances Reyes', 'Serious me without evening center.\nCommunity let sport worker. Meet live effort bar. North exactly learn discover.\nWhole its program front.\nSay dark address example. Ten fight statement for it direction hospital manager. Everything maybe fast factor little unit agent.'),
(36, 'Dana Hall', 'Which wait religious talk. Board just treatment another likely her. Middle teacher century manage upon physical.\nTown wish single. Would full level thing himself.'),
(37, 'Brittany Perez', 'Determine only employee positive court. Air usually during citizen training base father contain. Entire bag increase yourself explain possible.\nProject too run much more seem of population. Few popular or magazine.\nCampaign red your actually reason prepare stuff. Life bed realize language.'),
(38, 'Philip Cochran', 'Visit management certain read. Away though spend find project hard two camera.\nRole debate full something continue question everyone could. Town bar above campaign. Miss past shoulder land simple.\nTrip computer class get figure. Building occur provide among world put soon.'),
(39, 'Sarah Green', 'Maybe wall full statement music down should. Produce event language own that allow development. Perhaps job child head service.\nMost test term dinner century bill. Before statement set toward wind time.\nUnder natural fear song. Involve hold figure different significant.'),
(40, 'Samantha Weaver', 'Back view team about. Senior hand with want near difference.\nSong according option key need human movie. Benefit environmental social son attack man share. Idea book save four measure often police.'),
(41, 'Elizabeth Wheeler', 'Professor teach miss cultural play. Key leg everybody work whose.\nKnowledge late than address stand. Guess social area present cost sense. Now cause as exactly subject state.\nLate growth require charge mention. Across five billion edge consider animal know. Machine care painting nation evidence.'),
(42, 'Ashley Potts', 'Political rather poor will student message remain. Choose catch born store paper gun I. Southern Congress director fire sing smile.\nName boy discussion message. I cause voice guy else human.\nNor involve yourself call through wide. Between expert as article approach nation religious.'),
(43, 'Heather Russo', 'Yourself need capital particular task can. Good history beat bill join fish than. This whether couple assume.\nChance cell TV responsibility money enter top as. Attorney do necessary put choose seat.\nRather yourself nature. Bad work no school.'),
(44, 'Jordan Stewart', 'Represent huge most order rate. Right find experience experience. Explain entire drive yourself skill. Check physical maybe myself involve.\nNewspaper more TV. Relate contain hit event attorney difficult. Dream policy such determine fear suffer animal.'),
(45, 'Kelly Turner', 'Room listen follow experience itself. Discussion way treatment easy standard if likely. Surface property strategy he coach a light.\nHere down along military. Form near any space discuss yourself language. Enjoy friend similar six order.'),
(46, 'Emily Watts', 'Letter seem month show detail house course. Pull which right second poor kitchen white scene. Begin decide bed study behind through into.'),
(47, 'Joshua Murphy', 'North tend huge resource instead grow. School size government choose trial central life.\nJoin smile individual brother. Report anything where develop democratic hit. Involve most realize hair.\nCollection hit green them image require. Remember live cultural art kitchen. Imagine body difficult base.'),
(48, 'Lori Mitchell', 'Audience area fast article rule.\nAlready bed save front future certainly.\nSell huge event. Her page land sit than. Sense rich anyone believe executive manager religious.\nMiss month to a. Represent no fill light never day quite. Collection later explain.'),
(49, 'Erica Watson', 'Appear decade operation receive. This matter site employee take mention. Behavior have line board financial society law cold.\nPretty crime great stage stage long always staff. Across drop prevent before fall although.\nResult quickly fire move talk. Upon summer tough.'),
(50, 'Robert Zimmerman', 'Business well organization vote sit. Step expert since level president detail event money. Marriage stop scene late truth life maintain.\nPerform daughter foot American she fish. Same home boy field you but lot.'),
(51, 'Amy Green', 'Cell my culture. Write conference machine able writer third.\nLaw same save be common so. Task gun your miss southern question. Opportunity work here by form memory eight.'),
(52, 'Janet Estes', 'Develop hand many. Talk top draw present hand player painting. Field decide culture medical floor.\nCentral hold that indicate hair. Stage door stuff organization small.\nLay company education nature as only. Something current capital idea Congress since rich bring. Help decision in happen.'),
(53, 'Michael Ruiz', 'Human little politics charge rest add federal bag. Medical per power memory industry dog store.\nIts ago traditional more lose pull this. Administration close from least country.\nAffect by day glass theory. History site opportunity conference performance should.'),
(54, 'Teresa Williams', 'Represent low people participant history organization. Process toward brother worker. Head law off move establish letter affect effort.\nBe then most rule truth half win. Read lawyer service truth need same.\nWhere baby include officer operation rest later. Stay themselves personal everybody.'),
(55, 'David Guzman', 'List suffer traditional mention. American those blue both. Whether method type say institution young another reduce.\nReduce hear week along box generation bank. Ready away across play information end beautiful. Young dream produce kind.'),
(56, 'Allison Hoover', 'Or every finish that police. Enjoy election campaign government both. Return news citizen consider money act professional.\nCareer also let very. Candidate method answer month key this kid. Try yet herself day wait shake walk.\nScene someone then sell billion. Truth radio indicate positive itself.'),
(57, 'John Jimenez', 'Resource stage few radio the moment city or. Short than medical candidate. Office boy reveal rather matter court one.\nRed know fire decision well claim. Doctor around into budget nor.\nProve could generation project.'),
(58, 'Natasha Young', 'Provide be state rate fish. Outside break image especially under among.\nEnvironment summer sure agree box real quite. Story military condition fire happy science understand individual.\nDemocratic example environment. Without every little agreement how bring civil.'),
(59, 'Joel Hale', 'Something rock executive tough lot good scene. Project method religious stuff effort huge. Tax book work health first pattern have. Whatever skill here later since.\nEnvironment eight name age that well former. Information candidate above prevent check.'),
(60, 'Dawn Turner', 'Condition member pattern itself stay some. Table community itself yes west.\nShow know finally along life. Through provide detail series.\nOpen line instead herself. Maybe possible hand pressure focus feeling nearly wish. Evening kitchen dog wonder imagine way.');

-- --------------------------------------------------------

--
-- Table structure for table `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `canciones`
--

INSERT INTO `canciones` (`id`, `Nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Which identify.', 10, '22:07:27', '1971-01-29', 0, 'https://picsum.photos/750/760'),
(2, 'Recognize something.', 5, '17:54:01', '2016-03-21', 0, 'https://picsum.photos/221/837'),
(3, 'Among identify huge measure.', 11, '01:33:09', '2006-10-31', 0, 'https://dummyimage.com/534x534'),
(4, 'Expert we.', 17, '17:34:08', '1986-12-23', 0, 'https://dummyimage.com/460x916'),
(5, 'Personal.', 13, '09:53:59', '1984-12-14', 0, 'https://placekitten.com/658/484'),
(6, 'Believe ten large.', 5, '03:17:53', '2017-11-04', 0, 'https://picsum.photos/431/714'),
(7, 'Military ok foot.', 13, '14:43:09', '1984-05-29', 1, 'https://picsum.photos/912/449'),
(8, 'Task.', 14, '03:15:33', '1986-12-10', 0, 'https://placekitten.com/570/479'),
(9, 'Couple near city.', 4, '12:50:34', '1992-01-04', 0, 'https://placekitten.com/369/241'),
(10, 'Particular data bag.', 17, '14:10:46', '2000-11-13', 0, 'https://dummyimage.com/84x450'),
(11, 'Budget.', 6, '00:46:31', '2004-08-13', 1, 'https://picsum.photos/572/880'),
(12, 'Mind home.', 13, '09:00:04', '1992-07-06', 1, 'https://dummyimage.com/78x815'),
(13, 'Admit rest research ask.', 3, '19:57:10', '1992-08-18', 0, 'https://dummyimage.com/48x163'),
(14, 'Entire.', 12, '12:56:56', '2021-08-03', 0, 'https://dummyimage.com/534x611'),
(15, 'Peace couple feeling.', 18, '19:06:04', '1973-03-21', 1, 'https://picsum.photos/568/857'),
(16, 'Later rich idea.', 17, '09:23:38', '1986-12-17', 0, 'https://picsum.photos/391/561'),
(17, 'Set follow.', 18, '03:10:55', '1970-04-06', 0, 'https://placekitten.com/505/162'),
(18, 'Ahead professional.', 6, '22:45:12', '2014-03-23', 0, 'https://dummyimage.com/716x705'),
(19, 'Will under.', 3, '06:58:23', '1997-04-30', 1, 'https://dummyimage.com/1000x359'),
(20, 'About.', 8, '18:30:13', '2001-07-25', 0, 'https://picsum.photos/695/222'),
(21, 'Cover energy.', 8, '20:55:37', '1985-12-12', 1, 'https://picsum.photos/700/793'),
(22, 'Do.', 5, '17:29:37', '1984-02-12', 0, 'https://picsum.photos/409/887'),
(23, 'Wear campaign choose.', 17, '18:24:29', '1986-07-23', 1, 'https://dummyimage.com/1004x576'),
(24, 'Action accept she.', 15, '01:13:57', '1987-12-18', 0, 'https://placekitten.com/914/607'),
(25, 'Star where draw.', 6, '09:02:37', '1981-09-19', 1, 'https://placekitten.com/586/789'),
(26, 'Camera bill.', 6, '06:34:09', '1997-05-31', 1, 'https://dummyimage.com/428x527'),
(27, 'Present.', 18, '07:37:14', '1990-04-16', 0, 'https://picsum.photos/184/699'),
(28, 'Can difficult.', 4, '01:52:19', '1971-11-27', 1, 'https://picsum.photos/69/598'),
(29, 'Dog amount.', 7, '16:01:57', '2009-12-21', 0, 'https://dummyimage.com/376x554'),
(30, 'As right.', 17, '01:53:19', '1973-06-29', 1, 'https://placekitten.com/640/156'),
(31, 'Kitchen charge.', 15, '01:10:02', '2017-05-16', 1, 'https://placekitten.com/423/229'),
(32, 'Evening easy.', 6, '04:47:52', '2008-07-28', 1, 'https://picsum.photos/1000/854'),
(33, 'Gas interest.', 15, '10:44:20', '1992-09-29', 0, 'https://picsum.photos/404/473'),
(34, 'Certainly let media sport.', 15, '20:31:54', '2002-08-13', 0, 'https://dummyimage.com/52x993'),
(35, 'Character try window.', 15, '08:39:05', '1994-06-01', 1, 'https://picsum.photos/540/387'),
(36, 'Operation with.', 4, '15:34:36', '2010-11-11', 0, 'https://picsum.photos/809/1008'),
(37, 'Truth nearly community.', 14, '06:59:09', '2023-06-24', 0, 'https://picsum.photos/829/739'),
(38, 'Speech money through.', 4, '00:42:02', '2000-05-26', 1, 'https://picsum.photos/44/44'),
(39, 'Determine last today.', 9, '13:01:01', '2006-09-28', 1, 'https://picsum.photos/498/665'),
(40, 'Receive general style.', 12, '15:27:12', '2023-11-03', 0, 'https://dummyimage.com/856x246'),
(41, 'Mrs draw money.', 7, '21:19:55', '1988-08-22', 1, 'https://picsum.photos/692/982'),
(42, 'Company check nature.', 9, '03:18:58', '1986-06-12', 1, 'https://placekitten.com/699/608'),
(43, 'Role character.', 14, '02:38:36', '1976-07-19', 1, 'https://picsum.photos/784/983'),
(44, 'Home more story.', 13, '15:47:12', '2000-11-12', 0, 'https://dummyimage.com/310x241'),
(45, 'Both section.', 11, '18:53:52', '2001-08-31', 0, 'https://dummyimage.com/67x265'),
(46, 'Source thousand.', 9, '15:48:40', '1973-07-07', 1, 'https://placekitten.com/839/995'),
(47, 'Meeting beautiful.', 13, '23:28:17', '2014-05-08', 0, 'https://picsum.photos/223/243'),
(48, 'Find.', 15, '05:19:51', '1985-11-18', 0, 'https://dummyimage.com/787x330'),
(49, 'Worry event.', 12, '02:34:15', '1970-06-06', 0, 'https://placekitten.com/246/378'),
(50, 'Store.', 14, '20:43:00', '1992-07-16', 1, 'https://picsum.photos/813/674'),
(51, 'Water individual deep.', 18, '17:52:13', '1985-02-08', 0, 'https://placekitten.com/265/412'),
(52, 'Indeed white.', 15, '22:52:18', '1990-09-07', 1, 'https://dummyimage.com/387x672'),
(53, 'Consumer matter war art.', 10, '16:06:16', '1999-10-24', 1, 'https://dummyimage.com/674x172'),
(54, 'End manager.', 16, '09:39:52', '1996-03-18', 1, 'https://placekitten.com/467/486'),
(55, 'Coach wife.', 8, '13:14:16', '2013-08-24', 0, 'https://dummyimage.com/317x688'),
(56, 'Edge responsibility.', 10, '01:52:36', '2000-11-17', 1, 'https://placekitten.com/348/275'),
(57, 'And day.', 8, '07:21:34', '1988-11-27', 0, 'https://dummyimage.com/706x997'),
(58, 'May.', 15, '10:40:17', '2022-12-28', 0, 'https://dummyimage.com/984x431'),
(59, 'Catch maintain attention.', 15, '16:41:05', '1986-10-25', 1, 'https://placekitten.com/737/425'),
(60, 'Yard pick same.', 14, '07:39:03', '1976-07-14', 1, 'https://placekitten.com/789/725'),
(61, 'Receive close Congress.', 14, '13:38:24', '2003-11-07', 0, 'https://placekitten.com/232/624'),
(62, 'You.', 16, '12:15:47', '1999-05-17', 1, 'https://placekitten.com/22/495'),
(63, 'My raise list.', 3, '11:51:21', '2016-10-31', 0, 'https://placekitten.com/39/958'),
(64, 'Goal trouble.', 18, '19:22:59', '2005-01-23', 1, 'https://placekitten.com/326/834'),
(65, 'Discussion mention chair.', 15, '09:48:45', '2019-11-05', 1, 'https://picsum.photos/819/697'),
(66, 'Describe sing feeling often.', 11, '18:32:19', '1978-05-12', 1, 'https://dummyimage.com/689x585'),
(67, 'Director series.', 3, '00:51:08', '1980-09-27', 0, 'https://placekitten.com/343/593'),
(68, 'Fight parent.', 17, '23:25:05', '1970-02-02', 1, 'https://dummyimage.com/1000x12'),
(69, 'Resource idea girl.', 9, '16:09:09', '2022-06-21', 1, 'https://picsum.photos/180/372'),
(70, 'Tv market.', 5, '18:37:37', '2005-04-04', 1, 'https://placekitten.com/250/55'),
(71, 'Green play professor.', 5, '07:55:54', '2007-11-12', 1, 'https://placekitten.com/193/831'),
(72, 'That father.', 7, '01:25:24', '1993-07-02', 1, 'https://picsum.photos/75/1'),
(73, 'Base government past.', 5, '02:05:37', '1973-03-25', 0, 'https://picsum.photos/850/905'),
(74, 'Service manager possible.', 6, '04:34:31', '1975-03-01', 0, 'https://placekitten.com/526/580'),
(75, 'Focus most clearly.', 11, '04:41:24', '2010-03-11', 0, 'https://picsum.photos/666/426'),
(76, 'Chair positive anyone.', 7, '07:58:22', '1978-09-10', 0, 'https://dummyimage.com/367x1001'),
(77, 'Yeah bed our cell.', 12, '12:39:41', '2022-05-02', 0, 'https://placekitten.com/532/540'),
(78, 'Third defense group.', 18, '16:43:11', '1987-02-21', 0, 'https://picsum.photos/1023/385'),
(79, 'Purpose my.', 9, '16:00:08', '2003-09-22', 1, 'https://picsum.photos/365/631'),
(80, 'Color war interview.', 17, '09:46:33', '2000-05-20', 0, 'https://dummyimage.com/79x1015'),
(81, 'Serious.', 18, '15:35:08', '2010-02-07', 1, 'https://picsum.photos/710/171'),
(82, 'Thing.', 17, '00:48:41', '1997-09-11', 0, 'https://placekitten.com/478/1000'),
(83, 'Goal.', 10, '11:16:58', '1971-02-20', 1, 'https://picsum.photos/60/161'),
(84, 'Truth water forward.', 15, '22:17:52', '2003-03-20', 0, 'https://dummyimage.com/204x338'),
(85, 'Easy policy as.', 4, '07:53:01', '1987-02-13', 0, 'https://picsum.photos/989/82'),
(86, 'Onto perform area.', 17, '04:31:19', '2020-07-11', 0, 'https://placekitten.com/79/638'),
(87, 'Hotel third.', 18, '21:02:01', '2000-08-15', 1, 'https://dummyimage.com/390x934'),
(88, 'Free can.', 4, '22:58:19', '2008-11-21', 0, 'https://picsum.photos/77/502'),
(89, 'Upon stage.', 11, '12:16:25', '2016-12-06', 1, 'https://placekitten.com/976/456'),
(90, 'College fall.', 7, '07:48:54', '2023-07-26', 0, 'https://dummyimage.com/242x284'),
(91, 'Exactly agent.', 15, '21:34:55', '2000-07-14', 1, 'https://picsum.photos/11/203'),
(92, 'Form any game design.', 5, '19:06:42', '2018-09-22', 0, 'https://placekitten.com/688/452'),
(93, 'Able course space.', 14, '03:30:30', '1999-08-16', 1, 'https://picsum.photos/570/87'),
(94, 'Between during food.', 9, '03:24:27', '2011-07-07', 1, 'https://dummyimage.com/88x600'),
(95, 'Town bed serious.', 7, '06:25:06', '1997-09-08', 1, 'https://placekitten.com/17/405'),
(96, 'National respond.', 16, '09:27:03', '2010-03-26', 1, 'https://dummyimage.com/773x783'),
(97, 'Buy trouble.', 15, '08:56:12', '1980-09-16', 0, 'https://dummyimage.com/763x978'),
(98, 'Account beyond future make.', 16, '23:37:04', '1985-12-21', 0, 'https://picsum.photos/607/367'),
(99, 'Forget cause.', 15, '14:50:52', '1986-07-12', 1, 'https://dummyimage.com/184x940'),
(100, 'Mouth themselves huge.', 6, '13:36:57', '1970-01-08', 1, 'https://dummyimage.com/172x789'),
(101, 'Positive list firm.', 7, '08:32:12', '1991-08-06', 1, 'https://dummyimage.com/538x229'),
(102, 'Concern responsibility sure least.', 12, '02:04:29', '1997-04-30', 1, 'https://dummyimage.com/123x39'),
(103, 'General building.', 16, '22:41:00', '1981-10-12', 0, 'https://picsum.photos/465/870'),
(104, 'Reflect natural treat.', 11, '22:16:44', '1987-06-02', 1, 'https://placekitten.com/314/857'),
(105, 'Us either charge.', 6, '19:28:01', '1980-03-27', 0, 'https://placekitten.com/885/666'),
(106, 'Message get.', 9, '15:56:49', '2001-06-06', 0, 'https://placekitten.com/91/206'),
(107, 'Make member kid.', 4, '19:23:58', '2002-02-08', 1, 'https://placekitten.com/142/389'),
(108, 'Sort push.', 17, '21:19:52', '2011-12-09', 0, 'https://placekitten.com/95/861'),
(109, 'Father material.', 6, '14:47:25', '1973-05-19', 0, 'https://picsum.photos/131/53'),
(110, 'Natural fact keep.', 5, '14:20:47', '2013-11-27', 1, 'https://dummyimage.com/48x883'),
(111, 'Opportunity financial suggest then.', 3, '10:26:58', '1982-01-12', 1, 'https://picsum.photos/597/45'),
(112, 'Yet rock.', 3, '10:50:23', '2004-10-27', 0, 'https://dummyimage.com/1008x705'),
(113, 'Risk west feel.', 13, '15:12:33', '1982-05-06', 1, 'https://picsum.photos/716/439'),
(114, 'Hospital agency.', 14, '12:56:37', '2022-12-19', 1, 'https://picsum.photos/859/134'),
(115, 'Model reason family.', 12, '17:49:00', '2011-01-07', 1, 'https://placekitten.com/287/148'),
(116, 'Court senior door.', 6, '13:46:48', '2020-04-18', 0, 'https://dummyimage.com/827x799'),
(117, 'Movement now.', 3, '05:45:48', '1970-08-17', 0, 'https://picsum.photos/432/722'),
(118, 'Hundred cultural.', 16, '01:28:29', '1985-10-23', 1, 'https://picsum.photos/666/191'),
(119, 'South stuff animal walk.', 4, '11:51:21', '1975-01-22', 0, 'https://dummyimage.com/710x643'),
(120, 'Learn carry both.', 8, '18:10:36', '1979-01-17', 1, 'https://placekitten.com/106/711'),
(121, 'Hundred few.', 7, '21:18:02', '1995-01-11', 0, 'https://dummyimage.com/992x639'),
(122, 'Matter both.', 14, '20:08:03', '1992-03-26', 0, 'https://dummyimage.com/63x455'),
(123, 'Personal seven.', 14, '12:07:29', '2007-05-25', 1, 'https://placekitten.com/262/988'),
(124, 'Pm energy.', 18, '17:44:37', '2002-02-10', 1, 'https://placekitten.com/653/327'),
(125, 'Purpose cup speak.', 4, '12:20:31', '2021-04-01', 0, 'https://picsum.photos/800/853'),
(126, 'Team clear study.', 6, '19:02:18', '1979-03-20', 1, 'https://picsum.photos/287/586'),
(127, 'Religious economic any tell.', 4, '10:47:02', '2019-06-19', 0, 'https://placekitten.com/40/683'),
(128, 'Party seat.', 3, '15:21:11', '1973-04-17', 1, 'https://dummyimage.com/100x18'),
(129, 'Method project us.', 4, '04:21:10', '1995-02-22', 0, 'https://placekitten.com/1022/719'),
(130, 'Thank direction.', 14, '19:34:49', '1974-01-02', 0, 'https://picsum.photos/464/953'),
(131, 'Finish friend.', 4, '16:16:51', '2017-02-03', 1, 'https://dummyimage.com/592x508'),
(132, 'Financial there foot.', 15, '16:25:46', '2012-06-06', 0, 'https://placekitten.com/658/901'),
(133, 'Great now.', 7, '23:49:39', '2001-12-26', 0, 'https://picsum.photos/128/194'),
(134, 'Degree nation.', 3, '19:57:44', '1982-07-28', 0, 'https://placekitten.com/49/470'),
(135, 'Professor act.', 18, '14:59:41', '1978-11-11', 1, 'https://picsum.photos/528/76'),
(136, 'Ask machine.', 4, '11:50:41', '1992-06-07', 0, 'https://picsum.photos/398/720'),
(137, 'Appear physical serious camera.', 5, '04:44:19', '2004-11-22', 1, 'https://picsum.photos/402/426'),
(138, 'General machine.', 16, '20:40:37', '2002-10-06', 0, 'https://placekitten.com/478/518'),
(139, 'Age.', 9, '19:13:35', '1986-10-14', 1, 'https://dummyimage.com/930x100'),
(140, 'Hair space finally.', 15, '22:02:56', '1970-08-08', 1, 'https://dummyimage.com/74x369'),
(141, 'Present decision.', 12, '08:10:44', '1999-09-05', 0, 'https://placekitten.com/252/454'),
(142, 'Material girl fall.', 3, '10:03:56', '1978-11-05', 0, 'https://dummyimage.com/892x728'),
(143, 'Project music mind.', 10, '05:10:12', '1975-04-18', 0, 'https://placekitten.com/533/673'),
(144, 'Look reflect forget.', 11, '20:25:04', '1979-05-21', 0, 'https://placekitten.com/123/536'),
(145, 'Board again international.', 10, '18:41:23', '1974-08-30', 1, 'https://dummyimage.com/409x492'),
(146, 'Or individual.', 17, '12:18:15', '2011-04-05', 0, 'https://dummyimage.com/92x45'),
(147, 'Position trip.', 8, '21:25:45', '2010-02-05', 1, 'https://dummyimage.com/287x971'),
(148, 'Least evidence.', 3, '22:22:41', '1977-04-14', 1, 'https://dummyimage.com/570x177'),
(149, 'Customer employee.', 11, '23:26:27', '1975-08-27', 0, 'https://dummyimage.com/801x534'),
(150, 'Person take.', 18, '07:54:10', '2007-06-21', 0, 'https://placekitten.com/171/635');

-- --------------------------------------------------------

--
-- Table structure for table `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `canciones_id`) VALUES
(1, 65, 65),
(2, 34, 56),
(3, 36, 49),
(4, 58, 134),
(5, 34, 6),
(6, 52, 59),
(7, 59, 116),
(8, 63, 94),
(9, 42, 105),
(10, 42, 148),
(11, 48, 102),
(12, 29, 129),
(13, 45, 143),
(14, 24, 16),
(15, 64, 136),
(16, 72, 56),
(17, 76, 145),
(18, 45, 101),
(19, 65, 57),
(20, 30, 51),
(21, 59, 29),
(22, 52, 23),
(23, 41, 91),
(24, 24, 129),
(25, 67, 106),
(26, 73, 112),
(27, 61, 128),
(28, 47, 53),
(29, 48, 16),
(30, 33, 109);

-- --------------------------------------------------------

--
-- Table structure for table `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `generos`
--

INSERT INTO `generos` (`id`, `Nombre`) VALUES
(3, 'salsa'),
(4, 'rock'),
(5, 'meregue'),
(6, 'pop'),
(7, 'banda'),
(8, 'regueton'),
(9, 'reguee'),
(10, 'indie'),
(11, 'salsa'),
(12, 'rock'),
(13, 'meregue'),
(14, 'pop'),
(15, 'banda'),
(16, 'regueton'),
(17, 'reguee'),
(18, 'indie');

-- --------------------------------------------------------

--
-- Table structure for table `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Enjoy life.', 17.41),
(2, 'Like really.', 40.11),
(3, 'Section.', 34.61),
(4, 'Place.', 16.03),
(5, 'Determine.', 9.21),
(6, 'Can company.', 41.82),
(7, 'Rather goal.', 40.98),
(8, 'Community enter.', 47.42),
(9, 'Write.', 29.79),
(10, 'Both find.', 27.8),
(11, 'Condition.', 12.65),
(12, 'Want.', 5.67),
(13, 'Similar.', 31.55),
(14, 'Oil.', 18.78),
(15, 'Theory.', 11.04),
(16, 'Too.', 43.09),
(17, 'Executive thousand.', 37.26),
(18, 'Set structure.', 21.99),
(19, 'Yard.', 7.06),
(20, 'Sell.', 33.17),
(21, 'Media.', 11.77),
(22, 'Meeting share.', 14.39),
(23, 'Raise.', 42.63),
(24, 'Plant.', 14.24),
(25, 'Point third.', 38.84),
(26, 'Later during.', 38.89),
(27, 'Us natural.', 20.06),
(28, 'Interest.', 6.53),
(29, 'Natural speak.', 29.41),
(30, 'Professor.', 29.59);

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcanciones`, `descripcion`, `publico`) VALUES
(1, 'Hair television industry.', 59, '18:45:35', 4, 'Stage plant member customer boy. Generation physical federal interest morning.\nSummer record recently light myself weight one.', 0),
(2, 'Service money help arm.', 70, '03:33:44', 6, 'Drive though best price. Traditional help lawyer newspaper need. Also Congress set employee network it.\nGrow small seem ten good response. Television home edge create suddenly.', 1),
(3, 'Thus close huge.', 40, '05:50:41', 30, 'Keep across large now join. Democratic trip fill miss between range. Time number probably.\nAfter day change magazine tend ability book. Speech many success wide behind outside agree.', 1),
(4, 'Few.', 37, '18:06:07', 45, 'Receive health arm arm future. Region like stand read. Dinner project relate good him simply arm.\nCost manage detail tax product. Something knowledge particularly commercial.', 1),
(5, 'Final old bit.', 80, '22:42:26', 19, 'Building than interesting represent. Sport add Mr region morning upon. Drop nothing word agreement pressure white sea point.\nShort dog debate tax. Phone public your safe information population.', 0),
(6, 'Difficult however.', 76, '01:06:31', 10, 'Read future near tree sign she. Design note wall worker guess imagine girl little. Around before his network adult.', 1),
(7, 'Generation ever yard Democrat.', 68, '19:51:08', 17, 'Everyone bill rule chair listen. Tax tax ball then energy yet task. Idea compare recognize go product where. Fall hotel page.\nAccount young significant good expect identify. Reason eye born here.', 0),
(8, 'Order girl life.', 51, '21:17:52', 3, 'Rule official whether race. Employee our free attorney road eye office choose.', 1),
(9, 'Fight table.', 42, '11:46:51', 32, 'Herself evening trial even deep. Book point mention.\nSupport smile behind room. Line bit value use.', 1),
(10, 'Final major cup.', 53, '19:47:46', 23, 'Help nor Democrat compare staff culture major life. Dog glass suggest tree will. Good thought together bring more.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `playlistcanciones`
--

INSERT INTO `playlistcanciones` (`id`, `playlist_id`, `canciones_id`, `usuario_id`) VALUES
(1, 5, 103, 69),
(2, 7, 9, 51),
(3, 9, 38, 41),
(4, 7, 52, 59),
(5, 3, 147, 50),
(6, 3, 14, 48),
(7, 6, 88, 63),
(8, 4, 107, 69),
(9, 7, 25, 44),
(10, 4, 31, 34),
(11, 7, 138, 65),
(12, 8, 55, 41),
(13, 2, 135, 64),
(14, 8, 46, 21),
(15, 10, 12, 50),
(16, 2, 106, 51),
(17, 9, 130, 37),
(18, 4, 78, 49),
(19, 7, 136, 64),
(20, 1, 129, 38),
(21, 10, 129, 58),
(22, 7, 109, 70),
(23, 5, 73, 71),
(24, 5, 60, 57),
(25, 9, 72, 78),
(26, 8, 13, 79),
(27, 8, 100, 63),
(28, 5, 55, 25),
(29, 2, 40, 70),
(30, 9, 11, 28);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `Nombre`, `correo`, `membresia_id`) VALUES
(21, 'Eric Anderson', 'umiller@example.net', 5),
(22, 'Matthew Rodriguez', 'jessicahenderson@example.com', 7),
(23, 'Ashley Harrison', 'elliottnicholas@example.net', 10),
(24, 'Nancy Gordon', 'wrussell@example.org', 7),
(25, 'Alexander Wilson', 'hmorris@example.org', 8),
(26, 'Tyler Garcia MD', 'urogers@example.net', 7),
(27, 'Brian Stevens', 'moorelaura@example.net', 10),
(28, 'Jose Leonard', 'james74@example.net', 1),
(29, 'Dawn Davis', 'osingh@example.org', 8),
(30, 'Jennifer Martinez', 'tallen@example.com', 8),
(31, 'Lisa Ruiz', 'gina13@example.net', 10),
(32, 'Charles Lee', 'tracy38@example.com', 7),
(33, 'Michelle Wilson', 'briana75@example.net', 6),
(34, 'Zachary Hancock', 'garzadawn@example.org', 7),
(35, 'Angela Jimenez', 'msimon@example.net', 7),
(36, 'Laura Hernandez', 'aliciaturner@example.com', 7),
(37, 'Tracy Moore', 'wrightrebecca@example.org', 6),
(38, 'Scott Daugherty', 'waynegreen@example.net', 8),
(39, 'Daniel Wilson', 'frederick05@example.org', 1),
(40, 'Derek Carter', 'alexis25@example.net', 1),
(41, 'Jeanette Martinez', 'morganpena@example.com', 9),
(42, 'Alexandria Anderson', 'rlogan@example.net', 4),
(43, 'William Butler', 'williamsjames@example.org', 11),
(44, 'Gina Sanders', 'carly15@example.com', 18),
(45, 'Evan Peterson', 'hailey00@example.com', 1),
(46, 'Lisa Ellis', 'brandongonzalez@example.org', 8),
(47, 'Sean Harris IV', 'thomaskevin@example.com', 14),
(48, 'Kellie Ramos', 'ujackson@example.net', 1),
(49, 'Robert Young', 'andre24@example.com', 17),
(50, 'Sarah Miller', 'gibsonmatthew@example.net', 2),
(51, 'Mary Shannon', 'tracy93@example.org', 17),
(52, 'Cynthia Anderson', 'monroenicole@example.org', 9),
(53, 'Miguel Brown', 'gary31@example.com', 13),
(54, 'Andrew Lara', 'jasonbowen@example.com', 19),
(55, 'Jeffrey Cantrell', 'imartin@example.org', 5),
(56, 'Suzanne Miller', 'reiddiane@example.org', 19),
(57, 'Kristen Parker', 'uclark@example.net', 20),
(58, 'Daniel Carroll', 'christinehernandez@example.org', 18),
(59, 'Stephen Phillips', 'ldonaldson@example.org', 18),
(60, 'Kirk Buckley', 'rdiaz@example.com', 20),
(61, 'Daniel Werner', 'paul65@example.org', 30),
(62, 'Debbie Weaver', 'tracyrubio@example.net', 1),
(63, 'Wendy Reed', 'bakerdawn@example.net', 29),
(64, 'Ryan Gonzalez', 'lauren40@example.org', 29),
(65, 'Raymond Watson', 'lfreeman@example.org', 2),
(66, 'Teresa Cantrell', 'beth84@example.org', 11),
(67, 'Jessica Smith', 'annagonzales@example.com', 15),
(68, 'Melissa Briggs', 'stephanie49@example.net', 14),
(69, 'Lynn Jones', 'kristencarter@example.net', 4),
(70, 'Aaron Chapman', 'michael46@example.com', 5),
(71, 'Courtney Peterson', 'edward99@example.net', 22),
(72, 'Lauren Gonzales', 'russell31@example.net', 12),
(73, 'Christopher Patrick', 'barrettchristopher@example.net', 24),
(74, 'Brittney Cox', 'rivasjared@example.org', 2),
(75, 'Joyce Thomas', 'francisrandy@example.org', 1),
(76, 'Brandon Perez', 'mooreelizabeth@example.com', 29),
(77, 'Ricky Price', 'kevingordon@example.org', 17),
(78, 'Christine Martin', 'jennifer60@example.com', 28),
(79, 'James Walsh', 'mark57@example.com', 26),
(80, 'Billy Harper', 'blakehill@example.com', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indexes for table `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indexes for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indexes for table `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artisacanciones`
--
ALTER TABLE `artisacanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD CONSTRAINT `artisacanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artisacanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Constraints for table `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Constraints for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
