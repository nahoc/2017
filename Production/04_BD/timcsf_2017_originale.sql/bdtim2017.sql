-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 27, 2017 at 09:12 AM
-- Server version: 5.1.58
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bdtim2017`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_cours`
--

CREATE TABLE IF NOT EXISTS `t_cours` (
  `id_cours` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_cours` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'XXX-XXX-XX',
  `nom_cours` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_cours` tinytext COLLATE utf8_unicode_ci,
  `duree` smallint(3) unsigned DEFAULT NULL,
  `ponderation` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'XX-XX-XX',
  `description_cours` text COLLATE utf8_unicode_ci,
  `est_specifique` tinyint(1) NOT NULL DEFAULT '0',
  `session` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cours`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `t_cours`
--

INSERT INTO `t_cours` (`id_cours`, `slug`, `no_cours`, `nom_cours`, `url_cours`, `duree`, `ponderation`, `description_cours`, `est_specifique`, `session`) VALUES
(1, 'introduction-a-la-programmation', '582-101-SF', 'Introduction à la programmation', '', 90, '2-4-3', '<p>\nLe cours vise à faire découvrir les concepts de base de la programmation. Les notions suivantes sont abordées: les variables et leurs types, les structures de contrôles, les boucles, les fonctions, leurs paramètres et les valeurs de retour, les événements et leurs écouteurs. Pour faciliter la compréhension et la planification de la programmation le cours initie aux techniques et outils de conception, de codification et de vérification d’algorithmes.</p>\n\n<p>Dans le cours d’introduction à la programmation, vous apprenez à:\n<ul>\n<li>Planifier un algorithme simple à l’aide d’un logigramme;</li>\n<li>Définir des variables;</li>\n<li>Utiliser des structures de contrôles et des boucles;</li>\n<li>Rédiger des fonctions avec des arguments et des retours; </li>\n<li>Élaborer des algorithmes;</li>\n<li>Découper son code en fonctions réutilisables;</li>\n<li>Tracer son code pour localiser les erreurs.</li>\n</ul>\n</p>\n<p> \nVos outils de travail sont:\n<ul>\n<li>Éditeur de code;</li>\n<li>Références du langage de programmation.</li>\n</ul>\n</p>', 1, 1),
(2, 'design-d-interface-i', '582-102-SF', 'Design d''interface I', '', 90, '2-4-2', '<p>Le cours Design d’interface I permet à l’étudiant d’acquérir les habiletés de base pour réaliser une interface en contrôlant une grille de mise en page fluide et l’organisation des textes. Il apprend à utiliser des appareils de captation (numériseur, appareil photo numérique) et à utiliser des logiciels de mise en page de l’interface, de traitement des images fixes et d’optimisation des images fixes. Ces apprentissages techniques sont soutenus par des notions théoriques en lien.</p>\n\n<p>\nDans le cours Design d’interface I, vous apprenez à:\n<ul>\n<li>Élaborer la structure de la grille de mise en page et son adaptabilité;</li>\n<li>Traiter les textes en respect du scénario, de la hiérarchie de communication, de la direction visuelle, des règles et normes typographiques;</li>\n<li>Traiter et créer des images fixes;</li>\n<li>Optimiser les images en respects des critères de qualité;</li>\n<li>Utiliser l’appareil photo numérique;</li>\n<li>Utiliser les possibilités techniques de différents logiciels.</li>\n</ul>\n</p>\n<p>\nVos outils de travail sont:\n<ul><li>La suite Adobe, principalement Muse, Photoshop et Illustrator.</li><ul>\n</p>', 1, 1),
(3, 'culture-numerique-et-communication', '582-103-SF', 'Culture numérique et communication', '', 45, '2-1-1', '<p>Le cours Culture numérique et communication permet à l’étudiant d’acquérir les fondements en conception d’interface: langage visuel, design graphique, design typographique et, dans une moindre proportion, les concepts de composition de l’image, nécessaires à la prise de vue des images numériques. Dans une perspective plus générale, ce cours permet à l’étudiant de découvrir les styles et les tendances passées et actuelles du design d’interface ainsi que l’historique du produit numérique interactif.</p>\n\n<p>Dans le cours Culture numérique et communication, vous apprenez à:\n<ul>\n<li>Analyser les composantes et la structure du message et identifier les objectifs de communication du produit interactif;</li>\n<li>Composer une page écran en respect des fondements en design graphique, appliquer des harmonies de couleurs en respects des fondements théoriques.</li>\n<li>Choisir une police de caractère en respect de la stylistique de la page écran et de l’intention de communication;</li>\n<li>Distinguer les aspects originaux dans la conception de l’interface;</li>\n<li>Distinguer les qualités esthétiques des éléments de l’interface et les enjeux sociaux de l’accessibilité;</li>\n<li>Connaître les principaux facteurs d’évolution de l’industrie.</li>\n</ul>\n</p>\n<p>\nVos outils de travail sont:\n<ul>\n<li>La suite Adobe CC, crayon et papier.</li>\n</ul>\n</p>', 1, 1),
(4, 'integration-i', '582-104-SF', 'Intégration I', '', 45, '1-2-3', '<p>\nLe cours est une introduction à l’intégration de contenus pour le Web. Le langage HTML est utilisé pour la structure et la sémantique alors que le langage CSS est utilisé pour définir les aspects de présentation. Le souci des bonnes pratiques de développement Web ainsi que des préoccupations quant à l’accessibilité des contenus guident les apprentissages.</p>\n\n<p>Dans le cours Intégration I, vous apprenez à:\n<ul>\n<li>Structurer le contenu des pages Web grâce à HTML, un langage de balisage;</li>\n<li>Utiliser correctement les balises HTML, les attributs et les valeurs d’attributs;</li>\n<li>Comprendre le rôle du balisage HTML pour améliorer l’accessibilité du Web;</li>\n<li>Contrôler l’apparence de vos documents HTML grâce à CSS, un langage de mise en forme;</li>\n<li>Réaliser des sites Web consultables sur plusieurs types d’appareils (téléphones, tablettes, ordinateurs);</li>\n<li>Mettre en ligne les sites Web sur un serveur.</li>\n</ul>\n</p>\n<p>\n\nVos outils de travail sont:\n<ul><li>éditeur de code;</li>\n<li>navigateurs et outils de développement des navigateurs;  </li>\n<li>outil de mise en ligne (S)FTP.</li>\n</ul>\n</p>', 1, 1),
(5, 'profession-integrateur', '582-105-SF', 'Profession intégrateur', '', 45, '1-2-2', '<p>\nQu’est qu’un intégrateur? Le cours Profession intégrateur tente de répondre à cette question en proposant une réflexion sur les différents rôles qu’un intégrateur peut jouer dans un milieu de travail. Visites d’entreprises, conférences (capsules vidéos) de différents intervenants de l’industrie, lectures dirigées jalonnent les étapes de découverte des différentes possibilité de carrières en lien avec la formation. Côté pratique et matériel, le cours initie au vocabulaire et notions reliés aux outils de travail : les systèmes d’opération, le poste de travail, les réseaux, les serveurs, les échanges entre le poste personnel et le serveur...</p>\n<p>\nDans le cours Profession intégrateur, vous apprenez à:\n<ul>\n<li>Connaître les grandes étapes d’un processus de production;</li>\n<li>Discriminer différents types de produits numériques interactifs;</li>\n<li>Identifier les principales tâches et aptitudes professionnelles attendues d’un intégrateur;</li>\n<li>Identifier différents cheminements de carrière possibles;</li>\n<li>Se familiariser avec l’architecture et le fonctionnement des micro-ordinateurs;</li>\n<li>Discriminer les différents systèmes d’exploitation clients vs serveurs;</li>\n<li>Connaître le mode de fonctionnement des réseaux;</li>\n<li>Connaître les commandes de base Unix;</li>\n<li>Faire la mise en ligne d’un produit Web;</li>\n<li>Organiser son travail et son poste de travail de manière ergonomique et avec une préoccupation de santé globale.</li>\n</ul>\n</p>\n<p>\nVos outils de travail sont:\n<ul><li>Les moteurs de recherche, OS X, le Finder, le terminal, les réseaux et les serveurs.\n</li></ul>\n</p>', 1, 1),
(6, 'ecriture-et-litterature', '601-101-MQ', 'Écriture et littérature', 'http://www.cegep-ste-foy.qc.ca/csf4/programmes/formation-generale/', 60, '2-2-3', '', 0, 1),
(7, 'anglais-ensemble-1', 'ANG-001-MQ', 'Anglais ensemble 1', 'http://www.cegep-ste-foy.qc.ca/csf4/programmes/formation-generale/', 45, '2-1-3', '', 0, 1),
(9, 'programmation-web-et-multimedia-i', '582-201-SF', 'Programmation Web et multimédia I', '', 90, '2-4-3', '<p>\nLe cours vise à poursuivre l''acquisition de compétences en programmation dans le contexte du Web. Les scripts programmés couvrent un éventail représentatif de cas type d''interactivité en tenant compte des enjeux de l’accessibilité. Le  cours aborde également une problématique clé des projets Web et applicatif: l’entreposage et la gestion des données. L''accent est mis sur l''organisation des informations et les types de stockage, qu''il  s''agisse des informations à afficher ou des données utilisées pour contrôler l''interactivité et les animations.</p>\n<p>\nDans le cours Programmation Web et multimédia I, vous apprenez à:\n<ul>\n<li>Étudier les principaux objets du DOM;</li>\n<li>Utiliser et modifier le modèle objet des documents html;</li>\n<li>Se familiariser avec le concept de l’amélioration progressive; </li>\n<li>Valider un formulaire avec du JavaScript natif;</li>\n<li>Identifier différents modèles d’entreposage des données (paires attributs-valeurs, fichiers, bases de données…);</li>\n<li>Utiliser des données structurées (listes, tableaux, collections; objets JSON);</li>\n<li>Modéliser une base de données relationnelles;</li>\n<li>Comprendre les principes de la connexion et de l’utilisation d’une base de données.</li>\n</ul>\n</p>\n<p>\nVos outils de travail sont:\n<ul>\n<li>Un éditeur de code;</li>\n<li>Les navigateurs et les outils de développement des navigateurs; </li> \n<li>Les références du langage de programmation;</li>\n<li>Les validateurs syntaxiques;</li>\n<li>Un outil de modélisation (MySQLWorkbench);</li>\n<li>Un outil d’implémentation de base de données (phpMyAdmin).</li>\n</ul>\n</p>', 1, 2),
(10, 'design-d-interface-ii', '582-202-SF', 'Design d''interface II', '', 90, '2-4-2', '<p>\nLe cours Design d’interface II permet à l’étudiant d’acquérir les habiletés pour concevoir et réaliser une interface en contrôlant une grille de mise en page fluide et l’organisation cohérente des textes. Ce dernier apprend des techniques de créativité et devient apte à faire des choix de conception et à les présenter. Il acquiert de plus la maîtrise des techniques avancées des logiciels de mise en page de l’interface et de traitement des images fixes.</p>\n\n<p>\nDans le cours Design d’interface II, vous apprenez à:\n<ul>\n<li>Faire des choix de conception et reconnaître les relations entre le message et le langage plastique;</li>\n<li>Créer des interfaces structurées, lisibles, esthétiques, à la stylistique uniforme en considération des contraintes et des possibilités techniques liées aux enjeux d’intégration et d’accessibilité;</li>\n<li>Concevoir et traiter des images fixes selon la stylistique du design de l’interface: éléments d’interface, éléments vectoriels, photographie, photomontage, icônes, etc.;</li>\n<li>Utiliser les possibilités techniques de différents logiciels.</li>\n</ul>\n<p>\n</p>\nVos outils de travail sont:\n<ul><li>\nLa suite Adobe, principalement Muse, Photoshop et Illustrator.</li>\n</ul>\n</p>', 1, 2),
(11, 'montage-mediatique-:-animation', '582-203-SF', 'Montage médiatique : animation', '', 45, '1-2-2', '<p>\nLe cours Montage médiatique : animation permet à l’étudiant d’acquérir les habiletés nécessaires à réaliser différents types d’animations synchronisées avec le son, interactives ou non. Dans ce cours, l’étudiant acquiert les habiletés techniques à utiliser des logiciels d’animation et de traitement sonore. Il apprend à respecter et créer des documents de pré-production ainsi qu’à utiliser le vocabulaire cinématographique.</p>\n<p>\nDans le cours Montage médiatique : animation, vous apprenez à:\n<ul>\n<li>Réaliser le montage de différents types d’animations synchronisées avec le son;</li>\n<li>Réaliser les documents de pré-production: synopsis, scénarimage, etc.;</li>\n<li>Utiliser des logiciels de réalisation d’animation et traitement sonore.</li>\n</ul>\n</p>\n<p>\nVos outils de travail sont:\n<ul>\n<li>La suite Adobe CC, principalement Edge Animate et After Effects.</li>\n</ul>\n</p>', 1, 2),
(12, 'integration-ii', '582-204-SF', 'Intégration II', '', 90, '2-4-3', '<p>\nLe cours vise à approfondir la compréhension des différentes normes permettant l’intégration de projets Web ou applicatifs, en commençant par le XML, les différentes moutures du HTML et les feuilles de styles, ou CSS. Une attention particulière est portée aux règles d’écriture et aux grammaires des différents langages utilisés. L’étudiant est amené à explorer et utiliser des outils de contrôle de la qualité de l’intégration. Les préoccupations de portabilité et d’accessibilité orientent l’enchaînement des travaux pratiques. En collaboration avec les cours concomitants de la formation spécifique, ce cours se conclut par un travail d’équipe initiant l’utilisation d’une source de données externe.\n</p>\n<p>\nDans le cours Intégration II, vous apprenez à:\n<ul>\n<li>Choisir une norme (X)HTML selon la nature et les besoins d’un projet spécifique;</li>\n<li>Utiliser l’API des formulaires de HTML5 pour imposer des contraintes de saisies;</li>\n<li>Connaître les techniques de balisage pour solutionner des problèmes d’accessibilité fréquents;</li>\n<li>Maîtriser les bases et les techniques plus avancées d’utilisation des CSS;</li>\n<li>Appliquer des techniques d’intégration adaptées au développement multi-appareils;</li>\n<li>Utiliser des bibliothèques pour améliorer la portabilité du Web;</li>\n<li>Utiliser les fonctionnalités des logiciels d’intégration.</li>\n</ul>\n</p>\n<p>\nVos outils de travail sont:\n<ul>\n<li>Éditeur de code HTML;</li>\n<li>Outil de développement XML;</li>\n<li>Validateurs du W3C;</li>\n<li>Navigateurs et outils de développement des navigateurs;</li> \n<li>Logiciel WYSIWYG de développement Web.</li>\n</ul>\n</p>', 1, 2),
(13, 'litterature-et-imaginaire', '601-102-MQ', 'Littérature et imaginaire', 'http://www.cegep-ste-foy.qc.ca/csf4/programmes/formation-generale/', 60, '3-1-3', '', 0, 2),
(16, 'activite-physique-et-sante', '109-101-MQ', 'Activité physique et santé', 'http://www.cegep-ste-foy.qc.ca/csf4/index.php?id=2279', 30, '1-1-1', '', 0, 2),
(18, 'conception-interactive-i', '582-302-SF', 'Conception interactive I  ', '', 45, '1-2-2', '', 1, 3),
(19, 'programmation-web-et-multimedia-ii', '582-301-SF', 'Programmation Web et multimédia II', '', 90, '2-4-3', '', 1, 3),
(20, 'montage-mediatique-:-video', '582-303-SF', 'Montage médiatique: vidéo', '', 60, '2-2-2', '', 1, 3),
(21, 'realisation-de-produits-numeriques-interactifs-i ', '582-304-SF', 'Réalisation de produits numériques interactifs I', '', 90, '2-4-4', '', 1, 3),
(22, 'activite-physique-et-efficacite', '109-102-MQ', 'Activité physique et efficacité ', 'http://www.cegep-ste-foy.qc.ca/csf4/index.php?id=2279', 30, '0-2-1', '', 0, 3),
(24, 'philosophie-et-rationalite', '340-101-MQ', 'Philosophie et rationalité', 'http://www.cegep-ste-foy.qc.ca/csf4/programmes/formation-generale/', 60, '3-1-3', '', 0, 3),
(25, 'anglais-propre-au-programme  ', 'ANG-2SH-SF', 'Anglais propre au programme  ', 'http://www.cegep-ste-foy.qc.ca/csf4/programmes/formation-generale/', 45, '2-1-3', '', 0, 3),
(26, 'programmation-web-et-multimedia-iii ', '582-401-SF', 'Programmation Web et multimédia III ', '', 90, '2-4-3', '', 1, 4),
(27, 'conception-interactive-ii  ', '582-402-SF', 'Conception interactive II  ', '', 45, '1-2-2', '', 1, 4),
(28, 'montage-mediatique-plurimedia  ', '582-403-SF', 'Montage médiatique : plurimédia  ', '', 45, '1-2-2', '', 1, 4),
(29, 'realisation-de-produits-numeriques-interactifs-ii  ', '582-404-SF', 'Réalisation de produits numériques interactifs II ', '', 90, '2-4-4', '', 1, 4),
(31, 'activite-physique-et-autonomie  ', '109-103-MQ', 'Activité physique et autonomie  ', '', 30, '1-1-1', '', 0, 4),
(32, 'l-etre-humain', '340-102-MQ', 'L’être humain', 'http://www.cegep-ste-foy.qc.ca/csf4/programmes/formation-generale/', 45, '3-0-3', '', 0, 4),
(33, 'litterature-quebecoise', '601-103-MQ', 'Littérature québécoise', '', 60, '3-1-4', '', 0, 4),
(34, 'cours-complementaire-ii  ', 'COM-002-03', 'Cours complémentaire II  ', 'http://www.cegep-ste-foy.qc.ca/csf4/programmes/formation-generale/', 45, '2-1-3', '', 0, 4),
(35, 'communication-en-arts  ', '601-FWC-SF', 'Communication et arts  ', 'http://www.cegep-ste-foy.qc.ca/csf4/programmes/formation-generale/', 60, '2-2-2', '', 0, 5),
(36, 'programmation-web-et-multimedia-iv ', '582-501-SF', 'Programmation Web et multimédia IV  ', '', 90, '2-4-3', '', 1, 5),
(37, 'realisation-de-produits-numeriques-interactifs-iii  ', '582-502-SF', 'Réalisation de produits numériques interactifs III  ', '', 180, '4-8-6', '', 1, 5),
(38, 'analyse-et-conception-de-projet  ', '582-503-SF', 'Analyse et conception de projet  ', '', 45, '1-2-2', '', 1, 5),
(39, 'ethique-et-politique-secteur-technique', '340-FXZ-SF', 'Éthique et politique (secteur technique)', 'http://www.cegep-ste-foy.qc.ca/csf4/programmes/formation-generale/', 45, '3-0-3', '', 0, 5),
(40, 'projet-de-recherche ', '582-601-SF', 'Projet de recherche ', '', 45, '1-2-2', '', 1, 6),
(41, 'realisation-de-produits-numeriques-interactifs-iv', '582-603-SF', 'Réalisation de produits numériques interactifs IV  ', '', 120, '2-6-4', '', 1, 6),
(42, 'stage-et-activites-professionnelles ', '582-604-SF', 'Stage et activités professionnelles ', '', 270, '1-17-1', '', 1, 6),
(44, 'cours-complementaire-i ', 'COM-001-03', 'Cours complémentaire I ', 'http://www.cegep-ste-foy.qc.ca/csf4/programmes/formation-generale/', 45, '2-1-3 ', '', 0, 2),
(47, 'programmation-specialisee', '582-504-SF', 'Programmation spécialisée', '', 45, '1-2-2', '', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `t_diplome`
--

CREATE TABLE IF NOT EXISTS `t_diplome` (
  `id_diplome` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom_diplome` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom_diplome` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profil` text COLLATE utf8_unicode_ci,
  `forces` text COLLATE utf8_unicode_ci,
  `interet_gestion_projet` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci DEFAULT '5' COMMENT 'De 1 (pas vraiment ma force) à 10 (vraiment expert)',
  `interet_design_interface` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci DEFAULT '5' COMMENT 'De 1 (pas vraiment ma force) à 10 (vraiment expert)',
  `interet_traitement_medias` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci DEFAULT '5' COMMENT 'De 1 (pas vraiment ma force) à 10 (vraiment expert)',
  `interet_integration` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci DEFAULT '5' COMMENT 'De 1 (pas vraiment ma force) à 10 (vraiment expert)',
  `interet_programmation` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8_unicode_ci DEFAULT '5' COMMENT 'De 1 (pas vraiment ma force) à 10 (vraiment expert)',
  `courriel_diplome` text COLLATE utf8_unicode_ci,
  `pseudo_twitter_diplome` text COLLATE utf8_unicode_ci,
  `linkedin_diplome` text COLLATE utf8_unicode_ci,
  `site_web_diplome` text COLLATE utf8_unicode_ci,
  `nom_usager_admin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Même nomenclature que pour accès Novell',
  PRIMARY KEY (`id_diplome`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=507 ;

--
-- Dumping data for table `t_diplome`
--

INSERT INTO `t_diplome` (`id_diplome`, `slug`, `nom_diplome`, `prenom_diplome`, `profil`, `forces`, `interet_gestion_projet`, `interet_design_interface`, `interet_traitement_medias`, `interet_integration`, `interet_programmation`, `courriel_diplome`, `pseudo_twitter_diplome`, `linkedin_diplome`, `site_web_diplome`, `nom_usager_admin`) VALUES
(482, 'jonathan-barbeau', 'Barbeau', 'Jonathan', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1142096'),
(483, 'vincent-beland', 'Béland', 'Vincent', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1231359'),
(484, 'julie-boyer', 'Boyer', 'Julie', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1464711'),
(485, 'cohan-carpentier-lariviere', 'Carpentier-Larivière', 'Cohan', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1464690'),
(486, 'william-charest-pepin', 'Charest-Pépin', 'William', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1462346'),
(487, 'gabriel-claveau-baril', 'Claveau-Baril', 'Gabriel', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1466777'),
(488, 'rebecca-fortin', 'Fortin', 'Rebecca', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1460253'),
(489, 'katy-giroux-chau', 'Giroux-Chau', 'Katy', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1465105'),
(490, 'felix-gonthier', 'Gonthier', 'Félix', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1438876'),
(493, 'andreanne-jobin', 'Jobin', 'Andréanne', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1460111'),
(494, 'sebastien-leblanc', 'Leblanc', 'Sébastien', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1341640'),
(495, 'jimmy-lemieux', 'Lemieux', 'Jimmy', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1235170'),
(496, 'nicolas-milot', 'Milot', 'Nicolas', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1466638'),
(497, 'flavie-robitaille-dion', 'Robitaille-Dion', 'Flavie', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1465816'),
(498, 'albert-samson', 'Samson', 'Albert', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1235150'),
(499, 'marie-elisabeth-thibeault', 'Thibeault', 'Marie-Élisabeth', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1332695'),
(500, 'pierre-olivier-vachon', 'Vachon', 'Pierre-Olivier', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1461629'),
(501, 'emilie-viel', 'Viel', 'Émilie', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1462155'),
(502, 'annabelle-violette', 'Violette', 'Annabelle', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1461210'),
(503, 'anais-descombes', 'Descombes', 'Anaïs', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1731561'),
(504, 'omar-jbara', 'Jbara', 'Omar', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1701755'),
(505, 'erwann-letue', 'Letué', 'Erwann', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1701750'),
(506, 'alexandre-masse', 'Massé', 'Alexandre', NULL, NULL, '5', '5', '5', '5', '5', NULL, NULL, NULL, NULL, '1701858');

-- --------------------------------------------------------

--
-- Table structure for table `t_evenement`
--

CREATE TABLE IF NOT EXISTS `t_evenement` (
  `id_actualite` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `titre_actualite` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_actualite` text COLLATE utf8_unicode_ci,
  `date_publication` date DEFAULT NULL,
  `date_expiration` date DEFAULT NULL,
  `url_actualite` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_actualite` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actualite_defaut` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_actualite`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Table des actualités' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `t_evenement`
--

INSERT INTO `t_evenement` (`id_actualite`, `titre_actualite`, `description_actualite`, `date_publication`, `date_expiration`, `url_actualite`, `image_actualite`, `actualite_defaut`) VALUES
(1, 'Étudiant d’un jour', 'Viens vivre une journée dans le programme Techniques d’intégration multimédia en participant à Étudiant d’un jour!', '2016-01-01', '2017-01-01', 'futurEtudiant/', '', 1),
(2, 'Inscription', 'La date limite des inscriptions au collège pour participer au 1er tour est le 1er mars.', '2016-02-01', '2016-03-01', 'futurEtudiant/', '', 0),
(3, 'Prochaine séquence de stages ­‐ 3e année', 'La prochaine séquence de stages pour nos étudiants de troisième année débutera le 13 mars prochain.', '2016-11-01', '2017-02-01', 'stages/', '', 0),
(4, 'Prochaine séquence de stages -­ 1ère et 2e année', 'La prochaine séquence de stages pour nos étudiants de première et deuxième année débutera le 31 mai prochain.', '2017-03-01', '2017-06-01', 'stages/', '', 0),
(5, 'Portes ouvertes -­ Automne', 'Les prochaines portes ouvertes auront lieu le 17 novembre de 18h30 à 20h. Soyez des nôtres!', '2016-11-01', '2016-11-17', '', '', 0),
(6, 'Portes ouvertes -­ Hiver', 'Les prochaines portes ouvertes auront lieu le 4 février de 18h30 à 20h. Soyez des nôtres!', '2017-01-15', '2017-02-04', '', '', 0),
(7, 'Joyeuses Fêtes!', 'Tous les étudiants et enseignants de la TIM vous souhaitent un joyeux temps des Fêtes. À l’année prochaine!', '2016-12-15', '2017-01-01', '', '', 0),
(8, 'Bon été!', 'C’est le temps d’une pause. Bon été à tous et au plaisir de vous revoir à l’automne prochain.', '2016-06-10', '2016-08-10', '', '', 0),
(9, 'La rentrée', 'Les classes débutent le 24 août. On a bien hâte de vous voir!', '2016-08-10', '2016-08-26', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_prof`
--

CREATE TABLE IF NOT EXISTS `t_prof` (
  `id_prof` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `nom_prof` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom_prof` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `courriel_prof` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pseudo_twitter_prof` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin_prof` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_web_prof` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_usager_admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Même nomenclature que pour accès Novell',
  PRIMARY KEY (`id_prof`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `t_prof`
--

INSERT INTO `t_prof` (`id_prof`, `slug`, `nom_prof`, `prenom_prof`, `courriel_prof`, `pseudo_twitter_prof`, `linkedin_prof`, `site_web_prof`, `nom_usager_admin`) VALUES
(1, 'benoit-frigon', 'Frigon', 'Benoît', 'bfrigon@cegep-ste-foy.qc.ca', NULL, 'https://www.linkedin.com/in/beno%C3%AEt-frigon-530aa929/fr', NULL, 'bfrigon'),
(4, 'eve-fevrier', 'Février', 'Ève', 'efevrier@cegep-ste-foy.qc.ca', 'evefevrier', 'https://ca.linkedin.com/in/evefevrier\r\n', 'http://evefevrier.pancakeapps.com/styles-codage/timcsf/', 'efevrier'),
(5, 'jean-sebastien-lessard', 'Lessard', 'Jean-Sébastien', 'jslessard@cegep-ste-foy.qc.ca', NULL, NULL, NULL, 'jslessard'),
(6, 'marie-andree-gingras', 'Gingras', 'Marie-Andrée', 'magingras@cegep-ste-foy.qc.ca', 'magingras', 'https://www.linkedin.com/in/mareiandreegingras', NULL, 'magingras'),
(7, 'audrey-morneau', 'Morneau', 'Audrey', 'aumorneau@cegep-ste-foy.qc.ca', '', 'https://www.linkedin.com/in/audrey-morneau-68938b15', NULL, 'aumorneau'),
(8, 'nicole-mcclure', 'McClure', 'Nicole', 'nmcclure@cegep-ste-foy.qc.ca', 'nicolemcclure', 'https://www.linkedin.com/in/nicolemcclure', NULL, 'nmcclure'),
(10, 'paul-andre-gagnon', 'Gagnon', 'Paul-André', 'pagagnon@cegep-ste-foy.qc.ca', NULL, NULL, NULL, 'pagagnon'),
(11, 'pascal-larose', 'Larose', 'Pascal', 'palarose@cegep-ste-foy.qc.ca', NULL, 'https://www.linkedin.com/in/pascal-larose-63aa6984', NULL, 'plarose'),
(12, 'sylvain-lamoureux', 'Lamoureux', 'Sylvain', 'slamoureux@cegep-ste-foy.qc.ca', NULL, 'https://www.linkedin.com/in/sylvainlamoureux/fr', 'http://www.hautemontagne.ca/', 'slamoureux'),
(13, 'michelle-decorte', 'Decorte', 'Michelle', 'mdecorte@cegep-ste-foy.qc.ca', NULL, NULL, NULL, 'mdecorte'),
(16, 'michel-rouleau', 'Rouleau', 'Michel', 'mrouleau@cegep-ste-foy.qc.ca', NULL, NULL, '', 'mrouleau'),
(22, 'julie-cote', 'Côté', 'Julie', 'jucote@cegep-ste-foy.qc.ca', '', 'https://www.linkedin.com/in/juliecote08', NULL, 'jcote'),
(23, 'guillaume-gaulin-laquerre', 'Gaulin-Laquerre', 'Guillaume', 'ggaulinlaquerre@cegep-ste-foy.qc.ca', NULL, NULL, NULL, 'ggaulinlaquerre'),
(24, 'guillaume-simard', 'Simard', 'Guillaume', 'gsimard@cegep-ste-foy.qc.ca', 'atomrace', 'http://ca.linkedin.com/pub/guillaume-simard/20/27/129/', 'http://www.atomrace.com', 'gsimard'),
(25, 'yves-helie', 'Hélie', 'Yves', 'yves.helie@cegep-ste-foy.qc.ca', 'yveshelie', 'http://www.linkedin.com/profile/view?id=63848390', 'http://www.yveshelie.net', 'yhelie'),
(28, 'karl-lacroix', 'Lacroix', 'Karl', 'klacroix@cegep-ste-foy.qc.ca', 'karllacroix', 'http://ca.linkedin.com/in/karllacroix/', NULL, 'klacroix'),
(32, 'catherine-rufiange', 'Rufiange', 'Catherine', 'catherine.rufiange@cegep-ste-foy.qc.ca', 'crufiange', 'http://www.linkedin.com/in/catherinerufiange', NULL, 'crufiange');

-- --------------------------------------------------------

--
-- Table structure for table `t_projet_diplome`
--

CREATE TABLE IF NOT EXISTS `t_projet_diplome` (
  `id_projet` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `titre_projet` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `technologies` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `participation` text COLLATE utf8_unicode_ci,
  `cadre` text COLLATE utf8_unicode_ci,
  `url_projet` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `est_expose_galerie` tinyint(1) NOT NULL DEFAULT '0',
  `id_diplome` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_projet`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=424 ;

-- --------------------------------------------------------

--
-- Table structure for table `t_responsable`
--

CREATE TABLE IF NOT EXISTS `t_responsable` (
  `id_responsable` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `responsabilite` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `courriel_responsable` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom_responsable` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_responsable` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_responsable`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Coordination, webmestre...' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `t_responsable`
--

INSERT INTO `t_responsable` (`id_responsable`, `responsabilite`, `courriel_responsable`, `prenom_responsable`, `nom_responsable`, `telephone`) VALUES
(1, 'Coordonnateur départemental', 'slamoureux@cegep-ste-foy.qc.ca', 'Sylvain', 'Lamoureux', '(418) 659-6600(418) 659-6600 poste 6662'),
(2, 'Webmestre', 'ggaulinlaquerre@cegep-ste-foy.qc.ca', 'Guillaume', 'Gaulin-Laquerre', '(418) 659-6600 poste 6686'),
(3, 'Responsable des stages', 'stages-tim@cegep-ste-foy.qc.ca', 'Audrey', 'Morneau-Gagnon', '(418) 659-6600 poste 6668'),
(4, 'Responsable "Étudiant d''un jour"', 'bfrigon@cegep-ste-foy.qc.ca', 'Benoît', 'Frigon', '(418) 659-6600 poste 6656');

-- --------------------------------------------------------

--
-- Table structure for table `t_temoignage_professionnel`
--

CREATE TABLE IF NOT EXISTS `t_temoignage_professionnel` (
  `id_temoignage` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `temoin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `titre_poste` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `entreprise` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `url_entreprise` text COLLATE utf8_unicode_ci NOT NULL,
  `temoignage` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `annee_diplomation` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`id_temoignage`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Témoignages-Professions des diplômés du programme' AUTO_INCREMENT=42 ;

--
-- Dumping data for table `t_temoignage_professionnel`
--

INSERT INTO `t_temoignage_professionnel` (`id_temoignage`, `temoin`, `titre_poste`, `entreprise`, `url_entreprise`, `temoignage`, `annee_diplomation`) VALUES
(22, 'Francis Chartrand', 'Développeur Web', 'Leonard', 'www.leonarddg.com', 'Lorsque j''étais au secondaire, j''ai découvert un intérêt pour la conception de sites Web, la vidéo et Photoshop. La décision d’aller en TIM avait été facile, car la technique me permettait d''en apprendre davantage sur ce qui me passionnait et plus encore. Ce que je préfère le plus de mon métier est de travailler sur différents aspects d''un projet, entre autres: l''analyse, le design et la programmation. C''est un domaine stimulant et il y a toujours de nouvelles connaissances à acquérir.', 2012),
(23, 'Léo Renaud-Allaire', 'Co-fondateur / Dévelopeur Web', 'Hookt Studios et Didacte', 'www.hooktstudios.com', 'J’ai toujours eu une intérêt pour les technologies, plus particulièrement pour le Web et les interfaces. La TIM était une suite tout à fait logique à mes études secondaires au programme PROTIC. Je n''ai jamais regretté mon choix! En tant que développeur Web, la vitesse d''évolution des technologies dans le domaine nous pousse à nous renouveler constamment, ce qui est très motivant. Le Web étant un outil utile dans toutes sortes de contextes, la diversité des projets sur lesquels on peut intervenir est pratiquement infinie et les défis toujours différents.', 2009),
(24, 'Martin Audesse', 'Développeur Back-End', 'Chalifour', 'www.chalifour.net', 'La Techniques d''intégration multimédia couvre une large partie du monde numérique et puisque je n''étais pas certain dans quel domaine je voulais me spécialisé, c''était un choix gagnant! À titre de développeur, j’adore le fait de construire des projets en équipe. J’aime créer l’image complète d’une entreprise qui est ensuite visible partout et disponible sur toutes les plateformes.', 2012),
(25, 'Rémi Prévost', 'Développeur Web', 'Mirego', 'www.mirego.com/fr', 'J’hésitais à me diriger vers une formation spécialisée en graphisme ou en informatique — Techniques d''intégration multimédia était le mélange parfait entre les deux! Maintenant, j’adore avoir l’opportunité de bâtir des projets qui peuvent faire une différence, aussi mineure soit-elle, dans la vie des gens.', 2007),
(26, 'Richard Vacchino-Marceau', 'Directeur | Programmation et intégration', 'Triomphe marketing et communication', 'www.triomphe.ca', 'L’informatique a toujours été pour moi une passion alors il était logique d''aller vers un domaine qui me permettait d''exploiter à fonds toutes mes passions. Graphisme, programmation, gestion de serveur, soutien technique, analyse, évaluation, intégration, gestion de projets, etc. Voilà ce qui défini tout ce qui m''a attiré vers ce domaine. J''aime le fait d’être en mesure de toucher à tous les aspects d''un projet. Je m''occupe de l''analyse des besoins des clients, j''élabore une prévision budgétaire selon les requêtes, je gère la mise en production et les échéanciers puis finalement je m''occupe de toutes les étapes de la livraison du produit final. Voilà ce que j''appelle la liberté.', 2010),
(27, 'Mélina Déry', 'Chargée de projets et designer Web', 'Dompteurs de Souris', 'www.dompteurs.com', 'Ayant le profil multimédia au secondaire, je désirais poursuivre dans cette branche au niveau collégial. Ce domaine m’intéressait alors je souhaitais le découvrir d''avantage et l’approfondir pour en faire ma profession. Maintenant, ce que je préfère le plus dans la pratique de mon métier est le fait de ne pas avoir de routine établie! Chaque journée est différente et m’apporte de nouveaux défis.', 2011),
(28, 'Alexandre Beaulieu', 'Programmeur Web', 'Libéo', 'www.libeo.com', 'La Techniques d’intégration multimédia est vraiment complète et permet d''ouvrir de nombreuses portes vers le marché du travail. Elle permet de toucher à beaucoup de choses, ce qui rend les étudiants beaucoup plus versatiles. En tant que programmeur Web, j''adore découvrir de nouvelles technologies. D''ailleurs, dans ce métier, comme tout change rapidement, ça me permet de garder mon cerveau éveillé et d''être en constante évolution.', 2012),
(29, 'Hugo Landry-Hamel', 'Chargé de projet & Stratège Web', 'Unik Média', 'www.unikmedia.ca', 'Je me suis dirigé vers la Techniques d''intégration multimédia pour toucher au Web plutôt qu''à la programmation "logiciel" enseignée en Technique de l’informatique et pour apprendre dans un environnement qui stimule la créativité. Le fait de pouvoir être polyvalent et ainsi pouvoir choisir dans quelle branche je souhaite approfondir mes connaissances et me perfectionner sont ce que je préfère le plus dans la pratique de mon métier.', 2014),
(30, 'Marie-Claude Lizotte', 'Conseillère en communication Web', 'Ville de Québec', 'www.ville.quebec.qc.ca', 'Étant déjà diplômée dans un domaine similaire, je désirais approfondir mes connaissances en développement Web. Puisque j’étais ambivalente entre l’informatique et le graphisme, la Techniques d’intégration multimédia (TIM) rejoignait les côtés cartésien et artistique de ma personnalité. Cette technique est devenue pour moi une voie incontournable et m’a fait découvrir toutes les facettes du domaine en me permettant d’être extrêmement polyvalente et bien outillée. La routine n’existe pas dans ma profession, chaque jour est différent et empreint de défis stimulants. En collaboration avec plusieurs partenaires multidisciplinaires, j’ai la chance de contribuer à l’orientation, à l’analyse et à la réalisation de projets de petite et de grande envergure. Je sais que mon travail peut être un agent facilitant dans le quotidien des gens, c’est ma source de motivation. Mon équipe de travail réalise approximativement 300 demandes par mois et j’ai la chance de pouvoir compter sur trois intégrateurs de la TIM. Ils font la différence!', 2007),
(31, 'Maxime G. Potvin', 'Designer UX', 'Familiprix', 'www.familiprix.com', 'Passionné de design et de programmation, la Techniques d’intégration multimédia était le programme parfait pour m’épanouir. Aujourd’hui, ce que je préfère le plus de mon métier est le dynamisme et l''évolution rapide des technologies et des tendances!', 2014),
(32, 'Jean-Gabriel Rioux', 'Coordonnateur de projet', 'O2 Web', 'www.o2web.ca', 'La TIM m''a premièrement attirée parce que je suis un passionné du Web! Par la suite, j''ai vraiment accroché au programme à cause des gens avec qui je partageais mes cours. Rassemblez des gens avec des passions communes et vous allez créer une dynamique bien spéciale! En tant que Coordonateur de projet chez O2 Web, j''ai souvent à rencontrer des clients. Dans ces rencontres clients, je dois non seulement leur proposer des solutions technologiques efficaces, mais aussi leur partager notre passion pour le domaine du Web!', 2012),
(33, 'Karl Lacroix', 'Directeur-conseil, stratège interactif', 'Absolu', 'www.absolu.ca', 'J’ai choisi la TIM parce que le design Web m''intéressait déjà depuis quelques années; je réalisais des sites Web (pas nécessairement les plus beaux!) avec les connaissances acquises au fur et à mesure. Je voulais donc connaître les meilleures techniques et façons de faire pour réaliser de meilleurs sites Web. Ce que j’aime maintenant le plus est le renouveau constant nécessaire parce que la technologie ne cesse d''évoluer. Pour être à l''avant, il faut donc se renouveler constamment! De plus, j’ai le plaisir de travail en équipe avec un nombre impressionnant de personnes ayant des spécialisations variées pour la réalisation d''un même site Web (du designer au rédacteur, du développeur au designer UX, etc.).', 2010),
(34, 'Dinh-Tam Trinh', 'Webmestre', 'Cégep de Sainte-Foy', 'www.cegep-ste-foy.qc.ca', 'Ce qui m''a tout d''abord intéressé dans le multimédia est le nombre varié de disciplines. La spécialisation est très bien, mais avoir une connaissance globale de tous les aspects d''un métier est très utile! Ce que j''aime le plus est le développement d’une nouvelle application Web « from scratch » : un parfait mélange entre le design utilitaire et de code.\n', 2013),
(35, 'Marie-Ève Tremblay', 'Intégratrice Web', 'O2 Web', 'www.o2web.ca', 'J’ai vue dans dans la TIM la possibilité de marier mes passions, mes intérêts et d’ouvrir mes horizons sur les nouvelles technologies. La technique est complète, variée et elle assure un avenir dans un domaine motivant et en constante innovation. J’aime participer à l’analyse de la production Web et produire des sites dont la structure est solide. J’aime intégrer des visuels modulaires et récupérables. J’aime résoudre des problématiques et continuer à apprendre.\r\n', 2013),
(37, 'Marc-Antoine Charest', 'Développeur Web', 'Leonard', 'www.leonarddg.com', 'Les bonnes perspectives d''emploi ainsi que la constante mise en pratique des apprentissages sont des éléments qui m''ont convaincu de me diriger en Techniques d''intégration multimédia. La diversité des tâches à effectuer et les constants défis qu''apportent les différents projets sur lesquels je travaille sont des aspects qui me plaisent le plus dans mon travail.\n', 2014),
(38, 'Eddie Brodeur Durand', 'Développeur Front-End', 'Chalifour', 'www.chalifour.net', 'J’ai décidé de me diriger en Techniques d''intégration multimédia car on y abordait tous les éléments me permettant de pratiquer un travail relié au Web. Ce que je préfère de mon emploi est le fait de travailler dans un domaine qui change constamment ce qui me permet de toujours être motivé par les nouveaux projets.\r\n', 2012),
(39, 'Stephanie Roy', 'Développeur Front-end', 'Spektrum', 'www.spektrummedia.com', 'J’ai choisi la Techniques d''intégration multimédia car je voulais apprendre à faire des sites Web pour des projets personnels. J''ai rapidement réalisé que le Web était devenu une passion bien au-delà de mes projets personnels. En tant que Développeur front-end, j’aime la diversité des tâches, des fois un peu plus associées au design d’interface et d''autres fois un peu plus en lien avec la programmation. J''aime bien aussi l''évolution constante, il y a toujours quelque chose de nouveau à apprendre.\r\n', 2012),
(40, 'Stéphanie Parcel', 'Développeur Web', 'Evolua', '', 'Je savais que voulais créer à l''aide d''un ordinateur, mais je ne savais pas quoi. Le design m''intéressait autant que la programmation. La TIM a donc été un un excellent moyen de toucher à plusieurs facettes du domaine et ainsi trouver ma passion. Aujourd’hui, que ce soit d''un client, d''un patron ou d''un collègue, entendre la phrase: « tu viens de me simplifier la vie », ça vaut de l''or!\r\n', 2014),
(41, 'Alexia B. Proulx', 'Développeur Web', 'PetalMD', '', 'Je me suis d''abord dirigée dans une formation en informatique mais j''ai rapidement réalisé que le web correspondait plus à mon profil que le développement logiciel. Techniques d''intégration multimédia m''offrait non seulement de perfectionner mes connaissances mais aussi d''aller plus loin que la programmation et de toucher à toutes les facettes du domaine. Ce que je préfère dans mon métier c''est la portée de notre travail. Internet est aujourd''hui la plus importante vitrine et les développeurs en sont en quelques sortes les artisans. Voir les projets sur lesquels j''ai travaillé rencontrer un franc succès sur le net est une véritable fierté. ', 2013);

-- --------------------------------------------------------

--
-- Table structure for table `t_texte`
--

CREATE TABLE IF NOT EXISTS `t_texte` (
  `id_texte` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `titre_texte` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `texte` text COLLATE utf8_unicode_ci,
  `section_et_page` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_texte`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=93 ;

--
-- Dumping data for table `t_texte`
--

INSERT INTO `t_texte` (`id_texte`, `titre_texte`, `texte`, `section_et_page`) VALUES
(1, 'Une formation vivante et actuelle!', '<p>Sur le marché de l’emploi, l’intégrateur réalise des produits numériques interactifs tels que des sites web ou des applications mobiles. Il démontre une expertise qui lui permet d’intervenir de manière créative et rigoureuse dans la majorité des étapes de production faisant de lui une ressource clef qui assure l’unité dans une équipe de travail.</p>\r\n    L’intégrateur :\r\n    <ul>\r\n        <li>participe aux aspects d’analyse et de conception;</li>\r\n        <li>conçoit une expérience utilisateur riche et pertinente en respect des attentes des clients et des besoins des utilisateurs;</li>\r\n        <li>intervient dans l’adaptation du design des interfaces en proposant des solutions en lien avec les problématiques d’accessibilité, d’utilisabilité et de portabilité du produit;</li><li>adapte et optimise différents types de médias numériques (images, vidéos et sons). À l’occasion, il réalise des médias numériques originaux.</li>\r\n    </ul>\r\n    Dans le continuum de production et dans la plus grande partie du temps, l’intégrateur:\r\n    <ul>\r\n        <li>assemble la structure et la présentation du produit interactif à l’aide de différents environnements technologiques complexes et évolutifs;</li>\r\n        <li>propose des solutions créatives visant à améliorer les performances et à résoudre les problèmes de fonctionnalité;</li>\r\n        <li>est en charge de la programmation de la partie du produit qui est en interaction avec l’utilisateur;</li>\r\n        <li>assure la robustesse du code,  sa compatibilité, son optimisation, sa documentation, et exerce le contrôle qualité du produit final;</li><li>est responsable de la production, de la modification et la maintenance du produit interactif.</li>\r\n    </ul>\r\n    <p>Le travail de l’intégrateur s’inscrit dans une pratique méthodique en respect de nombreuses normes et bonnes pratiques. Il réalise des produits accessibles, utilisables et portables.</p>', 'Futur étudiant'),
(3, 'Poursuite des études au niveau universitaire', '<p>La formation technique au collégial permet d’accéder au marché du travail avec un maximum de compétences. Pour différentes raisons, certains étudiants décident de poursuivre leur formation académique et se dirige dansdes programmes universitaires qui leur permettront de parfaire leurs connaissances dans des domaines plus pointus, que ce soit le design graphique ou le génie logiciel par exemple.</p>\r\n    <h3>Les programmes universitaires en lien avec notre formation</h3>\r\n        <p>En lien avec le volet design et conception:<br></p>\r\n        <ul>\r\n            <li><a href="http://www.design.ulaval.ca/programmes/baccalaureat-design-graphique.html" target="_blank">Baccalauréat en Design graphique. (Ce lien s''ouvrira dans une nouvelle fenêtre)</a><p>Université Laval, Québec</p></li>\r\n            <li><a href="http://www.arv.ulaval.ca/basa/" target="_blank">Baccalauréat en art et science de l''animation. (Ce lien s''ouvrira dans une nouvelle fenêtre)</a><p>Université Laval, Québec</p></li>\r\n            <li><a href="http://www.unites.uqam.ca/mi/expliquer_mi.html" target="_blank">Baccalauréat en communication (médias interactifs). (Ce lien s''ouvrira dans une nouvelle fenêtre)</a><p>Université du Québec à Montréal, Montréal</p></li>\r\n            <li><a href="http://finearts.concordia.ca/programsanddepartments/fineartsdepartments/designandcomputationarts/" target="_blank">BFA - Design and Computation Arts. (Ce lien s''ouvrira dans une nouvelle fenêtre)</a><p>Université Concordia, Montréal</p></li>\r\n        </ul>\r\n        <p>En lien avec le volet intégration et programmation:</p>\r\n        <ul>\r\n            <li><a href="http://www.etsmtl.ca/zone2/programmes/1er_cycle/baccalaureat/7070.html" target="_blank">Baccalauréat en génie des technologies de l''information. (Ce lien s''ouvrira dans une nouvelle fenêtre)</a><p>École des technologies supérieures (ÉTS), Montréal</p></li>\r\n            <li><a href="https://capsuleweb.ulaval.ca/pls/etprod7/y_bwckprog.p_afficher_fiche?p_session=200909&p_code_prog=B-IFT&p_code_majr=IFT&p_code_camp=" target="_blank">Baccalauréat en informatique (B. Sc. A.). (Ce lien s''ouvrira dans une nouvelle fenêtre)</a><p>Université Laval, Québec Concentration Internet et applications Web ou Concentration multimédia et developpement de jeux vidéo</p></li>\r\n        </ul>', 'Futur étudiant - Perspectives'),
(5, 'Un collectif multidisciplinaire', '<p>Voici notre équipe de professeurs! Chacun possède un riche bagage en entreprise et a participé à de nombreuses productions multimédias. Nous provenons de disciplines variées telles que l''informatique, le design graphique, l''animation, la vidéo, l''imagerie 3D, la communication, l''infographie et les arts.</p>\r\n<p>Pour nous, il est important que la formation soit le reflet de la réalité en entreprise, mais aussi que la pédagogie soit adaptée à vos besoins d''apprendre et de réussir.</p>\r\n', 'Programme - Équipe '),
(6, 'Promotion 2017', '<p>Qualifiés, déterminés, organisés, responsables, dynamiques... sont quelques-uns des qualificatifs qui siéent aux 23 finissants du programme des Techniques d''intégration multimédia.</p>\r\n<p>Parcourez les fiches personnelles pour découvrir leurs profils et leurs forces. Constatez leur compétence à travers une sélection de réalisations collectives et individuelles.</p>', 'Diplômés'),
(10, 'Auteurs du site', '<p>Ce projet a été choisi parmi les six propositions réalisées dans le cadre du cours Production multimédia VI au printemps 2017. Les auteurs:\r\n<a href="#">VotreNomPrenom</a>, <a href="#">VotreNomPrenom</a>, <a href="#">VotreNomPrenom</a>, <a href="#">VotreNomPrenom</a> et <a href="#">VotreNomPrenom</a> ont remporté les honneurs du Roger d''Or.</p>\r\n          \r\n<ul>\r\n<li><a href="http://www.facebook.com/timcsf" title="Page Facebook du programme Techniques d''intégration multimédia">Facebook</a></li>\r\n<li><a href="http://twitter.com/timcsf" title="Compte Twitter du programme Techniques d''intégration multimédia">Twitter</a></li>\r\n<li><a href="http://www.linkedin.com/groups?gid=2211970" title="Groupe LinkedIn du programme Techniques d''intégration multimédia">LinkedIn</a></li>\r\n</ul>\r\n\r\n<p>© 2017, Techniques d''intégration multimédia, Cégep de Sainte-Foy.</p>\r\n\r\n<script>\r\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,''script'',''//www.google-analytics.com/analytics.js'',''ga'');\r\n\r\n  ga(''create'', ''UA-338031-1'', ''auto'');\r\n  ga(''send'', ''pageview'');\r\n\r\n</script>', 'Toutes les pages'),
(16, 'Stages', '<h2>Dates de début des stages en 2017</h2>\r\n<p>13 mars (3e année)</p>\r\n<p>à partir du 31 mai (1ère et 2e année)</p>\r\n<a href="#">Calendrier complet</a>', 'Stages'),
(17, 'Alternance travail-études', '<p>L''Alternance travail-études (<abbr title="Alternance travail-études">ATE</abbr>) est une stratégie pédagogique qui propose une collaboration entre le milieu d''enseignement et le milieu de travail. Cette collaboration permet aux étudiants d''alterner entre des sessions d''études et des séquences de stages en entreprises.<br> Les stages en Alternances travail-études (<abbr title="Alternance travail-études">ATE</abbr>) sont des stages volontaires. Les étudiants sont libres de s''y inscrire ou non. Les étudiants qui choisissent d''adhérer au programme d''Alternance travail-études doivent toutefois s''engager à compléter la séquence complète des deux stages prévus dans ce programme.</p>\r\n\r\n<h3>Premier stage ATE (pour les étudiants de première année)</h3>\r\n\r\n<p>Le premier des deux stages ATE a lieu durant l''été entre la première et la deuxième année de formation. Il débute dès la fin de la deuxième session. Il doit être d''un minimum de huit semaines.</p>\r\n\r\n<h3>Deuxième stage ATE (pour les étudiants de deuxième année)</h3>\r\n\r\n<p>Le deuxième stage ATE a lieu durant l''été entre la deuxième et la troisième année de formation. Il débute dès la fin de la quatrième session. Il doit être d''un minimum de huit semaines.</p>\r\n\r\n<h3>Caractéristiques des stages ATE</h3>\r\n\r\n<ul>\r\n<li>Chaque stage ATE doit être d''une durée minimale de 280 heures, ce qui correspond à huit semaines de 35 heures.</li>\r\n<li>Les stages ATE sont obligatoirement rémunérés. La rémunération est fixée par l''employeur.</li>\r\n<li>Un stage peut se poursuivre au delà des huit semaines prescrites s''il y a entente entre l''étudiant et le milieu de stage.</li>\r\n<li>Des ateliers préparatoires ont lieu dans les mois précédents le stage: rédaction de CV, de lettre ou courriel d''accompagnement et préparation à une entrevue d''embauche.</li>\r\n<li>Une équipe de professeurs assure l''encadrement des stagiaires pendant l''été.</li>\r\n</ul>\r\n\r\n<h3>Attention : Deuxième stage ATE des étudiants de 3e année à l''hiver 2017</h3>\r\n\r\n<p>Le deuxième stage ATE de nos finissants aura lieu pour une dernière fois durant la session d''hiver, donc dans le courant de leur sixième et dernière session de formation.\r\n<br>Notez qu''à partir de l''hiver 2018, le stage de nos finissants sera un stage crédité obligatoire d''une durée de huit semaines et non plus un stage ATE facultatif complété par un stage crédité court de 2 semaines.</p>\r\n    \r\n', 'Stages - Alternance travail-études'),
(27, 'Les stages en Techniques d''intégration multimédia', '<h2>Séquence des stages 2017-2018</h2>\r\n\r\n<h3>Stage des étudiants de 3e année</h3>\r\n                    \r\n<h4>ATE-2 + crédité</h4>\r\n\r\n<p>Début 13 mars 2018 / Durée min. de 330 h / 10 semaines (avec interruption)</p>\r\n\r\n<p>Ce stage est rémunéré. Les stages rémunérés sont admissibles à des crédits d''impôt avantageux. Notez que pour les deux dernières semaines du stage (22 mai 2018 au 2 juin 2018), la rémunération est optionnelle.</p>\r\n\r\n\r\n<h4>En détail</h4>\r\n\r\n<ul>\r\n<li><strong> Stage ATE-2</strong><br> (8 semaines) <br> du 13 mars au 5 mai 2018</li>\r\n<li><strong> Retour en classe</strong> <br> du 8 mai au 19 mai 2018</li>\r\n<li><strong> Stage crédité</strong><br> (2 semaines) <br> du 22 mai au 2 juin 2018</li>\r\n</ul>\r\n\r\n<h4>Crédité seulement</h4>\r\n<p>Début 13 mars 2018 / Durée de 130 h / 4 semaines</p>\r\n<p>Pour les étudiants qui ne participent pas au programme ATE, il s''agit d''un stage de quatre semaines non rémunéré. Notez que très peu d''étudiants sont disponibles pour cette variante du dernier stage.</p>\r\n<h4>Attention</h4>\r\n<p>Notez qu''à partir de l''hiver 2019, le stage de nos étudiants de 3e année sera obligatoirement un stage d''une durée de huit semaines.</p>\r\n\r\n<h3>Stage des étudiants de 2<sup>e</sup> année</h3>\r\n                    \r\n<h4>ATE-2</h4>\r\n                                \r\n<p>Début à partir du 31 mai 2018 / Durée min. de 280 h / 8 semaines</p>\r\n                                \r\n<p>Il s''agit d''un stage rémunéré. Les stages rémunérés sont admissibles à des crédits d''impôt avantageux.</p>\r\n\r\n\r\n\r\n<h3>Stage des étudiants de 1e année</h3>\r\n\r\n<h4>ATE-1</h4>\r\n\r\n<p>Début à partir du 31 mai 2018 / Durée min. de 280 h / 8 semaines</p>\r\n\r\n<p>Il s''agit d''un stage rémunéré. Les stages rémunérés sont admissibles à des crédits d''impôt avantageux.</p>\r\n', 'Stages'),
(29, 'Responsable des stages', '<h2>Pour nous joindre:</h2>\r\n\r\n<h4>Responsable des stages</h4>\r\n \r\n<ul>\r\n<li> AUDREY MORNEAU-GAGNON</li>\r\n<li> tel: (418) 659-6600 </li>\r\n<li>poste 6668</li>\r\n</ul>\r\n<a href="#">contacter</a>', 'Stages'),
(31, 'Coordination', '<p>Pour obtenir plus amples renseignements, contactez la coordination:</p>\r\n<h4>Coordonateur</h4>\r\n<ul>\r\n<li> SYLVAIN LAMOUREUX</li>\r\n<li> tel: (418) 659-6600 </li>\r\n<li>poste 6662</li>\r\n</ul>\r\n<a href="#">contacter</a>\r\n', 'Nous joindre'),
(33, 'Préalables', ' <p>Il n''y a aucun préalable spécifique du secondaire exigé pour être admis en Techniques d''intégration multimédia. Il suffit de répondre aux conditions générales d''admission, notamment :</p>\r\n    <ul>\r\n        <li>Détenir un diplôme d''études secondaires (DES du secteur des jeunes ou celui des adultes)</li>\r\n        ou\r\n        <li>Détenir un diplôme d''études professionnelles (DEP) et avoir réussi les matières suivantes:</li>\r\n        \r\n            <li>Langue d''enseignement de la 5e secondaire</li>\r\n            <li>Langue seconde de la 5e secondaire</li>\r\n            <li>Mathématique de la 4e secondaire</li>\r\n        \r\n    </ul>\r\n', 'Futur étudiant'),
(40, 'Processus d''admission', '<p>Les demandes d''admission au programme Techniques d''intégration multimédia sont reçues avant le 1er mars de chaque année afin de participer au 1er tour pour l’admission à l’automne (1er mai pour participer au 2e tour, 1er juin pour participer au 3e tour et 1er août pour participer au 4e tour).</p>\r\n<p>Pour compléter votre demande d''admission à notre programme, vous devez faire une demande d''admission au Service régional d''admission au collégial de Québec (<span data-title="Service régional d''admission au collégial de Québec">SRAQ</span>). Vous retrouvez toutes les informations sur leur site : <a href="http://www.sraq.qc.ca" target="_blank">sraq.qc.ca</a></p>\r\n<p>Une fois votre demande d''admission reçue, le Service de l’admission et du recrutement du Cégep de Sainte-Foy analysera votre dossier en se basant sur l''excellence du dossier scolaire. Au prorata du nombre de demandes par catégorie (secondaire, post-secondaire, adultes), environ 75 étudiants recevront une offre d’admission au programme.</p>', 'Futur étudiant'),
(58, 'International', '<h2>Stages internationaux</h2>\r\n\r\n<p>Le programme Techniques d''intégration multimédia du Cégep de Sainte-Foy vous offre la possibilité de terminer votre formation à l''étranger en y réalisant un stage en entreprise de 10 semaines.</p><p>Le bureau international du Cégep de Sainte-Foy et notre programme ont établi des partenariats avec ces institutions françaises:</p>\r\n\r\n<ul>\r\n<li><a href="http://iut.univ-mlv.fr/" target="_blank">L''<abbr title="Institut universitaire de Technologie">IUT</abbr> de Marne-Lavallée</a>, à Paris, France</li>\r\n<li><a href="http://iuthaguenau.u-strasbg.fr/" target="_blank">L''<abbr title="Institut universitaire de Technologie">IUT</abbr> de Haguenau</a>, près de Strasbourg, France</li>\r\n</ul>\r\n<p>Il s''agit d''une opportunité de vivre une expérience internationale inoubliable!</p>\r\n<h2>Témoignages:</h2>                      \r\n             \r\n<p><img src="#" alt="Gabriel Paquin"></p>\r\n   \r\n<ul>\r\n<li><h3>Gabriel Paquin<br></h3></li>                               \r\n<li><strong> 20 mars 2016 au 6 juin 2016</strong></li>\r\n</ul>\r\n                                                   \r\n<p>Ce voyage m’a littéralement servi de carburant pour l’année 2015-2016 et tous les efforts que j’ai mis se sont vus-sur-récompensés par cette expérience qui a fait naître quelque chose de nouveau en moi et qui surtout, restera pour toujours gravée dans ma mémoire.</p><br>\r\n<a title="Témoignage de Gabriel Paquin" href="#" target="_blank">Témoignage de Gabriel Paquin (53,5 ko, PDF)</a>                       \r\n                                \r\n<p><img src="#" alt="Laurence Fiset-Grenier"></p>\r\n\r\n<ul>\r\n<li><h3>Laurence Fiset-Grenier</h3></li><br>                              \r\n<li><strong> 20 mars 2016 au 6 juin 2016 </strong></li>\r\n</ul>\r\n                         \r\n<p>Cette expérience est sans aucun doute la meilleure que j’ai pu vivre jusqu’à maintenant et je recommencerais n’importe quand. Elle m’a permis de me développer sur le plan personnel, car c’était la première fois que je partais aussi longtemps, mais aussi la première fois que je vivais en appartement. J’ai donc beaucoup développé mon autonomie et ma débrouillardise.</p><br> <a  title="Témoignage de Laurence Fiset-Grenier" href="#" target="_blank">Témoignage de Laurence Fiset-Grenier (1007 ko, PDF)</a>\r\n                 \r\n<p><img src="#" alt="François Genesse"></p>\r\n<ul>\r\n<li><h3>François Genesse<br></h3></li>                               \r\n<li><strong> 20 mars 2016 au 6 juin 2016</strong></li>\r\n</ul>\r\n                           \r\n<p>C’est une merveilleuse occasion de passer 3 mois entouré d’histoire dans\r\nune ville vivante et dynamique où il fait bon vivre.</p><br>\r\n<a  title="Témoignage de François Genesse" href="#" target="_blank">Témoignage de François Genesse (459 ko, PDF)</a>', 'Stages - International'),
(60, 'Présentation', '<h2>Présentation</h2>\r\n<p>Les diplômés du programme Techniques d’intégration multimédia occupent des professions diversifiées. Alors que certains préfèrent poursuivre leurs études à l’Université, la majorité occupe un emploi stimulant en entreprises et quelques-uns se lancent en affaires.</p>', 'Futur étudiant - Perspectives'),
(62, 'Témoignages', '<p>Les techniciens en intégration multimédia doivent se perfectionner constamment pour suivre l''évolution rapide du secteur de la production multimédia.</p>\n\n<p>Voici quelques portraits témoignant du parcours de nos diplômés :</p>', 'Futur étudiant - Perspectives - Témoignages'),
(63, 'Statistiques', '<p>Les perspectives d''emploi sont excellentes pour les techniciens en multimédia. Avec un secteur d''emploi qui ne cesse de s''agrandir, une ville qui vit au rythme de la technologie et un taux de placement de 92%, vous savez que le programme TIM est une porte incroyable vers le marché du travail.</p>\r\n        <p>Commentaires sur la situation du marché et perspectives d’emploi</p>\r\n        <ul>\r\n            <li>Formation polyvalente permettant d’accéder à des emplois variés en multimédia.</li>\r\n            <li>Le marché du travail est international.</li>\r\n            <li>Un bon nombre d’emplois se retrouvent dans la région de Québec.</li>\r\n            <li>L’essor du marché des jeux vidéo et l’arrivée d’entreprises importantes dans la région stimulent la demande de candidats.</li>\r\n        </ul>\r\n        <h3>Taux de placement</h3>\r\n       92%\r\n        <h3>Salaire - Taux horaire</h3>\r\n        <ul>\r\n            <li class="type">INITIAL</li>\r\n            <li class="montant">17,76$</li>\r\n            <li class="type">SUPÉRIEUR</li>\r\n            <li class="montant">22,01$</li>\r\n        </ul>', 'Futur étudiant - Perspectives'),
(64, 'Étudiant d''un jour', '<p>Vous êtes au secondaire et cherchez quel programme au cégep répondra le mieux à vos goûts? Pourquoi ne pas venir vivre une journée avec nous, en Techniques d''intégration multimédia?</p>\r\n<p>Contactez <a href="#">Benoît Frigon</a> pour en savoir plus.</p>\r\n<a href="#">Contacter</a>', 'Futur étudiant'),
(68, 'Note légale', '<p>Note Légale</p>\r\n\r\n<p>Ce site peut contenir des liens vers des sites tiers. Le Cégep de Sainte-Foy n''exerce aucun contrôle sur ces sites et n''assume par conséquent aucune responsabilité quant à leur disponibilité et leur contenu.</p>', 'Diplômés - Fiche étudiant'),
(74, 'Pied de page admin', '<p>Équipe VotreNomEquipe</p>\r\n\r\n<p>Site produit par VotreNomPrenom, VotreNomPrenom, VotreNomPrenom, VotreNomPrenom et VotreNomPrenom.</p>\r\n\r\n<p>En cas de problème: ggaulinlaquerre@cegep-ste-foy.qc.ca</p>\r\n', 'Admin'),
(75, 'Cimmi', '<p>Le Cégep de Sainte-Foy est partenaire du <a href="http://cimmi.qc.ca" target="_blank">Centre en imagerie numérique et médias interactifs (CIMMI)&#x21e5;</a> dans la réalisation de projets de recherche appliquée.</p>', 'Accueil'),
(76, 'Légende', '<p>Le premier chiffre représente le nombre d''heures de cours par semaine. Le deuxième chiffre représente le nombre d''heures de laboratoire ou de stage par semaine. Le troisième chiffre représente le nombre d''heures de travail personnel que l''étudiant devrait fournir chaque semaine.</p>', 'Programme - Grille de cours'),
(77, 'Diplômés 2002-2012', '<p>Voici les étudiants des 12 dernières cohortes du programme Techniques d''intégration multimédia.</p>\r\n\r\n<p>Maintenant sur le marché du travail, ces diplômés sont la preuve même des ouvertures qu''offre la TIM. De directeur artistique à programmeur en chef en passant par développeur mobile, les anciens finissants montrent le potentiel énorme de cette technique.</p>\r\n', 'Diplômés - Cohortes 2002-2012'),
(78, 'Cégep de Sainte-Foy', '<p><a target="_blank" href="#">2410 chemin Sainte-Foy, Québec\r\n<br>G1V 1T3</a></p>', 'Nous joindre'),
(82, 'Avez-vous le profil?', '<p>10 questions pour savoir si vous possédez les habiletés nécessaires au travail d’intégrateur multimédia.</p>', 'Programme - As-tu le profil?'),
(83, 'Faites-vous le bon choix?', '<p>5 questions pour savoir si vous connaissez bien la formation offerte dans le programme Techniques d’intégration multimédia.</p>', 'Programme - As-tu le profil?'),
(84, 'Étudiant', ' <h2>Étudiant?</h2>\r\n\r\n <p>Démystifie le cours <a href="#">Stage en entreprise</a></p>\r\n\r\n<p>Découvre l''<a href="#">Alternance travail-études</a></p>\r\n\r\n<p>Explore les <a href="#">possibilités de stage en Europe</a></p>', 'Stages - Page d''entrée de la section'),
(85, 'Employeur', '<h2>Employeur?</h2>\r\n                            \r\n<p>Consultez les <a href="#">profils de compétences (format pdf)</a> des étudiants de 1e, 2e et 3e année</p>\r\n\r\n<p>Faites votre <a href="#f">Offre de stage (format pdf)</a></p>\r\n\r\n<p>Consultez le <a href="#">Guide des employeurs (format pdf)</a></p>', 'Stages - Page d''entrée de la section'),
(86, 'Design vs Programmation', '<p>Deux faces d''une même pièce que vous pourrez explorer dans le programme TIM. Lors de votre formation, vous apprendrez des techniques de conception visuelle en plus de découvrir comment transformer ces concepts en sites web réels à l''aide de programmation</p>.', 'Accueil'),
(87, 'Une formation orientée web', '<p>Avec la multiplication des plateformes web, créer quelque chose d''accessible pour tous est difficile. C''est pourquoi le programme TIM évolue en même temps que l''univers autour de lui. Vous pourrez y découvrir comment développer des applications et des sites web accessibles pour toutes les plateformes.</p>', 'Accueil'),
(88, 'Au coeur de la communauté', '<p>Les enseignants du programme TIM travaillent main dans la main avec les entreprises de la région et ils en font profiter les étudiants. Stages, visites en entreprises, conférences et ATE sont quelques unes des opportunités qui sont offertes aux élèves.</p>', 'Accueil'),
(89, 'Les premiers pas vers un emploi', '<p>Avec un secteur d''emploi qui ne cesse de s''agrandir, une ville qui vit au rythme de la technologie et un taux de placement de 92%, vous savez que le programme TIM est une porte incroyable vers le marché du travail.</p>', 'Accueil'),
(90, 'Accessibilité', '<h2>Pourquoi?</h2>\r\n\r\n<p>Le site du programme Techniques d''intégration multimédia du Cégep de Ste-Foy a été conçu avec un soucis pour l''accessibilité. En TIM, nous avons à cœur l''accès à internet pour tous et chacun et avons développé le site en conséquence. En effet, tout au long de la conception et de la production, nous avons gardé en tête les Règles pour l’accessibilité des contenus Web <a href="http://www.w3.org/Translations/WCAG20-fr/" target="_blank">WCAG 2.0. (Ce lien s''ouvrira dans une nouvelle fenêtre)</a> et nous nous sommes efforcés de nous y conformer le plus possible.</p>\r\n\r\n<h2>Concrètement</h2>\r\n\r\n<p>Concrètement, nous avons porté une attention particulière à la sémantique des pages de même qu''à l''utilisation concise et conforme des différentes balises. Nous avons documenté toutes les images et destinations de même que les champs de formulaire. Nous supportons également le grossissement 200% de la police et fournissons une <a href="#">feuille de style alternative avec hauts contrastes</a>, deuxième item du menu caché en entête accessible à la navigation au clavier.</p>', 'Accessibilité'),
(91, 'Qu''est-ce qu''on apprend?', '<p>La formation en Techniques d’intégration multimédia du Cégep de Sainte-Foy te permettra d’apprendre comment:</p>\r\n<ul>\r\n  <li>\r\n    <ul>\r\n      <li data-title="Blender"><img src="#" alt="Blender"></li>\r\n      <li data-title="Suite Adobe CC"><img src="#" alt="Suite Adobe CC"></li>\r\n    </ul>\r\n    <p>Créer ou modifier différents médias: images, son, vidéos, animations 2D et 3D.</p>\r\n  </li>\r\n  <li>\r\n    <ul>\r\n      <li data-title="Suite Adobe CC"><img src="#" alt="Suite Adobe CC"></li>\r\n      <li data-title="Hypertext Markup Language"><img src="#" alt="HTML, XHTML"></li>\r\n    </ul>\r\n    <p>Créer ou adapter une interface ergonomique et esthétique pour un produit interactif, comme un site web ou une application mobile.</p>\r\n  </li>\r\n  <li>\r\n   \r\n    <ul>\r\n      <li data-title="Hypertext Markup Language"><img src="#" alt="HTML, XHTML"></li>\r\n      <li data-title="Cascading Style Sheets"><img src="#" alt="CSS 3"></li>\r\n      <li data-title="Web Content Accessibility Guidelines"><img src="#" alt="WCAG 2.0"></li>\r\n      <li data-title="Extensible Markup Language"><img src="#" alt="XML"></li>\r\n    </ul>\r\n    <p>Intégrer des sites web dans le respect des normes et des standards de l’industrie.</p>\r\n  </li>\r\n  <li>\r\n    <ul>\r\n      <li data-title="WordPress"><img src="#" alt="WordPress"></li>\r\n      <li data-title="PHP5"><img src="#" alt="PHP5"></li>\r\n      <li data-title="PHPStorm"><img src="#" alt="PHPStorm"></li>\r\n      <li data-title="Structured Query Language"><img src="#" alt="SQL"></li>\r\n    </ul>\r\n    <p>Développer la programmation des sites Web du côté serveur.</p>\r\n  </li>\r\n  <li>\r\n    <ul>\r\n      <li data-title="TypeScript"><img src="#" alt="TypeScript"></li>\r\n      <li data-title="JavaScript"><img src="#" alt="JavaScript"></li>\r\n      <li data-title="jQuery"><img src="#" alt="jQuery"></li>\r\n      <li data-title="Asynchronous JavaScript and XML"><img src="#" alt="AJAX"></li>\r\n    </ul>\r\n    <p>Programmer l’interactivité des fonctionnalités des différentes pages avec du code JavaScript, en portant une attention aux particularités des différents navigateurs, tout en se souciant de l’expérience utilisateur et de l’accessibilité.</p>\r\n  </li>\r\n  <li>\r\n    <ul>\r\n      <li data-title="Terminal"><img src="#" alt="Terminal"></li>\r\n      <li data-title="Git"><img src="#" alt="GIT"></li>\r\n      <li data-title="VirtualBox"><img src="#" alt="VirtualBox"></li>\r\n      <li data-title="ArgoUML"><img src="#" alt="ArgoUML"></li>\r\n    </ul>\r\n    <p>Planifier et gérer une production multimédia.</p>\r\n  </li>\r\n  <li>\r\n    <ul>\r\n      <li data-title="Internet"><img src="#" alt="Internet"></li>\r\n    </ul>\r\n    <p>Assurer une veille technologique nécessaire à l’adaptation des connaissances à travers l’évolution constante des technologies.</p>\r\n  </li>\r\n</ul>', 'Programme - Page d''entrée de la section'),
(92, 'Logiciels et langages utilisés', '<ul><li>Suite Adobe CC</li>\r\n<li>Blender</li>\r\n<li>Argo Uml</li>\r\n<li>Xml Spy</li>\r\n<li>Brackets</li>\r\n<li>PHPStorm</li>\r\n<li>Terminal ou/et Console GIT</li>\r\n<li>Virtual Box</li>\r\n<li>JSON</li>\r\n<li>XML</li>\r\n<li>HTML, XHTML</li>\r\n<li>CSS 3</li>\r\n<li>WCAG 2.0</li>\r\n<li>JavaScript</li>\r\n<li>AJAX (jQuery)</li>\r\n<li>DOM 2</li>\r\n<li>PHP 5</li>\r\n<li>SQL</li>\r\n<li>WordPress</li></ul>\r\n', 'Programme - Page d''entrée de la section');

-- --------------------------------------------------------

--
-- Table structure for table `t_usager_admin`
--

CREATE TABLE IF NOT EXISTS `t_usager_admin` (
  `nom_usager_admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Même nomenclature que pour accès Novell',
  `mot_de_passe` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'xyz345tim',
  `niveau_acces` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=étudiant; 2=prof; 3=administrateur',
  PRIMARY KEY (`nom_usager_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Détermine l''accès à la section administrative';

--
-- Dumping data for table `t_usager_admin`
--

INSERT INTO `t_usager_admin` (`nom_usager_admin`, `mot_de_passe`, `niveau_acces`) VALUES
('1142096', 't1m2017', '1'),
('1231359', 't1m2017', '1'),
('1235150', 't1m2017', '1'),
('1235170', 't1m2017', '1'),
('1332695', 't1m2017', '1'),
('1341640', 't1m2017', '1'),
('1438876', 't1m2017', '1'),
('1460111', 't1m2017', '1'),
('1460253', 't1m2017', '1'),
('1461210', 't1m2017', '1'),
('1461629', 't1m2017', '1'),
('1462155', 't1m2017', '1'),
('1462346', 't1m2017', '1'),
('1464690', 't1m2017', '1'),
('1464711', 't1m2017', '1'),
('1465105', 't1m2017', '1'),
('1465816', 't1m2017', '1'),
('1466638', 't1m2017', '1'),
('1466777', 't1m2017', '1'),
('1701750', 't1m2017', '1'),
('1701755', 't1m2017', '1'),
('1701858', 't1m2017', '1'),
('1731561', 't1m2017', '1'),
('admin', 'xyz345tim', '3'),
('aumorneau', 'xyz345tim', '3'),
('bfrigon', 'xyz345tim', '3'),
('bouellet', 'xyz345tim', '3'),
('crufiange', 'xyz345tim', '3'),
('efevrier', 'xyz345tim', '3'),
('ggaulinlaquerre', 'xyz345tim', '3'),
('gsimard', 'xyz345tim', '3'),
('jcote', 'xyz345tim', '3'),
('jsasseville', 'xyz345tim', '3'),
('jslessard', 'xyz345tim', '3'),
('klacroix', 'xyz345tim', '3'),
('magingras', 'xyz345tim', '3'),
('mdecorte', 'xyz345tim', '3'),
('mrouleau', 'xyz345tim', '3'),
('nmcclure', 'xyz345tim', '3'),
('pagagnon', 'xyz345tim', '3'),
('plarose', 'xyz345tim', '3'),
('rsavard', 'xyz345tim', '3'),
('slamoureux', 'xyz345tim', '3'),
('yhelie', 'xyz345tim', '3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
