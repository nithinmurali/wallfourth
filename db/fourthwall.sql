-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2014 at 12:38 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fourthwall`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `for_id` int(11) NOT NULL,
  `for_type` varchar(50) NOT NULL COMMENT 'reviews,events',
  `status` tinyint(1) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `time`, `email`, `comment`, `for_id`, `for_type`, `status`) VALUES
(1, 'nithin', '2014-04-22 04:28:13', '', 'dummy dummy dummy dumy dummy dummy dummy dumy dummy dummy dummy dumy dummy dummy dummy dumy', 2, 'reviews', 1),
(2, 'dumy name ', '2014-04-23 10:17:16', '', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable.', 2, 'events', 0),
(3, 'name', '2014-04-25 10:00:00', 'hkhkahkf@gmail', 'lskdjfklas fhafhsdiufhak kshfdlkajf ;lakjalfj', 2, 'reviews', 1),
(4, 'dkjfakkjshfka', '2014-04-07 05:08:19', 'skdjhfkajh@hddj.com', 'djfgjhte geufufj fiugsufh fusgfuysfeuih fudgsuyfagfj futuy sduhfbjks fuiast ffhekjfheu fifhi asgdfoiuyiauwehfk hsfiuyasi ufjaksdgf uag fiuashdfjks hadfuo aeuwfakjsfguaisgf', 2, 'events', 1),
(9, ' hihih', '2014-04-08 02:57:08', 'thuenemail@jhsdj', 'hafh khthiuheka fhkshfiuejahfkhfysheoirhkejhak', 1, 'events', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `descr` text NOT NULL,
  `content` mediumtext,
  `dated` date DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='store all events' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`ID`, `name`, `descr`, `content`, `dated`, `type`) VALUES
(1, '  commodo vitae', 'Tellus commodo vitae urna natoque augue. Enim id. Aptent mattis rutrum, magnis quisque per sodales habitasse viverra tortor, nascetur odio nibh. Auctor curae;. Augue morbi suspendisse eu massa. Senectus consectetuer.', 'Mi neque pretium quam purus mus congue montes morbi inceptos rhoncus in, curae; parturient dis libero justo. Blandit massa posuere pede inceptos sem eget vehicula sollicitudin. Cum quam luctus, purus non habitant eu feugiat vivamus mattis. Tristique quis luctus lorem, quisque hymenaeos. Nostra. Sit pretium, laoreet cubilia proin suspendisse commodo auctor, fringilla integer proin natoque metus nulla dis venenatis sed scelerisque tellus amet pretium fringilla egestas. Ipsum erat semper lacinia vulputate imperdiet magnis odio scelerisque vehicula nonummy tellus bibendum mi porta, eros suscipit urna, laoreet sagittis.<br><br>Ridiculus arcu magna ipsum montes rutrum. Et litora viverra. Tellus imperdiet mus tincidunt maecenas purus at. Id ultrices mattis lorem tincidunt lobortis netus cum fames praesent varius cubilia nascetur ultricies vestibulum praesent class donec sapien urna interdum aliquam, ut molestie fermentum. Lobortis lacinia lacus tristique. Magna. Neque diam ante molestie. Integer tempus fusce class adipiscing, eros mi cursus. Elit phasellus cum aptent augue penatibus egestas. Vulputate ultricies aliquet hendrerit tincidunt. Suspendisse auctor dictum cras feugiat dictumst. Ad, ut. Urna libero.<br><br>Adipiscing consectetuer justo curabitur hymenaeos auctor massa et faucibus ad nonummy hymenaeos morbi, gravida taciti at, hymenaeos elit egestas hymenaeos. Condimentum, congue. Eros habitant adipiscing natoque nibh tristique, ornare massa imperdiet. Turpis torquent sed.', '2014-04-08', 1),
(2, ' Cursus nam', 'Eu faucibus augue. Cursus nam nec litora felis et parturient. Litora purus litora cras dictumst ad. Sociis mus bibendum iaculis ridiculus. Justo laoreet risus imperdiet mattis. Arcu odio. Cursus potenti.', 'Nec. Ante maecenas elementum vestibulum euismod tristique senectus. Nisl montes. Nunc. Orci pharetra molestie dignissim, ullamcorper neque urna, montes sapien dolor potenti varius lorem nam eleifend orci congue natoque lacus. Amet luctus auctor at sociosqu pretium amet aliquet dolor ultrices ad enim pede. Torquent Arcu pellentesque bibendum bibendum fames neque felis nam magnis maecenas nisl urna a venenatis fusce turpis litora eros penatibus leo turpis nisl gravida cras ullamcorper auctor. Vivamus tempor eget. Cum.<br><br>Eu. Quis curae; sagittis sagittis pulvinar semper sollicitudin metus donec eros semper turpis lectus sapien. Odio leo. Suspendisse convallis sociosqu. Blandit enim. Libero nostra facilisis sapien suspendisse Tempus leo natoque fermentum posuere fermentum. Morbi integer congue dignissim accumsan, amet malesuada malesuada dictum porttitor natoque sed lobortis. Non nulla litora nam cubilia est quam.<br><br>Morbi mauris gravida lorem platea habitasse dictum leo viverra scelerisque cum litora volutpat amet nullam interdum aliquam scelerisque. Eget malesuada volutpat suscipit proin nec vitae gravida turpis, phasellus dapibus posuere primis malesuada, urna habitant ullamcorper lobortis quisque sollicitudin metus euismod tristique nulla pede a laoreet, suscipit euismod sit tortor porttitor proin nullam, cursus Ut class vulputate hymenaeos fames dis sagittis convallis hymenaeos commodo quisque, lacus Integer tortor. Hymenaeos mattis. Nulla vehicula rutrum orci.', '2014-04-16', 1),
(3, ' faucibus augue', 'Eu faucibus augue. Cursus nam nec litora felis et parturient. Litora purus litora cras dictumst ad. Sociis mus bibendum iaculis ridiculus. Justo laoreet risus imperdiet mattis. Arcu odio. Cursus potenti.', 'Nec. Ante maecenas elementum vestibulum euismod tristique senectus. Nisl montes. Nunc. Orci pharetra molestie dignissim, ullamcorper neque urna, montes sapien dolor potenti varius lorem nam eleifend orci congue natoque lacus. Amet luctus auctor at sociosqu pretium amet aliquet dolor ultrices ad enim pede. Torquent Arcu pellentesque bibendum bibendum fames neque felis nam magnis maecenas nisl urna a venenatis fusce turpis litora eros penatibus leo turpis nisl gravida cras ullamcorper auctor. Vivamus tempor eget. Cum.<br><br>Eu. Quis curae; sagittis sagittis pulvinar semper sollicitudin metus donec eros semper turpis lectus sapien. Odio leo. Suspendisse convallis sociosqu. Blandit enim. Libero nostra facilisis sapien suspendisse Tempus leo natoque fermentum posuere fermentum. Morbi integer congue dignissim accumsan, amet malesuada malesuada dictum porttitor natoque sed lobortis. Non nulla litora nam cubilia est quam.<br><br>Morbi mauris gravida lorem platea habitasse dictum leo viverra scelerisque cum litora volutpat amet nullam interdum aliquam scelerisque. Eget malesuada volutpat suscipit proin nec vitae gravida turpis, phasellus dapibus posuere primis malesuada, urna habitant ullamcorper lobortis quisque sollicitudin metus euismod tristique nulla pede a laoreet, suscipit euismod sit tortor porttitor proin nullam, cursus Ut class vulputate hymenaeos fames dis sagittis convallis hymenaeos commodo quisque, lacus Integer tortor. Hymenaeos mattis. Nulla vehicula rutrum orci.', '2014-04-23', 1),
(4, ' ullamcorper ', 'Donec varius ultrices nec duis scelerisque suspendisse. Vivamus. Mus morbi. Arcu porttitor volutpat diam morbi vel leo dictumst aptent ullamcorper auctor dis habitant, tortor. Phasellus integer potenti sed vitae erat.', 'Ullamcorper ante lacinia aliquet Porttitor integer. Magnis tellus eget primis, parturient tempus ultrices, dignissim turpis molestie accumsan inceptos penatibus aliquet hac lacinia tincidunt tempus. Montes mollis taciti cubilia ac vitae augue placerat curabitur metus justo nec turpis. Libero at, proin vestibulum duis natoque ac ultricies feugiat tortor. Quisque est volutpat consectetuer ad, dictumst. Nec ornare, orci praesent nisl. Porta morbi vulputate aliquam fames velit. Sapien felis adipiscing lacinia fames Nam vitae interdum sapien. Sollicitudin urna mus. Morbi aliquam congue justo luctus. Justo non dapibus Inceptos integer metus odio diam. Porttitor hendrerit torquent scelerisque arcu sollicitudin rhoncus. Nam praesent fames hac.', '2014-04-19', 1),
(5, ' kfhks sdkhfafhk', 'Velit. Orci ligula sodales Placerat. Torquent curae; aliquam neque auctor curae; pulvinar amet. Lorem imperdiet. Ullamcorper per potenti facilisi elit tellus vulputate tempus magnis nec sollicitudin facilisi hendrerit tempus tellus.', 'Rhoncus nullam ante nisl suscipit ornare feugiat pharetra fringilla convallis et, justo. Sagittis, senectus sit torquent massa in aliquet convallis proin praesent nonummy molestie fermentum litora viverra mauris mollis gravida mattis placerat morbi in. Semper nibh nunc accumsan. Sollicitudin ultricies. Cursus ad fermentum a parturient dictumst hac aenean facilisis. Proin Tempor sociosqu. Condimentum sociis mus scelerisque turpis torquent nam. Curae;, neque et taciti fringilla pretium. Quam purus dictum nisi sem magnis. Nulla. Ad euismod fermentum quisque, donec cubilia torquent Facilisi volutpat orci donec aptent laoreet porttitor. Elit viverra blandit rhoncus Volutpat nec sollicitudin elementum euismod dolor hac luctus condimentum semper.', '2014-04-11', 2),
(6, ' Maecenas senectus', 'Maecenas senectus netus pellentesque pharetra sapien praesent, diam, feugiat bibendum amet tristique eget risus interdum duis duis nec pulvinar massa arcu posuere nostra. Scelerisque aptent. Tellus adipiscing vel. Tristique Dignissim.', 'Maecenas senectus netus pellentesque pharetra sapien praesent, diam, feugiat bibendum amet tristique eget risus interdum duis duis nec pulvinar massa arcu posuere nostra. Scelerisque aptent. Tellus adipiscing vel. Tristique Dignissim.<br>Maecenas senectus netus pellentesque pharetra sapien praesent, diam, feugiat bibendum amet tristique eget risus interdum duis duis nec pulvinar massa arcu posuere nostra. Scelerisque aptent. Tellus adipiscing vel. Tristique Dignissim.<br>Maecenas senectus netus pellentesque pharetra sapien praesent, diam, feugiat bibendum amet tristique eget risus interdum duis duis nec pulvinar massa arcu posuere nostra. Scelerisque aptent. Tellus adipiscing vel. Tristique Dignissim.', '2014-04-05', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` mediumtext,
  `dated` date DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='stores reviews' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`ID`, `name`, `author`, `content`, `dated`, `type`) VALUES
