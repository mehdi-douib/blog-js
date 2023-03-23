-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 16 mars 2023 à 13:48
-- Version du serveur : 10.6.5-MariaDB
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `article`, `id_utilisateur`, `id_categorie`, `date`, `image`) VALUES
(26, 'Qu\'est-ce que HTML ?', 'HTML signifie « HyperText Markup Language » qu\'on peut traduire par « langage de balises pour l\'hypertexte ». Il est utilisé afin de créer et de représenter le contenu d\'une page web et sa structure. D\'autres technologies sont utilisées avec HTML pour décrire la présentation d\'une page (CSS) et/ou ses fonctionnalités interactives (JavaScript).\r\n\r\nHTML fonctionne grâce à des « balises » qui sont insérées au sein d\'un texte normal. Chacune de ces balises indique la signification de telle ou telle portion de texte dans le site. On parle d\'« hypertexte » en référence aux liens qui connectent les pages web entre elles. C\'est la mécanique originelle du « World Wide Web » que nous connaissons aujourd\'hui. En écrivant et publiant des pages web, vous devenez un acteur du Web dès que votre site est accessible en ligne.', 8, 1, '2023-03-16 12:57:33', 'html.jpg'),
(27, 'PHP MYADMIN', 'Il s\'agit de l\'une des plus célèbres interfaces pour gérer une base de données MySQL sur un serveur PHP. De nombreux hébergeurs, gratuits comme payants, le proposent ce qui évite à l\'utilisateur d\'avoir à l\'installer.\r\n\r\nCette interface pratique permet d\'exécuter, très facilement et sans grandes connaissances en bases de données, des requêtes comme les créations de table de données, insertions, mises à jour, suppressions et modifications de structure de la base de données, ainsi que l\'attribution et la révocation de droits et l\'import/export. Ce système permet de sauvegarder commodément une base de données sous forme de fichier .sql et d\'y transférer ses données, même sans connaître SQL.\r\n\r\nLes requêtes SQL restent possibles, ce qui permet de les tester interactivement lors de la création d\'un site pour les utiliser ensuite en batch (c\'est-à-dire en différé) une fois au point.', 8, 3, '2023-03-16 13:01:34', 'myadm.png'),
(28, 'Quelles sont les différences entre Java et JavaScript ?', 'Java et JavaScript sont deux langages de programmation.\r\nLeur point commun : ce sont tous les deux des langages de type C et ont de ce fait la même structure. Ils sont cependant très différents dans leur fonctionnement et leur utilisation.\r\n\r\nJavaScript est un langage interprété, c’est-à-dire qu’il est directement lu et traduit au fur et à mesure de l’exécution du programme. Le JavaScript est principalement utilisé au travers de votre navigateur internet.\r\nTandis que Java est un langage dit compilé : il faut passer par la JVM (Java Virtual Machine) afin qu’il soit interprété en langage « machine ».\r\n\r\nAutre différence entre ces deux langages : JavaScript a un typage faible tandis que celui de Java est à typage fort. Typer une variable consiste à identifier le type de données à manipuler (Chaine de caractère, nombre, boolean* etc.)\r\n\r\nEn plus de ces deux différences notables, ces deux langages ne sont pas utilisés pour les mêmes raisons ni finalités.', 8, 4, '2023-03-16 13:02:53', 'jvsjs.jpg'),
(29, 'PHP - Les Boucles', 'Dans la série des éléments de base de PHP à connaître absolument, voici les boucles ! Répéter des instructions, ça, l\'ordinateur sait faire (et en plus, il ne bronche jamais) !\r\n\r\nImaginez que vous êtes en train de créer le forum de votre site. Sur une page, on affiche par exemple une trentaine de messages. Il serait bien trop long et répétitif de dire « Affiche le message 1 et le nom de son auteur », « Affiche le message 2 et le nom de son auteur », « Affiche le message 3 et le nom de son auteur », etc. Pour éviter d\'avoir à faire cela, on peut utiliser un système de boucle qui nous permettra de dire une seule fois : « Affiche 30 messages et le nom de leur auteur à chaque fois ».\r\n\r\nBien entendu, nous n\'allons pas pouvoir apprendre à créer le forum de votre site dans ce chapitre, il est encore trop tôt. Néanmoins, prenez bien le temps de comprendre le fonctionnement des boucles car nous en aurons besoin tout au long de ce cours. Ce n\'est pas bien compliqué, vous allez voir !', 8, 3, '2023-03-16 13:04:44', 'boucle.jpg'),
(30, 'POO - Programation Orienté Objet', 'La programmation par objet ( POO ) a été intégrée au langage PHPdans sa version 4. Mais à cette époque, le modèle objet de PHP étaitbeaucoup trop sommaire. Nous ne pouvions réellement parler deprogrammation orientée objet. Les développeurs de PHP se sont alorspenchés sur la question et ont amélioré ce modèle objet qui, depuis laversion 5, n\'a plus rien à envier aux autres langages objets comme Javaou C++.', 8, 3, '2023-03-16 13:06:04', 'poo.jpg'),
(31, 'PHP MYADMIN', 'Il s\'agit de l\'une des plus célèbres interfaces pour gérer une base de données MySQL sur un serveur PHP. De nombreux hébergeurs, gratuits comme payants, le proposent ce qui évite à l\'utilisateur d\'avoir à l\'installer.\r\n\r\nCette interface pratique permet d\'exécuter, très facilement et sans grandes connaissances en bases de données, des requêtes comme les créations de table de données, insertions, mises à jour, suppressions et modifications de structure de la base de données, ainsi que l\'attribution et la révocation de droits et l\'import/export. Ce système permet de sauvegarder commodément une base de données sous forme de fichier .sql et d\'y transférer ses données, même sans connaître SQL.\r\n\r\nLes requêtes SQL restent possibles, ce qui permet de les tester interactivement lors de la création d\'un site pour les utiliser ensuite en batch (c\'est-à-dire en différé) une fois au point.', 8, 3, '2023-03-16 13:08:02', 'myadm.png'),
(32, 'Qu\'est-ce que JAVASCRIPT ?', 'JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives mais aussi pour les serveurs2 avec l\'utilisation (par exemple) de Node.js3. C\'est un langage orienté objet à prototype, c\'est-à-dire que les bases du langage et ses principales interfaces sont fournies par des objets qui ne sont pas des instances de classes, mais qui sont chacun équipés de constructeurs permettant de créer leurs propriétés, et notamment une propriété de prototypage qui permet de créer des objets héritiers personnalisés. En outre, les fonctions sont des objets de première classe. Le langage supporte le paradigme objet, impératif et fonctionnel. JavaScript est le langage possédant le plus large écosystème grâce à son gestionnaire de dépendances npm, avec environ 500 000 paquets en août 20174.', 8, 4, '2023-03-16 13:09:34', 'js.jpg'),
(33, 'Qu\'est-ce que PHP ?', 'PHP (officiellement, ce sigle est un acronyme récursif pour PHP Hypertext Preprocessor) est un langage de scripts généraliste et Open Source, spécialement conçu pour le développement d\'applications web. Il peut être intégré facilement au HTML.\r\nAu lieu d\'utiliser des tonnes de commandes afin d\'afficher du HTML (comme en C ou en Perl), les pages PHP contiennent des fragments HTML dont du code qui fait \"quelque chose\" (dans ce cas, il va afficher \"Bonjour, je suis un script PHP !\"). Le code PHP est inclus entre une balise de début <?php et une balise de fin ?> qui permettent au serveur web de passer en mode PHP.', 8, 3, '2023-03-16 13:13:24', 'php.jpg'),
(34, 'Qu\'est-ce que CSS ?', 'Cascading Style Sheets (CSS) est un langage de feuille de style utilisé pour décrire la présentation d\'un document écrit en HTML ou en XML (on inclut ici les langages basés sur XML comme SVG ou XHTML). CSS décrit la façon dont les éléments doivent être affichés à l\'écran, sur du papier, en vocalisation, ou sur d\'autres supports.\r\n\r\nCSS est l\'un des langages principaux du Web ouvert et a été standardisé par le W3C. Ce standard évolue sous forme de niveaux (levels), CSS1 est désormais considéré comme obsolète, CSS2.1 correspond à la recommandation et CSS3, qui est découpé en modules plus petits, est en voie de standardisation.', 8, 2, '2023-03-16 13:20:34', 'css.jpg'),
(35, 'PHP - FRAMEWORKS', 'PHP, ou préprocesseur hypertexte, est un langage de script côté serveur open source. Il est également extrêmement populaire - près de 80% de tous les sites Web utilisaient PHP en octobre 2018.\r\n\r\nMais comment savoir quel framework PHP vous convient le mieux?\r\n\r\nCet article répertorie les 10 meilleurs cadres PHP disponibles pour vous aider à choisir.\r\n\r\nPourquoi utiliser un framework PHP?\r\nUn framework PHP fournit une structure de base pour rationaliser le développement d\'applications Web. Nous les utilisons car ils accélèrent le processus de développement.\r\n\r\nSurtout, la réactivité des sites Web et des applications construits à l\'aide de frameworks PHP aide les entreprises à répondre à leurs besoins de performance. Il ne fait donc aucun doute que les frameworks PHP continueront de gagner en attention et en popularité en 2019.', 8, 3, '2023-03-16 13:28:03', 'framephp.jpg'),
(36, 'Quel frameword JAVASCRIPT choisir ? ', 'Si vous maîtrisez un petit peu le JavaScript, vous avez déjà dû vous retrouver face au choix d’un framework front-end pour votre application web. Si tel est le cas, comment avez-vous fait ?\r\n\r\nDifficile de connaître tous les frameworks, et de savoir rapidement lesquelles conviennent à son projet.\r\n\r\nC’est pourquoi nous avons choisi de vous proposer un article autour de trois des frameworks les plus populaires, pour passer en revue leurs avantages, inconvénients et caractéristiques spécifiques.', 8, 4, '2023-03-16 13:29:55', 'top10.jpg'),
(37, 'PHP - Les Boucles', 'Dans la série des éléments de base de PHP à connaître absolument, voici les boucles ! Répéter des instructions, ça, l\'ordinateur sait faire (et en plus, il ne bronche jamais) !\r\n\r\nImaginez que vous êtes en train de créer le forum de votre site. Sur une page, on affiche par exemple une trentaine de messages. Il serait bien trop long et répétitif de dire « Affiche le message 1 et le nom de son auteur », « Affiche le message 2 et le nom de son auteur », « Affiche le message 3 et le nom de son auteur », etc. Pour éviter d\'avoir à faire cela, on peut utiliser un système de boucle qui nous permettra de dire une seule fois : « Affiche 30 messages et le nom de leur auteur à chaque fois ».\r\n\r\nBien entendu, nous n\'allons pas pouvoir apprendre à créer le forum de votre site dans ce chapitre, il est encore trop tôt. Néanmoins, prenez bien le temps de comprendre le fonctionnement des boucles car nous en aurons besoin tout au long de ce cours. Ce n\'est pas bien compliqué, vous allez voir !', 8, 3, '2023-03-16 13:32:36', 'boucle.jpg'),
(38, 'POO - Programation Orienté Objet', 'La programmation par objet ( POO ) a été intégrée au langage PHPdans sa version 4. Mais à cette époque, le modèle objet de PHP étaitbeaucoup trop sommaire. Nous ne pouvions réellement parler deprogrammation orientée objet. Les développeurs de PHP se sont alorspenchés sur la question et ont amélioré ce modèle objet qui, depuis laversion 5, n\'a plus rien à envier aux autres langages objets comme Javaou C++.', 8, 3, '2023-03-16 13:37:42', 'poo.jpg'),
(39, 'PDO - PHP DATA OBJECT', 'L\'extension PHP Data Objects (PDO) définit une excellente interface pour accéder à une base de données depuis PHP. Chaque pilote de base de données implémenté dans l\'interface PDO peut utiliser des fonctionnalités spécifiques de chacune des bases de données en utilisant des extensions de fonctions. Notez que vous ne pouvez exécuter aucune fonction de base de données en utilisant l\'extension PDO par elle-même ; vous devez utiliser un driver PDO spécifique à la base de données pour accéder au serveur de base de donnée', 8, 3, '2023-03-16 13:39:16', 'poo.jpg'),
(40, 'PHP MYADMIN', 'Il s\'agit de l\'une des plus célèbres interfaces pour gérer une base de données MySQL sur un serveur PHP. De nombreux hébergeurs, gratuits comme payants, le proposent ce qui évite à l\'utilisateur d\'avoir à l\'installer.\r\n\r\nCette interface pratique permet d\'exécuter, très facilement et sans grandes connaissances en bases de données, des requêtes comme les créations de table de données, insertions, mises à jour, suppressions et modifications de structure de la base de données, ainsi que l\'attribution et la révocation de droits et l\'import/export. Ce système permet de sauvegarder commodément une base de données sous forme de fichier .sql et d\'y transférer ses données, même sans connaître SQL.\r\n\r\nLes requêtes SQL restent possibles, ce qui permet de les tester interactivement lors de la création d\'un site pour les utiliser ensuite en batch (c\'est-à-dire en différé) une fois au point.', 8, 3, '2023-03-16 13:42:37', 'myadm.png'),
(41, 'Pourquoi apprendre le CSS : 6 raisons', 'Les pages web se chargent plus rapidement et utilisent moins de bande passante\r\nLes feuilles de styles (téléchargée une seule fois puis stockée dans la mémoire cache) simplifies le code HTML ce qui permet de consommer moins de bande passante lors du chargement de la page.\r\n\r\n\r\nLe CSS est compatible avec tous les navigateurs\r\nLes sites web qui emploient correctement le CSS ont une apparence similaire quelque soit le navigateur utilisé.\r\n\r\n\r\nLe CSS peut etre utilisé pour créer des pages web faciles a imprimer\r\nLes images, les couleurs et les autres éléments difficiles a imprimer sont alors éliminés et les pages imprimées plus facilement.\r\n\r\n\r\nLe CSS permet à l\'utilisateur de personnaliser une page web\r\nAujourd\'hui, de nombreux sites web permettent à l\'utilisateur de changer la mise en page d\'un site sans modifier le contenu.\r\n\r\n\r\nLes feuilles de styles qui sont stockées en externe permettent à l\'utilisateur d\'effectuer les changements requis par eux-memes.\r\n\r\n\r\nLe CSS facilite le positionnement dans les moteurs de recherche\r\nle contenu est fourni en premier pour qu\'il soit plus facilement \"capturable\" par les spiders des moteurs.\r\n\r\n\r\nLe CSS rend également le code HTML plus \"propre\" facilitant le travail des robots d\'indexation.\r\n\r\n\r\nLe CSS facilite la portabilité du contenu\r\nEn employant le CSS, vous pouvez régler séparément les feuilles de style pour differents médias. Cela vous donne donc une plus grande souplesse dans la présentation de votre contenu.\r\n\r\n\r\nLe CSS vous permet de modifier les caractéristiques des éléments d\'un site web en fonction de la nécessité de la situation.', 8, 2, '2023-03-16 13:44:13', 'pcss.jpg'),
(42, 'Qu\'est-ce que JAVASCRIPT ?', 'JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives mais aussi pour les serveurs2 avec l\'utilisation (par exemple) de Node.js3. C\'est un langage orienté objet à prototype, c\'est-à-dire que les bases du langage et ses principales interfaces sont fournies par des objets qui ne sont pas des instances de classes, mais qui sont chacun équipés de constructeurs permettant de créer leurs propriétés, et notamment une propriété de prototypage qui permet de créer des objets héritiers personnalisés. En outre, les fonctions sont des objets de première classe. Le langage supporte le paradigme objet, impératif et fonctionnel. JavaScript est le langage possédant le plus large écosystème grâce à son gestionnaire de dépendances npm, avec environ 500 000 paquets en août 20174.', 8, 4, '2023-03-16 13:45:44', 'js.jpg'),
(43, 'Qu\'est-ce que PHP ?', 'PHP (officiellement, ce sigle est un acronyme récursif pour PHP Hypertext Preprocessor) est un langage de scripts généraliste et Open Source, spécialement conçu pour le développement d\'applications web. Il peut être intégré facilement au HTML.\r\nAu lieu d\'utiliser des tonnes de commandes afin d\'afficher du HTML (comme en C ou en Perl), les pages PHP contiennent des fragments HTML dont du code qui fait \"quelque chose\" (dans ce cas, il va afficher \"Bonjour, je suis un script PHP !\"). Le code PHP est inclus entre une balise de début <?php et une balise de fin ?> qui permettent au serveur web de passer en mode PHP.', 8, 3, '2023-03-16 13:47:14', 'php.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'PHP'),
(4, 'JAVASCRIPT');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(1024) NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id_article` (`id_article`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `droits`
--

DROP TABLE IF EXISTS `droits`;
CREATE TABLE IF NOT EXISTS `droits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1338 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `droits`
--

INSERT INTO `droits` (`id`, `nom`) VALUES
(1, 'utilisateur'),
(42, 'moderateur'),
(1337, 'administrateur');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_droits` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `login`, `password`, `email`, `id_droits`) VALUES
(8, 'admin', '$2y$10$12xMQ8UCNj.z2fFVY4Ge9.kzezq7CnXD6EIkHd3M4ZMv1Rz3jDgRy', 'mehdi.douib@laplateforme.io', 1337),
(9, 'moderateur', '$2y$10$NtoVXh5hTqFylyFWMiTKD.0k2L7DfMq8xWjxK0jblaGeLnklXgE3O', 'mehdi.douib@laplateforme.io', 42),
(5, 'mehdi', '$2y$10$2p5XV58nfeDKNhIvuR70c.6la7YY2GClkm82/Tz5SBw/NvknFKeNC', 'mehdi.douib@laplateforme.io', 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `sup_article` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `sup_art` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
