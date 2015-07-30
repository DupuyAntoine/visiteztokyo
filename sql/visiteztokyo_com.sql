-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 30 Juillet 2015 à 09:42
-- Version du serveur :  5.6.24
-- Version de PHP :  5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `visiteztokyo.com`
--

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quarter_id` int(11) NOT NULL,
  `content` mediumtext,
  `info_id` int(11) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL,
  `quarter_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` tinyint(2) DEFAULT NULL,
  `description` mediumtext,
  `url` varchar(100) DEFAULT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `theme` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `info`
--

INSERT INTO `info` (`id`, `quarter_id`, `name`, `type`, `description`, `url`, `rating`, `theme`) VALUES
(1, 1, 'Historique Akihabara', 3, 'Après un terrible incendie qui dévasta une grande partie de Tokyo en 1870, les autorités décidèrent de créer une zone défrichée au nord-est du Palais impérial \r\npour le protéger d''un nouveau risque d''incendie. On y construisit un sanctuaire dédié à une divinité protégeant les hommes contre le feu. Au fil du temps,\r\n cette vaste zone inhabitée finit par être envahie par les arbres et à l''automne elle fut bientôt recouverte de feuilles mortes \r\nqui lui donnèrent son nom de « champ de feuilles d''automne » (Akiba-no-hara)1\r\n\r\nLa construction d''une station de métro sur ce site en 1890 lui permit finalement de se développer. Le quartier, détruit pendant la Seconde Guerre mondiale, \r\nfut par la suite investi par des étudiants des environs qui s''installèrent à même la rue ou dans de petites échoppes pour vendre des radios et \r\nautres appareils électriques qu''ils façonnaient avec les surplus que l''armée leur bradait. Ainsi naquit le marché de l''électronique, qui ne cessa de croître, \r\ngrâce notamment au boom de l''électroménager des années 1960, puis de l''informatique dans les années 1980.\r\n\r\nLes trois kanji (caractères japonais d''origine chinoise) qui composent le nom de Akiba-no-hara peuvent aussi se lire Akihabara. \r\nC''est cette dernière lecture, plus courte, qui s''imposa dès le début du siècle – les habitués l''appellent aussi Akiba2.\r\n\r\nLe 8 juin 2008, un déséquilibré blesse 17 personnes, dont 7 mortellement. Cet événement est connu sous le nom de massacre d''Akihabara.', NULL, NULL, NULL),
(2, 1, 'Akihabara Hotel 3000', 2, 'Akihabara Hotel 3000 1 étoiles\r\n101-0025 Préfecture de Tokyo, Chiyoda-ku Kandasakumacho 4-8, Japon \r\n\r\nBénéficiant d''un emplacement idéal, l''Akihabara Hotel 3000 se trouve à 500 mètres de la sortie Showadori ou de celle \r\nd''Asakusabash ouest de la gare JR d''Akihabara. L''hôtel propose une réception ouverte 24h/24, un coin cuisine commun \r\net gratuit pour préparer vos repas, ainsi qu''une connexion Wi-Fi gratuite dans l''ensemble des locaux.\r\n\r\nLes chambres de style dortoir sont climatisées. Les salles de bains et les toilettes sont communes. Du linge de maison \r\net des serviettes vous seront fournis.\r\n\r\nDans la pièce à vivre commune, vous pourrez utiliser gratuitement l''ordinateur connecté à Internet et les lave-linge. \r\nDu thé et du café sont disponibles gratuitement toute la journée.\r\n\r\nDe nombreux commerces de proximité et bars locaux vous attendent à 5 minutes de marche de l''établissement. \r\nL''aéroport international de Haneda est à 25 minutes de route tandis que celui de Narita est accessible en 1 heure.\r\n\r\nCe quartier ( Chiyoda ) est un choix idéal pour les voyageurs qui s''intéressent à ces thèmes : culture, \r\nvisites et habitants chaleureux.\r\n\r\nprix moyen 28€', 'www.hotel3000.jp', NULL, 'Auberge de jeunesse'),
(3, 1, 'Akihabara Washington Hotel hôtel', 2, 'Akihabara Washington Hotel hôtel 3 étoiles Offre de Rêve\r\n 101-0025 Préfecture de Tokyo, Chiyoda-ku Kanda Sakuma-cho 1-8-3, Japon \r\n\r\nL''Akihabara Washington Hotel bénéficie d''une situation idéale à 1 minute à pied de la gare JR d''Akihabara et à 9 minutes\r\nen voiture de la gare de Tokyo. Il propose des chambres modernes, un restaurant et une connexion Wi-Fi gratuite \r\naccessible dans l''ensemble des locaux.\r\n\r\nLes chambres climatisées comportent un réfrigérateur, un bureau et une télévision à écran plat. \r\nLeur salle de bains privative est pourvue d''une baignoire et d''articles de toilette.\r\n\r\nLa réception ouverte 24h/24 propose une bagagerie, un service de change et des coffres-forts. \r\nDes prestations de blanchisserie et de voiturier sont également disponibles.\r\n\r\nLe café Bonsalute sert des plats italiens.\r\n\r\nL''établissement se trouve à 25 minutes en voiture de Tokyo Disneyland. L''aéroport d''Haneda est à 19 km.\r\n\r\nCe quartier ( Chiyoda ) est un choix idéal pour les voyageurs qui s''intéressent à \r\nces thèmes : culture, visites et habitants chaleureux.\r\n\r\nprix moyen 132€', 'www.washington-hotels.jp/akihabara/', NULL, 'Occidental'),
(4, 1, 'Capsule Hotel Anshin Oyado', 2, 'Capsule Hotel Anshin Oyado Akihabara 1 étoiles\r\n101-0021 Préfecture de Tokyo, Chiyoda-ku Sotokanda 1-2-12, Japon \r\n\r\nLe Capsule Hotel Anshin Oyado Akihabara dispose d''un bain public spacieux, d''un salon de détente assurant un service \r\nde massage, ainsi que d''une connexion Wi-Fi gratuite dans l''ensemble de ses locaux. Situé à 3 minutes à pied de la gare JR\r\nAkihabara, l''établissement propose des capsules de couchage pour hommes.\r\n\r\nCes lits-capsules réservés aux hommes sont dotés d''un matelas Simmons ainsi qu''une télévision à écran plat avec des films\r\n à la carte. Ils sont également équipés de prises de courant et d''un casque audio.\r\n\r\nL''Anshin Oyado Akihabara comprend un sauna, des fauteuils de massage et des ordinateurs avec une connexion Internet. \r\nIl possède par ailleurs un café avec des distributeurs automatiques de collations et des distributeurs de boissons \r\ngratuites.\r\n\r\nCet hôtel capsule se trouve à Akihabara, une ville trépidante et débordante d''activité. Son emplacement permet de \r\nrejoindre le stade Tokyo Dome en 5 minutes en train et le quartier d''Asakusa en 7 minutes en métro.\r\n\r\nCe quartier ( Chiyoda ) est un choix idéal pour les voyageurs qui s''intéressent à ces thèmes : culture, visites et \r\nhabitants chaleureux.\r\n\r\nprix moyen 37€', 'www.anshin-oyado.jp/english/', NULL, 'Atypique'),
(5, 1, 'Remm Akihabara', 2, 'Remm Akihabara 3 étoiles\r\n101-0025 Préfecture de Tokyo, Chiyoda-ku Kanda Sakumacho 1-6-5 , Japon\r\n\r\nDirectement relié à la gare JR Akihabara, l''Hotel Remm propose des chambres confortables et modernes dotées \r\nd''une télévision par satellite à écran plat, ainsi que d''une salle de bains aux parois en verre avec douche \r\nà effet pluie. La connexion Wi-Fi gratuite est accessible dans l''ensemble de l''établissement.\r\n\r\nPetites mais bien conçues, les chambres possèdent de grandes fenêtres donnant sur la ville. Chacune comprend \r\nune télévision à écran plat de 81 cm et une bouilloire électrique.\r\n\r\nLe célèbre quartier électronique d''Akihabara est situé à seulement 2 minutes de marche de l''hôtel. En train, \r\nl''hôtel se trouve à 10 minutes du quartier historique d''Asakusa et du parc Ueno, \r\nainsi qu''à 5 minutes du stade national de sumo Kokugikan de Ryogoku.\r\n\r\nVous pourrez vous détendre en profitant d''un massage dans votre chambre. La réception ouverte 24h/24 du Remm Akihabara \r\nassure un service de bagagerie.\r\n\r\nLe petit-déjeuner est servi au Café Brauner, qui propose plus de 20 sortes de café. Vous pouvez aussi y \r\ndéguster des collations locales, d''Okinawa et italiennes.\r\n\r\nCe quartier ( Chiyoda ) est un choix idéal pour les voyageurs qui s''intéressent \r\nà ces thèmes : culture, visites et habitants chaleureux.\r\n\r\nprix moyen 161€', 'www.remm.jp/akihabara/', NULL, 'Occidental'),
(6, 1, 'Maid Café', 4, 'Le Maid Café est une expérience que nous n''avions encore jamais eu l''occasion de tester lors de nos voyages au Japon. \r\nMême si nous sommes loin d''être amateurs de ce genre de pratiques, il est indéniable que l''univers otaku y fait beaucoup référence et\r\n que ces cafés sont un des rares pendants de cette culture "dans la vie réelle".\r\n\r\nÀ ceux qui ne savent pas de quoi il s''agit, dans la culture populaire japonaise la maid est une domestique, archétype de personnage \r\nnotamment dans les animés. Fantasme plus ou moins réalisé de son "maître" (en japonais : goshujin-sama), elle est une figure plus évidente \r\nà personnifier par le cosplay que d''autres représentations de la culture otaku. Nous avons déjà abordé un ou deux de ces animés, par exemple Mahoromatic.\r\n\r\nC''est la raison pour laquelle on trouve beaucoup de ces maids dans les rues du quartier Akihabara, pôle électronique et justement otaku à Tokyo \r\n(mais aussi par exemple dans le quartier Den-Den Town à Osaka). Pas besoin de patienter longtemps pour commencer notre enquête : \r\nsortis de la gare d''Akiba un après-midi, nous nous sommes faits alpaguer deux ou trois fois en à peine cinq-cents mètres. \r\nLa raison est que souvent les Maid Cafés sont invisibles de l''extérieur car placés dans les étages des immeubles.\r\n\r\nLa formule est simple : une jeune femme déguisée en soubrette vous démarche (voir photo) soit en vous distribuant un prospectus, \r\nsoit en vous présentant une plaquette du café pour lequel elle travaille. Dans notre cas, après nous être assurés avec \r\nla maid que l''établissement correspondait à ce que nous cherchions, elle nous a accompagné pendant cinq à dix minutes de marche jusqu''au café.\r\n\r\nChaque Maid Café est différent. Si l''on ne trouve généralement que du personnel féminin et jeune, en tout cas en clientèle et au service, \r\ncelles-ci sont généralement toutes parées du même costume. On trouve des établissements identiques à des cafés classiques, le cosplay mis à part, \r\nmais aussi beaucoup de lieux thématiques. Dans notre cas, il s''agissait d''une représentation (un peu cheap) de l''époque d''Edo où les clients \r\njouent le rôle de seigneurs.\r\n\r\nFonctionnement d''un Maid Café\r\nLe principe est souvent le même d''un établissement à l''autre. On paye un droit d''entrée (dans notre cas, 1.500¥ soit ~11,10€) qui offre une boisson. \r\nLa maid vous explique le fonctionnement du lieu et vous appelle systématiquement goshujin-sama. Chaque boisson servie fait l''objet d''un petit cérémonial \r\noù le client doit reproduire certains gestes et déclamer une formule moe simultanément avec la maid. \r\n\r\nPuis c''est une sorte de jeu de rôle qui s''installe. La serveuse, qui force son aspect kawaii (mignon), est dédiée à votre table et doit \r\nvous faire participer à un maximum d''activités possibles, par exemple :\r\n\r\nprendre des photos décorées avec une ou plusieurs maids de votre choix (il est interdit de les toucher) ;\r\ncommander une pâtisserie, un dessert voire un plat pour déjeuner ;\r\njouer à un jeu de société (par exemple jankenpon, c''est à dire pierre-feuille-ciseaux), un jeu de cartes ou jeu vidéo avec une des soubrettes ;\r\nd''autres activités diverses qui dépendent de chaque Maid Café ;\r\nou simplement passer quelques minutes à discuter avec une maid.\r\nBien entendu, chaque activité est payante et souvent à des tarifs assez prohibitifs. Précisons que n''importe lequel de ces exercices \r\nn''a absolument aucun caractère sexuel. D''ailleurs, nous avons été étonnés de trouver un public assez varié, constitué principalement de jeunes adultes \r\n(à vue de nez entre 18 et 30 ans) mais loin des clichés un peu glauques ou pervers auxquels on peut s''attendre. Il n''est pas rare de voir des couples dans \r\nun Maid Café, ou même un groupe de filles entre elles. \r\n\r\nEn revanche, nous avons été un peu plus gênés par le fait que les serveuses sont parfois très jeunes. Bien sûr, difficile de savoir quel âge ont vraiment les maids,\r\n mais nous avons pu nous retrouver mal à l''aise en nous faisant servir par une jeune fille qui joue quand même le rôle fétichiste d''une soubrette. \r\nEt qui en rajoute dans la voix, les mimiques, les expressions d''animé parfois un peu tournés vers le ecchi. Comme d''habitude,\r\n le rapport humain à l''occidentale a parfois du mal à se trouver dans certains pans de la culture japonaise.', NULL, NULL, 'Atypique'),
(7, 1, 'Super Potato', 4, 'Super Potato le spécialiste du rétro-game à Akihabara\r\nSeul un public averti identifiera tout de suite ce magasin ! \r\nSuper Potato, c’est LE spot rétro gaming d’Akihabara à Tokyo donc, qui se consacre uniquement aux jeux vidéo. \r\nJusque là, rien d’exceptionnel. Sauf qu’il s’agit ici d’un maître en la matière de vieux jeux. Tellement rétro même que parfois, \r\nen le parcourant, on ne reconnaît ni les jeux, ni les consoles ! Là où c’est sympa, \r\nc’est qu’ils vendent encore des jeux et consoles / accessoires d’ancienne génération, en parfait état, même neuf, à des prix assez corrects. \r\nUn coffre au trésor pour les passionnés.\r\n\r\nLe ton est donné dès l’extérieur du bâtiment. Bâtiment qui, sans Google Maps, est plutôt difficile à trouver car il est dans une petite rue, \r\npas très loin du Yodobashi, mais alors, si vous n’avez pas un plan, vous le chercherez quelques minutes... Par chance, un réseau wifi est dispo pas loin, \r\net l’appli Maps vous sauvera !\r\n\r\nRéparti sur cinq étages, le magasin se termine par une petite salle d''arcade au dernier niveau. Entre nous, prenez les escaliers au moins une fois, \r\ncar ils valent le coup d’œil ! Et à l’intérieur du magasin, toutes les affiches, étiquettes, sont dessinées à la main. Ce petit côté artisanal séduit vraiment.\r\n\r\nGlobalement, si vous n’avez pas trop l’âme d’un enfant dans un magasin de jouet, ou un petit côté geek, \r\nce magasin ne vous parlera pas. Mais on le voit dans la plupart des reportages consacré au Japon, sur Game One notamment. \r\nÀ l’intérieur, une statue géante de Mario et une Game Boy de première génération gigantesque sont prétextes à une petite pause photo, \r\nentre deux tests de jeux. Bon, bien sûr, les jeux sont en japonais !\r\n\r\nAttention aux prix qui ont largement augmenté depuis les années 2000 avec l''arrivée en masse des gamers étrangers.', 'https://thepotatoshop.com', NULL, 'Commerce Geek'),
(8, 1, 'Taito Station', 4, 'Taito Station qu''Akihabara est localisé sous un grand logo de l''envahisseur de l''espace, et la grande arcade couvre en premier le sol de sous-sol au cinquième étage.\r\nHé-jeu-21\r\nLe sol de sous-sol est un coin du purikura (imprime pic de club / collant). À Poste Taito Akihabara, tu peux profiter de leur service du loyer du cosplay libre.\r\n Ils ont une variété large de bonnes aux caractères de l''anime. \r\nPorté comme un tablier dans le devant, les costumes charment encore confortable.\r\nHé-jeu-08Hé-jeu-10Hé-jeu-09\r\nLe rez de chaussée est consacré pour tendre des jeux. Ils ont tout de l''anime le plus tardif et le caractère populaire estime, \r\ndonc c''est facile de perdre de vue de temps. Un autre plus est que l''entrée est commodément en face de la rue.\r\nHé-jeu-13Hé-jeu-11Hé-jeu-14\r\nLe deuxième étage offre d''autres jeux de la grue aussi bien que jeux de cartes et ainsi de suite, pendant que \r\nle troisième étage est composé de conduite et jeux qui s''élance. Le quatrième étage est plein de jeux de cartes et jeux vidéo et \r\nle cinquième étage est consacré aux jeux de la musique.\r\nHé-jeu-19Hé-jeu-17Hé-jeu-15Hé-jeu-20\r\nSaaya qui aime musique joue, éprouvé le jeu du Caboteur de la Rainure populaire qui qui est aussi disponible par app du smartphone. \r\nC''est un jeu que tu peux jouer utiliser tes sens, et c''est amusant pour bouger au battement de la musique. Même si tu joues pour la première fois, \r\nil n''y a pas tout jeu ici que tu ne seras pas capable d''aimer!\r\nTaito Station Akihabara offre à une grande variété de jeux d''aimer. Si tu viens à Akihabara, tu devrais le visiter sans aucun doute au moins une fois! \r\nEt, ne manque pas les offres spéciales par Poste Taito Akihabara!', 'www.taito.com/gc', NULL, 'Geek'),
(9, 1, 'Gundam Café', 1, 'Le Gundam Café est l’un des plus célèbres cafés à thème de la capitale. \r\nLes week-ends il est assez fréquent de devoir faire la queue avant de pouvoir profiter d’une table dans \r\ncet endroit unique. Ouvert en 2010 à Akihabara, ce café restaurant est tellement naturel dans le quartier \r\nqu’on se demande pourquoi cet endroit n’existe pas depuis toujours.\r\n\r\nTotalement dédié à l’univers Gundam l’endroit est avant tout un café mais propose aussi un un petit menu \r\nde plats chauds et desserts ce qui en fait l’endroit idéal pour une pause à n’importe quel moment de la journée. \r\nLes plats sont plutôt légers et ne conviendront pas à un gros mangeur affamé mais leur prix est raisonnable compte \r\ntenu de l’endroit puisqu’un plat chaud et une boisson reviennent à environ 10€ ou 12€.\r\n\r\nLa décoration de l’endroit est très bien réalisée. Le café n’est pas surchargé mais tout de même bourré de références \r\net de détails qui rappellent le manga Gundam. Même les toilettes, ultra-modernes, sont en accord avec \r\nl’univers futuriste du Gundam café.\r\n\r\nÀ côté de la salle principale un espace est aussi dédié à la vente de souvenirs ou produits dérivés Gundam.\r\n\r\nInformations sur le magasin\r\nAdresse	1-1 Kandahanaokacho, Chiyoda 101-0028 , Préfecture de Tokyo\r\nAccès	Lignes de train: JR Sôbu, JR Yamanote, JR Keihin-Tôhoku et Tsukuba Express.\r\nLigne de métro: Hibiya.\r\nArrivé à la station JR Akihabara prendre la sortie “Akihabara Electric Town Exit” et sortir du côté nord  \r\nLe Gundam Café, très visible, se situe à quelques mètres sur le côté droit, sous la ligne de chemin de fer.\r\nTéléphone	03-3251-0078\r\nHoraires	Lundi à vendredi: 10:00-23:00\r\n		Samedi: 8:30-23:00\r\n		Dimanche et jours fériés: 8:30-21:30\r\nInternet	http://g-cafe.jp\r\nAnglais	En fonction du Staff / Menus en anglais', 'www.g-cafe.jp/', NULL, 'Restaurant otaku'),
(10, 1, 'Yabu Soba', 1, 'Yabu Soba a été fondée en 1880. Le bâtiment vétuste qui se tient tranquillement au milieu des maisons privées est un style très local japonais \r\noù vous trouverez un beau paysage du jardin à l''entrée qui fera une bonne image. Ayant merveilleuse soba dans une atmosphère parfaite sonne \r\ndéjà assez digne pour venir ici, mais il est pas une blague du tout. Le soba Seiro (700 yens) ici, avec une grande texture moelleuse appelé "Koshi",\r\n a une saveur exceptionnelle des nouilles que wow clients avec chaque brin. De nombreux habitants venus ici pour avoir un soba grave,\r\n et il est sans doute pourquoi les normes sont élevés et gardés si haut, comme si il est presque impossible. \r\nTrempage ceux parfaite al dente dans la savoureuse sauce tsuyu que mieux apprécié avec Tendane (1400 yens) a été un changement de vie-à-dire au moins,\r\n nous ne savions jamais ces nouilles de sarrasin simples avec kakiage (de légumes mélangés et fruits de mer tempura) pourrait souffler nos esprits de cette façon .\r\n Le soba qui a une remarquable profondeur de saveur au restaurant Yabu Soba avec une longue histoire,\r\n vaut vraiment la peine d''arrêter par si jamais vous aviez la chance de visiter Akihabara.\r\n \r\nRestaurant : Kanda Yabusoba (???????)\r\nTéléphone : 03-3251-0287\r\nAdresse : 2-10, Kanda Awajicho, Chiyoda-ku, Tokyo\r\nLa plus proche station : la gare d''Akihabara JR\r\nOuvrir Heure : de 11h30 à 21h00 (du LO20: 30)\r\nFermer : mercredi\r\nPrix ??Range : [déjeuner] ¥ 1,000 ¥ 1,999 ~, [Dîner] ¥ 3,000 ¥ 3,999 ~\r\nCredit Card : NA\r\nSièges : 97 sièges (1F: 77 sièges, 2F: 20 sièges)\r\n', 'www.yabusoba.net', NULL, 'soba'),
(11, 1, 'Menya Musashi Bujin', 1, 'Restaurant: Menya Musashi - Bujin -\r\nAdresse: 2-18-5 bâtiment de l''Arc 1F Kanda Sakumacho Chiyoda- ku, Tokyo\r\nTéléphone: 03-5822-4634\r\nGare la plus proche : JR Akihabara\r\nOuvrir Heure : 11 : 00-22 : 00\r\nFermer: --\r\nPrix: 1000-1999Yen\r\nPlaces: 19 sièges\r\nCarte de crédit : N / A\r\nMenu: Acheter au distributeur par le entrace . Les menus changent souvent .\r\n \r\nLa meilleure Tsuke hommes boutique de ramen de style ( type de ramen que vous tremper les nouilles dans la soupe , où, dans les ramen normales , nouilles est servi dans la soupe ) !\r\n Un peu cher , surtout autour ¥ 1000 par bol , mais tout le monde est satisfait du volume de la nouille et la viande (porc ) !', NULL, NULL, 'ramen'),
(12, 3, 'Gyoza rou', 1, 'Les meilleurs gyozas de tokyo\r\nDans cette petite merveille de gargote japonaise, cachée dans une rue sombre du quartier de Harajuku, j''ai goûté les meilleurs gyozas de ma vie, sans conteste.\r\n\r\nEt pour cause, c''est leur spécialité. Le gyoza, c''est une sorte de ravioli chinois en forme de demi-lune. Pour trouver l''endroit il m''a fallu m''accrocher un minimum,\r\n demander aux passants...Et quand j''y suis arrivée (ouf!), je me suis sentie récompensé! Comme l''adresse est populaire, il faut forcément faire la queue. \r\nJ''y étais le soir.\r\n\r\nIl y a des menus en anglais, donc pas de sentiment de "Lost in Translation". Le staff baragouine aussi quelques mots d''anglais. \r\nJ''ai discuté avec mon voisin de table, un certain Kosuke Arawa, un photographe qui faisait visiter la capitale à ses amis. \r\nIl a eu la gentillesse de prendre la commande pour moi (tellement je luttais pour me faire entendre)!\r\n\r\nA l''intérieur, les clients s''installent à un comptoir en forme de U pour regarder les jeunes cuisiniers s''affairer. \r\nJe n''ai jamais vu autant de choix: bouillis (sui-gyozas) ou frits à la poêle (yaki-gyozas), avec ou sans ail, farce à la viande ou aux légumes. \r\nLa pâte est fine et tendre, et c''est très important.\r\n\r\nOn peut commander à côté des petits accompagnements du style tapas: du chou blanc bouilli au vinaigre,\r\n des pousses de soja avec une sauce piquante à la viande hachée, du concombre frais avec de la sauce épaisse au miso.\r\n Pour une assiette de 6 raviolis, on ne paie que 290 yens, soit un peu moins de 3 euros. Un excellent rapport qualité-prix. \r\nL''addition est toujours douce, mais attention: on paie en espèces! Je repars donc avec le ventre plein, et le portefeuille pas trop léger. \r\nEt les cheveux qui sentent un peu le graillon aussi...', NULL, NULL, 'Gyozas'),
(13, 1, 'Kanda Yabusoba', 1, 'Yabu Soba a été fondée en 1880. Le bâtiment vétuste qui se tient tranquillement au milieu des maisons privées est un style très local japonais \r\noù vous trouverez un beau paysage du jardin à l''entrée qui fera une bonne image. Ayant merveilleuse soba dans une atmosphère parfaite sonne \r\ndéjà assez digne pour venir ici, mais il est pas une blague du tout. Le soba Seiro (700 yens) ici, avec une grande texture moelleuse appelé "Koshi",\r\n a une saveur exceptionnelle des nouilles que wow clients avec chaque brin. De nombreux habitants venus ici pour avoir un soba grave,\r\n et il est sans doute pourquoi les normes sont élevés et gardés si haut, comme si il est presque impossible. \r\nTrempage ceux parfaite al dente dans la savoureuse sauce tsuyu que mieux apprécié avec Tendane (1400 yens) a été un changement de vie-à-dire au moins,\r\n nous ne savions jamais ces nouilles de sarrasin simples avec kakiage (de légumes mélangés et fruits de mer tempura) pourrait souffler nos esprits de cette façon .\r\n Le soba qui a une remarquable profondeur de saveur au restaurant Yabu Soba avec une longue histoire,\r\n vaut vraiment la peine d''arrêter par si jamais vous aviez la chance de visiter Akihabara.\r\n \r\nRestaurant : Kanda Yabusoba (???????)\r\nTéléphone : 03-3251-0287\r\nAdresse : 2-10, Kanda Awajicho, Chiyoda-ku, Tokyo\r\nLa plus proche station : la gare d''Akihabara JR\r\nOuvrir Heure : de 11h30 à 21h00 (du LO20: 30)\r\nFermer : mercredi\r\nPrix ??Range : [déjeuner] ¥ 1,000 ¥ 1,999 ~, [Dîner] ¥ 3,000 ¥ 3,999 ~\r\nCredit Card : NA\r\nSièges : 97 sièges (1F: 77 sièges, 2F: 20 sièges)\r\nDes photos de nourriture', NULL, NULL, 'Soba'),
(14, 3, 'Kyushu Jangara', 1, 'Restaurant: Kyushu Jangara\r\nAdresse: 1-13-21Jingumae Shibuya - ku, Tokyo\r\nTéléphone: 03-3404-5572\r\nGare la plus proche : JR Harajuku la station Omotesando\r\n 2min de sortie\r\nLa station de métro Jingumae ( C03 , F15 ) 2min\r\nOuvrir Hour: Lun-Ven 10 : 45 ~ 02: 00\r\nSam / dim / vacances 10 : 00 ~ 02: 00\r\nFermer: --\r\nPrix: -999Yen\r\nCarte de crédit : N / A\r\nPlaces: 52 sièges\r\nMenu: ??????? ( Légumes , poulet et porc soupe à base de ) , etc.\r\n\r\nSitué près de la gare de Harajuku , le restaurant est non seulement populaire en raison de son emplacement , mais à cause de son goût de l'' Tonkotsu ( à base de porc ) de la soupe .\r\nLe tonkotsu origine dans la région de Kyushu , et ayant le nom Kyushu Jangara , le restaurant a pris dans les différents types de soupe de différentes régions de Kyushu .\r\nTrouvez votre goût préféré!', 'www.kyusyujangara.co.jp', NULL, 'Tonkotsu'),
(15, 3, 'Minoringo', 1, 'Cet endroit est classé n ° 1 dans la catégorie "curry" dans la zone de Harajuku et il a également été présenté à la télévision et nous avons décidé de venir essayer.\r\nIl ya un trou dans le genre de restaurant de mur et le propriétaire doit être un fan de la bande dessinée "One Piece", car ils ont figurines de ce\r\ndisséminés dans tout le restaurant. Quant à la nourriture, Minoringo dispose de quatre types de curry: poulet (Mild), porc (semi-épicé),\r\n Keema (épicé), et de boeuf (très épicée) et ils sont disponibles en trois tailles différentes (S-¥ 800, M-¥ 900, et L-¥ 1000).\r\nVous pouvez également commander la spéciale Minoringo qui comprend à la fois le Keema et le curry de poulet sur la même plaque pour ¥ 400 plus.\r\n\r\nJe ai commandé le moyennes Keema Curry qui vient avec un œuf sur le dessus et je ai ajouté fromage fondu pour un ¥ 150 supplémentaire.\r\nLe curry était bien assaisonné et du fromage fondu était vraiment bon mais globalement, il était un peu épicée pour moi. Je suis pas trop noyau dur avec\r\nla nourriture épicée de sorte que doit être pourquoi. Si vous êtes dans la nourriture épicée, vous allez probablement aimer ce que beaucoup d''autres personnes.\r\nL''autre plat photo ci-dessus est la taille moyenne Minoringo spécial. Le mélange de l''keema curry épicé avec\r\nle poulet au curry doux dans le plat spécial semblait être le combo parfait parce que les épices étaient très bien équilibré et il vous permettra d''apprécier la nourriture plus.\r\nLe poulet au curry est faite avec des tomates et yogourt ainsi donc il a plus d''une saveur douce et sucrée à elle. Je me suis retrouvé souhaitant\r\nJe l''avais ordonné la spéciale après avoir essayé une bouchée de lui ... soupire\r\n\r\nJuste une remarque, le boeuf et le porc sont très populaires et le propriétaire a dit qu''il vend habituellement par 3 ou 16 heures, alors venez ici pour le déjeuner si vous souhaitez essayer l''un des deux.\r\n\r\nAdresse // 1-22-7, Jingumae, Shibuya-ku, Tokyo, Japon (Carte)\r\nnuméro de téléphone // 03-6447-2414\r\n', 'http://www.minoringo.jp/', NULL, 'Curry'),
(16, 3, 'Pont des cosplay', 4, 'Le pont, qui relie le quartier au parc Yoyogi et au temple Meiji, est l''endroit où le touriste qui se respecte \r\nva se balader le dimanche après avoir passé la nuit dans les boîtes de nuit de Roppongi. En effet, \r\nce pont est le lieu de rendez-vous des japonais pratiquant le cosplay. Et là, vous vous demandez ce qu''est le cosplay et pourquoi il faut absolument le voir.\r\nLe cosplay qui vient de l''anglais costume et play est une pratique consistant à jouer le rôle d''un personnage (de jeu vidéo, de manga, de film...).\r\n Cette pratique, qui existe un tout petit peu en France, est beaucoup plus répandue au Japon. \r\nEt le pont d''Harajuku est l''endroit où ceux qui pratiquent le cosplay à Tokyo se réunissent le dimanche matin pour parler entre eux et se faire photographier. \r\nC''est très amusant à voir, cela permet de ramener des photos originales et quand il fait beau, c''est un très bon prélude avant une balade dans le parc juste à côté.\r\nLa plupart des pratiquants viennent en tenue normale et transportent leur tenue dans une petite valise et se changent dans les toilettes des cafés environnant. \r\nCe jeu leur permet surtout de s''échapper du quotidien en devenant pour une demi-journée des héros qui sont pris en photos et \r\nretrouvent des amis pratiquant le même hobby.', NULL, NULL, 'Otaku'),
(17, 3, 'Les rockeurs', 4, 'Le dimanche si vous passez à Harajuku, devant l’entrée du parc Yoyogi, \r\nvous pouvez apercevoir d’étranges personnes qui semblent tout droit arrivées des années 50 dans une machine à voyager dans le temps.\r\n Il s’agit des gangs de rockers. Banane et cheveux gominés, tatouages, lunettes noires, peigne dans la poche arrière, \r\nces rockers du dimanche ne laissent aucun détail au hasard. Certains arrivent même en décapotable américaine des années 60.\r\n\r\nMusique à fond ils dansent le Rock’n Roll devant les passants intrigués et assurent le spectacle en fumant des cigarettes et\r\n en buvant de la bière, deux choses normalement interdites dans les rues japonaises.\r\n\r\nDeux gangs se retrouvent chaque week-end. Les Levels qui portent des couleurs noires, et les Strangers qui s’habillent en jeans bleu et\r\n occupent l’espace principal. Difficile de savoir quelle est la relation entre les deux groupes.\r\n Il paraît qu’il y a parfois des bagarres entres eux mais en général ils ont plutôt l’air de s’ignorer ou même au contraire de bien s’entendre,\r\n j’en ai vu certaines s’échanger se balancer des bières. Un troisième petit groupe est généralement dans\r\n les environs mais celui-ci on aura du mal à le qualifier de “gang” puisqu’il est composé essentiellement de femmes d’âge mûr qui dansent \r\nle twist gentiment.', NULL, NULL, 'Rock'),
(18, 3, 'Le Sanctuaire Meiji', 4, 'Le Sanctuaire Meiji se dresse au cœur d’un luxuriant parc qui comprend environ 100 000 arbres. \r\nIl est dédié à l’Empereur et l’Impératrice Meiji. Le sanctuaire est un édifice particulièrement représentatif de l’architecture shinto \r\net peut s’enorgueillir d’accueillir le plus grand nombre de visiteurs pendant la période des fêtes du Nouvel An.\r\nVous pourrez vous imprégner de l’esprit de la jeune génération japonaise en longeant la rue Takeshita Dori dans le quartier très branché de Harajuku. \r\nLe Musée Mémorial d’Art Ota expose la collection des estampes ukiyo-e de Ota Seizo avec au total 12 000 estampes du début à la fin de l’époque d’Edo.\r\n En descendant la rue Omotesando, bordée d’élégantes boutiques et restaurants, vous arriverez à la Galerie Okamoto Taro Kinenkan, où sont exposées ses diverses œuvres.\r\n La rue Kotto Dori (la rue des antiquaires) au charme tranquille réunit de nombreuses boutiques d’antiquaires.', 'www.meijijingu.or.jp', NULL, 'Temple'),
(19, 2, 'Centurion hôtel', 2, 'Inauguré en septembre 2014, le Centurion Hotel Ikebukuro est idéalement situé à moins de 3 minutes à pied de la gare JR d''Ikebukuro. \r\nUne connexion Wi-Fi est à votre disposition gratuitement dans l''ensemble de l''établissement. Ce dernier se trouve en plein cœur du quartier animé d''Ikebukuro.\r\n\r\nLes chambres climatisées du Centurion Hotel Ikebukuro disposent d''une télévision à écran plat, d''un réfrigérateur et d''un téléphone. \r\nLes salles de bains privatives sont en outre pourvues d''une baignoire et d''un sèche-cheveux.\r\n\r\nLe Centurion Hotel propose une réception ouverte 24h/24, une bagagerie et des commerces sur place. \r\nVous pourrez bénéficier de massages moyennant des frais supplémentaires.\r\n\r\nL''hôtel se trouve à 5 minutes de marche de l''observatoire Sunshine 60. La gare d''Ikebukuro vous permet d''accéder directement à Shinjuku,\r\n Harajuku et Shibuya, en moins de 20 minutes en train.', NULL, NULL, 'Occidental'),
(20, 2, 'Sakura hôtel', 2, 'Situé à seulement 5 minutes à pied de la gare JR d''Ikebukuro, le Sakura Hotel vous propose des hébergements accueillants, un personnel parlant anglais \r\net un café ouvert 24h/24, qui vous servira un petit-déjeuner buffet simple. Une connexion Wi-Fi est disponible gratuitement dans tout l''établissement.\r\n\r\nLors de votre séjour au Sakura, vous pourrez choisir de séjourner dans des chambres occidentales ou de style japonais,\r\n ou encore dans des dortoirs avec plusieurs lits superposés. Les chambres privées comprennent une télévision à écran plat, un réfrigérateur et\r\n une salle de bains privative. Des sèche-cheveux et du matériel de repassage pourront être empruntés à la réception.\r\n\r\nLa réception du Sakura Hotel est ouverte 24h/24 et assure un service de bagagerie gratuit. Une laverie à pièce est disponible. \r\nDes ordinateurs connectés à Internet pourront également être utilisés dans le salon, moyennant des frais supplémentaires.\r\n\r\nVous pourrez également préparer vos repas dans la cuisine commune. Ouvert 24h/24 et 7j/7, le café-restaurant Sakura vous proposera différents plats asiatiques\r\n et occidentaux, ainsi que toute une gamme de bières internationales.\r\n\r\nLes quartiers de commerce et de loisirs de Shinjuku, Harajuku et Shibuya se trouvent à 10-15 minutes en train par la ligne JR.\r\n L''aéroport de Narita est accessible en 1 heure en train par le Keisei Sky Liner et l''aéroport de Haneda est situé à environ 50 minutes en train de l''établissement. \r\nDes limousines aéroport sont disponibles depuis/vers la gare JR d''Ikebukuro, moyennant des frais supplémentaires.', NULL, NULL, 'Occidental Traditionnel'),
(21, 2, 'Le Tokyu Stay Ikebukuro ', 2, 'Le Tokyu Stay Ikebukuro est situé à moins de 4 minutes de marche de la station de métro et de la gare d''Ikebukuro. \r\nIl propose des chambres modernes et confortables dotées d''un lave-linge, d''un sèche-linge, ainsi que d''un four micro-ondes.\r\n Une connexion Wi-Fi est accessible gratuitement dans tout l''établissement.\r\n\r\nLes chambres climatisées sont équipées d''une télévision par satellite à écran plat, d''un coffre-fort, d''un petit réfrigérateur et d''une bouilloire électrique.\r\n Les salles de bains privatives sont pourvues d''un sèche-cheveux et d''articles de toilette.\r\n\r\nLa réception du Tokyu Stay Ikebukuro est ouverte 24h/24 et assure un service de bagagerie gratuit. \r\nL''hôtel propose également des services de nettoyage à sec, de photocopies et de coursier moyennant des frais supplémentaires. \r\nUn petit-déjeuner buffet occidental est servi entre 7h00 et 9h30 au rez-de-chaussée.\r\n\r\nEn train, l''Ikebukuro Tokyu Stay se trouve à 7 minutes de la gare de Shinjuku et à 12 minutes de la gare de Shibuya. \r\nLes zones commerciales prisées de Metropolitan Plaza, Echika et Esola sont accessibles en 5 minutes à pied.', 'www.tokyustay.co.jp/hotel/IKE/', NULL, 'Occidental'),
(22, 2, 'Batting center', 4, 'Contrairement à une idée reçue, le sport le plus populaire au Japon n’est ni le Sumo (pourtant son ?? sport national dans l''esprit des Nippons) \r\nni un autre art martial. Les Japonais ont beau être particulièrement friands de patinage artistique ou encore de football (notre soccer et non le foot US),\r\n celui qui remporte le plus de suffrages reste sans doute le baseball. Discipline importée des États-Unis vers la fin du XIXe, on l''appelle ?? yakyû en japonais.\r\n\r\nSous nos latitudes, cette activité reste toutefois peu prisée et donc peu médiatisée (ou bien est-ce l’inverse ?). \r\nAinsi, nous devons avouer nous être renseignés sur le fonctionnement de ses règles seulement avant d’aller voir un match à San Diego il y a quelques années.\r\n Alors pour ce qui est de taper dans la balle… L’excuse était donc toute trouvée pour tenter l’expérience de manière tout à fait particulière à Tokyo,\r\n via un de ces batting centers nichés sur les toits d’immeubles de la capitale japonaise.\r\n\r\nIls sont un certain nombre de bâtiments à proposer cette activité et, pour notre part, nous avons choisi une salle proche de la gare d’Ikebukuro (détaillée ci-après).\r\n L’immeuble se hisse sur une demi-douzaine d’étages enfumés, consacrés au « game » au sens large comme l’entendent les Japonais, par exemple le bowling \r\nou encore le karaoké.\r\n\r\nTaper dans une balle lancée jusqu’à 130 km/h\r\nEn sortant de l’ascenseur au dernier étage, on arrive dans une salle de jeux en tous genres qui contient des bornes d’arcade de jeux vidéo,\r\n du palet ou encore des fléchettes. Tout le long sont disséminés des "box" (ou "cages") accessibles chacun par une porte qui mène vers l’extérieur.\r\n Une dizaine de places individuelles sont disponibles, dont une pour lancer et toutes les autres pour frapper. Différentes vitesses de réception sont proposées,\r\n de 90 à 130 km/h selon votre niveau. Il existe des versions gaucher (?), droitier (?) ou les deux.\r\n\r\nUne fois que le box désiré se libère, on franchit la porte et l’on choisit sa batte parmi des modèles qui diffèrent notamment en taille et en poids.\r\n Puis l’on insère ses pièces dans la machine et ce sont alors une vingtaine de balles qui vous sont envoyées, chacune à quelques secondes d’intervalle, \r\npar une fenêtre placée quelques dizaines de mètres plus loin. Il est possible de régler la hauteur du lancer sur la machine en fonction de votre taille. \r\nBien entendu les box individuels, ainsi que les extérieurs et le sommet, sont gardés par des filets pour éviter que les balles ne s’échappent ou ne blessent\r\n les autres participants. Et si vous parvenez à atteindre le "home run", vous aurez même droit à une partie gratuite !\r\n\r\nL’expérience batting center, rapide et très amusante, plaît en particulier à un public de collégiens, lycéens et jeunes adultes qui viennent entre amis ou en date\r\n (rendez-vous galant). Peu de sites occidentaux en parlent, pourtant cela nous paraît une sortie facile et insolite à tester si vous en avez l''occasion.', NULL, NULL, 'Sport'),
(23, 2, 'Bosaikan', 4, 'Le grand tremblement de terre du 11 mars 2011 a rappelé au monde que l''archipel japonais doit composer chaque jour avec une activité sismique plus ou moins importante.\r\n Lors de nos voyages au Japon, comme beaucoup d''entre vous sans doute, nous avons ressenti plusieurs séismes (et d''autres non) \r\nmais jamais d''une force extrêmement élevée. Nous avons donc choisi d''aller faire un tour au bôsaikan (littéralement le "bâtiment de prévention des désastres") \r\ngéré par les pompiers de Tokyo à Ikebukuro, pour essayer un simulateur de tremblement de terre de magnitude 7.\r\n\r\nLe lieu n''est pas très connu des touristes, car entièrement en japonais. Toutefois, le personnel accueillant devrait vous recevoir \r\nmême si vous ne parlez pas la langue de Musashi. Le bôsaikan propose en fait un tour complet (un peu moins de deux heures) \r\nde plusieurs "attractions" liées à la prévention des désastres naturels et autres accidents, notamment :\r\n\r\nun simulateur de séisme de niveau 7 sur l''échelle de Shindo (son niveau maximal) ;\r\nun simulateur de fumée dans une pièce et un couloir d''où l''on doit s''échapper (mais certaines portes sont fermées à clé) ;\r\nun simulateur interactif d''extinction d''incendie (qui ressemble à une grande borne d''arcade) ;\r\nainsi qu''un film sur le grand séisme de 1923 dans le Kantô (rappelé récemment dans Le Vent se Lève).\r\nIl est possible de ne sélectionner qu''une seule activité si vous ne souhaitez pas participer aux autres ; dans tous les cas, présentez-vous à l''accueil du bôsaikan\r\n et l''on vous indiquera les disponibilités horaires.\r\n\r\nCe qui nous intéresse dans cet article se rapporte plus particulièrement aux tremblements de terre. L''activité démarre par plusieurs minutes d''explications \r\n(exclusivement en japonais) sur le fonctionnement des séismes, ainsi qu''un historique succinct des plus meurtriers au Japon. Puis vient le cœur de l''expérience :\r\n le simulateur. L''hôtesse fait monter les participants par groupes de quatre sur une plateforme posée sur des vérins, pour une mise en situation \r\nselon différents scénarios (Kanto 1923, Kobe 1995, Tohoku 2011...). Après quelques secondes d''un film projeté pour se plonger dans l''ambiance,\r\n les premières secousses surviennent.\r\n\r\nL''objectif est de prendre le réflexe de se réfugier sous la table et de s''accrocher à un pied pendant toute la durée du séisme. En ressortant, \r\nd''autres conseils de bonnes pratiques en cas de tremblement de terre sont donnés par l''hôtesse.', 'www.bosaikan.com', NULL, 'Simulateur'),
(24, 2, 'Tokyo Dome', 4, 'Le Tokyo Dome est un stade pourvu de 55 000 sièges localisé dans l''arrondissement de Bunkyo, à Tokyo.\r\n C''est le terrain des Yomiuri Giants, une équipe de baseball japonaise, et le Dome a parfois accueilli des rencontres de basket-ball et de football américain,\r\n aussi bien que des combats de catch et de free fight, des courses de monster trucks ou encore des concerts comme ceux de X-Japan, Luna Sea; \r\nL''Arc~en~Ciel, Michael Jackson, Prince, des Rolling Stones, Guns''N Roses ou Céline Dion. Il est surnommé « Big Egg » en raison de sa forme.\r\n\r\nLe Tokyo Dome est aussi au centre de Tokyo Dome City qui contient le Tokyo Dome Hotel conçu par Kenzo Tange, un parc d''attractions entouré d''un centre commercial,\r\n nommé Tokyo Dome City Attractions surmonté de Thunder dolphin, le 7e plus haut circuit de montagnes russes du monde. En haut de LaQua se trouve un onsen, \r\nl''un des seuls à Tokyo.', 'https://www.tokyo-dome.co.jp/e/', NULL, 'Sport'),
(25, 2, 'Uchi', 1, 'Uchi est l''un de ces magasins de ramen cachés loin des grandes rues que vous ne tomberez sur moins que quelqu''un recommande\r\n à vous et vous donner un guide spécifiquement à regarder dehors pour elle. Quand nous avons eu d''abord le mélange d''os de porc et fruits de mer ramen base de Uchi,\r\n Nous avons été stupéfaits comment une telle petite boutique dans une rue cachée dans Ikebukuro pourrait servir comme bol exceptionnelle.\r\nLa grande texture moelleuse des nouilles à l''intérieur de la soupe aromatisée d''épaisseur, ce qui rend les habitants accro à elle, parfois,\r\n avec une tranche de délicieux chashu porc mis de côté avec les pousses de bambou fraîches est tout simplement phénoménal. Parmi les nombreux choix alléchants sur le menu,\r\n l''Tokusei Soba ???? (980 Yen) est tout simplement exceptionnelle.\r\n \r\nRestaurant: Uchi \r\nRecommandation: Tokusei Soba  (980 Yen)\r\nTéléphone: 03-5391-4448\r\nAdresse: 2-23-9, Ikebukuro, Toshima-ku, Tokyo Kishino bâtiment 1F\r\nGare la plus proche: gare d''Ikebukuro sortie ouest, à 8 minutes de marche\r\nOuvrir Heure: [Lun - Ven] à partir de 11h00-15h00\r\nFermeture: Dimanche\r\nFourchette de prix: [déjeuner] - 999 yen, [Dîner] - ¥ 999\r\nCarte de crédit: N.Un\r\nPlaces: 11 sièges (sièges contre)', NULL, NULL, 'Soba'),
(26, 2, 'Zubora ', 1, 'Zubora est un restaurant Izakaya japonais qui offre des cours ensemble décents et bien faits, y compris Sashimi,\r\n le poisson grillé, poisson bouilli et à des prix très raisonnables.\r\nSi vous êtes sur un voyage à petit budget et ne pas avoir une idée où manger en particulier pour le déjeuner à Ikebukuro, essayez Zubora.\r\n  L''espace intérieur est assez limité, mais il est le Japon, vous pouvez considérer que cela fait partie de plaisir. Le sashimi, poisson grillé,\r\n Cours et Boiled Fish Set sont abordables moins de 800 Yen et vous obtiendrez 4 types de poisson cru frais pour Sashimi Ensemble de cours.\r\n  Ce restaurant propose des plats très honnêtes, simples et sains qui représentent une bonne valeur pour l''argent. il va sans dire,\r\n Zubora est également ouvert la nuit car il est un restaurant Izakaya offrant toutes sortes de cuisines traditionnelles japonaises.\r\n \r\nRestaurant: Zubora \r\nRecommandation: Sashimi Set, poisson grillé Set et Set de poisson bouilli\r\nTéléphone: 03-3985-6229\r\nAdresse: 1, Higashi Ikebukuro, Toshima-ku, Tokyo 23-11\r\nGare la plus proche: sortie Ikebukuro gare de l''Est\r\nOuvrir Heure: 11h00-14h00, 17h00-23h00 (LO22: 30)\r\nFermeture: Dimanche\r\nPrix: [Dîner] 2000 ~ 2999 [déjeuner] ~ 999\r\nCarte de crédit: N.Un\r\nPlaces: 30 places', NULL, NULL, 'Poisson'),
(27, 5, 'Maguro bito', 1, 'Restaurant: Maguro bito\r\nAddresse: 2-18-12, Kaminarimon, Taito-ku, Tokyo\r\nTéléphone: 03-3847-7139\r\nStation la plus proche: Métro de Tokyo, ligne Ginza - Gare d''Asakusa Sortie 1, 1 minute à pied\r\nOuverture du lundi au samedi de 11:00 à 22:00 et le dimanche et les vacances de 11:00 à 21:00\r\nDéjeuner : de 1.000 à 1.999 yens ; Diner : de 2.000 à 2.999 yens\r\nPaiement par carte de crédits : Visa, MasterCard, JCB, AMEX, Diners\r\nPas de place assise.\r\n\r\nLe plus populaire des sushis est le "maguro" (thon). Ce restaurant appelé le "tuna people", est le lieu où les personnes appréciant le thon devrait être. Maguro bito est l''un de ces restaurant qui a gardé le style "standing sushi bar" (la clientèle n''a donc pas de place assise). Le prix est abordable, en considérant la qualité des produits proposés.', NULL, NULL, 'Sushi'),
(28, 5, 'Nakasei', 1, 'Restaurant: Nakasei\r\nAddresse: 1-39-13, Asakusa, Taito-ku, Tokyo \r\nTéléphone: 03-3841-4015\r\nStation la plus proche: Tokyo Metro Ginza Line Asakusa Station No. 1 Exit On foot 7 minute - Métro de Tokyo, ligne Ginza - Gare d''Asakusa Sortie 1, 7 minute à pied\r\nOuverture du lundi au vendredi (sauf mardi) de 11:30 à 15:00 et de 17:00 à 22:00 et samedi, dimanche et les vacances de 11:30 à 20:00\r\nTendon (assortiments de beignets sur du riz) de 2.625 à 4.200 yens, Tempura (beignets préparés) de 7.350 à 14.700 yens\r\nPaiement par carte : VISA MASTER JCB AMEX\r\n60 places assises\r\n \r\nAsakusa est célèbre pour ses Tempura, et regroupe de très bons restaurants dont c''est la spécialité. Fondé en 1870, Nakasei est l''un des plus vieux restaurant d''Asakusa, et c''est l''un des restaurants local favori. Les tempura peuvent revenir assez cher, plus de 10.000 yens le repas, mais les tendon (tempura sur bol de riz), coûte 2.625 yens. N''hésitez pas à tenter l''expérience, pas seulement pour la nourriture, mais également pour l''ambiance offerte par le style japonais du restaurant et son jardin.', NULL, NULL, 'Tempura'),
(29, 5, 'Toriyoshi', 1, 'Restaurant: Toriyoshi\r\nAddresse: 1-8-2, Asakusa, Taitou-ku, Tokyo, 111-0032\r\nTéléphone: 03-3844-6262\r\nOuverture le midi du lundi au samedi de 11:30 à 14:00 (fin du service à 13:30), pour dîner du lundi au vendredi de 17:00 à 23:00 (fin du service à 22:30), le samedi de 17:00 à 22:30 (fin du service à 22:00).\r\nFermé le dimanche\r\nDéjeuner à 800 yens, dîner de 2.900 yens.\r\nStation la plus proche: Tokyo Metro Ginza Line Asakusa Station No. 1 Exit On foot 5 minute - Métro de Tokyo, ligne Ginza - Gare d''Asakusa Sortie 1, 5 minute à pied\r\nPaiement par carte : VISA, Master, UC, DC, Diners, Amex, JCB, NICOS, MUFG\r\n72 places assises.\r\nMenu en anglais possible.\r\n \r\nCe restaurant est connu pour sa grande qualité gastronomique, ce qui fait que la plupart des locaux en vantent les mérites. Les méthodes de préparations, et leur recettes, feront que vous n''oublierez pas de sitôt les saveurs que vous découvrirez ici. Vous pouvez commencer par un assortiment de 5 brochettes (2.100 yens les 5 brochettes assorties d''une salade et d''une soupe ou de Chazuke, du riz dans une soupe locale). Pour le déjeuner, nous vous conseillons également l''Oyakodon, qui a été choisi pour le grand prix du district pour le meilleur plat du quartier, qui lui vous est offert pour 1.000 yens.', NULL, NULL, 'Traditionnel'),
(30, 4, 'Hanada Uenoten', 1, 'Restaurant: Hanada Uenoten\r\nTéléphone: 03-3836-0440\r\nAddresse: 6-8-6, Ueno, Taitou-ku, Tokyo Ueno Megane Center Building 1F\r\nStation la plus proche: Gare d''Ueno JR\r\nOuverture du lundi au samedi de 11:00 à 00:00, et le dimanche et les vacances de 11:00 à 22:00\r\nDéjeuner et dîner pour environ 999 yens.\r\nLe paiement par carte de crédit n''est pas renseigné.\r\n\r\nHanada Uenoten est l''un des plus populaire vendeur de ramen d''Ueno spécialisé dans les recettes à base miso. Le prix est très abordable compte tenu de la qualité proposée, d''environ 790 yens.  ', NULL, NULL, 'Ramen'),
(31, 4, 'Yamabe Uenoten', 1, 'Restaurant: Yamabe Uenoten\r\nTéléphone: 03-5817-7045\r\nAddresse: 4-5-1, Ueno, Taitou-ku, Tokyo\r\nStation la plus proche: JR Ueno Station - Gare d''Ueno JR\r\nOuverture tous les jours de 11:00 à 22:00 (fin du service à 21:30).\r\nPrix d''environ 999 yens.\r\nLe paiement par carte de crédit n''est pas renseigné.\r\n26 places assises\r\n\r\n\r\nYamabe est l''un des plus populaire restaurant spécialisé dans les plats à base de côte de porc, appelé également Tonkatsu dans Ueno. Les plats proposés à déjeuner, appelé Rosu Katsu (longe de porc), sont proposés au prix très abordable de 700 yens pour une très bonne qualité. Nous vous conseillons vivement ce restaurant si vous passez dans Ueno.', NULL, NULL, 'Plats à base de porc'),
(32, 4, 'Keijouen', 1, 'Restaurant: Keijouen\r\nTéléphone: 03-3831-0654\r\nAddresse: 2-15-7, Higashiueno, Taitou-ku, Tokyo\r\nStation la plus proche: JR Ueno Station - Gare d''Ueno JR\r\nOuverture à partir de 16:00.\r\nFermeture le dimanche de la deuxième et quatrième semaine du mois.\r\nEntre 1.000 et 1.999 yens le déjeuner, et entre 5.000 et 5.999 yens le dîner.\r\nLe paiement par carte de crédit n''est pas renseigné.\r\n\r\nKeijoen est un restaurant retro mettant en scène une ambiance "années 80" à Ueno. Pour un prix raisonnable, vous trouverez ici d''excellent kalbi (ribs marinés au barbecue), rosu (viande et légumes sautés). Le personnel accueillant et la qualité du service, ainsi que des plats, font de ce restaurant une adresse à visiter lors de votre passage à Ueno.', NULL, NULL, 'kalbi rosu');
INSERT INTO `info` (`id`, `quarter_id`, `name`, `type`, `description`, `url`, `rating`, `theme`) VALUES
(33, 4, 'Historique Ueno', 3, 'Ueno est un des gros quartiers de Tokyo, situé au nord-est du cœur de la ville, dans l''arrondissement de Taito.\r\n\r\nC''est également un point central de la capitale, puisque situé sur des axes ferrés importants. Si vous possédez un JR Pass, et même sans, il y a de fortes chances pour que vous passiez par Ueno pour sortir de Tokyo vers le nord (par exemple Nikko) ou l''est (l''aéroport de Narita).\r\n\r\nPar ce fait, le quartier est souvent considéré comme une zone importante de shitamachi ("la ville du dessous"), la partie plus populaire et peut-être la moins propre de Tokyo. On trouve d''ailleurs à Ueno beaucoup de personnes sans-domicile, de manière assez visible, ce qui tranche avec le reste de la ville.\r\n\r\nIl y a de nombreuses attractions intéressantes à visiter à Ueno, globalement organisées dans et autour du grand parc accessible non loin de la gare. Le quartier parvient à livrer des ambiances très variées et offre, en à peine quelques pas, des transitions entre différents univers fascinants.', NULL, NULL, NULL),
(34, 4, 'Sutton Place Hotel Ueno ', 2, 'Situé à seulement 100 mètres de la gare JR Ueno, l''élégant hôtel Sutton Palace propose des chambres modernes dotées de parquet, d''une connexion Internet par câble gratuite et d''une télévision à écran plat. Vous pourrez bénéficier de massages et d''une bagagerie à sa réception ouverte 24h/24. L''aéroport de Narita se trouve à 40 minutes de trajet direct via la ligne Keisei Skyliner.\r\n\r\nLes chambres climatisées du Sutton Place Hotel Ueno sont dotées d''un mobilier en bois et de grandes fenêtres. Vous pourrez prendre un bain dans la baignoire ou enfiler vos chaussons et vous détendre devant leur télévision par satellite.\r\n\r\nLe parc d''Ueno se trouve à 500 mètres de l''hôtel. La station de métro Ueno située à 300 mètres permet un accès direct aux quartiers de Ginza, d''Akihabara et de Roppongi. Le quartier d''Asakusa, où se trouvent la porte de Kaminarimon et le temple Sensoji, est accessible en 20 minutes de marche.\r\n\r\nVous trouverez des bornes Internet gratuites dans le hall du 3ème étage et une laverie au 2ème étage.\r\n\r\nCe quartier ( Taito ) est un choix idéal pour les voyageurs qui s''intéressent à ces thèmes : temples, gastronomie et shopping.', 'www.sutton-place-hotel-ueno.tokyohoteltour.com/fr/', NULL, 'Occidental'),
(35, 4, 'Sakura Ryokan ', 2, 'Situé à proximité des quartiers populaires de Asakusa et Ueno, le Sakura Ryokan propose des chambres abordables décorées dans un style traditionnel, une connexion Wi-Fi gratuite dans les parties communes et des salle de bains communes.\r\n\r\nLes chambres disposent de sols en tatami et d''une literie en futon traditionnelle, ainsi que d''une télévision et de la climatisation.\r\n\r\nVous pourrez prendre votre petit déjeuner dans la salle à manger du Sakura Ryokan. Des lave-linge à pièces sont disponibles.\r\n\r\nLe Sakura Ryokan se trouve à 6 minutes à pied de la station de métro Iriya, permettant d''accéder à Tsukiji et Akihabara\r\n\r\nCe quartier ( Taito ) est un choix idéal pour les voyageurs qui s''intéressent à ces thèmes : temples, gastronomie et shopping.', 'www.sakura-ryokan-tokyo.findhotel.fr/‎', NULL, 'Traditionnel'),
(36, 4, 'Mitsui Garden Hotel Ueno', 2, 'Le Mitsui Garden Hotel Ueno vous accueille dans des chambres élégantes et confortables à seulement 2 minutes à pied de la gare d''Ueno, desservie par de nombreuses lignes de transports en commun. Il abrite un restaurant et propose des services de massage. Une connexion Wi-Fi est disponible gratuitement dans l''ensemble de l''établissement.\r\n\r\nLes chambres contemporaines de l''hôtel Ueno Mitsui Garden sont dotées d''un mobilier en bois, d''une télévision à écran LCD de 81 cm et d''un purificateur/humidificateur d''air. Elles sont également équipées d''un réfrigérateur et d''un plateau/bouilloire.\r\n\r\nL''Hotel Garden Mitsui dispose d''une blanchisserie en libre-service et d''une bagagerie. Vous trouverez des distributeurs automatiques de boissons à tous les étages de l''établissement.\r\n\r\nUn petit-déjeuner buffet composé de plats japonais et occidentaux est servi tous les jours dans le restaurant Bosco il Chianti. Le restaurant propose une cuisine moderne inspirée par les saveurs italiennes.\r\n\r\nDepuis la gare d''Ueno, vous pourrez accéder aux quartiers d''Akihabara et d''Asakusa en 10 minutes de train. Par ailleurs, vous pourrez directement rejoindre l''aéroport international de Narita en 40 minutes de train.\r\n\r\nCe quartier ( Taito ) est un choix idéal pour les voyageurs qui s''intéressent à ces thèmes : temples, gastronomie et shopping.', 'www.gardenhotels.co.jp/ueno/', NULL, 'Occidental'),
(37, 4, 'Parc de Ueno', 4, 'Ueno s''articule autour du parc et de la gare éponymes. Le parc a été ouvert en 1973, mais offert en 1924 par l''empereur Taisho à la municipalité de Tokyo, d''où son nom de Ueno-Onshi Koen, ou « parc de Ueno, cadeau impérial ». Il abrite plusieurs musées, parmi les principaux du Japon, des temples et sanctuaires, un zoo, et surtout de très nombreux cerisiers sous lesquels les Tokyoïtes viennent, au moment de la floraison, boire, rire, manger et chanter lors du traditionnel hanami. C''est le plus grand parc de Tokyo.', NULL, NULL, 'Parc'),
(38, 4, 'Temple de Jomyoin', 4, 'Ce vieux temple est connu pour ses 84 000 statuettes en pierre de Jizô, le bodhisattva des enfants et des voyageurs, sereinement alignées dans un jardin très calme.', NULL, NULL, 'Temple'),
(39, 4, 'Temple Kan eiji', 4, 'Il ne subsiste aujourd''hui que le bâtiment principal et une pagode de ce qui était le plus grand centre bouddhiste d''Edo à l''époque des shôgun Tokugawa. Il y dénombrait alors 36 bâtiments et pagodes et 36 temples affiliés. C''est ce terrain qui forme aujourd''hui le parc de Ueno-Onshi.', NULL, NULL, 'Temple'),
(40, 4, 'Musée national de Tokyo', 4, 'Le plus grand musée du Japon expose plus de 100 000 pièces sur l''art antique et médiéval du Japon et d''autres pays d''Asie Orientale.', NULL, NULL, 'Musée'),
(41, 4, 'Zoo de Ueno', 4, 'Le plus ancien zoo du Japon possède 10 000 animaux issus de 900 espèces. Ses stars en sont des pandas géants. Il est divisé en deux parties, Higashi-en et Nishi-en, reliées par un monorail de 300 m.', NULL, NULL, 'Zoo'),
(42, 4, 'Sanctuaire Toshogu', 4, 'Bâti au 17e siècle, ce sanctuaire est dédié à Ieyasu Tokugawa, le fondateur du shôgunat des Tokugawa et l''homme qui a élevé Tokyo (à l''époque Edo) au rang de capitale politique. Vous pouvez admirer le sanctuaire principal très richement décoré, la pagode à cinq étages, ainsi que l''allée dallée menant au sanctuaire, bordée de nombreuses lanternes en pierre et surtout de 50 lanternes en bronze offertes par les seigneurs féodaux de tout le pays. Ce sanctuaire a été classé Trésor national.', NULL, NULL, 'Temple'),
(43, 5, 'Historique Asakusa', 3, 'L''image d''Épinal d''Asakusa, quartier du nord-est de Tokyo, reste probablement son rutilant temple Senso-ji proche de la gare JR.\r\n\r\nToutefois, le quartier ne s''y limite pas et d''autres attractions doivent y capter votre attention, comme le musée de la bière Asahi et sa sculpture en "Flamme d''or" (ou crotte de Godzilla, c''est selon !) dessinée par Philippe Starck. Le parc Sumida, du nom de la rivière, est également très appréciable notamment en période de sakura au printemps.\r\n\r\nSi vous le pouvez, envisagez de visiter Asakusa à vélo pour ne pas vous limiter au seul centre névralgique. Tentez de vous perdre dans les petites ruelles adjacentes, c''est beaucoup plus amusant et vous y ferez sans doute de belles découvertes.\r\n\r\nAlternativement, vous pouvez faire un crochet par Ueno toute proche ou la Tokyo SkyTree peu éloignée, que l''on ne peut de toute façon pas manquer dans le paysage !', NULL, NULL, NULL),
(44, 5, 'Dormy Inn EXPRESS Asakusa', 2, 'Situé à seulement 120 mètres de la station de métro Asakusa, où vous pourrez prendre la ligne Asakusa, le Dormy Inn EXPRESS Asakusa dispose d''un bain public et d''un sauna se trouvant au 10ème étage. Il propose un petit-déjeuner buffet japonais ainsi que des nouilles japonaises gratuites le soir. Ses chambres sont toutes dotées d''un balcon. Un bain de pieds public en plein air donne sur l''emblématique immeuble Asahi.\r\n\r\nLes chambres climatisées de l''Asakusa Dormy Inn EXPRESS disposent d''une connexion Internet par câble gratuite, d''un petit réfrigérateur et d''un mobilier en bois clair. Vous pourrez vous préparer du thé vert, regarder la télévision à écran LCD ou profiter de la baignoire de la salle de bains privative. Des peignoirs Yukata, des pyjamas et des chaussons vous seront fournis.\r\n\r\nLa Porte du Tonnerre du temple Senso-ji et la rue commerçante Nakamise ne se trouvent qu''à 5 minutes de marche, tandis que le quai du bateau-taxi à destination du quartier d''Odaiba est à 150 mètres. Installée à proximité, la gare d''Asakusa est desservie par des lignes de métro qui rejoignent directement le quartier commerçant de Ginza et le quartier d''Ueno.\r\n\r\nL''établissement met à votre disposition une réception ouverte 24h/24 et une laverie. Ses bains publics intérieurs et extérieurs ainsi que son sauna avec télévision, sont accessibles aux femmes pendant la journée et aux hommes en soirée.\r\n\r\nLe petit-déjeuner est servi de 6h45 à 8h45 dans le coin repas. Les nouilles sont proposées sur le principe du premier arrivé, premier servi entre 21h30 et 23h00, les quantités étant limitées.\r\n\r\nCe quartier ( Taito ) est un choix idéal pour les voyageurs qui s''intéressent à ces thèmes : temples, gastronomie et shopping.', 'www.dormy-inn-express-asakusa.tokyohoteltour.com/fr/', NULL, 'Occidentale'),
(46, 5, 'Ryokan Asakusa Shigetsu ', 2, 'Doté d''un restaurant et d''un bain public, l''établissement Ryokan Asakusa Shigetsu vous accueille à proximité de la rue Nakamise et à 3 minutes à pied de la station de métro Asakusa. Ses chambres climatisées disposent d''un réfrigérateur et d''une connexion Internet gratuite.\r\n\r\nLe Ryokan Asakusa Shigetsu propose des chambres occidentales ou de style japonais. Toutes sont équipées d''une télévision par satellite et d''une salle de bains privative.\r\n\r\nLe ryokan se situe à seulement 3 minutes à pied du temple Senso-ji et à 8 minutes à pied de l''immeuble doré Asahi. Installée à proximité, la gare d''Asakusa vous permettra d''accéder directement aux quartiers d''Ueno et de Ginza en métro.\r\n\r\nDes bains publics distincts sont prévus pour les hommes et les femmes. Les deux salles offrent des vues sur la pagode de 5 étages d''Asakusa. Vous pourrez déguster une cuisine locale pour le petit-déjeuner au restaurant Hozuki, entre 7h30 et 9h00.\r\n\r\nCe quartier ( Taito ) est un choix idéal pour les voyageurs qui s''intéressent à ces thèmes : temples, gastronomie et shopping.', 'www.shigetsu.com/e', NULL, 'Traditionnel'),
(47, 5, 'Via Inn Asakusa', 2, 'Le Via Inn Asakusa se situe dans le quartier culturel d’Asakusa, à 5 minutes à pied du temple de Senso-ji. Cet hébergement moderne vous propose un restaurant, un service de massage et des chambres dotées d’une connexion Internet par câble gratuite. Une connexion Wi-Fi est gratuitement mise à votre disposition dans l''ensemble de ses locaux.\r\n\r\nClimatisées et chauffées, ses chambres comprennent un réfrigérateur, du thé vert et une télévision à écran plat.\r\n\r\nL’établissement assure un service de blanchisserie. Vous pourrez emprunter du matériel de repassage et un humidificateur d’air à la réception. Des massages relaxants peuvent être organisés sur demande.\r\n\r\nLe restaurant Fugetsu-Saryo sert des spécialités japonaises, chinoises et occidentales sous forme de buffet, dans un cadre spacieux et décontracté. Il vous accueille pour le petit-déjeuner (de 7h00 à 10h00 ; veuillez arriver avant 9h30) et pour le déjeuner (de 11h30 à 14h00 ; dernière commande à 13h30).\r\n\r\nÀ pied, l''Asakusa Via Inn se trouve à 5 minutes de la station de métro Asakusa et à 8 minutes de l’embarcadère des croisières sur le fleuve Sumida. Vous rejoindrez le célèbre bâtiment de la brasserie Asahi en 10 minutes de marche.\r\n\r\nCe quartier ( Taito ) est un choix idéal pour les voyageurs qui s''intéressent à ces thèmes : temples, gastronomie et shopping.', 'www.asakusa.viainn.com', NULL, 'Occidentale'),
(49, 5, 'Porte de Kaminarimon et rue de Nakamise', 4, 'De la porte de Kaminarimon, avec son énorme lanterne rouge et les sculptures en bois des dieux du Tonnerre et du Vent à la porte de Hozomon, ou porte du Bâtiment du Trésor, s''étend sur 140 mètres la rue commerçante de Nakamise, promenade pavée bordée d''échoppes de souvenirs. Vous y trouverez de tout, des kimonos aux éventails, en passant par les gourmandises traditionnelles. Les petites échoppes colorées offrent un spectacle très vivant.', NULL, NULL, 'Commerce Temple'),
(50, 5, 'Temple de Sensoji', 4, 'Plus connu sous le nom de temple d''Asakusa Kannon, il est dédié à Kannon, le bodhisattva de la compassion auquel l''imposant bâtiment principal est consacré. D''après la légende, ce temple aurait été fondé au 7e siècle par trois pêcheurs ayant découvert dans leurs filets une statuette de Kannon de 5 cm de haut. L''ayant remise dans la rivière Sumida, la statuette revint constamment à eux. Ils décidèrent donc de demander l''édification d''un temple qui est aujourd''hui le plus vieux temple de Tokyo. Le Sensoji est composé d''un bâtiment principal, ou Sensoji Hondo, et d''une pagode à cinq étages.', NULL, NULL, 'Temple'),
(51, 5, 'Sanctuaire d''Asakusa', 4, 'Sur la droite du Hondo se dresse un sanctuaire shinto appelé populairement Sanja Sama (les Trois sanctuaires), construit par ordre du troisième Shogun Tokugawa à la mémoire des trois pêcheurs à l''origine du temple de Sensoji. C''est le point de départ de la grande fête de Sanja Matsuri, qui se déroule à partir du troisième vendredi de mai et pour trois jours et attire près de 2 millions de personnes dans les rues !', NULL, NULL, 'Temple'),
(52, 9, 'Statue de Hachiko', 4, 'Adresse :\r\n2 Chome Shibuya, Shibuya-ku\r\n\r\nAccès :\r\nSortie Hachikô de la gare de Shibuya\r\n\r\nDerrière la statue du chien Hachikô à Shibuya, se cache une histoire émouvante. Celle d''une loyauté à toute épreuve pendant plus de neuf ans.\r\n\r\nL''histoire de Hachikô raconte la relation unique d''un chien et de son maître, le professeur Eisabura Ueno. Depuis la naissance de Hachikô en 1923, le professeur avait pour habitude de se rendre chaque jour à la gare de Shibuya, \r\naccompagné de son chien. Ici, Hachikô revenait et attendait patiemment chaque soir, le retour de son maître.\r\n\r\nMais le 21 mai 1925, Eisabura Ueno, foudroyé par une attaque cardiaque sur son lieu de travail, ne rentra pas. \r\nPourtant son compagnon à quatre pattes continua ses allées et venues quotidiennes entre le domicile et la gare durant neuf années, soit jusqu''à sa mort.\r\n\r\nUne loyauté honorée\r\nLes voyageurs réguliers s''habituèrent à la présence de Hachikô dans la gare de Shibuya et l''histoire du chien fidèle commença à se répandre dans tous le pays. \r\nPour rendre hommage à cette loyauté sans faille, une première statue de bronze à l''effigie de l''animal fut érigée en 1934 devant la gare. \r\nMais après avoir été fondue pour les besoins de la guerre, une seconde fut de nouveau installée en 1948. Hachikô a même été immortalisé par deux fois au cinéma. \r\nDans le film japonais Hachiko monogatari de Seijiro Koyama puis dans le film américain Hatchi de Lasse Hallström. \r\n\r\nLa dépouille - empaillée - du chien qui a ému le pays tout entier, est conservée au musée national de la nature et des sciences de Tokyo. \r\nAujourd''hui, sa statue est un lieu de rendez-vous incontournable du quartier de Shibuya. \r\n\r\njour du 80ème anniversaire de la mort de Hachiko, environ 500 personnes se sont rassemblées à l’Université de Tokyo afin de célébrer les retrouvailles du chien et de son maitre.\r\n\r\nLa statue recrée la scène d’un Hachiko joyeux saluant son maitre, Hidesaburo Ueno (1871-1925), un pionnier de l’Ingénierie en Systèmes d’Irrigation et de l’aménagement rural.\r\n\r\nUeno a été professeur dans le département de l’agriculture à l’Université impériale de Tokyo, désormais devenue l’Université de Tokyo. Il y a environ trois ans, des bénévoles, dont des professeurs de Todai, étudiant la relation entre les gens et les animaux ont commencé à recueillir des dons afin d’ériger cette statue.\r\n\r\nRassurez-vous, nul besoin de passer l’examen d’entrée de l’université de Tokyo pour pénétrer dans le campus, celui-ci est ouvert au grand public.\r\n\r\nA ne pas douter que la statue deviendra également un lieu de rendez-vous pour les étudiants.\r\n\r\nAccès : Métro ligne nanboku, station Todai-mae.', NULL, NULL, 'Statue'),
(53, 9, 'La tour 109', 4, 'Ouvert du Lundi au Dimanche.\r\nBoutiques : 10h - 21h\r\nRestaurant : 11h - 22h\r\n\r\nComment y accéder?\r\nStation Shibuya à Tokyo.\r\n\r\nSHIBUYA109\r\n2 Chome-29-1 Dogenzaka, Shibuya, Tokyo 150-0043, Japon\r\n\r\n\r\nReconnaissable en raison de sa tour argentée, le Shibuya 109 est un centre commercial, très célèbre dans le monde entier, exclusivement pour les femmes. Elles peuvent y trouver vêtements, accessoires...\r\nIl est considéré comme le paradis pour les jeunes japonaises qui veulent être en avance sur la mode.\r\nCe centre commercial renferme une centaine de boutiques.\r\nLe Shibuya 109 est un ensemble de magasins ayant ouvert dans les années 1920 pour subvenir aux besoins des femmes japonaises, dans une période de croissance de leur pouvoir d''achat.\r\nInitialement prévu pour la mode adulte, il est devenu au fil des années le repaire des populations adolescentes et des jeunes adultes, et est aujourd''hui une enseigne incontournable pour faire son shopping et s''imprégner des tendances.\r\nLe centre commercial se répartit sur huit étages et deux sous-sols. L''architecture du centre commercial a été conçue pour permettre une circulation fluide et agréable aux jeunes acheteuses. \r\nLes magasins sont complètement ouverts sur les allées pour mieux présenter leurs collections, et la forme circulaire du centre s''articulant autour des escalators permet aux visiteurs de gravir chaque étage en étant bien passé devant chaque magasin, dans une logique de spirale.\r\nLes styles et produits représentés sont très variés. On trouve des boutiques spécialisées dans le sac à main, comme la très célèbre Samantha Vega, des magasins de vêtements en tous genres tel que Liz Lisa, spécialisé dans le gyaru avec ses pièces aux accents rétros et couleurs pastels, ou encore Egoist et ses tenues à fort caractère. Plusieurs parfumeries sont présentes ainsi que de nombreux magasins de chaussures et d''accessoires.\r\nLes prix sont généralement plutôt élevés, mais il vous est possible de dénicher certains produits soldés ou de vous rabattre sur des enseignes pratiquant des prix d''entrée de gamme.\r\nCertains comparent le Shibuya 109 aux Galeries Lafayette de par la concentration de ses boutiques et son influence sur le milieu de la mode, cependant il ne contient pas d''enseignes de luxe à proprement parler et sa marchandise reste tout de même relativement abordable.\r\nC''est un excellent endroit pour trouver LA tenue unique à rapporter en souvenir du Japon, ou simplement pour faire du lèche-vitrine entre amis afin de s''imprégner de l''univers de la mode japonaise.', NULL, NULL, 'Commerce'),
(54, 9, 'Le Sanctuaire Meiji', 4, 'La visite du sanctuaire est gratuite.\r\n\r\nLe Musée du trésor et son annexe(Homotsuden) : 500¥\r\nLes Jardins intérieurs (Meiji Jingu Gyoen) : 500¥\r\n\r\nComment aller au Sanctuaire Meiji\r\n\r\nAdresse : Shibuya-ku Yoyogi Shinen-cho 1-1, 151-8557 Tokyo\r\nCoordonnées : 35° 40'' 34? Nord 139° 41'' 57? Est\r\n\r\nEN TRAIN\r\n\r\nStation Harajuku pour arriver par la porte Sud du sanctuaire \r\nStation Yoyogi pour rejoindre la porte Nord du Meiji jingu.\r\n\r\nEN MÉTRO\r\n\r\nLa station Meiji Jingu est desservie par les lignes Chiyoda et Fukutoshin.\r\n\r\nHoraires et jours d''ouverture\r\n\r\nLe Meiji Jingu est ouvert tous les jours, les horaires d’ouverture suivent le rythme du soleil et donc varient chaque mois :\r\n\r\nJanvier : 06H40 - 16H20\r\nFévrier : 06H20 - 16H50\r\nMars : 05H40 - 17H20\r\nAvril : 05H10 - 17H50\r\nMai : 05H00 - 18H10\r\nJuin : 05H00 - 18H30\r\nJuillet : 05H00 - 18H20\r\nAoût : 05H00 - 18H:00\r\nSeptembre : 05H20 - 17H20\r\nOctobre : 05H40 - 16H40\r\nNovembre : 06H10 - 16H10\r\nDécembre : 06H40 - 16H00\r\n\r\nLa nuit du 31 décembre le Sanctuaire reste ouvert à l’occasion du festival Hatsu-mode.\r\nAttention, les horaires d’ouvertures des bâtiments diffèrent de ceux de l’enceinte.\r\n\r\nSalle du trésor Musée et son annexe :\r\nNovembre à Février : 09H00 à 16H00\r\nMars à Octobre : 09H00 à 16H30\r\n\r\nLa salle du trésor est ouverte du lundi au vendredi tandis que son annexe est ouverte tous les jours.\r\nTarif : 500 yens\r\n\r\nJardin intérieur :\r\nLe Meiji Jingu Gyoen est ouvert tous les jours.\r\nNovembre à Février : 09H00 à 16H00\r\nMars à Octobre : 09H00 à 16H30\r\nTarif : 500 yens\r\n\r\nAu cœur du parc Yoyogi, le poumon vert de Tokyo, vous trouverez le Sanctuaire Meiji : un écrin de quiétude empreint de spiritualité à seulement quelques mètres de l’effervescence du quartier de Shibuya.\r\nAussi nommé Meiji Jingu, le plus grand sanctuaire shintoïste a été érigé dès 1912 afin d’honorer la mémoire de l’Empereur Meiji, décédé cette même année.\r\nCelui-ci tient une place particulière dans le cœur des Japonais, il est l’empereur qui a fait rentrer le Japon dans l’ère moderne, rompant avec l’isolationnisme du shogunat Tokugawa. \r\nPreuve de cet attachement, les 100 000 arbres du parc proviennent de dons venus de tout le Japon.\r\n\r\nLe Sanctuaire Meiji est un immanquable de Tokyo, il marque un tournant majeur dans l''histoire et dans la mentalité des Japonais.\r\nLa construction a été supervisée par l’architecte Ito Chuta dans le style nagare-zukuri principalement constitué de cyprès japonais. \r\nLa construction s’est achevée en 1920 et le 1er novembre s’est déroulé la cérémonie pour accueillir officiellement l’âme de l’Empereur ainsi que celle de son épouse, l’impératrice Shôken, décédée en 1914.\r\nDurant la Seconde Guerre Mondiale le temple a été détruit par les bombardements américains, il a progressivement était reconstruit par les dons des fidèles. \r\nLe 31 octobre 1958 les âmes des deux défunts ont été transférées dans les nouveaux bâtiments lors d’une cérémonie officielle qui marqua la réouverture au public du sanctuaire.', NULL, NULL, 'Temple'),
(55, 9, 'Shibuya Granbell hotel', 2, '15-17 Sakuragaoka-cho Shibuya-ku, Tokyo, Tokyo-to, 150-0031, Japon, ?01 57 323 887?\r\nL’essentiel\r\n\r\nà partir de 98 €\r\n\r\nChambres et étages\r\nCet hôtel dispose de 105 chambres\r\nArrivée et départ\r\nArrivées à partir de 14h00\r\nHeure de départ 11h00\r\nObligatoire à l’arrivée\r\nDépôt de garantie obligatoire (par carte de crédit ou en espèces)\r\nPièce d''identité officielle obligatoire\r\nÂge minimum pour effectuer l''enregistrement : 18\r\nInternet\r\n\r\nAccès Wi-Fi et par câble à Internet gratuit dans les espaces communs\r\nAccès Wi-Fi et par câble à Internet gratuit dans les chambres\r\nRestauration\r\n\r\nSaku La - Ce restaurant sert le petit-déjeuner, le déjeuner et le dîner.\r\nCONA - Ce bar à vin propose des spécialités à base de pizza.\r\n\r\nAu cœur du quartier de Shibuya et à moins de 30 minutes à pied de Cerulean Tower, Musée d''art Nezu et Parc Yoyogi, Shibuya Granbell hotel est un hôtel 3,5 étoiles étoiles de Tokyo. Temple Meiji Jingu et Tour de Tokyo se trouvent également à moins de 5 km. \r\n \r\nCet hôtel dispose d''un restaurant où vous pourrez savourer un bon choix de menus pour le petit-déjeuner, le déjeuner et le dîner. Un bar salon vous attend si vous souhaitez vous détendre devant un verre ou deux. L''accès Internet Wi-Fi et haut-débit (par câble) est gratuit.', NULL, NULL, 'Occidental'),
(56, 9, 'Sakura Fleur Aoyama', 2, '2-14-15 Shibuya, Shibuya-Ku Tokyo Tokyo-to 150-0002 Japon\r\n\r\nDans le quartier de Shibuya, cet hôtel se trouve à moins de 2 km de Château national pour les enfants et Musée d''art Nezu.Parc Yoyogi et Musée d''art Mori se trouvent également à moins de 3 km de distance.\r\nServices et équipements\r\nEn plus d''inclure un restaurant, cet hôtel possède aussi un café et un service de nettoyage à sec. L''accès Wi-Fi dans les parties communes est fourni gratuitement. Une réception ouverte 24 heures sur 24, un personnel multilingue et un coffre-fort à la réception sont également disponibles sur place.\r\nChambres\r\nL''ensemble des 133 chambres offrent la connexion gratuite à Internet par Wi-Fi et par câble, des télévisions à écran plat avec chaînes numériques ainsi que des petits plus très agréables comme des lits avec matelas en mousse à mémoire de forme et des édredons de plumes. Des réfrigérateurs, des pommeaux de douche à jet de pluie et un service de massage en chambre ne sont que quelques exemples des prestations dont vous pourrez bénéficier.\r\nNous devons aussi mentionner...\r\nCet établissement a pour politique de refuser les réservations de groupes se réunissant pour certaines fêtes ou événements particuliers tels que les enterrements de vie de jeune fille et de garçon. Les enfants de 12 ans et moins ne sont pas admis dans cet établissement. Seules les personnes enregistrées peuvent accéder aux chambres. Le gouvernement japonais exige que tous les visiteurs internationaux donnent leur numéro de passeport et leur nationalité lorsqu''ils s''enregistrent dans un établissement hôtelier (auberge, hôtel, motel, etc.). Les propriétaires des établissements doivent également photocopier les passeports des clients et les archiver.\r\nArrivée\r\nArrivées à partir de 15h00\r\nDépart\r\nHeure de départ 10h00\r\n', NULL, NULL, 'Occidental'),
(57, 9, 'Sakura hotel Hatagaya', 2, '\r\nL’hotel Sakura Hatagaya est une nouvelle branche des Hotels Sakura qui depuis 1992 fournissent des chambres confortables et bon marche a Hatagaya, au coeur de Tokyo.\r\nDepuis longtemps considere comme un carrefour pour voyageurs (que ce soit des hommes d’affaires ou des touristes), l’Hotel Sakura Hatagaya a ete recommande par le guide touristique « Lonely Planet »\r\nPour votre confort, nous disposons d''un personnel francophone.\r\n\r\n Tarifs bas\r\n\r\nChambre simple : 7,150 yen, Chambre double : 9,300 yen, Chambre a deux lits : 11,900 yen (5,950 yen / p), Chambre a trois lits : 15,150 yen ( 5,050 yen / p). Ces prix incluent les taxes\r\n\r\nL’hôtel Sakura Hatagaya est situé dans le quartier d’Hatagaya, arrondissement de Shibuya, Tokyo. L’hôtel est seulement à 2 minutes de la station de métro « Hatagaya » sur la nouvelle ligne Keio. Il ne vous prendra que 10 minutes pour arriver à Shinjuku, la plus grande station du Japon (et même du monde !) avec plus de 3.5 millions de personnes y passant chaque jour.\r\nUne fois à Shinjuku, vous pouvez prendre une des nombreuses lignes de train / métro à votre disposition et facilement accéder à n’importe quel quartier de Tokyo, que ce soit pour des attractions touristiques ou des centres d’affaires. Peu importe la raison de votre voyage à Tokyo, l’hôtel Sakura Hatagaya est un emplacement idéal pour séjourner à Tokyo. \r\nDirections depuis la station de métro Hatagaya jusqu’à l’hôtel (2 min à pied)\r\nTourner à gauche après avoir franchi les barières et monter les escaliers.\r\nIl y a deux escaliers qui mènent au rez de chaussée, les deux sont appellés « South Exit » (Sortie Sud). Une fois en haut, marcher en direction du sud (le dos à « Koshu Kaido », la grande rue) pendant deux pattés de maison.\r\nVous verrez alors un arche et une supérette « Family Mart », tourner à droite. L’hôtel sera situé sur votre droite, un bureau de poste est situé au rez-de-chaussée de l’immeuble, notre entrée se touve derière le bureau de poste.\r\n\r\n1-32-3 Hatagaya Shibuya-ku, Tokyo Japan 151-0072 TEL: +81-3-3469-5211 FAX: +81-3-3468-4307\r\nSakura Café/Restaurant maintenant ouvert à Sakura Hotel\r\n 	\r\n- Entrepose heures : 24 heures\r\n- Petit déjeuner : 365 yen (entre 5h00 et 9h00 du matin)\r\n- Grande variété de thé/café et autres boissons non-alcoolisées\r\n- Snacks (ex. pizza, cakes, fried noodle...)\r\n', NULL, NULL, 'Occidentale'),
(58, 9, 'Gonpachi', 1, 'Le gonpachi  est à la restauration Japonaise ce que la brasserie est à la restauration française \r\n: une sorte de pot-pourri dans lequel on trouve les grands classiques de la cuisine japonaise : soba, yakitori, riz, sashimi. \r\nLe compachi fait également office d''izakaya puisqu''on y sert beaucoup de sortes de tapas pour celles et ceux qui sont surtout venus boire. \r\nCe qui est particulièrement sympa au Gonpachi c''est que sa salle est située au 14 étage d''une tour de maruyamacho c''est pourquoi il est préférable de demander une table O-Zashiki qui vous offrira une belle vue sur Shibuya by Night.\r\n A noter qu''il y a un autre Gonpachi à Nishi-Azabu près de Roppongi, certains préférent d''ailleurs cette salle qui a inspiré un des décors de Kill Bill.\r\n\r\n- Budget : Entre 3000 et 5000 yens\r\n\r\n- Comment s''y rendre : Depuis Hachiko prendre l''avenue Dogenzaka jusqu''au poste de police (Koban) situé sur la droite. Là vous trouverez un grand immeuble en verre  d''une quinzaine d''étages avec un showroom d''appareils électroménagers au rdc. C''est au 14ème étage que ca se passe.\r\n\r\n- Mes recos : toro (mini brochette de thon qui fond comme du beurre), tsukune (ce qu''en France on appelle brochette boulette), takana-meshi (riz grillé avec des feuilles de moutarde). Les cocktails et les desserts valent le coup.', NULL, NULL, 'Brasserie'),
(59, 9, 'Kua aina', 1, 'A Shibuya on trouve toutes les plus grandes chaines américaines (Mac Do, Burger King), japonaises ( First Kitchen- derrière le magasin Softbank de l''avenue Bunkamura essayez burger aux crevettes, Freshness Burger en face du H&M et Mos Burger en face du Krispy Cream de Dogenzaka)  et même Coréennes (Lotteria),\r\n mais si vous avez envie d''un burger de qualité c''est au Kua Aina qu''il faut aller. Cette chaine Haiwaio-Japonaise (à ne pas confondre avec Big Kauna Burger) propose les grands classiques dans une ambiance Beach Boys. \r\nRien que les frites sont à tomber.\r\n\r\nVous pouvez choisir votre burger/sandwich à l''unité ou bien partir sur un menu avec en complément des frites et une boisson. Les tarifs varient selon la taille du steak (3 possibilités : 113g, 150g ou 225g) et les garnitures. Il faut compter entre 1 150 (8,30€) et 1 500 yen (10,80€) pour un menu burger. Côté cuisine, les légumes sont frais et la viande de très bonne qualité. Les cuissons sont bien maîtrisées et les portions généreuses. \r\n\r\n- Budget : environ 1300 yens\r\n\r\n- Comment s''y rendre : Depuis hachiko Il faut aller de l''autre coté de la station JR et prendre l''avenue qui monte vers Aoyama dori (c''est sur cette avenue que se trouve la poste de Shibuya, ouverte 24h/24, 7jours/7).\r\n Arrivé au niveau du croisement avec Aoyoma-Dori prendre sur la gauche.\r\n\r\nHoraires\r\n\r\nlun.	10:00 - 22:00	Ouvert maintenant\r\nmar.	10:00 - 22:00	\r\nmer.	10:00 - 22:00	\r\njeu.	10:00 - 22:00	\r\nven.	10:00 - 22:00	\r\nsam.	10:00 - 22:00	\r\ndim.	10:00 - 22:00	', NULL, NULL, 'Beach Boys'),
(60, 9, 'Uobei ', 1, 'Adresse : 2-29-1 Dogenzaka, Shibuya-ku, Tokyo ( à 300m de la Station Shibuya)\r\nHoraires : Tous les jours de 11h à minuit, non-stop\r\nTelephone : 03 3462 0241\r\n\r\nVous connaissez déjà sûrement les buffets sur tapis roulant où vous n’avez qu’à prendre au passage ce qui vous semble appétissant. \r\nIci c’est un peu pareil, sauf que vous commandez sur un écran tactile ce qui vous intéresse (traduit en anglais) et quelques instants plus tard, le plat arrive directement à votre emplacement sur un petit chariot roulant. \r\nEt celui là, personne ne va vous le voler. Vous appuyez sur un bouton et le chariot retourne en cuisine.\r\nSi le restaurant est complet il y a une petite salle d’attente à l’entrée. Dès qu’il y a de la place on vous donne une petite carte qui comptabilise tout ce que vous commandez et que vous ramenez à la caisse pour l’addition.\r\nA seulement 105Y (moins d’1€) pour la plupart, les sushis ne sont pas mauvais. Par contre et c’est bien dommage, c’est uniquement des sushis assez simples. Pas de California Roll par exemple.\r\nIl y a également d’autres choix possibles comme de petites soupes, du poulet, des frites ou encore quelques desserts. Et les prix sont à chaque fois très corrects.\r\nNiveau ambiance, on a un peu l’impression d’être dans une salle de SVT au lycée. Grande salle blanche avec de petits robinets à chaque emplacement. \r\nSauf qu’ici l’eau est chaude et il y a du thé vert en poudre a disposition. Un point positif de plus.', 'www.genkisushi.co.jp/uobei/', NULL, 'Sushi'),
(61, 8, 'Golden Gai', 4, 'Les six ruelles exigües qui composent Golden Gai sont des miraculées. \r\nSorti indemne du tremblement de terre du Kantô en 1923, puis des bombardements de la Seconde Guerre Mondiale, ce minuscule quartier détonne désormais dans le paysage actuel de Tokyo.\r\nAujourd’hui, Golden Gai abrite pas moins de 200 bars. \r\n\r\nSitué à proximité de la sortie Est de la gare de Shinjuku (entre le sanctuaire Hanazono et la mairie de Shinjuku), il est possible que vous tourniez un moment en rond avant d’arriver sur les lieux.\r\nUne fois sur place, on est rapidement frappé par l’atmosphère environnante - intime et sereine - mais aussi par l’étroitesse des rues et des établissements.\r\nMais avec toutes ces enseignes, le choix du bar peut s’avérer difficile. Cela dit, certains d’entre eux sont réservés exclusivement aux Japonais ou aux habitués et parfois, ce sont les prix qui vous décourageront.\r\nIl faut en effet compter le prix de la table (indiqué à l’entrée du bar) en plus de vos consommations. Il oscille la plupart du temps entre 800¥ et 1000¥.\r\nIl est aussi possible que vous vous fassiez aborder directement par l’un des gérants en mal de compagnie.\r\nA l’intérieur, ces établissements ne comptent généralement pas plus de cinq ou huit places. Un cadre qui incite fortement à la convivialité et qui donne bien souvent lieu à de sympathiques rencontres !\r\nLe quartier est paraît-il très prisé par de nombreux artistes japonais. Il se pourrait donc que vous croisiez le chemin d’une célébrité lors de votre virée nocturne.\r\nOutre des prix parfois excessifs, le charme singulier de Golden Gai est incontestable et mérite vraiment le coup d’œil.\r\nTrois adresses parmi les 200 bars du Golden Gaï\r\n-  La Jetée  (??? en hiragana sur la plan qui figure à l’entrée du Golden Gaï)\r\n- Le Baltimore, propose en plus d’une atmosphère toujours chaleureuse, un catalogue de Jazz incroyable où vous pourrez, entre autres, savourer la voix si particulière de Nina Simone.\r\n-  The Who, véritable bonheur pour les aficionados du rock des années 70. Attention aux marches, surtout, pour redescendre du bar qui est à l’étage …\r\n\r\nComment se rendre à Golden Gai\r\nDepuis la gare de Shinjuku - sortie est, 5 minutes de marche (proche du sanctuaire Hanazono)\r\n\r\nJours et horaires d''ouverture\r\nOuvert toute l''année\r\nLa plupart des bars n''ouvrent pas avant 21h\r\nSeuls certains acceptent les étrangers non-japanophones\r\n\r\nDurée / période de visite\r\nDurée de visite approximative : de quelques minutes à la nuit entière !\r\n\r\nTarif\r\nEn fonction des bars\r\nQuelques centaines de Yens de "droit de siège" (premier petit amuse-gueule offert)\r\n\r\n', NULL, NULL, 'Bar '),
(62, 8, 'Le jardin impérial de Shinjuku', 4, 'Le jardin impérial de Shinjuku (????, Shinjuku Gyoen?) est un parc dans les arrondissements de Shinjuku et de Shibuya à Tokyo. \r\nLe parc a été une résidence de la famille Naito à la fin du xixe siècle pendant l''ère Edo avant de devenir un jardin sous la gestion de l''agence impériale du Japon. \r\nC''est maintenant un parc sous la juridiction du ministère national de l''environnement.\r\nHistoire\r\n\r\nLa partie française des jardins est créée à la fin du XIXe siècle par un Français, \r\nl''architecte-paysagiste Henri Martinet (ja), alors intendant des Jardins de Versailles\r\n1. Les jardins impériaux, finis en 1906, ont été détruits à la fin de la Seconde Guerre mondiale. \r\nEn 1947, la gestion du parc et celle des jardins impériaux de Kyoto ont été transférée au ministère national de la santé et du bien-être (partie maintenant du ministère de la santé, du travail et du bien-être). \r\nLe 21 mai 1949, le jardin a été ouvert au public sous le nom « Parc national des jardins impériaux de Shinjuku ».\r\nEn janvier 2001, la gestion du parc a été finalement transférée au ministère national de l''environnement sous le nom de Shinjuku Gyoen.\r\n\r\nAvec une superficie de 58,3 ha et une circonférence de 3,5 kilomètres, les jardins mélangent trois styles distincts : anglais, français et japonais.\r\nIl y a plus de 20 000 arbres, incluant approximativement 1 500 cerisiers qui fleurissent à différentes périodes selon l''espèce : fin mars pour les shidare (cerisier pleurant), début avril pour les somei (cerisier de Tokyo),\r\njusqu''à fin avril pour les cerisier de Kanzan.\r\nOn trouve également dans ce parc des cèdres de l''Himalaya majestueux, qui montent au-dessus du reste des arbres en parc, tulipier de Virginie, des cyprès, et des platanes,\r\nqui ont été plantés pour la première fois au Japon dans les jardins impériaux.\r\n\r\nLes horticulteurs travaillent en serres chaudes dans les jardins depuis 1892. La serre chaude actuelle, construite dans les années 1950 a plus de 1 700 tropicaux et d''espèce subtropicale visibles en permanence.\r\n\r\nLes jardins ont trois accès : porte de Shinjuku, porte d''Okido et porte de Sendagaya.\r\n\r\nShinjuku Gyoen est ouvert de 9 h à 16h30 tous les jours sauf le lundi sauf pendant les saisons des cerisiers et des chrysanthèmes, fin mars- avril et début novembre respectivement où les jardins sont ouverts sept jours par semaine.\r\nLa dernière admission est 16h. L''admission est de 200 yens pour les adultes, 50 yens pour des enfants. La serre chaude est ouverte de 11h à 15h. Une maison de thé japonaise se trouve dans les jardins.\r\n\r\nAdresse : Naito-machi 11, Shinjuku-ku, Tokyo 160-0014 JAPON\r\nCréation : 1906 en tant que Jardin Impérial, puis désigné Jardin National après la seconde guerre mondiale; il est alors ouvert au public.\r\nTel : +81.3.3350.0151, Fax : +81.3.3350.1372\r\nSite internet : www.env.go.jp/garden/shinjukugyoen/\r\nSuperficie du jardin : 58,3 hectares\r\nActivités pédagogiques : ateliers mère/enfant d''observation de la nature, atelier de photographie naturaliste, visite guidée du jardin par les guides volontaires du jardin, la visite de l''ancienne résidence secondaire impériale, des expositions artistiques dans la galerie d''art du jardin, cérémonies du thé dans les pavillons de thé...:\r\nCommentaires : il est nécessaire de demander la permission à l''accueil avant de prendre des photos dans ce jardin. (formulaire à remplir).\r\nAccès :\r\nmétro Marunouchi, station Shinjuku gyoen mae (sortie 1) ou métro Toei Shinjuku line, station Shinjuku 3 chome (sorties C1 & C5)\r\n\r\n', NULL, NULL, 'Jardin'),
(63, 8, 'Musé du joué', 4, 'Installé au sein d’une ancienne école primaire, le Musée du jouet de Tokyo propose des aires de jeux qui raviront petits et grands enfants.\r\nEtre un enfant au Japon est un fait rare mais appréciable. Face au déclin de la démographie, le gouvernement ne lésine pas sur les moyens de combler la jeune population. \r\nAinsi en est il de cette école primaire du quartier de Shinjuku dont les salles de classe se sont transformées en cour de récréation en 2008. \r\nLes tables et les cahiers ont laissé place aux jouets en provenance du monde entier. \r\nCe musée n’est pourtant pas banal : l’interactivité y prime. Les enfants peuvent essayer chaque jeu dans des aires ludiques dédiées. \r\nLa maison de poupée géante enchantera les petites filles alors que les amateurs de tradition retrouveront nombre de souvenirs dans « la forêt du jouet », accumulation de jeux en bois. \r\nSpécificité remarquable du troisième étage, « l’hôpital des jouets » réconfortera le tout petit chagriné par la dégradation de son compagnon favori. \r\nEn été, des événements thématiques sur les jouets faits main sont organisés, donnant une opportunité unique de découvrir les processus de fabrication des jeux.\r\n\r\n\r\nAdresse :\r\n4-20 Yotsuya, Shinjuku-ku, Tokyo.\r\n\r\nTéléphone :\r\n+81 (0)35 367 9601.\r\n\r\nHoraires :\r\nouvert tous les jours sauf le jeudi de 10 heures à 16 heures, dernière entrée à 15 heures 30.\r\n\r\nPrix :\r\n700 yens pour les adultes, 500 yens pour les enfants de plus de 3 ans. Billet un adulte + un enfant à 1000 yens.\r\n\r\nAccès :\r\nstation Yotsuya 3 chome de la ligne de métro Marunouchi, sortie n°2.\r\n', 'http://goodtoy.org/ttm/', NULL, 'Musé'),
(64, 8, 'L’observatoire de la mairie de Tokyo', 4, 'Achevé en 1990, le Tokyo Metropolitan Government Building est formé de deux tours de 48 étages s’élevant à 202 mètres. \r\nIl s’agissait de l’une des plus hautes tours de la ville jusqu’au milieu des années 2000. Peu de gens le savent, mais la mairie de Tokyo possède deux observatoires panoramiques accessibles gratuitement au public.\r\nCe qui le rend intéressant, c’est qu’il est ouvert dans des plages horaires assez larges allant de 9 h 30 à 23 h non-stop. Vous pouvez donc vous y rendre en fin de journée pour admirer un magnifique coucher de soleil sur la ville.\r\nNotez que si la météo le permet, vous pourrez même apercevoir au loin le Mt Fuji.\r\nIl y a un observatoire dans chacune des deux tours appelées « tour nord » et « tour sud ».  \r\nJe vous recommande d’aller dans la tour nord pour y trouver non seulement une belle vue du quartier, mais aussi un bon point d’observation de la célèbre Tokyo Sky Tree.\r\nLes tours sont composées d’immenses baies vitrées faisant le tour du bâtiment offrant un magnifique panorama. Un petit bémol toutefois, le meilleur coin d’observation de la Tokyo Sky Tree est réservé aux clients du restaurant de la tour.\r\nLes traditionnelles boutiques de souvenirs sont aussi de la partie avec des produits qu’on n’attend pas forcements dans ce type d’endroit.\r\n\r\nLe siège du gouvernement métropolitain de Tokyo (?????, Tokyo-to Chosha?, en anglais Tokyo Metropolitan Government Building) ou Tocho, est situé dans le quartier de Nishi Shinjuku (Shinjuku Ouest) dans l''arrondissement de Shinjuku.\r\nLa traduction mairie de Tokyo est souvent utilisée, même si la zone gouvernée par cette « mairie », la préfecture de Tokyo ne se limite pas au centre urbain.\r\nLe bâtiment, commencé en avril 1988 et achevé en décembre 1990, formé de deux tours jumelles de 48 étages, était le plus haut de la ville (243,4 mètres) jusqu''en 2006.\r\nIl a été conçu par l''architecte Kenzo Tange et l''accès aux deux tours est libre et gratuit. L''observatoire, à 202 mètres, permet de découvrir de très belles vues d''ensemble de l''est de Tokyo et aussi le sud-ouest, vers le Mont Fuji.\r\nLe bâtiment se compose d''un complexe de trois structures qui prend un bloc de ville. Le plus grand est le bâtiment principal métropolitain no 1, avec 48 étages.\r\nLe bâtiment comprend également trois niveaux au-dessous de la terre. La conception du bâtiment (supposé ressembler à une puce électronique), par l''architecte Kenzo Tange (et ses associés) et la société Taisei Corporation\r\n, a beaucoup de touches symboliques, la plus frappante étant la fente entre les deux tours qui recrée la forme d''une cathédrale gothique.\r\nLe prix pour la construction était 157 milliards de yens, soit à peine un milliard d''euros.\r\nLes deux autres bâtiments dans le complexe sont l''Assemblée de Tokyo avec huit étages qui ressemblent au Vatican avec les bras tendus et le bâtiment no 2 qui a 37 étages.\r\n\r\n\r\nAdresse :\r\n\r\n 2-8-1 Nishishinjuku, Shinjuku, Tokyo 163-8001\r\n \r\n Heures d’ouverture :\r\n\r\nObservatoire Nord : 9h30 – 23 h.  (Fin des entrées à 22 h 30) – fermé les 2e et 4e lundis de chaque mois.\r\nObservatoire Sud : 9h30 – 17 h 30  (Fin des entrées à 17 h 00) – (Ouvert jusqu’à 23 h les jours de fermeture de l’observatoire Nord, à savoir tous les 2e et 4e lundis de chaque mois) –  fermé les 1er et 3e mardis de chaque mois.\r\n\r\nRemarque : Si l’un des jours listés ci-dessus tombe lors d’un jour férié, l’observatoire sera bien ouvert ce jour-là, mais fermera le jour suivant.\r\nLes observatoires seront fermés durant les vacances du Nouvel An (consultez le calendrier de Japon Pratique) sauf le 1 er janvier.\r\n\r\nL''immeuble constitue un lieu majeur de la ville de Tokyo, et apparaît donc régulièrement dans des anime et films :\r\n\r\nDans le film à controverse Battle Royale 2, sorti en 2003, l''immeuble ainsi que tous les gratte-ciel environnants sont détruits par l''organisation terroriste Wild Seven ;\r\nDans le film de 1991, Godzilla vs King Ghidorah, la bataille finale, entre Godzilla et King Ghidorah a lieu au pied du bâtiment, et à l''intérieur. Durant le combat, les hauts des deux flèches sont pulvérisés par Godzilla ;\r\nDans l''épisode 23 de la saison 10 des Simpsons (Le Pire du Soleil-Levant), on peut le voir alors que la famille Simpson visite le Japon.\r\nDans l''anime Ghost in the Shell: S.A.C. 2nd GIG, c''est un des rares immeubles subsistant suite à la destruction de Tokyo.\r\nIl est représenté semi immergé et se situe au dessus du site dit des Installations Nucléaires de Shinjuku dont la présence est récurrente au sein de cette deuxième saison.', NULL, NULL, 'Observatoire');
INSERT INTO `info` (`id`, `quarter_id`, `name`, `type`, `description`, `url`, `rating`, `theme`) VALUES
(65, 8, 'Green Plaza Shinjuku Capsule', 2, '\r\nAvec 593 «capsule» chambres Homme, un des plus grands hôtels de style capsule au Japon. Vous devriez être en mesure de découvrir la culture japonaise et bain public. \r\n\r\n* 5 min à pied de la gare de Shinjuku (JR et métro), 1 min à pied de Kabukicho. \r\n* Personnel parlant anglais, le personnel Chinse langue \r\n* Tenue de bagages gratuite avant le check-in \r\n* GRATUIT câble Internet LAN \r\n* Boîte de sécurité GRATUIT \r\n* GRATUIT shampooing et revitalisant, savon pour le corps, brosse à dents, sèche-cheveux, rasoir. \r\n* Service de blanchisserie \r\n\r\nNous nous félicitons de clients de partout dans le monde, et nous croyons que vous serez une expérience particulière dans Green Plaza Shinjuk Capsule. \r\n\r\n== Un nouveau type capsule de mise à niveau installée !! dans Jan.2014 == \r\nProfitez de la connexion Wi-Fi rapide Power Outlet pour 4300JPY par nuit. \r\n\r\nLa capsule standard est juste 3500JPY par nuit. \r\nUne haute qualité, à faible prix Capsule Hôtel avec 630 chambres cellulaires à Shinjuku Kabukicho. Le toit d''un bain à remous en plein air et onsen bain de source chaude disponible. \r\n\r\nhôtel de Capsule est un style d''hébergement populaire unique parmi les voyageurs à petit budget et les hommes d''affaires japonais qui ont raté le dernier train. :) \r\n\r\nVous ne pouvez pas quitter le Japon sans éprouver cet hébergement de style japonais néo! Vous pouvez dormir dans votre vie personnelle ''Capsule'' comme une minuscule chambre, 190cm (6 ''3'') de profondeur par 100 cm (3 ''4'') de largeur et 90cm (3''0 '') Heights et pourtant dispose d''aménagements, tels que la télévision, radio, réveil et d''un éclairage réglable. Accès gratuit à Internet (connexion LAN) et PC ¥ 100 / 15min est disponible dans le salon. \r\n\r\nLes capsules sont alignés comme à impériale. Chaque capsule est climatisée et équipée de la télévision (par Sharp AQUOS), radio, réveil, la lumière personnelle. Les installations comprennent un shampooing, savon, brosse à dents, une serviette, rasoir et une robe. \r\nÀ la télévision, certains programmes bilingues disponibles en fonction des horaires. \r\n\r\nLes installations comprennent une salle de bain extérieure et un jacuzzi, grande baignoire (eau minérale), saunas, restaurants. \r\n\r\nArrivée: 15 heures - minuit (00 heures) \r\nDépart: 10 heures \r\n(Frais de départ tardif: ¥ 260 / chaque supplémentaire de 30 min.) \r\nPas de fermeture \r\n\r\nNOTES IMPORTANTES: \r\nS''il vous plaît noter que les clients qui restent deux nuits ou plus sont nécessaires pour sortir de la salle avec tous les effets par 10 heures tous les jours. Cela est dû au nettoyage journalier de l''installation. Casiers pour les bagages disponibles. Vous pouvez revenir après 15 heures. \r\n\r\nPetit-déjeuner: De ¥ 400 (ensemble de repas japonais / occidental) dans un restaurant \r\n\r\nNous acceptons les principales cartes de crédit telles que Visa, MasterCard, JCB, American Express et Diners Club. \r\n\r\nLes autres installations comprennent; \r\n-Hot Spring Spa, Jaccuzi avec téléviseur grand écran plat \r\n-Toit-Dessus en plein air bain à remous et sauna \r\nChambre -Relaxation \r\nChambre -Massage / coréen Akasuri \r\nNap prise chambre \r\nCentre d''affaires- (LAN gratuit, PC à la charge) \r\n\r\nREMARQUES: \r\n-Les Clients qui restent 2 nuits ou plus sont nécessaires pour sortir de la salle avec tous les effets par 10 heures tous les jours, cela est dû à un nettoyage quotidien de l''établissement. Casiers pour les bagages disponibles. Vous pouvez revenir après 15 heures. \r\nInvités -MALE seulement \r\n-Toutes Les chambres (cellules) sont non-fumeur \r\n-Sous 18 ans, pas autorisés à rester \r\n-Les Clients avec Tatoo pas autorisés \r\n\r\n5 minutes à pied de la gare de Shinjuku JR sortie Est et du métro gare de Shinjuku. Marchez vers le nord (à la direction de la gare de Shinjuku Seibu) et de passer par le Shinjuku Prince Hôtel sur votre gauche. Nous sommes juste en face de la gare Seibu Shinjuku. \r\n\r\nNous vous recommandons d''imprimer-sur la carte Google sur le site web de réservation. Vous pouvez afficher toute la marche japonaise sur la rue pour obtenir les bonnes directions lorsque vous êtes perdu. \r\n', NULL, NULL, 'Atypique'),
(66, 8, 'Ibis Tokyo Shinjuku ', 2, '\r\n\r\nL''ibis Tokyo Shinjuku est situé au coeur du quartier populaire et cosmopolite Shinjuku, l''une des zones commerciales et de divertissement les plus animées de Tokyo.\r\nL''hôtel est à 3 minutes à pied de la station de métro Shinjuku et de la gare de JR Shinjuku, une position idéale pour explorer la ville de Tokyo pour affaires ou en touriste. \r\nL''hôtel ibis Tokyo Shinjuku offre 206 chambres, toutes dotées d''un accès Internet gratuit.\r\nL''hôtel ibis Tokyo Shinjuku est situé au coeur du quartier populaire et cosmopolite Shinjuku, l''une des zones commerciales et de divertissements les plus animées de Tokyo.\r\nL''hôtel est à 3 minutes à pied de la station de métro Shinjuku\r\n\r\nIBIS TOKYO SHINJUKU :Depuis l''aéroport de Narita, prendre le train ou le bus limousine pour l''hôtel. \r\nPar le bus 85 à 115 min , descendre à l''arrêt Shinjuku Station. Par le train Narita Express, le trajet jusqu''à la gare de Shinjuku prend environ 80 minutes. \r\nL''hôtel est à 3 min à pied de la sortie ouest de la gare. Depuis l''aéroport de Haneda, prendre le bus limousine jusqu''à la gare de Shinjuku 35 à 60 min ou le monorail et la ligne de métro Oedo jusqu''à la station Shinjuku Nishiguchi 45 min\r\n. Sorties de métro B16 et D5.\r\nCOORDONNÉES\r\n7-10-5 NISHI-SHINJUKU,\r\nSHINJUKU-KU,\r\n160-0023 - TOKYO\r\nJAPAN\r\nTEL :\r\n(+81)3-3361-1111\r\nFAX :\r\n(+81)3-3369-4216\r\nINFORMATIONS GÉNÉRALES:\r\nH8620-RE1@ACCOR.COM\r\nACCÉDER À L''HÔTEL\r\nGPS: N 35° 41'' 38.11'''' E 139° 41'' 53.90''\r\n\r\nPoint d’intérêt principal\r\nHANEDA AIRPORT (17.60 km)\r\nDistance de l’hôtel au centre ville\r\nTOKYO (1.00 km)\r\nDistance de l’hôtel à la gare\r\nSHINJUKU (0.20 km)', NULL, NULL, 'Occidentale'),
(67, 8, 'Rose Garden', 2, 'Le Rose Garden est un petit hôtel familial, fondé en 1997, situé au cœur de Tokyo à Shinjuku. Notre situation idéale offre à nos invités, un accès aux commerces, loisirs, restaurants et boutiques de la capitale japonaise.\r\nSitué en plein centre ville, Le Rose Garden Hôtel est fier de vous offrir une chambre au calme, avec double vitrage et air conditionné, à un prix raisonnable loin de toute l’agitation des grandes villes.\r\nToutes les chambres, de la simple à la double, ont été soigneusement décorées et meublées, incluant un téléviseur. \r\nUn appartement de luxe a été spécialement conçu pour répondre aux attentes de nos clients.\r\nNous offrons un large choix de restauration pour agrémenter votre séjour. ; du repas traditionnel au « Kurikichi » , notre restaurant traditionnel, situé à côté de la roseraie au repas plutôt occidental au Ciao. Quelque soit votre préférence , vous trouverez un endroit pour vous restaurer.\r\nSi vous séjournez à des fins professionnelles, nous mettons à votre disposition une équipe de traiteur, des salles de conférence ou de réunion répondant à vos besoins.\r\nQuelque soit l’objet de votre visite, nous vous invitons à découvrir Tokyo et à apprécier le confort de l’Hôtel Rose Garden.\r\nPour plus de renseignements, vous pouvez nous contacter. Notre équipe sera là pour répondre à vos questions.\r\n\r\n1-3 Nishi-Shinjuku 8-chome, Shinjuku, Tokyo, 1600023\r\nPhone: +81-3-33601533\r\nFax: +81-3-33601633\r\n101 rooms/ 9 floors\r\n\r\nSitué dans la région d’un ancien clan Japonais de la période XXXX, l’Hôtel Rose Garden Shinjuku bénéficie d’une excellente localisation au cœur même de Tokyo. \r\nL’hôtel est facilement accessible par tout mode de transport : à quelques pas de la station de métro la plus proche et seulement à quelques minutes de la principale station de métro de Shinjuku et de la voie rapide. \r\nQue vous vouliez visiter le quartier des affaires, dévaliser les magasins branchés de Tokyo ou simplement un endroit central à partir duquel visiter Tokyo, le Rose Garden est l’hôtel \r\n\r\nStation de métro Nishi-Shinjuku :17 mètres (une minute à pied) \r\nStation principale de Shinjuku: 700 mètres ( 8 mn à pied par la voie piétonne aérienne, 5mn en taxi et 3 mn par le train via Nishi-Shinjuku) \r\nCommentaire: plus rapide par le train, mais une marche agréable si le soleil est au rendez-vous).\r\n\r\nAeroport du Tokyo Narita :74 km( 1h15 en bus+5mn en taxi) \r\nCommentaire : un service de bus limousine est mis en place avec des départs toutes les 20 mn du Terminal de l’aéroport en direction de la voie express et de la station principale de Shinjuku.\r\nA partir de là, si vous avez des bagages, nous vous conseillons de prendre un taxi (5 mn ) car le trajet en bus peut prendre beaucoup de temps du fait de la circulation sur la voie express.', NULL, NULL, 'Occidentale'),
(68, 8, 'Ishikawa', 1, 'Takamura Bldg., 1st floor, 5-37 Kagurazaka, Shinjuku Tokyo  +81 3 5225 0173\r\n\r\nC’est le restaurant le plus célèbre de Tokyo avec trois étoiles au Michelin, où chaque élément de la gastronomie ressemble à une expérience de laboratoire.\r\nIl se situe dans un discret bâtiment en bois sombre niché sur la colline de Kagurazaka, derrière l’autel Bishamonten. Il fait montre d’un ascétisme austère qui fait sa force.\r\nCela se voit à travers le kimono des serveuses, les blouses blanches du personnel de cuisine et du chef Ishikawa ainsi que dans la décoration des quatre salles à manger privées mises à disposition de la clientèle.\r\nLa carte offre des ingrédients de saison et change constamment. On peut y trouver un shabu-shabu de cailles présenté dans un copieux bouillon aux cinq variétés de champignons sauvages ; du sashimi de daurade et du vivaneau rouge grillé aux aubergines ; de l’émincé de crabe d’Hokkaido ou des coquilles d’ivoire (des bulots japonais), du foie de lotte, et des haricots shintorina à la sauce ikura. Le service chez Ishikawa est tellement personnalisé que les serveurs ne vous serviront pas le même plat à votre seconde visite.\r\nSi vous ne pouvez obtenir une salle à manger privée, un comptoir en bois de cyprès de 400 ans vous offrira des places pour sept personnes.\r\n\r\nOpening hours, last orders\r\nDinner = 17:30-24:00 L.O.22:00\r\nAnnual and weekly closing\r\nClosed mid-August, late December-early January, Sunday and Public Holidays\r\nPrice\r\nDinner = set \\16,200-20,520\r\nService charge = 10%\r\nAddress\r\n5-37 Kagurazaka, Shinjuku-ku, Tokyo\r\nTEL\r\n03-5225-0173', 'http://www.kagurazaka-ishikawa.co.jp', NULL, 'Traditionnel'),
(69, 8, 'Le robot restaurant', 1, 'Est-ce que vous voulez assister au show le plus fou, futuriste et décalé de Tokyo? Bien sûr que vous voulez!\r\n\r\nLe Robot Restaurant est tout près de la station Shinjuku, dans le centre du quartier Kabukicho, et c''est une expérience que vous trouverez dans aucune autre ville dans le monde!\r\nDès que vous arrivez, préparez vous à rentrer dans un monde plein de couleurs, de brillance et de designs. Même l''aération dégage des paillettes!\r\nAprès avoir été émerveillé par l''atmosphère, vous profiterez d''une performance musicale spectaculaire incluant des joueurs de tambours taiko entourant le spectacle de robots qui inondent la scène de lasers,\r\npercussions, toutes sortes de robots incroyables, des bagarres de filles, des costumes sauvages et plus encore.\r\nC''est comme une scène sortie d''un film de science fiction et aucune dépense n''a été épargné pour créer le spectacle le plus sauvage et bizarre de la ville.\r\nEnfin, après toutes ces émotions, vous pourrez vous relaxer dans le salon après le spectacle.\r\nSi vous n''avez pas été marqué, étonné, dérouté et emporté, vous feriez mieux de vérifier votre pouls parce que c''est garanti que cette expérience fera partie d''une des plus bizarre du Japon.\r\n\r\nil faut bien l''avouer, ici, ce n''est pas la nourriture qui attire. Ce drôle de restaurant sert un plat unique, un bento (viande ou poisson au choix), car l''essentiel n''est pas sur la carte... mais dans le décor, flashy et bling-bling, et le show, que tout le monde vient voir.\r\n\r\nAprès avoir descendu un escalier haut en couleurs, les spectateurs s''assoient de part et d''autre de la scène. Et la folie peut commencer.\r\n\r\n?Notez que si vous réservez le spectacle le jour même, ils ne pourrons pas préparer un bento pour vous, mais vous pourrez toujours avoir des snacks et des boissons pendant le spectacle.\r\n\r\n?Notez que la nourriture et les boissons ne sont pas inclues dans le prix - des boissons et des snacks sont disponible durant le spectacle et vous pourrez réserver un repas ''bento'' en avance quand vous faîtes votre réservation.\r\n\r\n?Veuillez arriver 15 minutes avant le début du spectacle. Après le commencement du spectacle, les entrées ne seront plus autorisées.\r\n\r\n?Le prix inclut les 15% de réduction.\r\n\r\n?La musique Live commencera 40 minutes avant le spectacle de Robot.\r\n\r\nVeuillez aussi noter que les invités sont interdits d''assister au spectacle s''ils:\r\n-sont saoûl\r\n-portent des lunettes de soleil\r\n-sont très mal habillé\r\n-portent un costume loufoque\r\n-font partie d''un gang ou n''importe qui portant un tatouage visible (cachez-le/les si vous en avez) \r\n\r\nA cause de la lumière, des flashs, du volume élevé de la musique et des déguisements un peu étrange, ce spectacle n''est pas recommandé pour des jeunes enfants.\r\n\r\nVeuillez arriver au moins 15 minutes avant le commencement du spectacle.\r\nRobot Restaurant \r\n?????????\r\n\r\nAdresse :\r\n1-7-2 Kabukichi, Shinjuku-ku\r\n\r\nTéléphone :\r\n+81 (0) 03 3200 5500\r\n\r\nHoraires :\r\nOuvert tlj. de 17h à minuit (réservation obligatoire).\r\n\r\nPrix :\r\n6 000 ? / personne\r\n\r\nAccès :\r\nMétro : lignes Yamanote, Chûô, Shônan et Saikyô - descendre à Shinjuku.\r\n\r\nSite web : http://www.robot-restaurant.com/E/top.html', 'http://www.robot-restaurant.com/E/top.html', NULL, 'Bento'),
(70, 8, 'Shimada Shinjuku', 1, 'Ou : B2F, Kawano Bldg. 1-26-7, Kabukicho, Shinjuku-ku, Tokyo 160-0021\r\n\r\nQuand : Tous les jours de 16h à 23h30, vendredi et samedi jusqu''à 4h00. \r\n\r\nCombien : autours de 2500 yens.\r\n\r\nShimada est un petit restaurant du quartier de Kabukicho qui propose trois spécialités : les yakitoris (brochettes de poulets), les Kushiage (brochettes frites) et le Motsu Nabe (un pot au feu aux abats de viande).\r\nLe restaurant se trouve à deux pas de la station Sebu-Shinjuku.\r\nLe B2F nous indique aussi que se restaurant se trouve au 2ème sous-sol d''un bâtiment qui ne compte que des restaurants. \r\nIci ambiance Izakaya, dans un décor rétro, avec de vieux postes radio et de télévisions.\r\nAttention le restaurant est fumeurs. Bien que le menu soit complètement en japonais, une partie du staff parle anglais et peut ainsi guider dans le choix du repas. \r\nIl y a aussi le week end des prix sur les kushiage et les yakitoris, puisque les brochettes 100 yens ou 150 yens, au lieu de 130 yens et 196 yens.\r\nOn a donc le choix entre une vingtaine de brochettes (yakitori ou kushiage) différentes ainsi que 6 Motsu nabe ) 880 yens.\r\nMais on peut aussi prendre des " sets " avec 15 brochettes kushiage à 1580 yens dans le week end, 10 brochettes kushiage à 1580 yens dans la semaine, 5 brochettes kushiage à 700 yens ou 5 yakitoris à 980 yens.\r\nVoici par exemple un set de 15 brochettes kushiage (prix spécial du week end à 1580 yens), avec par exemple gambas, poisson, bœuf, porc, lotus, boulette de bœuf, poireaux, œuf de caille, aubergine) et poulet.\r\nOn peut aussi prendre le set de Yakitoris, avec viande de cuisse de poulet, gésier, peau de poulet, blanc de poulet et une grosse brochette avec blanc de poulet et poireaux. \r\nEnfin on peut aussi prendre un Motsu Nabe de viande de bœuf (waggyu bien sur), tripes et foie, ainsi que des légumes et du tofu que l''on fait donc revenir dans une soupe bouillante et une sauce piquante au curry.', NULL, NULL, 'Brochette'),
(71, 6, 'Apa Hotel Tsukiji eki Minami', 2, '+81-3-5148-1130\r\n\r\n7-10,Tsukiji,Chuo-ku, Ginza, Tokyo, Japan 104-0045\r\n\r\nFor travelers who want to take in the sights and sounds of Tokyo, APA Hotel Tsukiji Eki Minami is the perfect choice. From here, guests can enjoy easy access to all that the lively city has to offer. A haven of rest and relaxation, the hotel will offer total renewal just steps away from the city''s numerous attractions such as St Luke''s International Hospital, Tsukiji Honganji Temple, Tsukiji Market Information Centre.\r\n\r\nAPA Hotel Tsukiji Eki Minami also offers many facilities to enrich your stay in Tokyo. The hotel offers access to a vast array of services, including free Wi-Fi in all rooms, 24-hour front desk, facilities for disabled guests, express check-in/check-out, luggage storage.\r\n\r\nExperience high quality room facilities during your stay here. Some rooms include non smoking rooms, air conditioning, heating, wake-up service, desk, provided to help guests recharge after a long day. Besides, the hotel''s host of recreational offerings ensures you have plenty to do during your stay. APA Hotel Tsukiji Eki Minami is an ideal place of stay for travelers seeking charm, comfort and convenience in Tokyo.\r\n\r\nBreakfast Charge (when not included in room rate) 1000 JPY\r\nCheck-In From 3:00 PM\r\nCheck-Out Until 11:00 AM\r\nNumber of Floors 11\r\nNumber of Rooms 115\r\nYear Hotel Built 2011\r\n\r\nfrom USD 162.01\r\n\r\nFacilities	\r\n24-hour front desk\r\ncar park\r\nelevator\r\nexpress check-in/check-out\r\nfacilities for disabled guests\r\nlaundry service\r\nluggage storage\r\nnewspapers\r\nrestaurant\r\nsafety deposit boxes\r\nvending machine\r\n \r\nSports and Recreation	\r\nmassage\r\n 	 \r\nInternet	\r\nfree Wi-Fi in all rooms\r\nWi-Fi in public areas\r\n \r\nParking	\r\ncar park\r\n 	 \r\nLanguages Spoken	\r\nEnglish\r\nJapanese\r\n\r\n', 'http://www.agoda.com/apa-hotel-tsukiji-eki-minami/hotel/tokyo-jp.html?asq=ub7On7o4VYqmD5i%2b8gq6ZM0D', NULL, NULL),
(72, 6, 'First Cabin Tsukiji', 2, '+81-3-5148-1130\r\n\r\n2-11-10 Tsukiji, Chuo-ku, Ginza, Tokyo, Japan 104-0045\r\n\r\nWhether you''re a tourist or traveling on business, First Cabin Tsukiji is a great choice for accommodation when visiting Tokyo. The hotel is not too far from the city center: just 0.5 km away, and it normally takes about 70 minutes to reach the airport. With its convenient location, the hotel offers easy access to the city''s must-see destinations.\r\n\r\nFirst Cabin Tsukiji also offers many facilities to enrich your stay in Tokyo. 24-hour front desk, Wi-Fi in public areas, elevator, vending machine, smoking area are just a few of the facilities that set First Cabin Tsukiji apart from other hotels in the city. \r\n\r\nExperience high quality room facilities during your stay here. Some rooms include internet access – wireless (complimentary), wake-up service, non smoking rooms, air conditioning, television LCD/plasma screen, provided to help guests recharge after a long day. Whether you''re a fitness enthusiast or are just looking for a way to unwind after a hard day, you will be entertained by top-class recreational facilities such as hot tub. Whatever your reason for visiting Tokyo, the First Cabin Tsukiji is the perfect venue for an exhilarating and exciting break away.\r\n\r\nCheck-In From 05:00 PM\r\nCheck-Out Until 10:00 AM\r\nDistance from City Center 0.5 km\r\nDistance to Airport 69.5 km\r\nNon-Smoking Rooms / Floors YES\r\nNumber of Floors 8\r\nNumber of Rooms 160\r\nReception Open Until 12:00 AM\r\nRoom Voltage 100\r\nTime to Airport (Minutes) 70\r\nYear Hotel Last Renovated 2014\r\n\r\n\r\nfrom USD 46.88\r\n\r\nFacilities	\r\n24-hour front desk\r\nelevator\r\nlockers\r\nshared lounge/TV area\r\nsmoking area\r\nvending machine\r\nSports and Recreation	\r\nhot tub\r\n 	 \r\nInternet	\r\nWi-Fi in public areas\r\n 	 \r\nLanguages Spoken	\r\nJapanese\r\n', 'http://www.agoda.com/first-cabin-tsukiji/hotel/tokyo-jp.html?asq=%2fjw0sRvXzJy8Sh1zLiFLHaaavw%2boXzS', NULL, NULL),
(73, 6, 'Tsukiji Business Hotel Ban', 2, '+81 3-3543-8411\r\n\r\n3-17-10 Tsukiji, Chuo-ku, Ginza, Tokyo, Japan 104-0045\r\n\r\nTsukiji Business Hotel Ban is conveniently located in the center of Tokyo. Within walking distance are the world’s largest fish wholesale market and the iconic Ginza shopping district of Tokyo. Whether for business or sightseeing, it is the best one can desire for. \r\n\r\nTsukiji Business Hotel Ban provides well-maintained facilities and superb services to ensure your stay is comfortable. It is the goal of the helpful staff to achieve the highest level of customer satisfaction. Please enter your preferred dates of stay and submit our online booking form to make a reservation at Tsukiji Business Hotel Ban.\r\n\r\nCheck-In From 03:00 PM\r\nCheck-Out Until 10:00 AM\r\nNumber of Floors 11\r\nNumber of Rooms 32\r\nRoom Voltage 100\r\nTime to Airport (Minutes) 35\r\n\r\nà partir de 61 euros\r\n\r\nFacilities	\r\n24-hour front desk\r\nelevator\r\nvending machine\r\nInternet	\r\nfree Wi-Fi in all rooms\r\nWi-Fi in public areas\r\n \r\nLanguages Spoken	\r\nJapanese\r\n\r\n', 'http://www.agoda.com/tsukiji-business-hotel-ban/hotel/tokyo-jp.html?CID=1551732', NULL, NULL),
(74, 6, 'Jardin Hama Rikyû', 4, 'Le jardin Hama-Rikyû (Hama-rikyu Onshi Teien, « jardin du palais isolé de la plage, don impérial ») se trouve à proximité du quartier de Shiodome et du marché au poissson de Tsukiji, à l''embouchure de la Sumida dans la baie de Tokyo. Sa superficie est de 25 hectares, et il est bordé sur trois côtés par une douve remplie d''eau de mer.\r\n\r\nLe jardin existe depuis le XVIIe siècle ; à ses débuts, il faisait partie d''une villa de la famille Tokugawa. Il est ouvert au public depuis 1946.Le jardin se divise en deux parties : la plus ancienne (époque d''Edo) au sud, centrée sur l''ancien jardin du daimyo, et où se trouve une lagune qui se remplit à marée haute, et un jardin plus récent au nord, aménagé durant l''ère Meiji.\r\n\r\nLe terrain où se situe le jardin était à l''origine une zone marécageuse en bordure de la baie de Tokyo, qui se remplissait d''eau de mer à marée haute. Il abritait deux cabanes construites pour la chasse au canard. En 1654, le frère cadet de Ietsuna Tokugawa, Tsunashige Matsudaira, en décide le comblement partiel, afin d''y construire une résidence et un jardin, destinés à accueillir les daimyos en visite à Edo. Le jardin est progressivement aménagé par les shoguns successifs, qui y font construire plusieurs maisons de thé, comme la « maison de thé de l''hirondelle » ou la « maison de thé du pin ».\r\n\r\nLe jardin prend sa forme définitive sous le shogunat de Ienari Tokugawa. En 1868, juste avant la restauration de Meiji, le domaine est transféré au ministère des affaires étrangères. Son nom devient Hama-rikyû (« palais isolé de la plage ») et il sert à l''accueil de dignitaires étrangers. En 1869, on y construit le premier bâtiment de pierre à l''occidentale du Japon, Enryoukan\r\n\r\nLe tremblement de terre de Kanto de 1923, puis les bombardements lors de la Seconde Guerre mondiale provoquent des dégâts considérables. En novembre 1945, la famille impériale cède le jardin à la ville de Tokyo, et il ouvre au public le 1er avril 1946. Le 22 novembre 1952, le jardin obtient le statut de « site célèbre » ainsi que de « site de haute importance historique », selon la loi de protection des biens culturels.\r\n\r\n', 'http://nezumi.dumousseau.free.fr/japon/tokyotsukiji.htm', NULL, 'Jardin'),
(75, 6, 'Le marché aux poissons de Tsukiji.', 4, 'Installé dans de modernes bâtiments de forme semi-circulaire en 1923, le marché de Tsukiji n''a pas beaucoup changé depuis. Bien qu''on y trouve de tout, fruits et légumes en particulier, il est majoritairement dédié aux poissons et crustacés. Il est connu sous le nom de Marché aux poissons\r\n\r\nIl connaît une agitation fébrile de 5h à 8h du matin et son activité intense est répartie en plus de 1500 commerçants qui, pour la plupart, vendent au détail. Peu rationalisée, la distribution emploie encore beaucoup de main-d''œuvre qui se bouscule dans les allées étroites.\r\n\r\nChaque jour, 2 500 tonnes de produits de la mer transitent dans ce qui passe pour le plus grand marché aux poissons de la planète.\r\n\r\nA 4 heures du matin, bien avant que le jour ne se lève, les marchands déchargent des poissons provenant des quatre coins du globe : des thons de Guam, des saumons de Norvège, des shishyamo, une espèce proche du capelan, d''Islande, des saumons argentés du Chili, des crevettes d''Inde, des poulpes d''Afrique. Presque toutes les espèces en vente dans le monde se trouvent à Tsukiji.\r\n\r\nLe volume journalier des transactions en produits de la mer s''élève à 2,8 milliards de yens [environ 20 millions d''euros]. On peut y trouver quelque 450 espèces et il y règne un tel tumulte que l''on se croirait dans un pays d''Asie du Sud-Est. Avec environ 52 000 personnes et 32 000 véhicules qui entrent et sortent quotidiennement, le marché connaît une animation permanente.\r\n\r\nLes visites des touristes sont autorisées tous les jours, sauf le dimanche et les autres jours de fermeture. Bien que marché de gros, tout le monde peut acheter, y compris de petites quantités. Les restaurateurs et même les ménagères s''approvisionnent régulièrement là.\r\nCet univers de l''alimentation qui s''est développé à Tsukiji et aux alentours pourrait bientôt connaître un bouleversement. Créée par des professionnels et par la municipalité de Tokyo, le Conseil pour le réaménagement du marché de Tsukiji a en effet proposé, en novembre 1999, de déménager le marché. En 1988, la municipalité, mettant en avant la saturation et la vétusté de Tsukiji, avait décidé de le reconstruire, mais les difficultés financières engendrées par l''éclatement de la bulle économique du début des années 90 l''avaient conduite à revenir sur sa décision.	\r\n\r\nAlors que le projet était au point mort, la profession a proposé de transférer le marché sur des terrains conquis sur la mer dans le quartier de Toyosu, à 3 kilomètres de Tsukiji. Les responsables du marché sont partagés entre l''option du réaménagement et celle du transfert. Certains d''entre eux se sont joints à des commerçants et au conseil municipal de l''arrondissement Chuo, où se trouve Tsukiji, pour former le Comité d''opposition au transfert du marché. Mais aucune décision n''a encore été prise. Les commerçants des environs, qui ont prospéré grâce au marché, sont évidemment partisans du réaménagement.\r\n', '', NULL, 'Commerce'),
(76, 6, 'Temple Tsukiji Hongan-ji', 4, 'Le Tsukiji Hongan-ji, parfois romanisé de façon archaïque en Hongwan-ji, est un temple bouddhiste de l''école Jodo Shinshu situé dans l''arrondissement de Tsukiji à Tokyo.\r\n\r\nLe temple prédécesseur du Tsukiji Hongan-ji est le Edo-Asakusa Gobo , construit à Asakusa en 1617 à la demande de Junnyo Shonin, 12e monshu1.\r\n\r\nLe temple est détruit par le feu lors d''un incendie généralisé de la ville en 1657 et le shogunat refuse d''autoriser sa reconstruction à Asakusa à cause de projets antérieurs pour cet emplacement1. Au lieu de cela, le temple est déplacé vers une nouvelle parcelle de terre récupérée sur la Sumida-gawa, l''actuel Tsukiji. Cette terre passe pour avoir été récupérée par les disciples du Jodo Shinshu eux-mêmes qui vivent à Tsukudajima. Le nom « Tsukiji » vient du caractère kanji qui signifie « terres asséchées ». Ce nouveau temple, appelé Tsukiji Gobo, reste en place jusqu''à ce qu''il soit rasé lors du séisme de 1923 de Kanto.\r\n\r\nL''actuel Tsukiji Hongan-ji, conçu par Ito Chuta de l''Université de Tokyo, est construit entre 1931 et 1934. Il est remarquable par son architecture unique, influencée par les temples de l''Asie du Sud.\r\n\r\nLe Hongan-ji est une destination de pèlerinage du fait des objets ayant appartenu au prince Shotoku, à Shinran Shonin et à Shonyo Shonin. Shonyo Shonin (1911-2002), le 23e monshu est vénéré à la gauche de l''autel principal en l''honneur de sa contribution à la propagation de l''enseignement Jodo Shinshu à l''extérieur de telle sorte que ses disciples ne le soit pas que de nom1.\r\n\r\nLe temple est proche de la station Tsukiji de la ligne Tokyo Métro Hibiya.\r\n\r\nLa veillée mortuaire de Hiroaki Shukuzawa (en) s''est tenue au temple le 22 juin 2006 et comme le temple a été le site de la cérémonie funéraire du populaire musicien de rock Hide (Hideto Matsumoto) en 1998, un mémorial se trouve dans le hall principal lui-même,\r\n\r\n\r\nActivity\r\n\r\nGeneral services and rituals\r\n\r\nTemple services\r\n\r\nThis temple is open every day all through the year from 6:00 A.M. to 5:30 P.M. (Apr. thru Sept.), 5:00 P.M. (Oct. thru Mar.). As the daily temple services, “Early Morning Service” at 7:00 A.M., and “Evening Service” at 4:30 P.M. are respectively observed at the main hall each day. The services are conducted in Japanese only but anyone is welcome to attend. Just sit, listen to chanting, and calm yourself in a Buddhist peaceful atmosphere.\r\n\r\nPrivate services\r\n\r\nBeside the temple services, private services such as Family Memorial Services, Funerals and its subsequent services are conducted upon the requests of individual members as well as business firms and organizations. For Jodo Shinshu practicers, the significance of a memorial service is not for appeasing or consoling the spirits of the deceased, but is the opportunity to pay tribute to and recall cherished memories of the deceased, while listening to the Buddha Dharma.\r\n\r\nWedding ceremony\r\n\r\nA Buddhist wedding ceremony is a solemn event for a couple to make their wedding day truly memorable by expressing gratitude to the Buddha. It is combination of Western and traditional customs added to create new Buddhist ritual which includes lighting candles, processional with musical accompaniment, exchange of rings, etc. Accordingly, the couple’s attire may be either western style or Japanese traditional kimono. The ceremony consists of chanting, the reading of the vows, presentation of Nenju (Buddhist rosary), the exchange of rings, Shoko (incense burning), and officiant’s message. At the Tsukiji Hongwanji, it is usually conducted in Japanese, but English and bilingual ceremonies may be arranged.\r\n\r\nMarriage in Japan consists of a civil marriage registration by the couple at a Japanese municipal government office, and only this civil registration constitutes a legal marriage. Therefore, a wedding ceremony performed at the Tsukiji Hongwanji is not a legal marriage but a religious ritual. A couple is expected to follow the civil laws regarding marriage laid out by their respective governments.\r\n\r\nConfirmation rite (Kikyoshiki)\r\n\r\nThis is a formal affirmation as a Jodo Shinshu Buddhist at which time a Buddhist name (Homyo) is given to the person being confirmed entry onto the path of the Nembutsu. At the Tsukiji Hongwanji, the rites are conducted six times a year; normally held in conjunction with special events such as Equinox service (Higan-e), Birthday of Shinran Shonin (Gotan-e), and Memorial service for Shinran Shonin (Hoonko).\r\n\r\nInfant Initiation ceremony (Shosanshiki)\r\n\r\nThis is a formal affirmation of an infant to the Buddha, Dharma, and Buddhist Sangha. Parents formally present their child for the first time on this occasion. The ceremony may be done privately.\r\n\r\nFeatures\r\n\r\nSaturday English service\r\n\r\nThe English Service is conducted on the 4th Saturday of each month starting at 5:30 in the evening. It is one of the few opportunities in the Tokyo Metropolitan area to be able to hear Dharma talks on the Jodo Shinshu teaching in English.\r\nTalks are given by esteemed Hongwanji ministers and lay persons. Anyone is cordially invited to attend the service.\r\nAfter the service, an informal gathering together with the guest speaker and all the participants are held to ask questions and share their insights over light refreshments. Please join us at the service with your friends.\r\n\r\n', 'http://www.tsukijihongwanji.jp/eng/?fr=navi', NULL, 'Temple'),
(77, 6, 'Edogin', 1, '4-5-1, Tsukiji, Chuo-ku, Tokyo, 104-0045\r\n\r\nSubway Hibiya Line Tsukiji Station The first, Exit 2 5-minute walk\r\nToei Oedo Line Tsukiji-Shijo Station Exit A1 5-minute walk\r\nSubway Hibiya Line Higashi-Ginza Station Exit 6 5-minute walk\r\n\r\nMonday & Sunday & Holiday Lunch: 11:30 - 14:30(L.O.14:00)\r\nMonday & Sunday & Holiday Dinner: 17:00 - 21:30(L.O.21:00)\r\nTuesday - Saturday Lunch: 11:30 - 14:30(L.O.14:30)\r\nTuesday - Saturday Dinner: 14:30 - 21:30(L.O.21:00)\r\n\r\n03-3543-4401\r\n\r\n6,000Yen(lunch:1,050Yen)\r\n\r\nEnglish menu available, All you can drink menu\r\n\r\nEdo-style sushi with a history of 80 years, loved from long ago even by foreigners, too. We serve fresh fish and shellfish.\r\nFounder Ginzo Kondo reflected upon the importance of eating delicious fresh fish to one''s heart''s content, as it wasn''t common at that time to eat fresh fish before the Showa period. Then he then came up with hand-shaped sushi and opened EDOGIN. EDOGIN sushi, made with large pieces of fish and small amounts of rice is the starting point of Edo-style sushi. The fact that its spirit is still alive today shows it is still loved by customers all over the world.', 'http://r.gnavi.co.jp/e193902/lang/en/', NULL, 'Sushi'),
(78, 6, 'Itadori', 1, 'Sushi, Sushi / Seafood (Other), Sashimi (Raw Sliced Fish) (lunch: Sushi, Kaisendon (Sushi Rice Bowl), Sushi / Seafood (Other))\r\n\r\nTsukiji 4-chome Chokai Building 1F, 4-10-16, Tsukiji, Chuo-ku, Tokyo, 104-0045\r\n\r\nSubway Hibiya Line Tsukiji Station Exit 1 3-minute walk\r\nToei Oedo Line Tsukiji-Shijo Station Exit A1 3-minute walk\r\nToei Asakusa Line Higashi-Ginza Station Exit 6 5-minute walk\r\n\r\nMonday - Saturday 7:00 - 23:00(L.O.22:30)\r\nSunday & Holiday 7:00 - 21:30(L.O.21:00)\r\nOpen everyday\r\n\r\n03-3543-1244\r\n\r\n8,000Yen(lunch:2,000Yen)\r\n\r\nEnglish menu available Simplified Chinese menu available Traditional Chinese menu available\r\n\r\nMade with fresh ingredients, enjoy our sushi and seafood rice bowls by day and sushi, sashimi, tempura, Japanese sake, and shochu at night.\r\nIf you mention sushi in Tsukiji then it''s got to be TSUKIJI ITADORI BEKKAN. Using fresh ingredients, you can enjoy our sushi and seafood rice bowls during the daytime, and by night our sushi, sashimi, tempura, grilled fish, Japanese sake, shochu, and more. Located central to The Tsukiji Outer Market, our counter seating becomes apparent after entering a narrow alleyway. Enjoy your meal while watching the technique of our artisans as they prepare Japan''s venerated "Edo-style sushi." Our 2nd floor seating is a relaxing area "Ren", and private rooms prepared. Should you make your way to Tsukiji, please feel welcome to visit us.\r\n\r\n', 'http://r.gnavi.co.jp/gd1f501/lang/en/', NULL, 'Sushi'),
(79, 6, 'SUSHIZANMAI', 1, 'Sushi, Izakaya (Japanese Style Pub), Japanese Other (lunch: Sushi, Seafood)\r\n\r\n4-4-3, Tsukiji, Chuo-ku, Tokyo, 104-0045\r\n\r\nSubway Hibiya Line Tsukiji Station Exit 2 5-minute walk\r\nSubway Oedo Line Tsukiji-Shijo Station 5-minute walk\r\nSubway Ginza Station Higashi-Ginza Station Exit 4 5-minute walk\r\n\r\nMonday - Saturday 11:00 - 5:00, the following day(L.O.4:00)\r\nSunday & Holiday 11:00 - 23:00\r\nOpen everyday\r\n\r\n03-5565-3636\r\n\r\n4,500Yen(lunch:1,050Yen)\r\n\r\nEnglish menu available\r\n\r\nWhen it comes to sushi, “SUSHI ZANMAI!!!”\r\nTuna Great King offers ingredients carefully selected from all over the world at low prices!\r\nEnjoy delicious sushi and dishes in high-quality, relaxing atmosphere, for family meals, company receptions, even banquets. Every day, fresh fish and shellfish purchased directly from Tsukiji and production centers, starting with first-rate tuna, is delivered within the day to all restaurants. Hand-shaped sushi is available at 105 yen and up/piece. We accept orders from 1 piece and up and offer low-price, delicious sushi at low prices. Beside sushi, tempura and sashimi as well as a rich variety of other a-la-carte dishes are available.\r\n\r\n', 'http://r.gnavi.co.jp/a400431/lang/en/', NULL, 'sushi'),
(80, 7, 'GRAND HYATT TOKYO', 2, '6-10-3 Roppongi, Minato-Ku\r\nTokyo,  Japan, 106-0032\r\nTel: +81 3 4333 1234\r\nFax: +81 3 4333 8123\r\nEmail: tokyo.grand@hyatt.com\r\n\r\nHotel Overview\r\nDiscover The True Luxury Hotel Experience In The Heart Of Tokyo, Japan\r\nDiscover an unmatched Tokyo luxury hotel experience in the heart of Roppongi – a lively international district known as a stimulating centre for business, culture, fashion and leisure. .  Conveniently located near famous Tokyo destinations like Ginza shopping district and Kasumigaseki government district, Grand Hyatt Tokyo is just 90 minutes by limousine bus from Narita International Airport and 40 minutes from Haneda Airport. With such a central location, Grand Hyatt Tokyo is the perfect base from which to comfortably explore and discover Japan.\r\n\r\nUnwind and relax in one of 387 rooms and suites at this Roppongi Hills hotel designed in modern style and widely acclaimed for its authentic gastronomy. The Oak Door Restaurant featuring dramatic oak wood-burning ovens and the casual French Kitchen are now landmarks of the Roppongi Hills area.\r\n\r\nFor guests seeking meeting rooms or event management, our hotel offers exceptional meeting and events packages, as well as venues featuring a residential atmosphere and entertaining culinary experiences in a comfortable setting.  Our facilities are all designed as multipurpose spaces that offer versatility for a wide array of special occasions.  For travellers looking to soothe body and mind, Nagomi Spa and Fitness provides healing spa treatments; fitness sessions in our gymnasium and red-granite swimming pool; and ultimate relaxation in our saunas and plunge pools.\r\n\r\n(ou :\r\nSituated in Roppongi, Grand Hyatt Tokyo is the perfect place to experience Tokyo and its surroundings. From here, guests can enjoy easy access to all that the lively city has to offer. With its convenient location, the hotel offers easy access to the city''s must-see destinations.\r\n\r\nThe facilities and services provided by Grand Hyatt Tokyo ensure a pleasant stay for guests. To name a few of the hotel''s facilities, there are free Wi-Fi in all rooms, 24-hour front desk, facilities for disabled guests, luggage storage, Wi-Fi in public areas.\r\n\r\nAll guest accommodations feature thoughtful amenities to ensure an unparalleled sense of comfort. Throughout the day you can enjoy the relaxing atmosphere of the fitness center, indoor pool, spa, massage, garden. When you are looking for comfortable and convenient accommodations in Tokyo, make Grand Hyatt Tokyo your home away from home.)\r\n\r\nHOTEL FEATURES\r\n\r\n387 Rooms & Suites\r\nAirport Limousine Service\r\nBeauty Salon\r\n5 star hotel amenities\r\n7 Restaurants, 3 Bars\r\nPastry Boutique\r\nNAGOMI Spa\r\nIndoor Hotel Pool\r\nGymnasium\r\nWhirlpool & Sauna\r\n17 Event Venues\r\n1,000 sqm Grand Ballroom\r\nGrand Wedding venues\r\n\r\nfrom USD 662.50\r\n\r\nFacilities	\r\n24-hour front desk\r\nbar\r\nbusiness center\r\ncar park\r\nconcierge\r\ncurrency exchange\r\nelevator\r\nfacilities for disabled guests\r\nlaundry service\r\nluggage storage\r\nmeeting facilities\r\nrestaurant\r\nroom service\r\nsafety deposit boxes\r\nshops\r\nshuttle service\r\nvending machine\r\n \r\nSports and Recreation	\r\nfitness center\r\ngarden\r\nindoor pool\r\nmassage\r\nspa\r\n \r\nInternet	\r\nfree Wi-Fi in all rooms\r\nWi-Fi in public areas\r\n \r\nParking	\r\ncar park\r\nvalet parking\r\n', 'http://tokyo.grand.hyatt.com/en/hotel/home.html', NULL, 'occidentale'),
(81, 7, 'Ishino Spa Roppongi VIVI Capsule Hotel', 2, '+81 3-3403-4126\r\n\r\nRoi Building, 5-5-1 Roppongi, Minato-ku, Roppongi, Tokyo, Japan 106-0032\r\n\r\nSituated in Akasaka / Roppongi, Ishino Spa Roppongi VIVI is the perfect place to experience Tokyo and its surroundings. From here, guests can enjoy easy access to all that the lively city has to offer. A haven of rest and relaxation, the hotel will offer total renewal just steps away from the city''s numerous attractions such as the National Art Center, Tokyo Midtown, Senshoji Temple, Roppongi Hills and Suntory Hall.\r\n\r\nAt Ishino Spa Roppongi VIVI, the excellent service and superior facilities make for an unforgettable stay. While lodging at this wonderful property, guests can enjoy restaurant, smoking area, safety deposit boxes.\r\n\r\nThe ambiance of Ishino Spa Roppongi VIVI is reflected in every guestroom. television are just some of the facilities at your disposal. The complete list of recreational facilities is available at the hotel, including fitness center, spa, massage. Ishino Spa Roppongi VIVI is an ideal place of stay for travelers seeking charm, comfort and convenience in Tokyo.\r\n\r\nPlease note that baggage storage service is 300JPY/ bag/ day. \r\n\r\nThe property does not allow guests with tattoos. \r\n\r\nBreakfast Charge (when not included in room rate) 380 JPY\r\nCheck-In From 10:00 AM\r\nCheck-Out Until 10:00 AM\r\nNumber of Floors 13\r\nNumber of Restaurants 1\r\nNumber of Rooms 140\r\nReception Open Until 12:00 AM\r\nRoom Voltage 100\r\nYear Hotel Built 1973\r\nYear Hotel Last Renovated 2008\r\n\r\nfrom USD 34.08\r\n\r\nFacilities	\r\nrestaurant\r\nsafety deposit boxes\r\nsmoking area\r\nSports and Recreation	\r\nfitness center\r\nmassage\r\nsauna\r\nspa\r\n', NULL, NULL, NULL),
(82, 7, 'Roppongi Hotel S', 2, '+81 3-5771-2469\r\n\r\nRoi Building, 5-5-1 Roppongi, Minato-ku, Roppongi, Tokyo, Japan 106-0032\r\n\r\nNestled in the heart of Akasaka/Roppongi, Roppongi Hotel S is an ideal spot from which to discover Tokyo. From here, guests can enjoy easy access to all that the lively city has to offer. For sightseeing options and local attractions, one need not look far as the hotel enjoys close proximity to Roppongi Hills, Tokyo Midtown, and The National Art Center. Offering hotel guests superior services and a broad range of amenities, Roppongi Hotel S is committed to ensure that your stay is as comfortable as possible. Top features of the hotel include restaurants, room service, a car park, elevator, and coffee shop. Step into one of 47 inviting rooms and escape the stresses of the day with a wide range of amenities such as a television, bathtub, coffee/tea maker, shower, and complimentary bottled water. Whatever your reason for visiting Tokyo, Roppongi Hotel S is the perfect venue for an exhilarating and exciting break away.\r\n\r\nCheck-In From 3:00 PM\r\nCheck-Out Until 11:00 AM\r\nNon-Smoking Rooms / Floors Yes\r\nNumber of Bars 1\r\nNumber of Restaurants 5\r\nNumber of Rooms 47\r\nParking Fee (per day) 2100 JPY\r\nRoom Voltage 100\r\nYear Hotel Last Renovated 2012\r\n\r\nfrom USD 258.62\r\n\r\nFacilities	\r\n24-hour front desk\r\nbar\r\nbicycle rental\r\nbusiness center\r\ncar park\r\ncoffee shop\r\nconcierge\r\nelevator\r\nlaundry service\r\nlibrary\r\nluggage storage\r\nmeeting facilities\r\nnewspapers\r\nrestaurant\r\nroom service\r\nsafety deposit boxes\r\nsmoking area\r\n \r\nInternet	\r\nfree Wi-Fi in all rooms\r\nWi-Fi in public areas\r\n \r\nParking	\r\ncar park\r\n 	 \r\nLanguages Spoken	\r\nEnglish\r\nJapanese\r\n', NULL, NULL, NULL),
(83, 7, 'Hinochiko park', 4, 'A vast greenbelt, emerging at the heart of Roppongi.\r\nVast open space, giving those who live and work here precious moments of tranquility and peace of mind.\r\nAn immense natural setting, spanning some 40% of the total grounds. The source of human healing and energy, to regenerate the creative juices.\r\n\r\nStepping into this realm places visitors in a natural art gallery, where trees literally compete with each other for beauty.\r\nSome 140 cherry, camphor and other tree genres that remained at the site of the former Self Defense Agency have been transplanted here, and now foster some of the richest greenery seen in central Tokyo. Wireless LAN access points are installed in the green belt area as well, for access to full-fledged information communications even in the midst of the lush green environment.\r\n\r\nA municipal park, Hinokicho Park belonging to Minato Ward, lies in the east side of Tokyo Midtown. This site was formerly the garden attached to the Azabu villa residence for the Mori Family, a member of the Hagi Clan during the Edo Period (1603~1868). This residence was also known as the “Hinoki Mansion” linked to the large number of hinoki (cypress) trees on the grounds. This impressive greenery was known as “Shimizu Garden,” and enjoyed fame for its sweeping view of Edo (old Tokyo). The flora of this storied garden has now remerged as a park. There has been no change at all, however, in the rich “Japanese beauty” exuded here.\r\n\r\n', 'http://www.tokyo-midtown.com/en/facilities/green.html', NULL, NULL),
(84, 7, 'Roppongi Hills', 4, 'Roppongi Hills is one of the best examples of a city within the city. Opened in 2003 in the heart of Tokyo''s Roppongi district, the building complex features offices, apartments, shops, restaurants, a hotel, art museum, observation deck and more. The office floors are home to leading companies from the IT and financial sectors, and Roppongi Hills has become a symbol of the Japanese IT industry.\r\n\r\nAt the center of Roppongi Hills stands the 238 meter Mori Tower, one of the tallest buildings in the city. While most of the building is occupied by office space, the first few floors have restaurants and shops and the top few floors house an observation deck and modern art museum that are open to the public.\r\n\r\nThe Tokyo City View observation deck is one of Tokyo''s best. When the weather permits, views can also be enjoyed from an open-air deck on the rooftop. Also located on Mori Tower''s top floors is the Mori Art Museum, a modern art museum with a focus on new artistic ideas from all over the world.\r\n\r\nOther areas of interest in Roppongi Hills include the Mori Garden just behind the tower and the Grand Hyatt luxury hotel. Numerous shopping and dining options can be found all across the complex, and there is also a large Toho Cinemas movie theater that plays both Japanese and international movies. The headquarters of TV Asahi are also located on the grounds.\r\n\r\nMori Tower\r\nA 54-story skyscraper, named after the man and company that built it. The first six floors are occupied by shops and restaurants, while the top six floors house an art museum and observation deck. Offices fill the 43 floors in between. The Mori Tower is one of the tallest buildings in Tokyo and a characteristic feature of the city''s skyline.\r\n\r\nTokyo City View\r\nHours: 10:00 to 23:00 (until 25:00 on Fridays and Saturdays) \r\nSky Deck opens from 11:00 to 20:00 when the weather permits \r\nAdmission ends 30-60 minutes before closing time. \r\nAdmission: 1800 yen, additional 500 yen for Sky Deck; combination tickets for the Mori Art Museum are often available\r\nLocated at the top of the Mori Tower, the Tokyo City View observation deck has high ceiling and glass walls that extend all the way around the building, giving visitors views of the entire city. Additionally, Sky Deck is an open-air rooftop deck that can be accessed when the weather permits.\r\n\r\nMori Art Museum\r\nHours: 10:00 to 22:00 (until 17:00 on Tuesdays) \r\nAdmission: varies by exhibition, combination tickets with Tokyo City View are often available\r\nWith a focus on art that is both contemporary and international, the Mori Art Museum presents innovative exhibitions of modern art. The museum makes a point of keeping the art easily accessible to the general viewing public, rather than making it overly obscure or esoteric.\r\n\r\nRoppongi Hills Shopping and Dining\r\nShops: typically 11:00 to 21:00 \r\nRestaurants: typically 11:00 to 23:00\r\nRoppongi Hills features more than 200 shops, cafes and restaurants. Most shops specialize in fashion, accessories, interior design and household goods, while restaurants offer a wide array of Japanese and international cuisine.\r\n\r\nTV Asahi Headquarters\r\nTV Asahi Shop: 10:00 to 19:00\r\nThe headquarters of TV Asahi, one of Japan''s private TV networks, is part of the Roppongi Hills complex. The spacious atrium is open to the public and features displays of current programs and a shop selling TV Asahi goods.\r\n\r\nMori Garden\r\nHours: 7:00 to 23:00\r\nA small oasis of greenery between the tall buildings of Roppongi Hills, the Mori Garden is built in the style of a traditional Japanese landscape garden. The garden has a number of cherry trees that make it a nice spot to enjoy the cherry blossom season in late March and early April.\r\n\r\n', 'http://www.japan-guide.com/e/e3031_hills.html', NULL, 'Vue');
INSERT INTO `info` (`id`, `quarter_id`, `name`, `type`, `description`, `url`, `rating`, `theme`) VALUES
(85, 7, 'toraya confectionery', 4, 'Toraya, un fabriquant de pâtisserie traditionnelle (wagashi), fut fondé dans le début du 16e siècle à Kyoto où il devint un fournisseur de la court impériale durant le reigne de l''empereur Goyozei (reigne de 1586 à 1611). Il établit un atelier à Tokyo en 1869, après que la capitale ait été transférée. A présent, Toraya possède trois usines et environ 80 magasins dans tout le Japon, en plus d''une boutique à Paris.\r\n\r\nLors du 16e siècle, le propriétaire Enchu Kurokawa (considéré comme le fondateur de la marque actuelle Toraya) établit un commerce prospère à Kyoto. La première documentation claire en rapport avec Toraya vient d''un dossier d''un temple de 1600. On trouve également d''autres documents datant du 15 septembre 1635, fournissant un apperçu de la situation de la fabrique à la mort d''Enchu. Les documents inclus également une liste de 20 types de produits fabriqués que Toraya fournissait à l''impératrice Meisho à l''occasion de ses visites à son père.\r\n\r\nA la fin du 17e siècle, le nom de Toraya devint plus connu auprès de seigneurs dans de nombreuses provinces, notamment auprès de grandes figures historiques pour le pays. Les documents faisant références aux ventes de la fabrique montrent qu''à l''année 1699, les ventes furent triplées.\r\n\r\nLe siècle suivant fut tout de même été marqué de difficultés, telle que l''incendie qui a dévasté Kyoto en 1788. Plus de la moitié de la ville a brûlé, ainsi qu''une partie du palais impérial et la fabrique de Toroya. Pour contrer la crise, la 9e génération possédant la fabrique mis en place un certain nombre de nouvelles règles ayant pour but de réformé l''entreprise. Les standards qu''il appliqua sont toujours largement appliqué aujourd''hui.\r\n\r\nLa fin de l''ère Edo fut une période de trouble au niveau politique au Japon. Le transfert de la capitale de Kyoto à Tokyo en 1689 marqua un tournant majeur pour Toraya, qui a jusqu''alors été un des fournisseurs de la court impériale. Après réflexion sur le fait de se déplacer de Kyoto à Tokyo, Toraya décida finalement de replacer ses principales opérations à Tokyo, tout en gardant ses activités commerciales de Kyoto. Le magasin actuel de Tokyo a de nombreuses fois changé d''emplacement avant d''arriver à sa place définitive, à Akasaka en 1964.\r\n\r\nAyant survécu au grand tremblement de terre de Kanto et au feu de la seconde guerre mondiale, Toraya Co., Ltd fut fondé en 1948. En 1962, la compagnie établit une succursale dans le grand magasin de Tobu à Ikebukuro. De nombreux magasins suivirent dans d''autres grands magasins et dans les gares permettant à Toraya de voir le nombre de ses points de ventes flambé.\r\n\r\nAinsi, la compagnie put regarder vers l''étranger et ouvrit donc un magasin sur New-York (1933, fermé depuis le 31 octobre 2003), et à Paris en 1980, permettant à d''autres pays de découvrir la fabrication japonaise de pâtisserie.\r\n\r\nLes archives de Toraya (Toraya Bunko), furent établis en 1973. D''anciens dossiers, documents, articles et matériels en relation avec les wagashi sont ainsi catalogués, et préservés.\r\n\r\nLe propriétaire actuel de Toraya appartient à la 17e génération. La compagnie possède environ 80 succursales à travers le Japon, principalement à Tokyo et à Kyoto. Tout en conservant son noyau d''origine, la société a pu tenir durant des siècles, a pu tenir les défis de la transmission de la tradition et passé son héritage de plus en plus riche aux générations futures.\r\n\r\nTokyo Midtown\r\nD-B117, 9-7-4 Akasaka, Minato-ku, TOKYO\r\n(Galleria B1F, Tokyo Midtown)\r\nPhone:+81-3-5413-3541\r\n11:00 - 21:00 ', 'https://www.toraya-group.co.jp/english/corporate/index.html', NULL, 'commerce'),
(86, 7, 'Kiyoyasutei', 1, 'Pacific capital plaza building B1, 4-8-6, Roppongi, Minato-ku, Tokyo, 106-0032\r\n\r\nLigne Hibiya, gare de Roppongi sortie 6 - 1 minute de marche.\r\nLigne Oedo, gare de Roppongi - 1 minute de marche.\r\n\r\nOuvert tous les midis de 11:30 à 14:00 (fin de service à 13:30)\r\nOuvert tous les soirs de 17:00 à 23:30 (fin de service à 22:30)\r\nFermé tous les dimanches\r\n\r\n03-3408-4889\r\n\r\n11.000 yens le repas en soirée, 1.200 le midi.\r\n\r\nLe menu en anglais est proposé.\r\n\r\nProche de la gare de Roppongi, Kiyoyasutei vous propose un cadre calme et la qualité du service est très populaire, par exemple à l''occasion de dîner d''affaires ou d''anniversaires. A une minute de marche de la gare de Roppongi, le restaurant fait face à la rue de Roppongi, et permet donc également un accès par voiture. \r\nC''est d''ailleurs difficile d''imaginer que vous vous trouvez à deux pas d''une gare ferroviaire lorsque vous entrez dans ce restaurant typique. Des pièces privées sont mises à votre disposition, pouvant accueillir de 2 à 35 personnes. Les chefs expérimentés de ce restaurant de qualité vous offriront un service irréprochable, que ce soit lors de la préparation de vos plats grills, sashimis, etc.\r\n\r\n', 'http://r.gnavi.co.jp/g953106/lang/en/', NULL, 'Sashimi'),
(87, 7, 'Tsurutontan\r\n', 1, '3-14-12, Roppongi, Minato-ku, Tokyo, 106-0032\r\n\r\nLigne Oedo, gare de Roppongi à 3 minutes à pied.\r\nLigne Hibiya, gare de Roppongi à 4 minutes à pied.\r\n\r\nOuverture toute la semaine de 11:00 à 20:00 (fin du service à 19:30).\r\n\r\n03-5786-2626\r\n\r\nRepas pour environ 2.000 yens le soir, le midi pour 1.200 yens.\r\nLe menu en anglais est proposé.\r\n\r\nLe restaurant Tsurutontan propose à sa clientèle une cuisine traditionnelle. Au menu, vous sont proposés de nombreux plats à base de riz (Gyudon, Oyakodon, Tendon, Katsudon, etc.), du Kaiseki (plat traditionnel). Cet établissement est également réputé pour son Udon. Nous vous conseillons l''enseigne !\r\n\r\n', 'http://r.gnavi.co.jp/a345203/lang/en/', NULL, 'Traditionnel'),
(89, 7, 'UMI', 1, 'Sushi, Local / Regional Cuisine (lunch: - -)\r\n\r\nRoyal building 2F, 3-9-3, Roppongi, Minato-ku, Tokyo, 106-0032\r\n\r\nLigne Hibiya, gare de Roppongi - 3 minutes de marche.\r\nLigne Oedo, gare de Roppongi - 3 minutes de marche.\r\n\r\nOuverture du lundi au vendredi de 18:00 à 4:00, le jour suivant (fin de service à 3:30)\r\nOuverture le samedi de 18:00 à 23:00 (fin de service à 22:30)\r\nFermé le dimanche\r\n\r\n03-5414-7758\r\n\r\n13.000 yens le repas.\r\n\r\nMenus en anglais, chinois simplifié, chinois traditionnel, coréen sont proposés.\r\n\r\nL''UMI vous propose en soirée ses plats issus de la cuisine locale et régionale, ainsi qu''un assortiment de sushis. C''est un restaurant luxueux, où vous pourrez déguster d''authentiques mets locaux. Vous sont également proposé des boissons locales (bières, vins, sake, etc).\r\n\r\n\r\n', 'http://r.gnavi.co.jp/a410800/lang/en/', NULL, 'Sushi');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `id` int(11) NOT NULL,
  `quarter_id` int(11) NOT NULL,
  `src` varchar(100) DEFAULT NULL,
  `info_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2631 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `photo`