(1, '  morbi venenatis', ' Fringilla magn', 'Nec curabitur quam felis luctus tempor platea torquent suspendisse tempor fringilla conubia. Cras taciti. Rutrum sollicitudin fames. Montes tempor cum. Nascetur eget parturient nunc, feugiat egestas Integer dignissim accumsan. Viverra facilisi sociis ultricies ad augue praesent gravida consectetuer a arcu dictum blandit neque.\r\n\r\nNibh libero nam. Fringilla magna sociis mauris parturient elementum mauris. Class ligula fermentum habitant praesent. Etiam netus. Lacus molestie morbi venenatis id suspendisse habitasse molestie felis potenti id.\r\n\r\nMalesuada aenean ipsum facilisi ante bibendum suscipit facilisi est posuere libero mollis. Diam class pulvinar phasellus fusce. Enim. Penatibus quisque commodo. Inceptos aliquam platea a potenti phasellus lacus tempor.', '2014-04-09', 1),
(2, ' aliquet ', 'torquent ullamcorper', 'Pellentesque etiam ad nulla lobortis, pretium libero habitant porttitor cursus pretium integer quis dignissim Nascetur vestibulum urna blandit consequat ante mattis egestas tempus tellus placerat dui mauris nostra per fames.\r\n\r\nDolor tortor ultricies torquent ullamcorper curabitur faucibus vitae taciti est, luctus imperdiet duis odio dolor magnis tempus platea elementum iaculis nam volutpat dictumst aliquam a gravida venenatis ullamcorper augue ac ad vehicula imperdiet erat nostra tincidunt dictum. Ac id aliquet feugiat. Ac, ullamcorper nostra senectus morbi porttitor bibendum praesent elementum senectus viverra sociis. Lorem diam. Sociosqu sollicitudin. Placerat quam primis. Vestibulum sagittis. Natoque. Fermentum at ante. Dolor urna odio. Mauris.', '2014-04-29', 1),
(3, ' pretium. Porta', ' Diam elementum', 'Praesent massa. Diam elementum justo dolor pretium. Porta faucibus. Pharetra leo. Risus, lectus. Ullamcorper. Aliquam eros Iaculis per posuere hac viverra facilisis semper platea mattis. Netus vivamus potenti ridiculus, velit. Leo. Duis. Ultrices nec viverra etiam morbi lorem hymenaeos vitae ridiculus fusce. Dictumst nisl eros primis fringilla. Platea proin Malesuada natoque praesent egestas. Lacinia leo augue tristique vehicula ullamcorper fusce euismod lacus, eu sed aptent Montes eget netus metus a interdum nunc nostra suscipit parturient sociis mauris neque inceptos elit eget. Tincidunt mollis volutpat lorem feugiat inceptos Vehicula eu, est Tincidunt in torquent id. Ut vitae Odio habitasse velit tristique.', '2014-04-11', 1),
(4, ' massa sempe', ' hymenaeos nostra', 'Curabitur nulla tristique mauris tristique accumsan eros conubia aliquet nibh amet hac phasellus blandit pretium curabitur eros id conubia eleifend non orci ultrices sapien Curae; nulla hac taciti faucibus facilisis odio rutrum dictumst. Cras dolor et magnis sem conubia dolor elementum. Adipiscing magna.\r\n\r\nMagna Placerat suscipit ipsum Aliquam magnis. Dis. Nulla, phasellus luctus ultricies hac class odio consequat lacus et pede proin dolor pulvinar litora praesent lorem egestas aliquet arcu hac. Lorem neque tristique laoreet torquent quam montes fames justo gravida.\r\n\r\nArcu. Porttitor sociis porttitor lobortis enim vivamus porttitor fusce odio diam lacus, feugiat fames quisque lacus rutrum aptent tincidunt arcu nonummy magnis. Taciti luctus sapien feugiat ad felis viverra cubilia non convallis nullam etiam nullam phasellus. Quisque. Pharetra parturient quis fringilla enim vitae est, nonummy hymenaeos nostra elit lacinia ultrices massa semper aliquet pretium ac pede habitant lectus, in ipsum orci magnis. Venenatis fermentum elementum nisl elit dis vulputate dolor.\r\n\r\nElementum scelerisque ullamcorper quis venenatis, parturient varius diam nunc sem senectus feugiat bibendum aliquam magnis Quam ut semper rutrum neque dictum etiam sit massa. Dictumst purus egestas nunc, aenean fermentum dictum ante ac iaculis fringilla aliquam bibendum primis elit egestas netus. Torquent lectus tortor eget sollicitudin id. Eros senectus.', '2014-04-19', 2),
(5, ' elementum, ultrices', ' Lacinia alique', 'Turpis cubilia magnis iaculis. Posuere. Vestibulum. Conubia et porttitor turpis Sagittis duis volutpat, tellus, integer sit mus erat. Lacinia aliquet duis nascetur inceptos, ullamcorper mauris tempor taciti fames curabitur vestibulum mollis risus, elementum, ultrices nisl ornare pretium. Eleifend erat montes. Dictumst suspendisse libero posuere litora rutrum dolor gravida. Faucibus sociosqu mauris ornare erat nisi auctor quisque eleifend, velit non lorem velit. Suscipit odio vulputate magnis rhoncus, porta congue aptent vehicula lacinia arcu ac rhoncus curae; taciti dapibus etiam elit ac sociosqu primis risus. Eget congue curae; habitasse auctor facilisi metus metus blandit Laoreet pretium sem dapibus morbi. Faucibus per at.', '2014-04-12', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
