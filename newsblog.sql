-- phpMyAdmin SQL Dump
-- version 2.7.0-pl1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Mercredi 05 Mars 2008 à 13:42
-- Version du serveur: 5.0.18
-- Version de PHP: 5.1.1
-- 
-- Base de données: `newsblog`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `articles`
-- 

CREATE TABLE `articles` (
  `id_articles` int(11) NOT NULL auto_increment,
  `titre` varchar(150) collate latin1_general_ci NOT NULL,
  `abstract` varchar(100) collate latin1_general_ci NOT NULL,
  `texte` text collate latin1_general_ci NOT NULL,
  `date` date NOT NULL,
  `auteur` varchar(100) collate latin1_general_ci NOT NULL,
  `id_cat` int(11) NOT NULL,
  PRIMARY KEY  (`id_articles`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

-- 
-- Contenu de la table `articles`
-- 

INSERT INTO `articles` VALUES (1, 'Un lycéen en assises à Evry pour avoir poignardé son enseignante à Etampes', 'Le procès d''un jeune homme de 20 ans, Kévani Wansale, jugé pour tentative d''assassinat pour avoir po', 'Le procès d''un jeune homme de 20 ans, Kévani Wansale, jugé pour tentative d''assassinat pour avoir poignardé son enseignante Karen Montet-Toutain en plein cours le 16 décembre 2005 au lycée Louis-Blériot d''Etampes (Essonne), s''ouvre mercredi devant la cour d''assises de l''Essonne.\r\nLa veille des vacances de Noël, la professeure d''arts appliqués avait été agressée de plusieurs coups de couteau, dont l''un la blessera très grièvement au ventre.\r\nQualifiant les faits de tentative d''homicide volontaire avec préméditation, passibles de la réclusion criminelle à perpétuité, l''accusation s''appuie sur différents témoignages de camarades de l''accusé accréditant la thèse d''un geste préparé. Propos en partie contestés, sur lesquels il s''expliquera à l''audience, selon son avocat Me Damien Brossier.\r\nPeu avant les faits, Kévani Wansale avait été exclu une semaine en raison d''une altercation avec un enseignant. La mère du lycéen, convoquée la veille des faits par Mme Montet-Toutain, professeure principale, avait réprimandé son fils, en lui indiquant qu''un conseil de discipline était envisagé et qu''il risquait d''être exclu définitivement de son lycée professionnel.\r\nIl a expliqué s''être rendu au lycée avec un couteau dans l''intention de s''ouvrir les veines, avant de se raviser. Il s''était finalement rendu le lendemain des faits vers 23H00 au commissariat d''Etampes, et avait reconnu les faits.\r\nSans casier judiciaire, Kévani Wansale a connu une enfance difficile, des changements de domicile fréquents. Il s''était jusque-là fait remarquer pour des problèmes de discipline, mais pas pour des faits de violence. Me Brossier prédit un "procès compliqué" pour des "faits simples", insistant sur la dimension psychologique et la part d''irrationnel de cet acte, commis devant de nombreux témoins.\r\nL''avocat de l''enseignante, Me Koffi Senah, déplore quant à lui l''absence de l''Education nationale au procès, que sa cliente avait mise en cause, et le fait qu''un rapport de l''Inspection générale, qui concluait à l''absence de faute de la part de la hiérarchie, n''ait pas été versé au dossier. Actuellement en arrêt maladie pour six mois, elle est toujours titulaire et a formulé le voeu de reprendre l''enseignement, mais sa hiérarchie n''a pas donné suite, selon Me Senah.\r\nInitialement prévu jusqu''à vendredi, le procès pourrait être prolongé jusqu''à samedi.', '2008-02-12', 'pierre', 1);
INSERT INTO `articles` VALUES (2, 'Tracts à Huy: clash de la commission communale d''enquête', 'Le rapport de la commission communale d''enquête chargée de faire la lumière sur l''affaire des tracts', 'Le rapport de la commission communale d''enquête chargée de faire la lumière sur l''affaire des tracts électoraux du PS n''a pas pu être bouclé comme prévu mercredi matin. Les travaux sont pourtant terminés. Les membres de la commission n''ont pas réussi à se mettre d''accord sur ce rapport qui doit être présenté au ministre de tutelle Philippe Courard. Des divergences sont apparues entre les membres de cette commission. "Le rapport qui nous a été présenté à la signature n''avait plus rien à voir avec celui que nous avions rédigé. Les éléments embarrassants avaient disparu. Le PS voulait que l''on signe un tout autre rapport", explique Denis Léonard, le chef de file Ensemble.', '2008-01-17', 'Belga', 2);
INSERT INTO `articles` VALUES (3, 'Xavier Darcos lance la mission sur l''enseignement de la Shoah au CM2', 'Le ministre de l''Education Xavier Darcos réunit mercredi notamment Simone Veil et Serge Klarsfeld po', 'Le ministre de l''Education Xavier Darcos réunit mercredi notamment Simone Veil et Serge Klarsfeld pour lancer la réflexion sur la mise en oeuvre du souhait de Nicolas Sarkozy que chaque enfant de CM2 se voie "confier la mémoire" d''un enfant mort dans la Shoah.\r\nIl a assuré mercredi sur LCI que la "bonne idée" de Nicolas Sarkozy de confier la mémoire d''un enfant juif de France mort en déportation à chaque élève de CM2 devait se "transformer en bonne pratique".\r\nAlors qu''il devait recevoir à 11H30, les personnalités et institutions en charge de la mémoire de la Shoah, dont Simone Veil qui avait vivement critiqué l''initiative du président de la République, il a prévenu que ce travail de mémoire serait "collectif" et non "enfant par enfant" car "il y a 11.500 enfants qui ont été exterminés et nous avons plus de 600.000 élèves en CM2".\r\nIl a ajouté que l''intégration dans les programmes de ce "lien affectif entre les enfants morts et les enfants d''aujourd''hui" ferait l''objet d''une "circulaire". Pour lui, M. Sarkozy "pense que c''est une manière d''aborder ce sujet qui est au fond indicible, incompréhensible, qui résiste à la raison". "Comment expliquer ça ? Il a cherché à nous guider vers ce rapport affectif entre les enfants", a insisté le ministre.\r\n"Il s''agit de transformer une bonne idée en bonne pratique", a-t-il répété à propos de cette table ronde qui réunira "la communauté éducative, les gens qui connaissent la manière dont on enseigne dans les classes" et "ceux qui ont la charge de la mémoire de la Shoah, ils sont nombreux".\r\nInterrogée sur la participation de Simone Veil, il a affirmé l''avoir convaincue de participer à la réunion mercredi parce qu''"il faut sortir de cette incompréhension, de cette difficulté parce que la bonne idée du président de la République semble être mal comprise par une partie de ceux qui sont chargés de la mémoire".\r\n"Je lui ai dit : +venez m''aider à transformer ce projet en application concrète et venez rejoindre la communauté éducative qui a besoin de vos conseils, de votre expérience+", a-t-il expliqué. Lors d''une table-ronde censée "marquer le début de la mission pédagogique confiée à Hélène Waysbord-Loing", inspectrice générale et directrice de la Maison d''Izieu (Ain), le ministre réunira "les institutions et les personnalités engagées dans la transmission de la mémoire de la Shoah", a expliqué le ministère dans un communiqué.\r\nOutre Simone Veil, très vivement opposée à l''idée du président de la République, sont conviés Anne-Marie Revcolevschi, directrice de la Fondation pour la mémoire de la Shoah, Serge Klarsfeld, président de l''association des fils et filles de déportés juifs de France, et Richard Prasquier, président du conseil représentatif des institutions juives de France (Crif), tous deux plutôt favorables à l''initiative présidentielle.\r\nLa liste des invités comprend aussi Pierre Besnainou, président du fonds social juif unifié, Béatrice Rosenberg, présidente de Yad Layeled France, Philippe Schmidt, vice-président de la Licra, Raphaël Haddad, président de l''Union des étudiants juifs de France, Théo Hoffenberg, membre du conseil d''administration du Mémorial de la Shoah, Jacques Fredj, directeur du Mémorial de la Shoah et le cinéaste Claude Lanzmann.\r\nL''Education nationale sera représentée par Jean-Louis Nembrini, directeur général de l''Enseignement scolaire, François Perret, doyen de l''Inspection générale et Joëlle Dusseau, inspectrice générale prendront part aux travaux.\r\nLa mission pédagogique de Mme Waysbord-Loing est "chargée de concevoir, avec l''appui d''experts du ministère et en consultant très largement, les documents pédagogiques qui permettront de la mise en place à la rentrée 2008 de la proposition du président de la République".', '2006-08-12', 'France Press', 3);
INSERT INTO `articles` VALUES (4, 'Tennis de table - Mondiaux/équipes: 4ème défaite des Belges', 'L''équipe nationale belge messieurs de tennis de table n''a toujours pas enregistré le moindre succès ', 'L''équipe nationale belge messieurs de tennis de table n''a toujours pas enregistré le moindre succès aux championnats du monde par équipes, s''inclinant pour la quatrième fois consécutive, mercredi à Guanghzou (Canton) en Chine, dans le groupe A. La Belgique, sans Jean-Michel Saive, a été battue cette fois 3 à 0 par la Roumanie, après avoir subi la loi de la Chine (3-0) dimanche, de l''Italie (3-1) lundi et de l''Autriche (3-0) mardi. Yannick Vostes (ITTF-234) s''est incliné 3 sets à 0 (11-8, 11-6, 11-9) face à Constantin Cioti (ITTF-107), Martin Bratanov (ITTF-174) a tenté - sans succès - de résister à Andrei Filimon (ITTF-74), battu 3-1 (11-4, 11-7, 9-11, 11-5), et Philippe Saive (ITTF-93) n''a rien pu faire contre Adrian Crisan (IITF-30): 3-0 (12-10, 11-5, 12-10). La dernière rencontre des Belges dans le groupe A se déroulera jeudi face à la Croatie, qui comme la Belgique a concédé 4 défaites en autant de duels.', '2008-01-17', 'TF1', 3);
INSERT INTO `articles` VALUES (5, 'Kim est maman d''une petite fille', 'L''enfant, née à 13h45, s''appelle Jedi et pèse 3,5 kilos', ' La championne de tennis à la retraite Kim Clijsters est entrée aujourd''hui à l''hôpital Vésale de Tongres pour y accoucher d''une petite fille.\r\n\r\nSa soeur Elke était présente, mais on ignore si ses parents et son mari, le joueur de basket professionnel Brian Lynch, étaient également sur place. La direction de l''hôpital s''est refusée à tout commentaire\r\n\r\nL''heureux événement était attendu dans le courant du mois de février. Ces derniers jours, la rumeur d''une naissance proche enflait.\r\n\r\nKim Clijsters n''avait jamais caché son désir de maternité. Lorsqu''elle était encore jeune joueuse, souvent, elle avait fait l''éloge du rôle de maman au foyer, jeune et moderne, contrairement à d''autres stars du circuit qui privilégiaient une longue carrière.\r\n\r\nL''an passé, elle avait surpris tout le monde en annonçant qu''elle disputerait sa dernière année sur le circuit WTA en raison de blessures récurrentes et de son mariage avec Brian Lynch durant l''été.\r\n\r\nLauréate à Sydney et en pleine possession de ses moyens, la Limbourgeoise avait vite réalisé qu''il lui serait très délicat de rivaliser avec les autres joueuses du circuit sans être concentré à 100 % sur son jeu.\r\n\r\nNéanmoins, la défunte saison lui offrira l''une de ses plus grosses émotions sur le circuit lors de ses adieux belges au monde du tennis il y a un an à l''occasion de la sixième édition des Proximus Diamond Games d''Anvers. Le public lui avait réservé un hommage si émouvant qu''elle avait déjà compris que plus jamais elle ne recevrait une telle acclamation sur un court. La finaliste à Anvers, avait, par la suite, joué les épreuves de Miami et de Varsovie. Mais, pour son entrée en lice en Pologne, elle avait perdu contre la modeste Julia Vakulenko. Cette défaite a précipité la fin de sa carrière alors que la native de Bree avait projeté de s''aligner encore au tournoi de Wimbledon.\r\n\r\nKim Clijsters avait donc tourné une page de sa vie. Désormais, toutes ses pensées se tournaient vers le plus beau jour de sa vie. Prévu, dans la plus stricte intimité, son mariage avec Brian Lynch se déroulait la 14 juillet 2007. Mais, comme un heureux événement n''arrive jamais seul, l''annonce d''une naissance réjouissait, dans un même temps, la famille Clijsters. À quelques jours du mariage, Lei Clijsters avait été le premier membre de la famille à annoncer la nouvelle au grand public.\r\n\r\nOn comprenait dès les raisons qui avaient poussé la Limbourgeoise le 6 mai à mettre fin à sa carrière.\r\n\r\nAu cours de sa carrière sportive débutée en 1997, elle a remporté 34 titres professionnels, dont un tournoi du Grand Chelem, l''US Open en 2005. Elle s''est imposée à deux reprises lors du Masters, et a fait partie de l''équipe de Fed Cup victorieuse en 2001. Kim a été la première joueuse à occuper la place de n°1 mondial à la WTA, durant 19 semaines.\r\n\r\nComme à l''accoutumée, le clan Clijsters s''est montré peu loquace en se refusant à tout commentaire, ne confirmant et n''infirmant la nouvelle. La saga continue... ', '2008-02-27', 'Pierre', 3);

-- --------------------------------------------------------

-- 
-- Structure de la table `categories`
-- 

CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL auto_increment,
  `categorie` varchar(150) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_categories`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

-- 
-- Contenu de la table `categories`
-- 

INSERT INTO `categories` VALUES (1, 'Economie');
INSERT INTO `categories` VALUES (2, 'Social');
INSERT INTO `categories` VALUES (3, 'Sport');

-- --------------------------------------------------------

-- 
-- Structure de la table `ident`
-- 

CREATE TABLE `ident` (
  `id_ident` int(11) NOT NULL auto_increment,
  `log_in` varchar(200) collate latin1_general_ci NOT NULL default '',
  `password` varchar(20) collate latin1_general_ci NOT NULL default '',
  `niveau` varchar(20) collate latin1_general_ci NOT NULL default '',
  PRIMARY KEY  (`id_ident`),
  UNIQUE KEY `log_in` (`log_in`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

-- 
-- Contenu de la table `ident`
-- 

INSERT INTO `ident` VALUES (1, 'admin', 'pass', '1');
INSERT INTO `ident` VALUES (2, 'pierre', 'ee', '2');