--

INSERT INTO `photo` (`id`, `quarter_id`, `src`, `info_id`, `user_id`) VALUES
(2309, 1, 'Akihabara/historique akihabara/histoire.jpg', 1, NULL),
(2310, 1, 'Akihabara/historique akihabara/histoire_1.jpg', 1, NULL),
(2311, 1, 'Akihabara/historique akihabara/histoire_2.jpg', 1, NULL),
(2312, 1, 'Akihabara/hotel/Akihabara_Hotel_3000/Akihabara_Hotel_3000.jpeg', 2, NULL),
(2313, 1, 'Akihabara/hotel/Akihabara_Hotel_3000/Akihabara_Hotel_3000_1.jpg', 2, NULL),
(2314, 1, 'Akihabara/hotel/Akihabara_Hotel_3000/Akihabara_Hotel_3000_2.jpg', 2, NULL),
(2315, 1, 'Akihabara/hotel/Akihabara_Hotel_3000/Akihabara_Hotel_3000_3.jpg', 2, NULL),
(2316, 1, 'Akihabara/hotel/Akihabara_Hotel_3000/Akihabara_Hotel_3000_4.jpg', 2, NULL),
(2317, 1, 'Akihabara/hotel/Akihabara_Washington_Hotel/Akihabara_Washington_Hotel.jpg', 3, NULL),
(2318, 1, 'Akihabara/hotel/Akihabara_Washington_Hotel/Akihabara_Washington_Hotel_1.jpg', 3, NULL),
(2319, 1, 'Akihabara/hotel/Akihabara_Washington_Hotel/Akihabara_Washington_Hotel_2.jpg', 3, NULL),
(2320, 1, 'Akihabara/hotel/Akihabara_Washington_Hotel/Akihabara_Washington_Hotel_3.jpg', 3, NULL),
(2321, 1, 'Akihabara/hotel/Akihabara_Washington_Hotel/Akihabara_Washington_Hotel_4.jpg', 3, NULL),
(2322, 1, 'Akihabara/hotel/capsule/capsule.jpg', 4, NULL),
(2323, 1, 'Akihabara/hotel/capsule/capsule_1.jpg', 4, NULL),
(2324, 1, 'Akihabara/hotel/capsule/capsule_10.jpg', 4, NULL),
(2325, 1, 'Akihabara/hotel/capsule/capsule_11.jpg', 4, NULL),
(2326, 1, 'Akihabara/hotel/capsule/capsule_12.jpg', 4, NULL),
(2327, 1, 'Akihabara/hotel/capsule/capsule_13.jpg', 4, NULL),
(2328, 1, 'Akihabara/hotel/capsule/capsule_14.jpg', 4, NULL),
(2329, 1, 'Akihabara/hotel/capsule/capsule_2.jpg', 4, NULL),
(2330, 1, 'Akihabara/hotel/capsule/capsule_3.jpg', 4, NULL),
(2331, 1, 'Akihabara/hotel/capsule/capsule_4.jpg', 4, NULL),
(2332, 1, 'Akihabara/hotel/capsule/capsule_5.jpg', 4, NULL),
(2333, 1, 'Akihabara/hotel/capsule/capsule_6.jpg', 4, NULL),
(2334, 1, 'Akihabara/hotel/capsule/capsule_7.jpg', 4, NULL),
(2335, 1, 'Akihabara/hotel/capsule/capsule_8.jpg', 4, NULL),
(2336, 1, 'Akihabara/hotel/capsule/capsule_9.jpg', 4, NULL),
(2337, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara.jpg', 5, NULL),
(2338, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara_1.jpg', 5, NULL),
(2339, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara_2.jpg', 5, NULL),
(2340, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara_3.jpg', 5, NULL),
(2341, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara_4.jpg', 5, NULL),
(2342, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara_5.jpg', 5, NULL),
(2343, 1, 'Akihabara/lieux_a_visiter/maid_cafe/maid_cafe.jpg', 6, NULL),
(2344, 1, 'Akihabara/lieux_a_visiter/maid_cafe/maid_cafe_1.jpg', 6, NULL),
(2345, 1, 'Akihabara/lieux_a_visiter/maid_cafe/maid_cafe_2.jpg', 6, NULL),
(2346, 1, 'Akihabara/lieux_visiter/maid_cafe/maid_cafe.jpg', 6, NULL),
(2347, 1, 'Akihabara/lieux_visiter/maid_cafe/maid_cafe_1.jpg', 6, NULL),
(2348, 1, 'Akihabara/lieux_visiter/maid_cafe/maid_cafe_2.jpg', 6, NULL),
(2349, 1, 'Akihabara/lieux_a_visiter/taito_station/taito_station.jpg', 8, NULL),
(2350, 1, 'Akihabara/lieux_a_visiter/taito_station/taito_station_1.jpg', 8, NULL),
(2351, 1, 'Akihabara/lieux_a_visiter/taito_station/taito_station_2.jpg', 8, NULL),
(2352, 1, 'Akihabara/lieux_a_visiter/taito_station/taito_station_3.jpg', 8, NULL),
(2353, 1, 'Akihabara/lieux_a_visiter/taito_station/taito_station_4.jpg', 8, NULL),
(2354, 1, 'Akihabara/lieux_a_visiter/taito_station/taito_station_5.jpg', 8, NULL),
(2355, 1, 'Akihabara/lieux_a_visiter/taito_station/taito_station_6.jpg', 8, NULL),
(2356, 1, 'Akihabara/lieux_visiter/taito_station/taito_station.jpg', 8, NULL),
(2357, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_1.jpg', 8, NULL),
(2358, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_2.jpg', 8, NULL),
(2359, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_3.jpg', 8, NULL),
(2360, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_4.jpg', 8, NULL),
(2361, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_5.jpg', 8, NULL),
(2362, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_6.jpg', 8, NULL),
(2363, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop.jpg', 7, NULL),
(2364, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop_1.jpg', 7, NULL),
(2365, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop_2.jpg', 7, NULL),
(2366, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop_3.jpg', 7, NULL),
(2367, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop_4.jpg', 7, NULL),
(2368, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop_5.jpg', 7, NULL),
(2369, 1, 'Akihabara/map_akihabara.jpg', NULL, NULL),
(2370, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe.jpg', 9, NULL),
(2371, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_1.jpg', 9, NULL),
(2372, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_10.jpg', 9, NULL),
(2373, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_2.jpg', 9, NULL),
(2374, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_3.jpg', 9, NULL),
(2375, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_4.jpg', 9, NULL),
(2376, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_5.jpg', 9, NULL),
(2377, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_6.jpg', 9, NULL),
(2378, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_7.jpg', 9, NULL),
(2379, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_8.jpg', 9, NULL),
(2380, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_9.jpg', 9, NULL),
(2381, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba.jpg', 13, NULL),
(2382, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_1.jpg', 13, NULL),
(2383, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_2.jpg', 13, NULL),
(2384, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_3.jpg', 13, NULL),
(2385, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_4.jpg', 13, NULL),
(2386, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_5.jpg', 13, NULL),
(2387, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_6.jpg', 13, NULL),
(2388, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_7.jpg', 13, NULL),
(2389, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_8.jpg', 13, NULL),
(2390, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_9.jpg', 13, NULL),
(2391, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin.jpg', 11, NULL),
(2392, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin_1.jpg', 11, NULL),
(2393, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin_2.jpg', 11, NULL),
(2394, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin_3.jpg', 11, NULL),
(2395, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin_4.jpg', 11, NULL),
(2396, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin_5.jpg', 11, NULL),
(2397, 5, 'Asakusa/hotel/Dormy_Inn_EXPRESS/Dormy_Inn_EXPRESS.jpg', 44, NULL),
(2398, 5, 'Asakusa/hotel/Dormy_Inn_EXPRESS/Dormy_Inn_EXPRESS_1.jpg', 44, NULL),
(2399, 5, 'Asakusa/hotel/Dormy_Inn_EXPRESS/Dormy_Inn_EXPRESS_2.jpg', 44, NULL),
(2400, 5, 'Asakusa/hotel/Ryokan_Asakusa_Shigetsu/Ryokan_Asakusa_Shigetsu.jpg', 46, NULL),
(2401, 5, 'Asakusa/hotel/Ryokan_Asakusa_Shigetsu/Ryokan_Asakusa_Shigetsu_1.jpg', 46, NULL),
(2402, 5, 'Asakusa/hotel/Ryokan_Asakusa_Shigetsu/Ryokan_Asakusa_Shigetsu_2.jpg', 46, NULL),
(2403, 5, 'Asakusa/hotel/Via_Inn_Asakusa/Via_Inn_Asakusa.jpg', 47, NULL),
(2404, 5, 'Asakusa/hotel/Via_Inn_Asakusa/Via_Inn_Asakusa_1.jpg', 47, NULL),
(2405, 5, 'Asakusa/hotel/Via_Inn_Asakusa/Via_Inn_Asakusa_2.jpg', 47, NULL),
(2406, 5, 'Asakusa/lieux_visiter/Porte_de_Kaminarimon_et_rue_de_Nakamise/Porte_Kaminarimon_Nakamise.jpg', 49, NULL),
(2407, 5, 'Asakusa/lieux_visiter/Porte_de_Kaminarimon_et_rue_de_Nakamise/Porte_Kaminarimon_Nakamise_1.jpg', 49, NULL),
(2408, 5, 'Asakusa/lieux_visiter/Porte_de_Kaminarimon_et_rue_de_Nakamise/Porte_Kaminarimon_Nakamise_2.jpg', 49, NULL),
(2409, 5, 'Asakusa/lieux_visiter/Temple_de_Sensoji/Temple_de_Sensoji.jpg', 50, NULL),
(2410, 5, 'Asakusa/lieux_visiter/Temple_de_Sensoji/Temple_de_Sensoji_1.jpg', 50, NULL),
(2411, 5, 'Asakusa/restaurant/Maguro_bito/Maguro_bito.jpg', 27, NULL),
(2412, 5, 'Asakusa/restaurant/Maguro_bito/Maguro_bito_1.jpg', 27, NULL),
(2413, 5, 'Asakusa/restaurant/Maguro_bito/Maguro_bito_2.jpg', 27, NULL),
(2414, 5, 'Asakusa/restaurant/Nakasei/Nakasei.jpg', 28, NULL),
(2415, 5, 'Asakusa/restaurant/Nakasei/Nakasei_1.jpg', 28, NULL),
(2416, 5, 'Asakusa/restaurant/Nakasei/Nakasei_2.jpg', 28, NULL),
(2417, 5, 'Asakusa/restaurant/Toriyoshi/Toriyoshi.jpg', 29, NULL),
(2418, 5, 'Asakusa/restaurant/Toriyoshi/Toriyoshi_1.jpg', 29, NULL),
(2419, 5, 'Asakusa/restaurant/Toriyoshi/Toriyoshi_3.jpg', 29, NULL),
(2420, 3, 'Harajuku/harajuku.jpg.jpg', NULL, NULL),
(2421, 3, 'Harajuku/harajuku_1.jpg.png', NULL, NULL),
(2422, 3, 'Harajuku/harajuku_2.jpg.jpg', NULL, NULL),
(2423, 3, 'Harajuku/harajuku_3.jpg.jpg', NULL, NULL),
(2424, 3, 'Harajuku/harajuku_4.jpg.jpg', NULL, NULL),
(2425, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay.jpg', 16, NULL),
(2426, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay_1.jpg', 16, NULL),
(2427, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay_2.jpg', 16, NULL),
(2428, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay_4.jpg', 16, NULL),
(2429, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay_5.jpg', 16, NULL),
(2430, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay_6.jpg', 16, NULL),
(2431, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou.jpg', 12, NULL),
(2432, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou_1.jpg', 12, NULL),
(2433, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou_2.jpg', 12, NULL),
(2434, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou_3.jpg', 12, NULL),
(2435, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou_4.jpg', 12, NULL),
(2436, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou_5.jpg', 12, NULL),
(2437, 3, 'Harajuku/restaurant/Kyushu_Jangara/Kyushu_Jangara_2.jpg', 14, NULL),
(2438, 3, 'Harajuku/restaurant/Kyushu_Jangara/Kyushu_Jangara_4.jpeg', 14, NULL),
(2439, 3, 'Harajuku/restaurant/Kyushu_Jangara/Kyushu_Jangara_5.jpg', 14, NULL),
(2440, 3, 'Harajuku/restaurant/Kyushu_Jangara/Kyushu_Jangara_6.jpg', 14, NULL),
(2441, 3, 'Harajuku/restaurant/Minoringo/Minoringo_1.jpg', 15, NULL),
(2442, 3, 'Harajuku/restaurant/Minoringo/Minoringo_2.jpg', 15, NULL),
(2443, 3, 'Harajuku/restaurant/Minoringo/Minoringo_3.jpg', 15, NULL),
(2444, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel.jpg', 19, NULL),
(2445, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel_1.jpg', 19, NULL),
(2446, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel_2.jpg', 19, NULL),
(2447, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel_3.jpg', 19, NULL),
(2448, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel_4.jpg', 19, NULL),
(2449, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel_5.jpg', 19, NULL),
(2450, 2, 'Ikebukuro/hotel/sakura_hotel/sakura_hotel.jpg', 20, NULL),
(2451, 2, 'Ikebukuro/hotel/sakura_hotel/sakura_hotel_1.jpg', 20, NULL),
(2452, 2, 'Ikebukuro/hotel/sakura_hotel/sakura_hotel_2.jpg', 20, NULL),
(2453, 2, 'Ikebukuro/hotel/Tokyu_Stay_Ikebukuro/Tokyu_Stay_Ikebukuro.jpg', 21, NULL),
(2454, 2, 'Ikebukuro/hotel/Tokyu_Stay_Ikebukuro/Tokyu_Stay_Ikebukuro_1.jpg', 21, NULL),
(2455, 2, 'Ikebukuro/hotel/Tokyu_Stay_Ikebukuro/Tokyu_Stay_Ikebukuro_2.jpg', 21, NULL),
(2456, 2, 'Ikebukuro/hotel/Tokyu_Stay_Ikebukuro/Tokyu_Stay_Ikebukuro_3.jpg', 21, NULL),
(2457, 2, 'Ikebukuro/ikebukuro.jpg', NULL, NULL),
(2458, 2, 'Ikebukuro/ikebukuro_1.jpg', NULL, NULL),
(2459, 2, 'Ikebukuro/ikebukuro_2.jpg', NULL, NULL),
(2460, 2, 'Ikebukuro/ikebukuro_3.jpg', NULL, NULL),
(2461, 2, 'Ikebukuro/ikebukuro_4.jpg', NULL, NULL),
(2462, 2, 'Ikebukuro/lieux_visiter/batting_center/batting_center.jpg', 22, NULL),
(2463, 2, 'Ikebukuro/lieux_visiter/batting_center/batting_center_1.jpg', 22, NULL),
(2464, 2, 'Ikebukuro/lieux_visiter/batting_center/batting_center_2.jpg', 22, NULL),
(2465, 2, 'Ikebukuro/lieux_visiter/batting_center/batting_center_3.jpg', 22, NULL),
(2466, 2, 'Ikebukuro/lieux_visiter/batting_center/batting_center_4.jpg', 22, NULL),
(2467, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan.jpg.JPG', 23, NULL),
(2468, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan_1.jpg.jpg', 23, NULL),
(2469, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan_2.jpg.jpg', 23, NULL),
(2470, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan_3.jpg.jpg', 23, NULL),
(2471, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan_4.jpg.jpg', 23, NULL),
(2472, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan_5.jpg.jpg', 23, NULL),
(2473, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome.jpg', 24, NULL),
(2474, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome_1.jpg', 24, NULL),
(2475, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome_2.jpg', 24, NULL),
(2476, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome_3.jpg', 24, NULL),
(2477, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome_4.jpg', 24, NULL),
(2478, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome_5.jpg', 24, NULL),
(2479, 2, 'Ikebukuro/restaurant/uchi/uchi.jpg', 25, NULL),
(2480, 2, 'Ikebukuro/restaurant/uchi/uchi_1.jpg', 25, NULL),
(2481, 2, 'Ikebukuro/restaurant/uchi/uchi_2.jpg', 25, NULL),
(2482, 2, 'Ikebukuro/restaurant/uchi/uchi_3.jpg', 25, NULL),
(2483, 2, 'Ikebukuro/restaurant/uchi/uchi_4.jpg', 25, NULL),
(2484, 2, 'Ikebukuro/restaurant/uchi/uchi_5.jpg', 25, NULL),
(2485, 2, 'Ikebukuro/restaurant/Zubora/Zubora.jpg', 26, NULL),
(2486, 2, 'Ikebukuro/restaurant/Zubora/Zubora8.jpg', 26, NULL),
(2487, 2, 'Ikebukuro/restaurant/Zubora/Zubora_1.jpg', 26, NULL),
(2488, 2, 'Ikebukuro/restaurant/Zubora/Zubora_2.jpg', 26, NULL),
(2489, 2, 'Ikebukuro/restaurant/Zubora/Zubora_3.jpg', 26, NULL),
(2490, 2, 'Ikebukuro/restaurant/Zubora/Zubora_4.jpg', 26, NULL),
(2491, 2, 'Ikebukuro/restaurant/Zubora/Zubora_5.jpg', 26, NULL),
(2492, 2, 'Ikebukuro/restaurant/Zubora/Zubora_6.jpg', 26, NULL),
(2493, 2, 'Ikebukuro/restaurant/Zubora/Zubora_7.jpg', 26, NULL),
(2494, 9, 'Shibuya/hotel/Granbell_Hotel/Granbell_Hotel.jpg', 55, NULL),
(2495, 9, 'Shibuya/hotel/Granbell_Hotel/Granbell_Hotel_1.jpg', 55, NULL),
(2496, 9, 'Shibuya/hotel/Granbell_Hotel/Granbell_Hotel_2.jpg', 55, NULL),
(2497, 9, 'Shibuya/hotel/Granbell_Hotel/Granbell_Hotel_3.jpg', 55, NULL),
(2498, 9, 'Shibuya/hotel/Sakura_Fleur_Aoyama/Sakura_Fleur_Aoyama.jpg', 56, NULL),
(2499, 9, 'Shibuya/hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya.jpg', 57, NULL),
(2500, 9, 'Shibuya/hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya_1.jpg', 57, NULL),
(2501, 9, 'Shibuya/hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya_2.jpg', 57, NULL),
(2502, 9, 'Shibuya/hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya_3.jpg', 57, NULL),
(2503, 9, 'Shibuya/hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya_4.jpg', 57, NULL),
(2504, 9, 'Shibuya/hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya_5.jpg', 57, NULL),
(2505, 9, 'Shibuya/lieux_visiter/Hachiko/Hachiko.jpg', 52, NULL),
(2506, 9, 'Shibuya/lieux_visiter/Hachiko/Hachiko_1.jpg', 52, NULL),
(2507, 9, 'Shibuya/lieux_visiter/Hachiko/Hachiko_2.jpg', 52, NULL),
(2508, 9, 'Shibuya/lieux_visiter/Hachiko/Hachiko_3.jpg', 52, NULL),
(2509, 9, 'Shibuya/lieux_visiter/tour_109/tour_109.jpg', 53, NULL),
(2510, 9, 'Shibuya/lieux_visiter/tour_109/tour_109_1.jpg', 53, NULL),
(2511, 9, 'Shibuya/lieux_visiter/tour_109/tour_109_2.jpg', 53, NULL),
(2512, 9, 'Shibuya/lieux_visiter/tour_109/tour_109_3.jpg', 53, NULL),
(2513, 9, 'Shibuya/lieux_visiter/tour_109/tour_109_4.jpg', 53, NULL),
(2514, 9, 'Shibuya/restaurant/Gonpachi/Gonpachi.jpg', 58, NULL),
(2515, 9, 'Shibuya/restaurant/Gonpachi/Gonpachi_1.jpg', 58, NULL),
(2516, 9, 'Shibuya/restaurant/Gonpachi/Gonpachi_2.jpg', 58, NULL),
(2517, 9, 'Shibuya/restaurant/Kua_Aina/Kua_Aina.jpg', 59, NULL),
(2518, 9, 'Shibuya/restaurant/Kua_Aina/Kua_Aina_1.jpg', 59, NULL),
(2519, 9, 'Shibuya/restaurant/Kua_Aina/Kua_Aina_2.jpg', 59, NULL),
(2520, 9, 'Shibuya/restaurant/Kua_Aina/Kua_Aina_4.jpg', 59, NULL),
(2521, 9, 'Shibuya/restaurant/Uobei/Uobei.jpg', 60, NULL),
(2522, 9, 'Shibuya/restaurant/Uobei/Uobei_1.jpg', 60, NULL),
(2523, 9, 'Shibuya/restaurant/Uobei/Uobei_2.jpg', 60, NULL),
(2524, 9, 'Shibuya/shibuya.jpg', NULL, NULL),
(2525, 9, 'Shibuya/shibuya_1.jpg', NULL, NULL),
(2526, 9, 'Shibuya/shibuya_2.jpg', NULL, NULL),
(2527, 9, 'Shibuya/shibuya_3.jpg', NULL, NULL),
(2528, 8, 'Shinjuku/hotel/Green_Plaza_Shinjuku_Capsule/Green_Plaza_Shinjuku_Capsule.jpg', 65, NULL),
(2529, 8, 'Shinjuku/hotel/Green_Plaza_Shinjuku_Capsule/Green_Plaza_Shinjuku_Capsule_1.jpg', 65, NULL),
(2530, 8, 'Shinjuku/hotel/Green_Plaza_Shinjuku_Capsule/Green_Plaza_Shinjuku_Capsule_2.jpg', 65, NULL),
(2531, 8, 'Shinjuku/hotel/Green_Plaza_Shinjuku_Capsule/Green_Plaza_Shinjuku_Capsule_3.jpg', 65, NULL),
(2532, 8, 'Shinjuku/hotel/Ibis_tokyo_shinjuku/Ibis_tokyo_shinjuku.jpg', 66, NULL),
(2533, 8, 'Shinjuku/hotel/Ibis_tokyo_shinjuku/Ibis_tokyo_shinjuku_1.jpg', 66, NULL),
(2534, 8, 'Shinjuku/hotel/Ibis_tokyo_shinjuku/Ibis_tokyo_shinjuku_2.jpg', 66, NULL),
(2535, 8, 'Shinjuku/hotel/Ibis_tokyo_shinjuku/Ibis_tokyo_shinjuku_3.jpg', 66, NULL),
(2536, 8, 'Shinjuku/hotel/Ibis_tokyo_shinjuku/Ibis_tokyo_shinjuku_4.jpg', 66, NULL),
(2537, 8, 'Shinjuku/hotel/Rose_Garden/Rose_Garden_1.jpg', 67, NULL),
(2538, 8, 'Shinjuku/hotel/Rose_Garden/Rose_Garden_2.jpg', 67, NULL),
(2539, 8, 'Shinjuku/hotel/Rose_Garden/Rose_Garden_3..jpg', 67, NULL),
(2540, 8, 'Shinjuku/hotel/Rose_Garden/Rose_Garden_4.jpg', 67, NULL),
(2541, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai.jpg', 61, NULL),
(2542, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai_1.jpg', 61, NULL),
(2543, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai_2.jpg', 61, NULL),
(2544, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai_3.jpg', 61, NULL),
(2545, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai_4.jpg', 61, NULL),
(2546, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai_5.jpg', 61, NULL),
(2547, 8, 'Shinjuku/lieux_visiter/Jardin_Imperial/Jardin_Imperial.jpg', 62, NULL),
(2548, 8, 'Shinjuku/lieux_visiter/Jardin_Imperial/Jardin_Imperial_1.jpg', 62, NULL),
(2549, 8, 'Shinjuku/lieux_visiter/Jardin_Imperial/Jardin_Imperial_2.jpg', 62, NULL),
(2550, 8, 'Shinjuku/restaurant/Ishikawa/Ishikawa_1.jpg', 68, NULL),
(2551, 8, 'Shinjuku/restaurant/Ishikawa/Ishikawa_2.jpg', 68, NULL),
(2552, 8, 'Shinjuku/restaurant/Ishikawa/Ishikawa_3.jpg', 68, NULL),
(2553, 8, 'Shinjuku/restaurant/Ishikawa/Ishikawa_4.jpg', 68, NULL),
(2554, 8, 'Shinjuku/shinjuku.jpg', NULL, NULL),
(2555, 8, 'Shinjuku/shinjuku_1.jpg', NULL, NULL),
(2556, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami.jpg', 71, NULL),
(2557, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_1.jpg', 71, NULL),
(2558, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_2.jpg', 71, NULL),
(2559, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_3.jpg', 71, NULL),
(2560, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_4.jpg', 71, NULL),
(2561, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_5.jpg', 71, NULL),
(2562, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_6.jpg', 71, NULL),
(2563, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_7.jpg', 71, NULL),
(2564, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_8.jpg', 71, NULL),
(2565, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_9.jpg', 71, NULL),
(2566, 6, 'Tsukiji/hotel/first_cabin/first_cabin.jpg', 72, NULL),
(2567, 6, 'Tsukiji/hotel/first_cabin/first_cabin_1.jpg', 72, NULL),
(2568, 6, 'Tsukiji/hotel/first_cabin/first_cabin_2.jpg', 72, NULL),
(2569, 6, 'Tsukiji/hotel/first_cabin/first_cabin_3.jpg', 72, NULL),
(2570, 6, 'Tsukiji/hotel/first_cabin/first_cabin_4.jpg', 72, NULL),
(2571, 6, 'Tsukiji/hotel/Tsukiji_Business_Hotel_Ban/Tsukiji_Business_Hotel_Ban.jpg', 73, NULL),
(2572, 6, 'Tsukiji/hotel/Tsukiji_Business_Hotel_Ban/Tsukiji_Business_Hotel_Ban_1.jpg', 73, NULL),
(2573, 6, 'Tsukiji/hotel/Tsukiji_Business_Hotel_Ban/Tsukiji_Business_Hotel_Ban_2.jpg', 73, NULL),
(2574, 6, 'Tsukiji/hotel/Tsukiji_Business_Hotel_Ban/Tsukiji_Business_Hotel_Ban_3.jpg', 73, NULL),
(2575, 6, 'Tsukiji/hotel/Tsukiji_Business_Hotel_Ban/Tsukiji_Business_Hotel_Ban_4.jpg', 73, NULL),
(2576, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2577, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2578, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2579, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2580, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2581, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2582, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2583, 4, 'Ueno/hotel/Mitsui_Garden_Hotel_Ueno/Mitsui_Garden_Hotel_Ueno.jpg', 36, NULL),
(2584, 4, 'Ueno/hotel/Mitsui_Garden_Hotel_Ueno/Mitsui_Garden_Hotel_Ueno_1.jpg', 36, NULL),
(2585, 4, 'Ueno/hotel/Mitsui_Garden_Hotel_Ueno/Mitsui_Garden_Hotel_Ueno_2.jpg', 36, NULL),
(2586, 4, 'Ueno/hotel/Sakura_Ryokan/Sakura_Ryokan.jpg', 35, NULL),
(2587, 4, 'Ueno/hotel/Sakura_Ryokan/Sakura_Ryokan_1.jpg', 35, NULL),
(2588, 4, 'Ueno/hotel/Sakura_Ryokan/Sakura_Ryokan_3.jpg', 35, NULL),
(2589, 4, 'Ueno/hotel/Sutton_Place_Hotel_Ueno/Sutton_Place_Hotel_Ueno.jpeg', 34, NULL),
(2590, 4, 'Ueno/hotel/Sutton_Place_Hotel_Ueno/Sutton_Place_Hotel_Ueno_1.jpg', 34, NULL),
(2591, 4, 'Ueno/hotel/Sutton_Place_Hotel_Ueno/Sutton_Place_Hotel_Ueno_2.jpg', 34, NULL),
(2592, 4, 'Ueno/lieux_visiter/Musee_national_de_Tokyo/Musee_national_Tokyo.jpg', 40, NULL),
(2593, 4, 'Ueno/lieux_visiter/Musee_national_de_Tokyo/Musee_national_Tokyo_1.jpg', 40, NULL),
(2594, 4, 'Ueno/lieux_visiter/Musee_national_de_Tokyo/Musee_national_Tokyo_2.jpg', 40, NULL),
(2595, 4, 'Ueno/lieux_visiter/Parc_de_Ueno/Parc_Ueno.jpg', 37, NULL),
(2596, 4, 'Ueno/lieux_visiter/Parc_de_Ueno/Parc_Ueno_1.jpg', 37, NULL),
(2597, 4, 'Ueno/lieux_visiter/Parc_de_Ueno/Parc_Ueno_2.jpg', 37, NULL),
(2598, 4, 'Ueno/lieux_visiter/Sanctuaire_Toshogu/Sanctuaire_Toshogu.jpg', 42, NULL),
(2599, 4, 'Ueno/lieux_visiter/Sanctuaire_Toshogu/Sanctuaire_Toshogu_1.jpg', 42, NULL),
(2600, 4, 'Ueno/lieux_visiter/Sanctuaire_Toshogu/Sanctuaire_Toshogu_2.jpg', 42, NULL),
(2601, 4, 'Ueno/lieux_visiter/Temple_Kan_eiji/Temple_Kan_eiji.jpg', 39, NULL),
(2602, 4, 'Ueno/lieux_visiter/Temple_Kan_eiji/Temple_Kan_eiji_2.jpg', 39, NULL),
(2603, 4, 'Ueno/restaurant/Hanada_Uenoten/Hanada_Uenoten.jpg', 30, NULL),
(2604, 4, 'Ueno/restaurant/Hanada_Uenoten/Hanada_Uenoten_1.jpg', 30, NULL),
(2605, 4, 'Ueno/restaurant/Keijouen/Keijouen.jpg', 32, NULL),
(2606, 4, 'Ueno/restaurant/Keijouen/Keijouen_1.jpg', 32, NULL),
(2607, 4, 'Ueno/restaurant/Yamabe_Uenoten/Yamabe_Uenoten.jpg', 31, NULL),
(2608, 4, 'Ueno/restaurant/Yamabe_Uenoten/Yamabe_Uenoten_1.jpg', 31, NULL),
(2609, 1, 'Akihabara/histoire.jpg', NULL, NULL),
(2610, 1, 'Akihabara/histoire_1.jpg', NULL, NULL),
(2611, 1, 'Akihabara/histoire_2.jpg', NULL, NULL),
(2612, 1, 'Akihabara/akihabara.jpg', NULL, NULL),
(2613, 5, 'Asakusa/asakusa_1.jpg', NULL, NULL),
(2614, 5, 'Asakusa/asakusa_station_1.jpg', NULL, NULL),
(2615, 5, 'Asakusa/asakusa_kaminari.jpg', NULL, NULL),
(2616, 7, 'roppongi/roppongi.jpg', NULL, NULL),
(2617, 6, 'tsukiji/tsukiji.jpg', NULL, NULL),
(2618, 4, 'Ueno/ueno.jpg', NULL, NULL),
(2619, 3, 'harajuku\\lieux_visiter\\rockeur\\rockeur.jpg', 16, NULL),
(2620, 3, 'harajuku\\lieux_visiter\\rockeur\\rockeur_1.jpg', 16, NULL),
(2621, 3, 'harajuku\\lieux_visiter\\pont_des_cosplay\\user\\1910493_1189868873097_688312_n.jpg', 16, 1),
(2622, 3, 'harajuku\\lieux_visiter\\pont_des_cosplay\\user\\1910493_1189868913098_1155369_n.jpg', 16, 1),
(2623, 3, 'harajuku\\lieux_visiter\\temple_meiji\\user\\1910493_1189844872497_6680589_n.jpg', 18, 1),
(2624, 3, 'harajuku\\lieux_visiter\\temple_meiji\\user\\1910493_1189844832496_1493194_n.jpg', 18, 1),
(2625, 3, 'harajuku\\lieux_visiter\\temple_meiji\\user\\1910493_1189844912498_1452585_n.jpg', 18, 1),
(2626, 3, 'harajuku\\lieux_visiter\\temple_meiji\\user\\1910493_1189844992500_1491666_n.jpg', 18, 1),
(2627, 3, 'harajuku\\lieux_visiter\\temple_meiji\\user\\1910493_1189845032501_7975877_n.jpg', 18, 1),
(2628, 3, 'harajuku\\lieux_visiter\\temple_meiji\\user\\1910493_1189845072502_1190900_n.jpg', 18, 1),
(2629, 3, 'harajuku\\lieux_visiter\\temple_meiji\\user\\1910493_1189845112503_3142065_n.jpg', 18, 1),
(2630, 3, 'harajuku\\lieux_visiter\\temple_meiji\\user\\1910493_1189845152504_2811132_n.jpg', 18, 1);

-- --------------------------------------------------------

--
-- Structure de la table `photo.bkp`
--

CREATE TABLE IF NOT EXISTS `photo.bkp` (
  `id` int(11) NOT NULL,
  `quarter_id` int(11) NOT NULL,
  `src` varchar(100) DEFAULT NULL,
  `info_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `photo.bkp`
--

INSERT INTO `photo.bkp` (`id`, `quarter_id`, `src`, `info_id`, `user_id`) VALUES
(1, 1, '\\img\\Akihabara\\histoire\\histoire.jpg', 1, NULL),
(2, 1, '\\img\\Akihabara\\histoire\\histoire_1.jpg', 1, NULL),
(3, 1, '\\img\\Akihabara\\histoire\\histoire_2.jpg', 1, NULL),
(4, 1, '\\img\\Akihabara\\hotel\\Akihabara_Hotel_3000\\Akihabara_Hotel_3000.jpg', 2, NULL),
(5, 1, '\\img\\Akihabara\\hotel\\Akihabara_Hotel_3000\\Akihabara_Hotel_3000_4.jpg', 2, NULL),
(6, 1, '\\img\\Akihabara\\hotel\\Akihabara_Hotel_3000\\Akihabara_Hotel_3000_3.jpg', 2, NULL),
(7, 1, '\\img\\Akihabara\\hotel\\Akihabara_Hotel_3000\\Akihabara_Hotel_3000_2.jpg', 2, NULL),
(8, 1, '\\img\\Akihabara\\hotel\\Akihabara_Hotel_3000\\Akihabara_Hotel_3000_1.jpg', 2, NULL),
(9, 1, '\\img\\Akihabara\\hotel\\Akihabara_Washington_Hotel\\Akihabara_Washington_Hotel.jpg', 3, NULL),
(10, 1, '\\img\\Akihabara\\hotel\\Akihabara_Washington_Hotel\\Akihabara_Washington_Hotel_1.jpg', 3, NULL),
(11, 1, '\\img\\Akihabara\\hotel\\Akihabara_Washington_Hotel\\Akihabara_Washington_Hotel_2.jpg', 3, NULL),
(12, 1, '\\img\\Akihabara\\hotel\\Akihabara_Washington_Hotel\\Akihabara_Washington_Hotel_3.jpg', 3, NULL),
(13, 1, '\\img\\Akihabara\\hotel\\Akihabara_Washington_Hotel\\Akihabara_Washington_Hotel_4.jpg', 3, NULL),
(14, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_14.jpg', 4, NULL),
(15, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule.jpg', 4, NULL),
(16, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_1.jpg', 4, NULL),
(17, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_2.jpg', 4, NULL),
(18, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_3.jpg', 4, NULL),
(19, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_4.jpg', 4, NULL),
(20, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_5.jpg', 4, NULL),
(21, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_6.jpg', 4, NULL),
(22, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_7.jpg', 4, NULL),
(23, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_8.jpg', 4, NULL),
(24, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_9.jpg', 4, NULL),
(25, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_10.jpg', 4, NULL),
(26, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_11.jpg', 4, NULL),
(27, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_12.jpg', 4, NULL),
(28, 1, '\\img\\Akihabara\\hotel\\capsule\\capsule_13.jpg', 4, NULL),
(29, 1, '\\img\\Akihabara\\hotel\\Remm_Akihabara\\Remm_Akihabara.jpg', 5, NULL),
(30, 1, '\\img\\Akihabara\\hotel\\Remm_Akihabara\\Remm_Akihabara_1.jpg', 5, NULL),
(31, 1, '\\img\\Akihabara\\hotel\\Remm_Akihabara\\Remm_Akihabara_2.jpg', 5, NULL),
(32, 1, '\\img\\Akihabara\\hotel\\Remm_Akihabara\\Remm_Akihabara_3.jpg', 5, NULL),
(33, 1, '\\img\\Akihabara\\hotel\\Remm_Akihabara\\Remm_Akihabara_4.jpg', 5, NULL),
(34, 1, '\\img\\Akihabara\\hotel\\Remm_Akihabara\\Remm_Akihabara_5.jpg', 5, NULL),
(35, 1, '\\img\\Akihabara\\lieux_a_visiter\\maid_cafe\\maid_cafe.jpg', 6, NULL),
(36, 1, '\\img\\Akihabara\\lieux_a_visiter\\maid_cafe\\maid_cafe_1.jpg', 6, NULL),
(37, 1, '\\img\\Akihabara\\lieux_a_visiter\\maid_cafe\\maid_cafe_2.jpg', 6, NULL),
(38, 1, '\\img\\Akihabara\\lieux_a_visiter\\super_potato_shop\\super_potato_shop.jpg', 7, NULL),
(39, 1, '\\img\\Akihabara\\lieux_a_visiter\\super_potato_shop\\super_potato_shop_1.jpg', 7, NULL),
(40, 1, '\\img\\Akihabara\\lieux_a_visiter\\super_potato_shop\\super_potato_shop_2.jpg', 7, NULL),
(41, 1, '\\img\\Akihabara\\lieux_a_visiter\\super_potato_shop\\super_potato_shop_3.jpg', 7, NULL),
(42, 1, '\\img\\Akihabara\\lieux_a_visiter\\super_potato_shop\\super_potato_shop_4.jpg', 7, NULL),
(43, 1, '\\img\\Akihabara\\lieux_a_visiter\\super_potato_shop\\super_potato_shop_5.jpg', 7, NULL),
(44, 1, '\\img\\Akihabara\\lieux_a_visiter\\taito_station\\taito_station.jpg', 8, NULL),
(45, 1, '\\img\\Akihabara\\lieux_a_visiter\\taito_station\\taito_station_1.jpg', 8, NULL),
(46, 1, '\\img\\Akihabara\\lieux_a_visiter\\taito_station\\taito_station_2.jpg', 8, NULL),
(47, 1, '\\img\\Akihabara\\lieux_a_visiter\\taito_station\\taito_station_3.jpg', 8, NULL),
(48, 1, '\\img\\Akihabara\\lieux_a_visiter\\taito_station\\taito_station_4.jpg', 8, NULL),
(49, 1, '\\img\\Akihabara\\lieux_a_visiter\\taito_station\\taito_station_5.jpg', 8, NULL),
(50, 1, '\\img\\Akihabara\\lieux_a_visiter\\taito_station\\taito_station_6.jpg', 8, NULL),
(51, 1, '\\img\\Akihabara\\restaurant\\gundam_cafe\\gundam_cafe.jpg', 9, NULL),
(52, 1, '\\img\\Akihabara\\restaurant\\gundam_cafe\\gundam_cafe_1.jpg', 9, NULL),
(53, 1, '\\img\\Akihabara\\restaurant\\gundam_cafe\\gundam_cafe_2.jpg', 9, NULL),
(54, 1, '\\img\\Akihabara\\restaurant\\gundam_cafe\\gundam_cafe_3.jpg', 9, NULL),
(55, 1, '\\img\\Akihabara\\restaurant\\gundam_cafe\\gundam_cafe_4.jpg', 9, NULL),
(56, 1, '\\img\\Akihabara\\restaurant\\gundam_cafe\\gundam_cafe_5.jpg', 9, NULL),
(57, 1, '\\img\\Akihabara\\restaurant\\gundam_cafe\\gundam_cafe_6.jpg', 9, NULL),
(58, 1, '\\img\\Akihabara\\restaurant\\gundam_cafe\\gundam_cafe_7.jpg', 9, NULL),
(59, 1, '\\img\\Akihabara\\restaurant\\gundam_cafe\\gundam_cafe_8.jpg', 9, NULL),
(60, 1, '\\img\\Akihabara\\restaurant\\gundam_cafe\\gundam_cafe_9.jpg', 9, NULL),
(61, 1, '\\img\\Akihabara\\restaurant\\gundam_cafe\\gundam_cafe_10.jpg', 9, NULL),
(62, 1, '\\img\\Akihabara\\restaurant\\Kanda_Yabusoba\\Kanda_Yabusoba.jpg', 10, NULL),
(63, 1, '\\img\\Akihabara\\restaurant\\Kanda_Yabusoba\\Kanda_Yabusoba_1.jpg', 10, NULL),
(64, 1, '\\img\\Akihabara\\restaurant\\Kanda_Yabusoba\\Kanda_Yabusoba_2.jpg', 10, NULL),
(65, 1, '\\img\\Akihabara\\restaurant\\Kanda_Yabusoba\\Kanda_Yabusoba_3.jpg', 10, NULL),
(66, 1, '\\img\\Akihabara\\restaurant\\Kanda_Yabusoba\\Kanda_Yabusoba_4.jpg', 10, NULL),
(67, 1, '\\img\\Akihabara\\restaurant\\Kanda_Yabusoba\\Kanda_Yabusoba_5.jpg', 10, NULL),
(68, 1, '\\img\\Akihabara\\restaurant\\Kanda_Yabusoba\\Kanda_Yabusoba_6.jpg', 10, NULL),
(69, 1, '\\img\\Akihabara\\restaurant\\Kanda_Yabusoba\\Kanda_Yabusoba_7.jpg', 10, NULL),
(70, 1, '\\img\\Akihabara\\restaurant\\Kanda_Yabusoba\\Kanda_Yabusoba_8.jpg', 10, NULL),
(71, 1, '\\img\\Akihabara\\restaurant\\Kanda_Yabusoba\\Kanda_Yabusoba_9.jpg', 10, NULL),
(72, 1, '\\img\\Akihabara\\restaurant\\Menya_Musashi_Bujin\\Menya_Musashi_Bujin.jpg', 11, NULL),
(73, 1, '\\img\\Akihabara\\restaurant\\Menya_Musashi_Bujin\\Menya_Musashi_Bujin_1.jpg', 11, NULL),
(74, 1, '\\img\\Akihabara\\restaurant\\Menya_Musashi_Bujin\\Menya_Musashi_Bujin_2.jpg', 11, NULL),
(75, 1, '\\img\\Akihabara\\restaurant\\Menya_Musashi_Bujin\\Menya_Musashi_Bujin_3.jpg', 11, NULL),
(76, 1, '\\img\\Akihabara\\restaurant\\Menya_Musashi_Bujin\\Menya_Musashi_Bujin_4.jpg', 11, NULL),
(77, 1, '\\img\\Akihabara\\restaurant\\Menya_Musashi_Bujin\\Menya_Musashi_Bujin_5.jpg', 11, NULL),
(78, 1, '\\img\\Akihabara\\map_akihabara.jpg', NULL, NULL),
(79, 3, '\\img\\harajuku\\harajuku.jpg', NULL, NULL),
(80, 3, '\\img\\harajuku\\harajuku_1.jpg', NULL, NULL),
(81, 3, '\\img\\harajuku\\harajuku_2.jpg', NULL, NULL),
(82, 3, '\\img\\harajuku\\harajuku_3.jpg', NULL, NULL),
(83, 3, '\\img\\harajuku\\harajuku_4.jpg', NULL, NULL),
(84, 3, '\\img\\harajuku\\lieux_visiter\\pont_des_cosplay\\pont_des_cosplay.jpg', 16, NULL),
(85, 3, '\\img\\harajuku\\lieux_visiter\\pont_des_cosplay\\pont_des_cosplay_1.jpg', 16, NULL),
(86, 3, '\\img\\harajuku\\lieux_visiter\\pont_des_cosplay\\pont_des_cosplay_2.jpg', 16, NULL),
(87, 3, '\\img\\harajuku\\lieux_visiter\\pont_des_cosplay\\pont_des_cosplay_4.jpg', 16, NULL),
(88, 3, '\\img\\harajuku\\lieux_visiter\\pont_des_cosplay\\pont_des_cosplay_5.jpg', 16, NULL),
(89, 3, '\\img\\harajuku\\lieux_visiter\\pont_des_cosplay\\pont_des_cosplay_6.jpg', 16, NULL),
(90, 3, '\\img\\harajuku\\lieux_visiter\\temple_meiji\\temple_meiji.jpg', 18, NULL),
(91, 3, '\\img\\harajuku\\lieux_visiter\\temple_meiji\\temple_meiji_2.jpg', 18, NULL),
(92, 3, '\\img\\harajuku\\lieux_visiter\\temple_meiji\\temple_meiji_3.jpg', 18, NULL),
(93, 3, '\\img\\harajuku\\lieux_visiter\\temple_meiji\\temple_meiji_4.jpg', 18, NULL),
(94, 3, '\\img\\harajuku\\lieux_visiter\\temple_meiji\\temple_meiji_6.jpg', 18, NULL),
(95, 3, '\\img\\harajuku\\lieux_visiter\\temple_meiji\\temple_meiji_7.jpg', 18, NULL),
(96, 3, '\\img\\harajuku\\restaurant\\gyoza_rou\\gyoza_rou.jpg', 12, NULL),
(97, 3, '\\img\\harajuku\\restaurant\\gyoza_rou\\gyoza_rou_1.jpg', 12, NULL),
(98, 3, '\\img\\harajuku\\restaurant\\gyoza_rou\\gyoza_rou_2.jpg', 12, NULL),
(99, 3, '\\img\\harajuku\\restaurant\\gyoza_rou\\gyoza_rou_3.jpg', 12, NULL),
(100, 3, '\\img\\harajuku\\restaurant\\gyoza_rou\\gyoza_rou_4.jpg', 12, NULL),
(101, 3, '\\img\\harajuku\\restaurant\\gyoza_rou\\gyoza_rou_5.jpg', 12, NULL),
(102, 3, '\\img\\harajuku\\restaurant\\Kyushu_Jangara\\Kyushu_Jangara.JPG', 14, NULL),
(103, 3, '\\img\\harajuku\\restaurant\\Kyushu_Jangara\\Kyushu_Jangara_2.jpg', 14, NULL),
(104, 3, '\\img\\harajuku\\restaurant\\Kyushu_Jangara\\Kyushu_Jangara_3.JPG', 14, NULL),
(105, 3, '\\img\\harajuku\\restaurant\\Kyushu_Jangara\\Kyushu_Jangara_4.jpeg', 14, NULL),
(106, 3, '\\img\\harajuku\\restaurant\\Kyushu_Jangara\\Kyushu_Jangara_5.jpg', 14, NULL),
(107, 3, '\\img\\harajuku\\restaurant\\Kyushu_Jangara\\Kyushu_Jangara_6.jpg', 14, NULL),
(108, 3, '\\img\\harajuku\\restaurant\\Minoringo\\Minoringo.JPG', 15, NULL),
(109, 3, '\\img\\harajuku\\restaurant\\Minoringo\\Minoringo_1.jpg', 15, NULL),
(110, 3, '\\img\\harajuku\\restaurant\\Minoringo\\Minoringo_3.jpg', 15, NULL),
(111, 3, '\\img\\harajuku\\restaurant\\Minoringo\\Minoringo_2.jpg', 15, NULL),
(112, 2, '\\img\\Ikebukuro\\hotel\\centurion_hotel\\centurion_hotel.jpg', 19, NULL),
(113, 2, '\\img\\Ikebukuro\\hotel\\centurion_hotel\\centurion_hotel_1.jpg', 19, NULL),
(114, 2, '\\img\\Ikebukuro\\hotel\\centurion_hotel\\centurion_hotel_2.jpg', 19, NULL),
(115, 2, '\\img\\Ikebukuro\\hotel\\centurion_hotel\\centurion_hotel_3.jpg', 19, NULL),
(116, 2, '\\img\\Ikebukuro\\hotel\\centurion_hotel\\centurion_hotel_4.jpg', 19, NULL),
(117, 2, '\\img\\Ikebukuro\\hotel\\centurion_hotel\\centurion_hotel_5.jpg', 19, NULL),
(118, 2, '\\img\\Ikebukuro\\hotel\\sakura_hotel\\sakura_hotel.jpg', 20, NULL),
(119, 2, '\\img\\Ikebukuro\\hotel\\sakura_hotel\\sakura_hotel_1.jpg', 20, NULL),
(120, 2, '\\img\\Ikebukuro\\hotel\\sakura_hotel\\sakura_hotel_2.jpg', 20, NULL),
(121, 2, '\\img\\Ikebukuro\\hotel\\Tokyu_Stay_Ikebukuro\\Tokyu_Stay_Ikebukuro.jpg', 21, NULL),
(122, 2, '\\img\\Ikebukuro\\hotel\\Tokyu_Stay_Ikebukuro\\Tokyu_Stay_Ikebukuro_1.jpg', 21, NULL),
(123, 2, '\\img\\Ikebukuro\\hotel\\Tokyu_Stay_Ikebukuro\\Tokyu_Stay_Ikebukuro_2.jpg', 21, NULL),
(124, 2, '\\img\\Ikebukuro\\hotel\\Tokyu_Stay_Ikebukuro\\Tokyu_Stay_Ikebukuro_3.jpg', 21, NULL),
(125, 2, '\\img\\Ikebukuro\\lieux_visiter\\batting_center\\batting_center.jpg', 22, NULL),
(126, 2, '\\img\\Ikebukuro\\lieux_visiter\\batting_center\\batting_center_1.jpg', 22, NULL),
(127, 2, '\\img\\Ikebukuro\\lieux_visiter\\batting_center\\batting_center_2.jpg', 22, NULL),
(128, 2, '\\img\\Ikebukuro\\lieux_visiter\\batting_center\\batting_center_3.jpg', 22, NULL),
(129, 2, '\\img\\Ikebukuro\\lieux_visiter\\batting_center\\batting_center_4.jpg', 22, NULL),
(130, 2, '\\img\\Ikebukuro\\lieux_visiter\\bosaikan\\bosaikan.jpg', 23, NULL),
(131, 2, '\\img\\Ikebukuro\\lieux_visiter\\bosaikan\\bosaikan_1.jpg', 23, NULL),
(132, 2, '\\img\\Ikebukuro\\lieux_visiter\\bosaikan\\bosaikan_2.jpg', 23, NULL),
(133, 2, '\\img\\Ikebukuro\\lieux_visiter\\bosaikan\\bosaikan_3.jpg', 23, NULL),
(134, 2, '\\img\\Ikebukuro\\lieux_visiter\\bosaikan\\bosaikan_4.jpg', 23, NULL),
(135, 2, '\\img\\Ikebukuro\\lieux_visiter\\bosaikan\\bosaikan_5.jpg', 23, NULL),
(136, 2, '\\img\\Ikebukuro\\lieux_visiter\\tokyo_dome\\tokyo_dome.jpg', 24, NULL),
(137, 2, '\\img\\Ikebukuro\\lieux_visiter\\tokyo_dome\\tokyo_dome_1.jpg', 24, NULL),
(138, 2, '\\img\\Ikebukuro\\lieux_visiter\\tokyo_dome\\tokyo_dome_2.jpg', 24, NULL),
(139, 2, '\\img\\Ikebukuro\\lieux_visiter\\tokyo_dome\\tokyo_dome_3.jpg', 24, NULL),
(140, 2, '\\img\\Ikebukuro\\lieux_visiter\\tokyo_dome\\tokyo_dome_4.jpg', 24, NULL),
(141, 2, '\\img\\Ikebukuro\\lieux_visiter\\tokyo_dome\\tokyo_dome_5.jpg', 24, NULL),
(148, 2, '\\img\\Ikebukuro\\restaurant\\uchi\\uchi.jpg', 25, NULL),
(149, 2, '\\img\\Ikebukuro\\restaurant\\uchi\\uchi_1.jpg', 25, NULL),
(150, 2, '\\img\\Ikebukuro\\restaurant\\uchi\\uchi_2.jpg', 25, NULL),
(151, 2, '\\img\\Ikebukuro\\restaurant\\uchi\\uchi_3.jpg', 25, NULL),
(152, 2, '\\img\\Ikebukuro\\restaurant\\uchi\\uchi_4.jpg', 25, NULL),
(153, 2, '\\img\\Ikebukuro\\restaurant\\uchi\\uchi_5.jpg', 25, NULL),
(154, 2, '\\img\\Ikebukuro\\restaurant\\Zubora\\Zubora.jpg', 26, NULL),
(155, 2, '\\img\\Ikebukuro\\restaurant\\Zubora\\Zubora_1.jpg', 26, NULL),
(156, 2, '\\img\\Ikebukuro\\restaurant\\Zubora\\Zubora_2.jpg', 26, NULL),
(157, 2, '\\img\\Ikebukuro\\restaurant\\Zubora\\Zubora_3.jpg', 26, NULL),
(158, 2, '\\img\\Ikebukuro\\restaurant\\Zubora\\Zubora_4.jpg', 26, NULL),
(159, 2, '\\img\\Ikebukuro\\restaurant\\Zubora\\Zubora_5.jpg', 26, NULL),
(160, 2, '\\img\\Ikebukuro\\restaurant\\Zubora\\Zubora_6.jpg', 26, NULL),
(161, 2, '\\img\\Ikebukuro\\restaurant\\Zubora\\Zubora_7.jpg', 26, NULL),
(162, 2, '\\img\\Ikebukuro\\restaurant\\Zubora\\Zubora_8.jpg', 26, NULL),
(163, 5, 'img\\Asakusa\\hotel\\Dormy_Inn_EXPRESS\\Dormy_Inn_EXPRESS.jpg', 44, NULL),
(164, 5, 'img\\Asakusa\\hotel\\Dormy_Inn_EXPRESS\\Dormy_Inn_EXPRESS_1.jpg', 44, NULL),
(165, 5, 'img\\Asakusa\\hotel\\Dormy_Inn_EXPRESS\\Dormy_Inn_EXPRESS_2.jpg', 44, NULL),
(166, 5, '\\img\\Asakusa\\hotel\\Ryokan_Asakusa_Shigetsu\\Ryokan_Asakusa_Shigetsu.jpg', 46, NULL),
(167, 5, '\\img\\Asakusa\\hotel\\Ryokan_Asakusa_Shigetsu\\Ryokan_Asakusa_Shigetsu_1.jpg', 46, NULL),
(168, 5, '\\img\\Asakusa\\hotel\\Ryokan_Asakusa_Shigetsu\\Ryokan_Asakusa_Shigetsu_2.jpg', 46, NULL),
(169, 5, '\\img\\Asakusa\\restaurant\\Maguro_bito\\Maguro_bito.jpg', 27, NULL),
(170, 5, '\\img\\Asakusa\\restaurant\\Maguro_bito\\Maguro_bito_1.jpg', 27, NULL),
(171, 5, '\\img\\Asakusa\\restaurant\\Maguro_bito\\Maguro_bito_2.jpg', 27, NULL),
(172, 5, '\\img\\Asakusa\\restaurant\\Nakasei\\Nakasei.jpg', 28, NULL),
(173, 5, '\\img\\Asakusa\\restaurant\\Nakasei\\Nakasei_1.jpg', 28, NULL),
(174, 5, '\\img\\Asakusa\\restaurant\\Nakasei\\Nakasei_2.jpg', 28, NULL),
(175, 5, '\\img\\Asakusa\\restaurant\\Toriyoshi\\Toriyoshi.jpg', 29, NULL),
(176, 5, '\\img\\Asakusa\\restaurant\\Toriyoshi\\Toriyoshi_1.jpg', 29, NULL),
(177, 5, '\\img\\Asakusa\\restaurant\\Toriyoshi\\Toriyoshi_3.jpg', 29, NULL),
(178, 5, '\\img\\Asakusa\\hotel\\Dormy_Inn_EXPRESS_Dormy_Inn_EXPRESS.jpg', 44, NULL),
(179, 5, '\\img\\Asakusa\\hotel\\Dormy_Inn_EXPRESS_Dormy_Inn_EXPRESS_1.jpg', 44, NULL),
(180, 5, '\\img\\Asakusa\\hotel\\Dormy_Inn_EXPRESS_Dormy_Inn_EXPRESS_2.jpg', 44, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `photo.bkp2`
--

CREATE TABLE IF NOT EXISTS `photo.bkp2` (
  `id` int(11) NOT NULL,
  `quarter_id` int(11) NOT NULL,
  `src` varchar(100) DEFAULT NULL,
  `info_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2057 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `photo.bkp2`
--

INSERT INTO `photo.bkp2` (`id`, `quarter_id`, `src`, `info_id`, `user_id`) VALUES
(1770, 1, 'Akihabara/historique akihabara/histoire.jpg', 1, NULL),
(1771, 1, 'Akihabara/historique akihabara/histoire_1.jpg', 1, NULL),
(1772, 1, 'Akihabara/historique akihabara/histoire_2.jpg', 1, NULL),
(1773, 1, 'Akihabara/hotel/Akihabara_Hotel_3000/Akihabara_Hotel_3000.jpeg', 2, NULL),
(1774, 1, 'Akihabara/hotel/Akihabara_Hotel_3000/Akihabara_Hotel_3000_1.jpg', 2, NULL),
(1775, 1, 'Akihabara/hotel/Akihabara_Hotel_3000/Akihabara_Hotel_3000_2.jpg', 2, NULL),
(1776, 1, 'Akihabara/hotel/Akihabara_Hotel_3000/Akihabara_Hotel_3000_3.jpg', 2, NULL),
(1777, 1, 'Akihabara/hotel/Akihabara_Hotel_3000/Akihabara_Hotel_3000_4.jpg', 2, NULL),
(1778, 1, 'Akihabara/hotel/Akihabara_Washington_Hotel/Akihabara_Washington_Hotel.jpg', 3, NULL),
(1779, 1, 'Akihabara/hotel/Akihabara_Washington_Hotel/Akihabara_Washington_Hotel_1.jpg', 3, NULL),
(1780, 1, 'Akihabara/hotel/Akihabara_Washington_Hotel/Akihabara_Washington_Hotel_2.jpg', 3, NULL),
(1781, 1, 'Akihabara/hotel/Akihabara_Washington_Hotel/Akihabara_Washington_Hotel_3.jpg', 3, NULL),
(1782, 1, 'Akihabara/hotel/Akihabara_Washington_Hotel/Akihabara_Washington_Hotel_4.jpg', 3, NULL),
(1783, 1, 'Akihabara/hotel/capsule/capsule.jpg', 4, NULL),
(1784, 1, 'Akihabara/hotel/capsule/capsule_1.jpg', 4, NULL),
(1785, 1, 'Akihabara/hotel/capsule/capsule_10.jpg', 4, NULL),
(1786, 1, 'Akihabara/hotel/capsule/capsule_11.jpg', 4, NULL),
(1787, 1, 'Akihabara/hotel/capsule/capsule_12.jpg', 4, NULL),
(1788, 1, 'Akihabara/hotel/capsule/capsule_13.jpg', 4, NULL),
(1789, 1, 'Akihabara/hotel/capsule/capsule_14.jpg', 4, NULL),
(1790, 1, 'Akihabara/hotel/capsule/capsule_2.jpg', 4, NULL),
(1791, 1, 'Akihabara/hotel/capsule/capsule_3.jpg', 4, NULL),
(1792, 1, 'Akihabara/hotel/capsule/capsule_4.jpg', 4, NULL),
(1793, 1, 'Akihabara/hotel/capsule/capsule_5.jpg', 4, NULL),
(1794, 1, 'Akihabara/hotel/capsule/capsule_6.jpg', 4, NULL),
(1795, 1, 'Akihabara/hotel/capsule/capsule_7.jpg', 4, NULL),
(1796, 1, 'Akihabara/hotel/capsule/capsule_8.jpg', 4, NULL),
(1797, 1, 'Akihabara/hotel/capsule/capsule_9.jpg', 4, NULL),
(1798, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara.jpg', 5, NULL),
(1799, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara_1.jpg', 5, NULL),
(1800, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara_2.jpg', 5, NULL),
(1801, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara_3.jpg', 5, NULL),
(1802, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara_4.jpg', 5, NULL),
(1803, 1, 'Akihabara/hotel/Remm_Akihabara/Remm_Akihabara_5.jpg', 5, NULL),
(1804, 1, 'Akihabara/lieux_visiter/maid_cafe/maid_cafe.jpg', 6, NULL),
(1805, 1, 'Akihabara/lieux_visiter/maid_cafe/maid_cafe_1.jpg', 6, NULL),
(1806, 1, 'Akihabara/lieux_visiter/maid_cafe/maid_cafe_2.jpg', 6, NULL),
(1807, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop.jpg', 7, NULL),
(1808, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop_1.jpg', 7, NULL),
(1809, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop_2.jpg', 7, NULL),
(1810, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop_3.jpg', 7, NULL),
(1811, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop_4.jpg', 7, NULL),
(1812, 1, 'Akihabara/lieux_visiter/super_potato/super_potato_shop_5.jpg', 7, NULL),
(1813, 1, 'Akihabara/lieux_visiter/taito_station/taito_station.jpg', 8, NULL),
(1814, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_1.jpg', 8, NULL),
(1815, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_2.jpg', 8, NULL),
(1816, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_3.jpg', 8, NULL),
(1817, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_4.jpg', 8, NULL),
(1818, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_5.jpg', 8, NULL),
(1819, 1, 'Akihabara/lieux_visiter/taito_station/taito_station_6.jpg', 8, NULL),
(1820, 1, 'Akihabara/map_akihabara.jpg', NULL, NULL),
(1821, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe.jpg', 9, NULL),
(1822, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_1.jpg', 9, NULL),
(1823, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_10.jpg', 9, NULL),
(1824, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_2.jpg', 9, NULL),
(1825, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_3.jpg', 9, NULL),
(1826, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_4.jpg', 9, NULL),
(1827, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_5.jpg', 9, NULL),
(1828, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_6.jpg', 9, NULL),
(1829, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_7.jpg', 9, NULL),
(1830, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_8.jpg', 9, NULL),
(1831, 1, 'Akihabara/restaurant/gundam_cafe/gundam_cafe_9.jpg', 9, NULL),
(1832, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba.jpg', 13, NULL),
(1833, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_1.jpg', 13, NULL),
(1834, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_2.jpg', 13, NULL),
(1835, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_3.jpg', 13, NULL),
(1836, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_4.jpg', 13, NULL),
(1837, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_5.jpg', 13, NULL),
(1838, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_6.jpg', 13, NULL),
(1839, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_7.jpg', 13, NULL),
(1840, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_8.jpg', 13, NULL),
(1841, 1, 'Akihabara/restaurant/Kanda_Yabusoba/Kanda_Yabusoba_9.jpg', 13, NULL),
(1842, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin.jpg', 11, NULL),
(1843, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin_1.jpg', 11, NULL),
(1844, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin_2.jpg', 11, NULL),
(1845, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin_3.jpg', 11, NULL),
(1846, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin_4.jpg', 11, NULL),
(1847, 1, 'Akihabara/restaurant/Menya_Musashi_Bujin/Menya_Musashi_Bujin_5.jpg', 11, NULL),
(1848, 5, 'Asakusa/hotel/Dormy_Inn_EXPRESS/Dormy_Inn_EXPRESS.jpg', 44, NULL),
(1849, 5, 'Asakusa/hotel/Dormy_Inn_EXPRESS/Dormy_Inn_EXPRESS_1.jpg', 44, NULL),
(1850, 5, 'Asakusa/hotel/Dormy_Inn_EXPRESS/Dormy_Inn_EXPRESS_2.jpg', 44, NULL),
(1851, 5, 'Asakusa/hotel/Ryokan_Asakusa_Shigetsu/Ryokan_Asakusa_Shigetsu.jpg', 46, NULL),
(1852, 5, 'Asakusa/hotel/Ryokan_Asakusa_Shigetsu/Ryokan_Asakusa_Shigetsu_1.jpg', 46, NULL),
(1853, 5, 'Asakusa/hotel/Ryokan_Asakusa_Shigetsu/Ryokan_Asakusa_Shigetsu_2.jpg', 46, NULL),
(1854, 5, 'Asakusa/hotel/Via_Inn_Asakusa/Via_Inn_Asakusa.jpg', 47, NULL),
(1855, 5, 'Asakusa/hotel/Via_Inn_Asakusa/Via_Inn_Asakusa_1.jpg', 47, NULL),
(1856, 5, 'Asakusa/hotel/Via_Inn_Asakusa/Via_Inn_Asakusa_2.jpg', 47, NULL),
(1857, 5, 'Asakusa/lieux_visiter/Porte_de_Kaminarimon_et_rue_de_Nakamise/Porte_Kaminarimon_Nakamise.jpg', 49, NULL),
(1858, 5, 'Asakusa/lieux_visiter/Porte_de_Kaminarimon_et_rue_de_Nakamise/Porte_Kaminarimon_Nakamise_1.jpg', 49, NULL),
(1859, 5, 'Asakusa/lieux_visiter/Porte_de_Kaminarimon_et_rue_de_Nakamise/Porte_Kaminarimon_Nakamise_2.jpg', 49, NULL),
(1860, 5, 'Asakusa/lieux_visiter/Temple_de_Sensoji/Temple_de_Sensoji.jpg', 50, NULL),
(1861, 5, 'Asakusa/lieux_visiter/Temple_de_Sensoji/Temple_de_Sensoji_1.jpg', 50, NULL),
(1862, 5, 'Asakusa/restaurant/Maguro_bito/Maguro_bito.jpg', 27, NULL),
(1863, 5, 'Asakusa/restaurant/Maguro_bito/Maguro_bito_1.jpg', 27, NULL),
(1864, 5, 'Asakusa/restaurant/Maguro_bito/Maguro_bito_2.jpg', 27, NULL),
(1865, 5, 'Asakusa/restaurant/Nakasei/Nakasei.jpg', 28, NULL),
(1866, 5, 'Asakusa/restaurant/Nakasei/Nakasei_1.jpg', 28, NULL),
(1867, 5, 'Asakusa/restaurant/Nakasei/Nakasei_2.jpg', 28, NULL),
(1868, 5, 'Asakusa/restaurant/Toriyoshi/Toriyoshi.jpg', 29, NULL),
(1869, 5, 'Asakusa/restaurant/Toriyoshi/Toriyoshi_1.jpg', 29, NULL),
(1870, 5, 'Asakusa/restaurant/Toriyoshi/Toriyoshi_3.jpg', 29, NULL),
(1871, 3, 'Harajuku/harajuku.jpg.jpg', NULL, NULL),
(1872, 3, 'Harajuku/harajuku_1.jpg.png', 1, NULL),
(1873, 3, 'Harajuku/harajuku_2.jpg.jpg', 2, NULL),
(1874, 3, 'Harajuku/harajuku_3.jpg.jpg', 3, NULL),
(1875, 3, 'Harajuku/harajuku_4.jpg.jpg', 4, NULL),
(1876, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay.jpg', 16, NULL),
(1877, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay_1.jpg', 16, NULL),
(1878, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay_2.jpg', 16, NULL),
(1879, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay_4.jpg', 16, NULL),
(1880, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay_5.jpg', 16, NULL),
(1881, 3, 'Harajuku/lieux_visiter/pont_des_cosplay/pont_des_cosplay_6.jpg', 16, NULL),
(1882, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou.jpg', 12, NULL),
(1883, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou_1.jpg', 12, NULL),
(1884, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou_2.jpg', 12, NULL),
(1885, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou_3.jpg', 12, NULL),
(1886, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou_4.jpg', 12, NULL),
(1887, 3, 'Harajuku/restaurant/gyoza_rou/gyoza_rou_5.jpg', 12, NULL),
(1888, 3, 'Harajuku/restaurant/Kyushu_Jangara/Kyushu_Jangara_2.jpg', 14, NULL),
(1889, 3, 'Harajuku/restaurant/Kyushu_Jangara/Kyushu_Jangara_4.jpeg', 14, NULL),
(1890, 3, 'Harajuku/restaurant/Kyushu_Jangara/Kyushu_Jangara_5.jpg', 14, NULL),
(1891, 3, 'Harajuku/restaurant/Kyushu_Jangara/Kyushu_Jangara_6.jpg', 14, NULL),
(1892, 3, 'Harajuku/restaurant/Minoringo/Minoringo_1.jpg', 15, NULL),
(1893, 3, 'Harajuku/restaurant/Minoringo/Minoringo_2.jpg', 15, NULL),
(1894, 3, 'Harajuku/restaurant/Minoringo/Minoringo_3.jpg', 15, NULL),
(1895, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel.jpg', 19, NULL),
(1896, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel_1.jpg', 19, NULL),
(1897, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel_2.jpg', 19, NULL),
(1898, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel_3.jpg', 19, NULL),
(1899, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel_4.jpg', 19, NULL),
(1900, 2, 'Ikebukuro/hotel/centurion_hotel/centurion_hotel_5.jpg', 19, NULL),
(1901, 2, 'Ikebukuro/hotel/sakura_hotel/sakura_hotel.jpg', 20, NULL),
(1902, 2, 'Ikebukuro/hotel/sakura_hotel/sakura_hotel_1.jpg', 20, NULL),
(1903, 2, 'Ikebukuro/hotel/sakura_hotel/sakura_hotel_2.jpg', 20, NULL),
(1904, 2, 'Ikebukuro/hotel/Tokyu_Stay_Ikebukuro/Tokyu_Stay_Ikebukuro.jpg', 21, NULL),
(1905, 2, 'Ikebukuro/hotel/Tokyu_Stay_Ikebukuro/Tokyu_Stay_Ikebukuro_1.jpg', 21, NULL),
(1906, 2, 'Ikebukuro/hotel/Tokyu_Stay_Ikebukuro/Tokyu_Stay_Ikebukuro_2.jpg', 21, NULL),
(1907, 2, 'Ikebukuro/hotel/Tokyu_Stay_Ikebukuro/Tokyu_Stay_Ikebukuro_3.jpg', 21, NULL),
(1908, 2, 'Ikebukuro/ikebukuro.jpg', NULL, NULL),
(1909, 2, 'Ikebukuro/ikebukuro_1.jpg', 1, NULL),
(1910, 2, 'Ikebukuro/ikebukuro_2.jpg', 2, NULL),
(1911, 2, 'Ikebukuro/ikebukuro_3.jpg', 3, NULL),
(1912, 2, 'Ikebukuro/ikebukuro_4.jpg', 4, NULL),
(1913, 2, 'Ikebukuro/lieux_visiter/batting_center/batting_center.jpg', 22, NULL),
(1914, 2, 'Ikebukuro/lieux_visiter/batting_center/batting_center_1.jpg', 22, NULL),
(1915, 2, 'Ikebukuro/lieux_visiter/batting_center/batting_center_2.jpg', 22, NULL),
(1916, 2, 'Ikebukuro/lieux_visiter/batting_center/batting_center_3.jpg', 22, NULL),
(1917, 2, 'Ikebukuro/lieux_visiter/batting_center/batting_center_4.jpg', 22, NULL),
(1918, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan.jpg.JPG', 23, NULL),
(1919, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan_1.jpg.jpg', 23, NULL),
(1920, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan_2.jpg.jpg', 23, NULL),
(1921, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan_3.jpg.jpg', 23, NULL),
(1922, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan_4.jpg.jpg', 23, NULL),
(1923, 2, 'Ikebukuro/lieux_visiter/bosaikan/bosaikan_5.jpg.jpg', 23, NULL),
(1924, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome.jpg', 24, NULL),
(1925, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome_1.jpg', 24, NULL),
(1926, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome_2.jpg', 24, NULL),
(1927, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome_3.jpg', 24, NULL),
(1928, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome_4.jpg', 24, NULL),
(1929, 2, 'Ikebukuro/lieux_visiter/tokyo_dome/tokyo_dome_5.jpg', 24, NULL),
(1930, 2, 'Ikebukuro/restaurant/uchi/uchi.jpg', 25, NULL),
(1931, 2, 'Ikebukuro/restaurant/uchi/uchi_1.jpg', 25, NULL),
(1932, 2, 'Ikebukuro/restaurant/uchi/uchi_2.jpg', 25, NULL),
(1933, 2, 'Ikebukuro/restaurant/uchi/uchi_3.jpg', 25, NULL),
(1934, 2, 'Ikebukuro/restaurant/uchi/uchi_4.jpg', 25, NULL),
(1935, 2, 'Ikebukuro/restaurant/uchi/uchi_5.jpg', 25, NULL),
(1936, 2, 'Ikebukuro/restaurant/Zubora/Zubora.jpg', 26, NULL),
(1937, 2, 'Ikebukuro/restaurant/Zubora/Zubora8.jpg', 26, NULL),
(1938, 2, 'Ikebukuro/restaurant/Zubora/Zubora_1.jpg', 26, NULL),
(1939, 2, 'Ikebukuro/restaurant/Zubora/Zubora_2.jpg', 26, NULL),
(1940, 2, 'Ikebukuro/restaurant/Zubora/Zubora_3.jpg', 26, NULL),
(1941, 2, 'Ikebukuro/restaurant/Zubora/Zubora_4.jpg', 26, NULL),
(1942, 2, 'Ikebukuro/restaurant/Zubora/Zubora_5.jpg', 26, NULL),
(1943, 2, 'Ikebukuro/restaurant/Zubora/Zubora_6.jpg', 26, NULL),
(1944, 2, 'Ikebukuro/restaurant/Zubora/Zubora_7.jpg', 26, NULL),
(1945, 9, 'Shibuya/Hotel/Granbell_Hotel/Granbell_Hotel.jpg', NULL, NULL),
(1946, 9, 'Shibuya/Hotel/Granbell_Hotel/Granbell_Hotel_1.jpg', 1, NULL),
(1947, 9, 'Shibuya/Hotel/Granbell_Hotel/Granbell_Hotel_2.jpg', 2, NULL),
(1948, 9, 'Shibuya/Hotel/Granbell_Hotel/Granbell_Hotel_3.jpg', 3, NULL),
(1949, 9, 'Shibuya/Hotel/Sakura_Fleur_Aoyama/Sakura_Fleur_Aoyama.jpg', 4, NULL),
(1950, 9, 'Shibuya/Hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya.jpg', 5, NULL),
(1951, 9, 'Shibuya/Hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya_1.jpg', 6, NULL),
(1952, 9, 'Shibuya/Hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya_2.jpg', 7, NULL),
(1953, 9, 'Shibuya/Hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya_3.jpg', 8, NULL),
(1954, 9, 'Shibuya/Hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya_4.jpg', 9, NULL),
(1955, 9, 'Shibuya/Hotel/Sakura_Hotel_Hatagaya/Sakura_Hotel_Hatagaya_5.jpg', 10, NULL),
(1956, 9, 'Shibuya/shibuya.jpg', 11, NULL),
(1957, 9, 'Shibuya/shibuya_1.jpg', 12, NULL),
(1958, 9, 'Shibuya/shibuya_2.jpg', 13, NULL),
(1959, 9, 'Shibuya/shibuya_3.jpg', 14, NULL),
(1960, 9, 'Shibuya/lieux_visiter/Hachiko/Hachiko.jpg', 52, NULL),
(1961, 9, 'Shibuya/lieux_visiter/Hachiko/Hachiko_1.jpg', 52, NULL),
(1962, 9, 'Shibuya/lieux_visiter/Hachiko/Hachiko_2.jpg', 52, NULL),
(1963, 9, 'Shibuya/lieux_visiter/Hachiko/Hachiko_3.jpg', 52, NULL),
(1964, 9, 'Shibuya/lieux_visiter/tour_109/tour_109.jpg', 53, NULL),
(1965, 9, 'Shibuya/lieux_visiter/tour_109/tour_109_1.jpg', 53, NULL),
(1966, 9, 'Shibuya/lieux_visiter/tour_109/tour_109_2.jpg', 53, NULL),
(1967, 9, 'Shibuya/lieux_visiter/tour_109/tour_109_3.jpg', 53, NULL),
(1968, 9, 'Shibuya/lieux_visiter/tour_109/tour_109_4.jpg', 53, NULL),
(1969, 9, 'Shibuya/restaurant/Gonpachi/Gonpachi.jpg', 58, NULL),
(1970, 9, 'Shibuya/restaurant/Gonpachi/Gonpachi_1.jpg', 58, NULL),
(1971, 9, 'Shibuya/restaurant/Gonpachi/Gonpachi_2.jpg', 58, NULL),
(1972, 9, 'Shibuya/restaurant/Kua_Aina/Kua_Aina.jpg', 59, NULL),
(1973, 9, 'Shibuya/restaurant/Kua_Aina/Kua_Aina_1.jpg', 59, NULL),
(1974, 9, 'Shibuya/restaurant/Kua_Aina/Kua_Aina_2.jpg', 59, NULL),
(1975, 9, 'Shibuya/restaurant/Kua_Aina/Kua_Aina_4.jpg', 59, NULL),
(1976, 9, 'Shibuya/restaurant/Uobei/Uobei.jpg', 60, NULL),
(1977, 9, 'Shibuya/restaurant/Uobei/Uobei_1.jpg', 60, NULL),
(1978, 9, 'Shibuya/restaurant/Uobei/Uobei_2.jpg', 60, NULL),
(1979, 8, 'Shinjuku/Hotel/Green_Plaza_Shinjuku_Capsule/Green_Plaza_Shinjuku_Capsule.jpg', NULL, NULL),
(1980, 8, 'Shinjuku/Hotel/Green_Plaza_Shinjuku_Capsule/Green_Plaza_Shinjuku_Capsule_1.jpg', 1, NULL),
(1981, 8, 'Shinjuku/Hotel/Green_Plaza_Shinjuku_Capsule/Green_Plaza_Shinjuku_Capsule_2.jpg', 2, NULL),
(1982, 8, 'Shinjuku/Hotel/Green_Plaza_Shinjuku_Capsule/Green_Plaza_Shinjuku_Capsule_3.jpg', 3, NULL),
(1983, 8, 'Shinjuku/Hotel/Ibis_tokyo_shinjuku/Ibis_tokyo_shinjuku.jpg', 4, NULL),
(1984, 8, 'Shinjuku/Hotel/Ibis_tokyo_shinjuku/Ibis_tokyo_shinjuku_1.jpg', 5, NULL),
(1985, 8, 'Shinjuku/Hotel/Ibis_tokyo_shinjuku/Ibis_tokyo_shinjuku_2.jpg', 6, NULL),
(1986, 8, 'Shinjuku/Hotel/Ibis_tokyo_shinjuku/Ibis_tokyo_shinjuku_3.jpg', 7, NULL),
(1987, 8, 'Shinjuku/Hotel/Ibis_tokyo_shinjuku/Ibis_tokyo_shinjuku_4.jpg', 8, NULL),
(1988, 8, 'Shinjuku/Hotel/Rose_Garden/Rose_Garden_1.jpg', 9, NULL),
(1989, 8, 'Shinjuku/Hotel/Rose_Garden/Rose_Garden_2.jpg', 10, NULL),
(1990, 8, 'Shinjuku/Hotel/Rose_Garden/Rose_Garden_3..jpg', 11, NULL),
(1991, 8, 'Shinjuku/Hotel/Rose_Garden/Rose_Garden_4.jpg', 12, NULL),
(1992, 8, 'Shinjuku/shinjuku.jpg', 13, NULL),
(1993, 8, 'Shinjuku/shinjuku_1.jpg', 14, NULL),
(1994, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai.jpg', 61, NULL),
(1995, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai_1.jpg', 61, NULL),
(1996, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai_2.jpg', 61, NULL),
(1997, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai_3.jpg', 61, NULL),
(1998, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai_4.jpg', 61, NULL),
(1999, 8, 'Shinjuku/lieux_visiter/Golden_Gai/Golden_Gai_5.jpg', 61, NULL),
(2000, 8, 'Shinjuku/lieux_visiter/Jardin_Imperial/Jardin_Imperial.jpg', 62, NULL),
(2001, 8, 'Shinjuku/lieux_visiter/Jardin_Imperial/Jardin_Imperial_1.jpg', 62, NULL),
(2002, 8, 'Shinjuku/lieux_visiter/Jardin_Imperial/Jardin_Imperial_2.jpg', 62, NULL),
(2003, 8, 'Shinjuku/restaurant/Ishikawa/Ishikawa_1.jpg', 68, NULL),
(2004, 8, 'Shinjuku/restaurant/Ishikawa/Ishikawa_2.jpg', 68, NULL),
(2005, 8, 'Shinjuku/restaurant/Ishikawa/Ishikawa_3.jpg', 68, NULL),
(2006, 8, 'Shinjuku/restaurant/Ishikawa/Ishikawa_4.jpg', 68, NULL),
(2007, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami.jpg', 71, NULL),
(2008, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_1.jpg', 71, NULL),
(2009, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_2.jpg', 71, NULL),
(2010, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_3.jpg', 71, NULL),
(2011, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_4.jpg', 71, NULL),
(2012, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_5.jpg', 71, NULL),
(2013, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_6.jpg', 71, NULL),
(2014, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_7.jpg', 71, NULL),
(2015, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_8.jpg', 71, NULL),
(2016, 6, 'Tsukiji/hotel/APA_Hotel_Tsukiji_eki_Minami/APA_Hotel_Tsukiji_eki_Minami_9.jpg', 71, NULL),
(2017, 6, 'Tsukiji/hotel/first_cabin/first_cabin.jpg', 72, NULL),
(2018, 6, 'Tsukiji/hotel/first_cabin/first_cabin_1.jpg', 72, NULL),
(2019, 6, 'Tsukiji/hotel/first_cabin/first_cabin_2.jpg', 72, NULL),
(2020, 6, 'Tsukiji/hotel/first_cabin/first_cabin_3.jpg', 72, NULL),
(2021, 6, 'Tsukiji/hotel/first_cabin/first_cabin_4.jpg', 72, NULL),
(2022, 6, 'Tsukiji/hotel/Tsukiji_Business_Hotel_Ban/Tsukiji_Business_Hotel_Ban.jpg', 73, NULL),
(2023, 6, 'Tsukiji/hotel/Tsukiji_Business_Hotel_Ban/Tsukiji_Business_Hotel_Ban_1.jpg', 73, NULL),
(2024, 6, 'Tsukiji/hotel/Tsukiji_Business_Hotel_Ban/Tsukiji_Business_Hotel_Ban_2.jpg', 73, NULL),
(2025, 6, 'Tsukiji/hotel/Tsukiji_Business_Hotel_Ban/Tsukiji_Business_Hotel_Ban_3.jpg', 73, NULL),
(2026, 6, 'Tsukiji/hotel/Tsukiji_Business_Hotel_Ban/Tsukiji_Business_Hotel_Ban_4.jpg', 73, NULL),
(2027, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2028, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2029, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2030, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2031, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2032, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2033, 6, 'Tsukiji/lieux_visiter/jardin_Hama_Rikyu/jardin Hama-Riky', 74, NULL),
(2034, 4, 'Ueno/hotel/Mitsui_Garden_Hotel_Ueno/Mitsui_Garden_Hotel_Ueno.jpg', 36, NULL),
(2035, 4, 'Ueno/hotel/Mitsui_Garden_Hotel_Ueno/Mitsui_Garden_Hotel_Ueno_1.jpg', 36, NULL),
(2036, 4, 'Ueno/hotel/Mitsui_Garden_Hotel_Ueno/Mitsui_Garden_Hotel_Ueno_2.jpg', 36, NULL),
(2037, 4, 'Ueno/hotel/Sakura_Ryokan/Sakura_Ryokan.jpg', 35, NULL),
(2038, 4, 'Ueno/hotel/Sakura_Ryokan/Sakura_Ryokan_1.jpg', 35, NULL),
(2039, 4, 'Ueno/hotel/Sakura_Ryokan/Sakura_Ryokan_3.jpg', 35, NULL),
(2040, 4, 'Ueno/hotel/Sutton_Place_Hotel_Ueno/Sutton_Place_Hotel_Ueno.jpeg', 34, NULL),
(2041, 4, 'Ueno/hotel/Sutton_Place_Hotel_Ueno/Sutton_Place_Hotel_Ueno_1.jpg', 34, NULL),
(2042, 4, 'Ueno/hotel/Sutton_Place_Hotel_Ueno/Sutton_Place_Hotel_Ueno_2.jpg', 34, NULL),
(2043, 4, 'Ueno/lieux_visiter/Musee_national_de_Tokyo/Musee_national_Tokyo.jpg', 40, NULL),
(2044, 4, 'Ueno/lieux_visiter/Musee_national_de_Tokyo/Musee_national_Tokyo_1.jpg', 40, NULL),
(2045, 4, 'Ueno/lieux_visiter/Musee_national_de_Tokyo/Musee_national_Tokyo_2.jpg', 40, NULL),
(2046, 4, 'Ueno/lieux_visiter/Parc_de_Ueno/Parc_Ueno.jpg', 37, NULL),
(2047, 4, 'Ueno/lieux_visiter/Parc_de_Ueno/Parc_Ueno_1.jpg', 37, NULL),
(2048, 4, 'Ueno/lieux_visiter/Parc_de_Ueno/Parc_Ueno_2.jpg', 37, NULL),
(2049, 4, 'Ueno/lieux_visiter/Temple_Kan_eiji/Temple_Kan_eiji.jpg', 39, NULL),
(2050, 4, 'Ueno/lieux_visiter/Temple_Kan_eiji/Temple_Kan_eiji_2.jpg', 39, NULL),
(2051, 4, 'Ueno/restaurant/Hanada_Uenoten/Hanada_Uenoten.jpg', 30, NULL),
(2052, 4, 'Ueno/restaurant/Hanada_Uenoten/Hanada_Uenoten_1.jpg', 30, NULL),
(2053, 4, 'Ueno/restaurant/Keijouen/Keijouen.jpg', 32, NULL),
(2054, 4, 'Ueno/restaurant/Keijouen/Keijouen_1.jpg', 32, NULL),
(2055, 4, 'Ueno/restaurant/Yamabe_Uenoten/Yamabe_Uenoten.jpg', 31, NULL),
(2056, 4, 'Ueno/restaurant/Yamabe_Uenoten/Yamabe_Uenoten_1.jpg', 31, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `quarter`
--

CREATE TABLE IF NOT EXISTS `quarter` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `description` mediumtext
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `quarter`
--

INSERT INTO `quarter` (`id`, `name`, `type`, `description`) VALUES
(1, 'Akihabara', 'Geek - Otaku - Commerce', 'Akihabara (秋葉原) est un quartier de Tokyo situé à cheval sur les arrondissements de Chiyoda et de Taitō. Il est célèbre pour ses très nombreuses boutiques d''électronique et pour les mangas qui s''y trouvent. Il est connu dans le monde sous le nom de Akihabara Electric Town (秋葉原電気街, Akihabara denki-gai?). Le centre de ce quartier est la gare d''Akihabara.\r\nAprès un terrible incendie qui dévasta une grande partie de Tokyo en 1870, les autorités décidèrent de créer une zone défrichée au nord-est du Palais impérial \r\npour le protéger d''un nouveau risque d''incendie. On y construisit un sanctuaire dédié à une divinité protégeant les hommes contre le feu. Au fil du temps,\r\n cette vaste zone inhabitée finit par être envahie par les arbres et à l''automne elle fut bientôt recouverte de feuilles mortes \r\nqui lui donnèrent son nom de « champ de feuilles d''automne » (Akiba-no-hara)1\r\n\r\nLa construction d''une station de métro sur ce site en 1890 lui permit finalement de se développer. Le quartier, détruit pendant la Seconde Guerre mondiale, \r\nfut par la suite investi par des étudiants des environs qui s''installèrent à même la rue ou dans de petites échoppes pour vendre des radios et \r\nautres appareils électriques qu''ils façonnaient avec les surplus que l''armée leur bradait. Ainsi naquit le marché de l''électronique, qui ne cessa de croître, \r\ngrâce notamment au boom de l''électroménager des années 1960, puis de l''informatique dans les années 1980.\r\n\r\nLes trois kanji (caractères japonais d''origine chinoise) qui composent le nom de Akiba-no-hara peuvent aussi se lire Akihabara. \r\nC''est cette dernière lecture, plus courte, qui s''imposa dès le début du siècle – les habitués l''appellent aussi Akiba2.\r\n\r\nLe 8 juin 2008, un déséquilibré blesse 17 personnes, dont 7 mortellement. Cet événement est connu sous le nom de massacre d''Akihabara.'),
(2, 'Ikebukuro', 'Commerce - Spectacle', 'Ikebukuro (池袋) est un quartier fréquenté de Tokyo, principalement actif dans le domaine du commerce, de la restauration et du spectacle. Il est situé dans l''arrondissement de Toshima. La plus grande librairie du Japon, Junkudō, y est implantée à l''est, alors qu''à l''ouest est située l''Université privée Rikkyô (Rikkyô daigaku 立教大学). Il est également le lieu où se déroule l''action des séries TV et manga Ikebukuro West Gate Park et Durarara!!. Un des plus hauts gratte-ciel de Tōkyō, le Sunshine 60, construit dans le complexe Sunshine City1, possède le premier aquarium construit dans ce type d''immeuble.'),
(3, 'Harajuku', 'Otaku - Temple - Commerce', 'Harajuku (原宿) fait partie du quartier de Shibuya à Tokyo et est situé sur la partie ouest de la ligne Yamanote, du réseau JR Est, entre les stations de Shinjuku et Shibuya.\r\n\r\nLes samedi et dimanche on y voit généralement des adeptes de la mode Lolita, des jeunes gens habillés en chanteur de rock ou en Visual Kei, et, des cosplayers déguisés en personnage de manga, d''anime ou de jeux vidéo.\r\n\r\nLe quartier d''Harajuku est également connu pour abriter l''un des plus célèbres sanctuaires shintoïste, le Meiji Jingū, au milieu du Parc Yoyogi, une forêt artificielle plantée vers 1920.\r\n\r\nLa célèbre avenue Omotesandō, les « Champs-Élysées » de Tokyo, relie Harajuku à Aoyama. L''autre rue connue du quartier est Takeshita-dōri, elle concentre un grand nombre de boutiques qui habillent entre autres les Gothic Lolita, les Cosplay, les Pink, les Sweet Lolita.\r\n\r\nCe quartier est fréquenté par un grand nombre de jeunes qui profitent du week-end, durant lequel ils n''ont pas l''obligation de porter l''habituel uniforme, pour se distinguer par leur style vestimentaire. De célèbres groupes de Visual Kei approvisionnent leurs garde-robes à Harajuku, tels que X Japan, Dir en Grey, AnCafe, etc. Ces modes vestimentaires sont ensuite reprises par les adolescents.'),
(4, 'Ueno', 'Zoo - Temple - Parc', 'Le vaste Parc d''Ueno comprend un grand zoo, plusieurs temples (notamment le Bentendo et Tōshōgū) et des musées dont le Musée national de Tōkyō. De nombreux sans-abris habitent également dans le parc.\r\n\r\nEn contrebas du parc se trouve un étang le Shinobazu no Ike (不忍池?), ou les Tokyoites peuvent faire du pédalo. Ueno est proche d''Asakusa, que l''on peut rejoindre par la rue Kappabashi.\r\n\r\nLa gare d''Ueno est située sur de nombreuses lignes ferroviaires dont la célèbre ligne Yamanote du réseau JR East. C''est l''un des arrêts de ligne Shinkansen Tōhoku, ce qui permet de relier la gare avec le nord du pays. La gare d''Ueno est également desservie par le métro de Tokyo (lignes Ginza et Hibiya).\r\n\r\nÀ proximité, la gare de Keisei Ueno est le point de départ des trains Skyliner vers l''aéroport international de Narita.'),
(5, 'Asakusa', 'Temple - Commerce', 'Asakusa est connu des touristes pour son temple bouddhiste, le Sensō-ji (浅草寺?), dédié à la déesse bodhisattva Kannon. Le temple avec sa pagode à cinq étages, se trouve au bout d''une grande allée commerçante, et, dans tout le quartier se trouve un grand nombre de petites boutiques et restaurants.\r\n\r\nUn peu excentré par rapport au reste de la ville (et surtout son centre très vivant et moderne dont Shinjuku, Shibuya et Roppongi sont les quartiers les plus représentatifs), Asakusa n''en demeure pas moins un quartier très prisé des touristes : on y trouve de nombreux hôtels, dont la plupart sont moins chers qu''ailleurs en ville, et les restaurants et petites échoppes artisanales sont nombreux et accueillent volontiers (si ce n''est en priorité) les touristes.\r\n\r\nC''est ici qu''il faut se rendre pour visiter les boutiques d''ustensiles de cuisine, fréquenté à la fois par les professionnels de la restauration, et par le badaud désireux de ramener un souvenir typique du Japon: céramiques, bols, baguettes, théière, verres etc. il y a un choix très impressionnant de produits. C''est également dans cette rue que se trouvent les boutiques de faux aliments en cire, ça vaut le détour. Mais attention, ces représentations impérissables et très réalistes sont bien plus chers que leurs originaux périssables.\r\n\r\nSur le toit d''un building situé de l''autre côté du fleuve Sumida, se trouve la flamme de l''immeuble de la brasserie Asahi conçue par Philippe Starck. Bien qu''elle fût censée à l''origine représenter à la fois une bulle de bière qui s''élève et une flèche pointée vers l''avenir, les japonais la voient en général comme une grande crotte de chien... : la ville n''a pas autorisé son positionnement vertical, considérant que l''ensemble dépassait les hauteurs autorisées de l''époque, la statue est restée ainsi couchée depuis.'),
(6, 'Tsukiji', 'Marché aux poissons', 'Tsukiji (築地) est un quartier de l''arrondissement Chūō-ku à Tokyo, situé au niveau de l''embouchure du fleuve Sumida-gawa vers la baie de Tokyo.\r\n\r\nL''endroit est fortement connu pour le célèbre marché aux poissons de Tsukiji, le plus grand marché aux poissons du monde.\r\n\r\nTsukiji, qui veut littéralement dire « terre-plein », est un terrain gagné sur la mer dans les années 1700, durant l''époque d''Edo.\r\n\r\nIl y a également un quartier appelé Tsukiji dans les villes de Kōbe et d''Amagasaki dans la Préfecture de Hyōgo.'),
(7, 'Roppongi', 'Vie nocturne - Parc - Commerce', 'Roppongi (六本木) est un district de l''arrondissement de Minato de la ville de Tokyo, au Japon. Il est connu par sa vie nocturne et la présence de touristes étrangers et expatriés, bien que la majorité des visiteurs soient japonais. Il est situé dans la portion sud du cercle décrit par la ligne circulaire Yamanote, au sud d''Akasaka et au nord de Azabu.'),
(8, 'Shinjuku', 'Affaire - Commerce', 'Shinjuku est l''arrondissement de Tokyo comptant le plus grand nombre d''étrangers. Au 1er octobre 2005, on en comptait 29 353 de 107 nationalités différentes.[réf. nécessaire] Il s''agit d''abord de ressortissants de Corée (du Nord et du Sud), de Chine, de France, de Birmanie et des Philippines.\r\n\r\nDe façon plus restreinte, Shinjuku est un quartier situé autour de la gare de Shinjuku. C''est l''un des quartiers les plus animés de Tokyo, mais aussi un haut lieu des affaires abritant le siège de nombreuses grandes sociétés. La plupart des grands magasins japonais (Isetan, Keiō, Odakyu, Marui, Mitsukoshi, Seibu, Takashimaya et Tōkyū) sont présents à Shinjuku. On y trouve aussi des cinémas, restaurants, bars, et des hôtels internationaux.'),
(9, 'Shibuya', 'Mode', 'Shibuya (渋谷区) est un des 23 arrondissements spéciaux (区, ku?) formant Tokyo, au Japon. La population de l''arrondissement est de 208 371 habitants pour une superficie de 15,11 km2 (2008).\r\n\r\nEn même temps qu''au nom de l''arrondissement, le nom Shibuya se rapporte à la gare et au quartier d''affaires autour de la gare. La gare de Shibuya est une des plus fréquentées dans la région de Tokyo. L''arrondissement de Shibuya est connu comme un centre de la mode et c''est un quartier bien animé. Un symbole de ce quartier pour les jeunes est la tour 109 qui renferme une centaine de boutiques consacrées aux dernières tendances de la mode.');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `email`, `password`) VALUES
(1, 'Iskandir', 'manalegende2@gmail.com', 'iskandir13');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_comment_quarter1_idx` (`quarter_id`), ADD KEY `fk_comment_info1_idx` (`info_id`), ADD KEY `fk_comment_user1_idx` (`user_id`), ADD KEY `fk_comment_photo1_idx` (`photo_id`);

--
-- Index pour la table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_info_quarter_idx` (`quarter_id`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_photo_info1_idx` (`info_id`), ADD KEY `fk_photo_quarter1_idx` (`quarter_id`), ADD KEY `fk_photo_user1_idx` (`user_id`);

--
-- Index pour la table `photo.bkp`
--
ALTER TABLE `photo.bkp`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_photo_info1_idx` (`info_id`), ADD KEY `fk_photo_quarter1_idx` (`quarter_id`), ADD KEY `fk_photo_user1_idx` (`user_id`);

--
-- Index pour la table `photo.bkp2`
--
ALTER TABLE `photo.bkp2`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_photo_info1_idx` (`info_id`), ADD KEY `fk_photo_quarter1_idx` (`quarter_id`), ADD KEY `fk_photo_user1_idx` (`user_id`);

--
-- Index pour la table `quarter`
--
ALTER TABLE `quarter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2631;
--
-- AUTO_INCREMENT pour la table `photo.bkp`
--
ALTER TABLE `photo.bkp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT pour la table `photo.bkp2`
--
ALTER TABLE `photo.bkp2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2057;
--
-- AUTO_INCREMENT pour la table `quarter`
--
ALTER TABLE `quarter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
ADD CONSTRAINT `fk_comment_info1` FOREIGN KEY (`info_id`) REFERENCES `info` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_comment_photo1` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_comment_quarter1` FOREIGN KEY (`quarter_id`) REFERENCES `quarter` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_comment_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `info`
--
ALTER TABLE `info`
ADD CONSTRAINT `fk_info_quarter` FOREIGN KEY (`quarter_id`) REFERENCES `quarter` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
ADD CONSTRAINT `fk_photo_info1` FOREIGN KEY (`info_id`) REFERENCES `info` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_photo_quarter1` FOREIGN KEY (`quarter_id`) REFERENCES `quarter` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_photo_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
