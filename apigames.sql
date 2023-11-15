-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 04:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apigames`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_games`
--

CREATE TABLE `about_games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idgame` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjelasan` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_games`
--

INSERT INTO `about_games` (`id`, `idgame`, `gambar`, `judul`, `penjelasan`, `info`, `created_at`, `updated_at`) VALUES
(3, '8686', 'hZGU1NfTxbRvU6EWXH6sMjt2ciYgE9FPhYswxos2.jpg', 'ironnn', 'muyais', 'lorem ipsum dolar aset ikaris leni rawrr', '2023-10-16 23:13:33', '2023-10-16 23:13:33'),
(4, '8686', 'hZGU1NfTxbRvU6EWXH6sMjt2ciYgE9FPhYswxos2.jpg', 'jmdkjddkj', 'djwjnddjn', 'jndwjndwjn', '2023-10-16 23:13:33', '2023-10-16 23:13:33'),
(5, '8686', 'hZGU1NfTxbRvU6EWXH6sMjt2ciYgE9FPhYswxos2.jpg', 'ironnn', 'muyais', 'lorem ipsum dolar aset ikaris leni rawrr', '2023-10-16 23:13:33', '2023-10-16 23:13:33'),
(39, '99359', '6VMp5GJMB1yeI7cQfgS097rEExlSe94UULmoF3hS.jpg', 'EPIC COMBAT', 'STRATEGIC SQUAD PLAY', 'Whether you\'re battling on a massive floating city in Battle Royale or dueling in limited-time modes. you\'ll need to think fast Master your Legend\'s unique abilities and coordinate with your teammates to discover new tactics and powerful combination.', '2023-11-01 02:07:04', '2023-11-01 02:07:04'),
(40, '99359', 'NWdmGMvYbEPTZduTtzn8vx1ydSkl6GIfzOKlYhX4.jpg', 'MAKE EXPLORE', 'INNOVATIVE COMBAT', 'Master an expanding assortment of powerful weapons and equipment You\'ll need to move fast and learn the rhythms for each weapon to get the most of your arsenal Plus change it up with a boatload of new content each season.', '2023-11-01 02:07:05', '2023-11-01 02:07:05'),
(41, '99359', '2v0MldHQXePHCrbXQiVwbluEySSpt7GIpZLgejbH.jpg', 'HARDCORE BATTLE', 'APEX LEGENDS HARDCORE', 'combat with the hardcore Battle Royale and super power skils on every character', '2023-11-01 02:07:06', '2023-11-01 02:07:06'),
(42, '99359', '4TA9Zet9oKpM0ObrHBLlyR9lt8EqouJWklndMXD5.jpg', 'GREATEST MAP', 'EVER-EXPANDING UNIVERSE', 'Apex Legends takes place an in immersive universe where the story continues to evlove, maps change, and new Legends keep joining the fight Make your mark on the Apex Games with a multitude of distinctive outfis and join the adventure', '2023-11-01 02:07:06', '2023-11-01 02:07:06'),
(43, '99359', 'tXzAN5GFYPy6m7Vvyeo1kFNcbcXV97YuZWNRITgm.jpg', 'MAKE EXPLORE', 'INNOVATIVE COMBAT', 'Master an expanding assortment of powerful weapons and equipment You\'ll need to move fast and learn the rhythms for each weapon to get the most of your arsenal Plus change it up with a boatload of new content each season.', '2023-11-01 02:08:32', '2023-11-01 02:08:32'),
(44, '99359', 'qSuEglOFmZBMs4gM1jkNk5GeADoAzt9SO4qXhuTd.jpg', 'EPIC COMBAT', 'STRATEGIC SQUAD PLAY', 'Whether you\'re battling on a massive floating city in Battle Royale or dueling in limited-time modes. you\'ll need to think fast Master your Legend\'s unique abilities and coordinate with your teammates to discover new tactics and powerful combination.', '2023-11-01 02:08:33', '2023-11-01 02:08:33'),
(45, '99359', 'BJa1TdABRYKNsXOhbPjlR81Zc7dcrHeixXe1V6uV.jpg', 'HARDCORE BATTLE', 'APEX LEGENDS HARDCORE', 'combat with the hardcore Battle Royale and super power skils on every character', '2023-11-01 02:08:34', '2023-11-01 02:08:34'),
(46, '99359', 'pIgC230ZloVDjP3T7EF4zVQB9AMhp4BtYy6jHvRs.jpg', 'GREATEST MAP', 'EVER-EXPANDING UNIVERSE', 'Apex Legends takes place an in immersive universe where the story continues to evlove, maps change, and new Legends keep joining the fight Make your mark on the Apex Games with a multitude of distinctive outfis and join the adventure', '2023-11-01 02:08:34', '2023-11-01 02:08:34'),
(51, '19856', '5bvanM423NQlbGDYrNpsC0R1u6RFShQ6gBmxsuos.jpg', 'EPIC COMBAT', 'STRATEGIC SQUAD PLAY', 'Whether you\'re battling on a massive floating city in Battle Royale or dueling in limited-time modes. you\'ll need to think fast Master your Legend\'s unique abilities and coordinate with your teammates to discover new tactics and powerful combination.', '2023-11-01 02:14:41', '2023-11-06 18:10:43'),
(52, '19856', 'VhMK4JCeGs8z00jOGjvpbH1ROX6k9bip1kGxxiI4.jpg', 'MAKE EXPLORE', 'INNOVATIVE COMBAT', 'Master an expanding assortment of powerful weapons and equipment You\'ll need to move fast and learn the rhythms for each weapon to get the most of your arsenal Plus change it up with a boatload of new content each season.', '2023-11-01 02:14:42', '2023-11-01 02:14:42'),
(53, '19856', 'sBXskRzrI3IjyHkiNJJtUib6I7gVEaogSzNT3flt.jpg', 'HARDCORE BATTLE', 'APEX LEGENDS HARDCORE', 'combat with the hardcore Battle Royale and super power skils on every character', '2023-11-01 02:14:42', '2023-11-01 02:14:42'),
(54, '19856', 'VOPp8qhj59uKivmYQW7pVTY6loV0sj6sPGhftIss.jpg', 'GREATEST MAP', 'EVER-EXPANDING UNIVERSE', 'Apex Legends takes place an in immersive universe where the story continues to evlove, maps change, and new Legends keep joining the fight Make your mark on the Apex Games with a multitude of distinctive outfis and join the adventure', '2023-11-01 02:14:43', '2023-11-01 02:14:43'),
(72, '57329', 'r6H3kgYPRiWvbeCG0YJ5grkgu79h2kRj89TrIIaq.jpg', 'GAMEPLAY', 'DENGAN KECEPATAN TINGGI DAN PERLAWANAN YANG KUAT!', 'Kecepatan tinggi dan perlawanan kuat yang bias dirasakan melalui jari Anda. Dengan menggnakan engine I-Cube Zepetto, Anda dapat merasakan battlefield yang realistis walau menggunakan PC dengan spec rendah', '2023-11-01 04:09:55', '2023-11-01 04:09:55'),
(73, '57329', '9yt1xccIzcXZXE2RjgJzCToHpXVb4rHQKdqZNadf.jpg', 'EVENT', 'KOMPETISI E-SPORTS GLOBAL YANG DAPAT DIMAINKAN OLEH USER DI SELURUH DUNIA', 'Sistem nickname yang unik, sistem level up pribadi, servis clan Kompetisi e-sports global (PBWC/ PBIC/ PBIWC) setiap tahun yang menandingkan seluruh perwakilan pemain ditiap negara', '2023-11-01 04:10:26', '2023-11-01 04:10:26'),
(74, '57329', 'oSdF2sqkQDdQt07275ou42LAa4Z1BDxtleBwSyZV.jpg', 'GAMEMODE AND MAPS', 'MODE DAN MAP YANG BERVARIASI', 'Berbagai macam game mode dan mission seperti, solo, multi-player, destroy mission, bomb mission, challenge mode, dll. Map yang bervariasi dengan rute yang bermacam-macam untuk menyerang lawan dengan background yang realistis. Memperluas koleksi senjata da', '2023-11-01 04:10:27', '2023-11-01 04:10:27'),
(75, '57329', 'C2F8pMRw7zo52dxKZsJV042LRUEcEZi7HMUVklZn.jpg', 'IN GAME', 'PERTEMPURAN YANG REALISTIS!', 'Memaksimalkan pertempuran realistis dengan memberikan fitur kehancuran mobil, kehancuran objek sekitar, dan pergerakan objek. Beragam strategi bermain dengan menggunakan latar objek sekitar yang bergerak dan berubah seiring waktu.', '2023-11-01 04:10:27', '2023-11-01 04:10:27'),
(96, '45821', 'eXQ40b2P5fArYjl5oSURe5hDBEA3WZpAXw73gkBq.jpg', 'GAMEPLAY', 'COLOURFUL MAPS', 'Smoke now has the ability to interact with other gameplay events, creating new opportunities. Bullets and HE grenades can push smoke to briefly clear sightlines or expand occlusion.', '2023-11-01 23:22:48', '2023-11-01 23:22:48'),
(97, '45821', 'DoCGwo9yPKloV9dL8p96kGHQ3kAQfSfLE8QSeuNb.jpg', 'OBJECT', 'EXPAND TO FILL SPACE NATURALLY', 'Now the smoke will seep out of opened doorways and broken windows, go down and up stairs, as well as expand in long corridors and combine with other smokes.', '2023-11-01 23:22:48', '2023-11-01 23:22:48'),
(98, '45821', 'm73lZD4Z1gKsLywGX65LUVPTJV6T6rWZlSojXrST.jpg', 'SMOKE', 'RESPONSIVE SMOKE', 'Smoke Grenades are now dynamic volumetric objects that interact with the environment, and react to lighting, gunfire, and explosions.', '2023-11-01 23:22:49', '2023-11-01 23:22:49'),
(99, '45821', '6XQBwGS9c83k2kA9CfveWajV3OT1ivcdOfCedYe0.jpg', 'LIGHTING', 'REACTS TO LIGHTING', 'In Counter-Strike 2 smoke particles work with the unified lighting system allowing for more realistic light and color.', '2023-11-01 23:22:49', '2023-11-01 23:22:49'),
(125, '79897', 'xLdnTa8kGBskcOaO4dX3kgMIU9b6a5NOQQKkEwIK.jpg', 'GAMEPLAY', 'ADVENTURE SURVIVAL HORROR WITH INDONESIAN SUPERNATURAL', 'Mixed gameplay of city exploring, “DreadOut” style smartphone ghost hunting and new action packed battle within DreadOut supernatural world.', '2023-11-03 22:40:08', '2023-11-03 22:40:08'),
(126, '79897', 'teB3lZ3WVWBsVh7LqmXY8XwyKX0JBLDCOqqd8wc3.jpg', 'FANTASY', 'ACTION FANTASY HORROR', 'Delve deeper in DreadOut supernatural world with new action packed battle mechanic. Battle hideous bosses that roamed in the supernatural world. Consume demon\'s spirits and absorb their dozen unique abilities/weapons at your disposal.', '2023-11-03 22:40:09', '2023-11-03 22:40:09'),
(127, '79897', 'uWTwwrg6qDjsRIeumCkyeBOmDA3Jh26RVqMmxJGw.jpg', 'SURVIVAL', 'NON LINEAR SURVIVAL HORROR', 'Explore sleepy lil\' town, night and day to solve terrifying urban legends that haunt within. Interact with various unique NPCs and tons of side-quests. Banish ghost with smart-phone equipped in classic DreadOut style.', '2023-11-03 22:40:09', '2023-11-03 22:40:09'),
(128, '79897', 'CAKsfDe4FEQ0FcFsMKKBk19tjDMZ0EsvNqj5kl54.jpg', 'MAPS', 'COMES WITH MAPS THAT ARE NUANCED IN INDONESIA', 'What is there, though, is pretty well done, and it’s clear that the folks at Digital Happiness spent a lot of time on everything. The visuals, while obviously not up to the level of a triple-A PC game, are pretty damn impressive for an indie outfit, and aside from the occasional buggy or unrealistic looking animation, they’re good enough to make the whole game feel real.', '2023-11-03 22:40:09', '2023-11-03 22:40:09'),
(129, '29432', 'Ie3WURr4tsJ7o1M56mPLoOnU80zB3QuQaTEyOwIf.jpg', 'GAMEPLAY', 'WHAT ABOUT FARM', 'Farm. Decorate. Craft. Explore. Relax. Your future—and the future of Coral Island—is what you make of it.', '2023-11-03 22:49:40', '2023-11-03 22:49:40'),
(130, '29432', 'xAnSSt7uXNf2MyGIAJWDJaJXHnDXhXAJBCZAa5GD.jpg', 'MAKE FARM', 'BUILD YOUR OWN FARM', 'Transform your overrun land on Coral Island into a lush and lively dreamscape—you decide what to build, what crops to grow, and which animals you’d like to tend.', '2023-11-03 22:49:40', '2023-11-03 22:49:40'),
(131, '29432', 'A3pHUmLfI81NEVnwzER4sNVJVi1mpDPmqh2anBKj.jpg', 'STORY', 'WRITE YOUR OWN STORY', 'On Coral Island, the story changes with each passing season, but life just goes with the flow. Spend your days exploring, or find that special someone in town to build a life together. Save the seas, brave monster-filled caverns, or focus on perfecting your farm. It’s all up to you.', '2023-11-03 22:49:41', '2023-11-03 22:49:41'),
(132, '29432', 'rIiPpi71YjYF2ik0oKw1D2ztZbawhEjzzpaKUnEp.png', 'MAKE FRIEND', 'BEFRIEND A DISERVE CAST OF ISLANDERS', 'Get to know the 70+ characters from all walks of life who live on Coral Island. Converse with them, find out more about their interests, and try to impress them with just the right gift.', '2023-11-03 22:49:41', '2023-11-03 22:49:41'),
(133, '11633', 'uW0R2mIZK5lZijlxBS8W485sG2UXUSpjt7Fv5gaq.jpg', 'ENDINGS', 'MULTIPLE ENDINGS', 'Having second thoughts? You can run away the instant you arrived. Or do you wish to quickly sell the house without disturbing the entity that lingers in it? Or rather arrogantly explore and seek the entity? In Pamali, you\'ll be able to take decisions that will impact the experience and the ending. If you were in that situation, what would you do?', '2023-11-03 22:57:34', '2023-11-03 22:57:34'),
(134, '11633', 'MiLIeBeZ2PalAqqxI2x7saFbzmoJ5mMnaiu3fEDO.jpg', 'STORY', 'FOLKLORE ONE: THE WHITE LADY', 'A young man named Jaka has just gone back to his hometown to sell his old family house. While he is unpacking, cleaning, and renovating the house, he disregards many of his family’s old belongings and creates rude remarks. Not long after, he experiences mysterious and unexplained events. He eventually learns that the family has a secret and that he is not the only one in the empty house.', '2023-11-03 22:57:34', '2023-11-03 22:57:34'),
(135, '11633', 'Nerh1cnIaqkzXKPhxKyo5zG7wQs8RYjEMK9XGZ0M.jpg', 'ITEM OBJECT', 'OBJECT INTERACTION', 'Interact with various objects within the house. You could also speak out your thoughts. Found an interesting painting? You can either praise it or mock it instead. Be wary of your choices, what you do, see or say will lead you to a unique take on the world in each repeatable playthrough.', '2023-11-03 22:57:35', '2023-11-03 22:57:35'),
(136, '11633', '9epa4QhUbJ7N7YNtvuRjbuVa8aoEkhwtnnFOiT7r.jpg', 'STORY MAP', 'A HAUNTED HOUSE', 'Explore an abandoned Indonesian house with a spine-chilling atmosphere. Seek deeper into the house to find out more about an unsettling truth about the family. Be careful not to disrespect the mystical being that resides there.', '2023-11-03 22:57:35', '2023-11-03 22:57:35'),
(137, '85455', 'BVozVIGLoYrTZfvPjBxbFCAi9ETenmpY68tqtEjh.jpg', 'SWIFTPLAY', 'SWIFTPLAY MATCHES', '10 players are split into 2 teams, attackers and defenders. Attackers must plant the spike while the Defenders must stop them. What differs Swiftplay to Unrated is that it is best to 9 rounds - the first team to win 5 rounds wins the match. On round 4, the team\'s players switch, as they would do in round 7 in the Unrated game mode.', '2023-11-03 23:21:40', '2023-11-03 23:21:40'),
(138, '85455', '8huhUvJzokBtPWRpXn6gejwPJ0QBkiYJPXUZl0I2.jpg', 'GAMEPLAY', 'VALORANT BASED ON FPS GAME', 'set in the near future. Players play as one of a set of Agents, characters based on several countries and cultures around the world. In the main game mode, players are assigned to either the attacking or defending team with each team having five players on it. Agents have unique abilities, each requiring charges, as well as a unique ultimate ability that requires charging through kills, deaths, orbs, or objectives. Every player starts each round with a \"classic\" pistol and one or more \"signature ability\" charges', '2023-11-03 23:21:41', '2023-11-03 23:21:41'),
(139, '85455', 'tWzenWzhB6zmh1YG8ysQMNxdjmFvDJv37fBpmeGG.jpg', 'SPIKE RUSH', 'SPIKE RUSH MODE', 'the match is played as best of 7 rounds - the first team to win 4 rounds wins the match. Players begin the round with all abilities fully charged except their ultimate, which charges twice as fast as in standard games.', '2023-11-03 23:21:56', '2023-11-03 23:21:56'),
(140, '85455', 'Joc4jx7yUQcFX7vbKS3edXFuw8tE4TlSKcqTWFgA.jpg', 'UNRATED', 'STANDARD NON-RANKED MODE', 'the match is played as best of 25 - the first team to win 13 rounds wins the match. The attacking team has a bomb-type device called the Spike. They must deliver and activate the Spike on one of the multiple specified locations (bomb sites). If the attacking team successfully protects the activated Spike for 45 seconds it detonates,', '2023-11-03 23:21:57', '2023-11-03 23:21:57'),
(153, '69882', 'gHjGlOWhCzduCl71qdZabmvK6ExYVjrW0XW7mQFY.jpg', 'judul', 'judul', 'crossplay', '2023-11-05 22:53:42', '2023-11-05 22:53:42'),
(154, '69882', 'Ln07VS0xrU1OLyxl2LFd7HzHhX8JZLLsnJVSOEzW.jpg', 'judul', 'judul', 'f2p', '2023-11-05 22:53:43', '2023-11-05 22:53:43'),
(155, '69882', 'tKUHYMngLPwKodhblylMLkKZV8EPN6OYTkuNGfYr.jpg', 'judul', 'judul', 'role', '2023-11-05 22:53:43', '2023-11-05 22:53:43'),
(156, '69882', 'caUPkluHf4ntmYpFksaDOAuoPhh0qCFvDvF2rE28.jpg', 'judul 1', 'jdul', 'heroes', '2023-11-05 22:53:43', '2023-11-05 22:53:43'),
(157, '24488', 'dQMegBWJEnu8lqYf4d7OKYM3KIWthq5ROsZFaaf8.jpg', 'F2P', 'Free To Play', 'Overwatch 2 is a free-to-play, always-on, and ever-evolving live game. Team up with friends regardless of platform and jump into the reimagined PvP experience.', '2023-11-05 22:55:22', '2023-11-06 18:21:29'),
(158, '24488', 'avzC29EIcIdqgTa8E5CD0s2xjtWtkryOeoCcxHsu.jpg', 'HEROES', 'ALL-NEW HEROES', 'More extraordinary heroes will join the current roster. Whether you like to lead the charge, ambush enemies, or aid your allies, there’s a new hero for you.', '2023-11-05 22:55:22', '2023-11-06 18:22:17'),
(159, '24488', 'mQBmFk5QyrMhxpgaF0pzBC8sLaIk4lr9f0ybiAOf.jpg', 'ROLE', 'CRITICALLY-ACCLAIMED ACTION', 'Enjoy high-octane conflict with a fresh lineup of heroes, more maps to explore, and 5v5 combat that gives every player game-changing power.', '2023-11-05 22:55:22', '2023-11-06 18:21:30'),
(160, '24488', 'PhKR9m1xzJvtlEtzZKON11iilCMBypEaK7kfIx2u.jpg', 'CROSS PLATFORM', 'CROSS-PLAY AND PROGRESSION', 'Play across multiple platforms and devices and access your unlocks, progress, and accolades anywhere, any time.', '2023-11-05 22:55:23', '2023-11-06 18:21:29'),
(161, '25306', 'JrQSrpKP7ztK0ncSvOpzIL44cjQZflRh2PJHXZGH.jpg', 'GAMEPLAY', 'PVP GAMES BATTLE', 'Players fight each other on a series of suspended platforms in a variety of environments and under a variety of conditions. Players select one of their heroes to play as upon spawning, but may change their heroes at any time (as long as they are not under attack, are not in the air, and have not lost any of their gear).', '2023-11-05 23:13:23', '2023-11-05 23:13:23'),
(162, '25306', 'q1BaBHEonsmaT5o2KhRb6E5KV4SC0fbfgfUeFotp.jpg', '1v1', 'DUEL BATTLE WITH RANDOM PLAYER', 'Duel mode is now available, and you can try it with other people or with your own friends and where there is a loser that is the victory that will be obtained.', '2023-11-05 23:13:23', '2023-11-05 23:13:23'),
(163, '25306', 'WgHInEwbOsKmXzAOTFuh7O4RVumfjymYzq8YD7kx.jpg', 'PLAY WITH FRIEND', 'BATTLE TEAM WITH FRIENDS', 'You can also invite your friends to join the battle and it could be your friend or opponent later and you can also invite your friends to farm together to complete the available quests', '2023-11-05 23:13:23', '2023-11-05 23:13:23'),
(164, '25306', 'mPjudakRHd3kuP96kRcZDuIZQaC4UpZTVeusQ1kR.jpg', 'EVENT', 'LOST SAGA LOGIN EVENT', 'Check in every day to claim the event prize every day and when you have claimed it, don\'t forget to complete the event quest that is available every day.', '2023-11-05 23:13:23', '2023-11-05 23:13:23'),
(165, '32166', 'dNQhAe83idQhlYI7oZlQRiPYh1jy0J6vMjMa9n6Q.png', 'ZOMBIES', 'ALL NEW OPEN WORLD ZOMBIES', 'For the first time, team up with other squads to survive and fight massive hordes of the undead in the largest Call of Duty Zombies map ever. Call of Duty: Modern Warfare III Zombies (MWZ) tells a new Treyarch Zombies story with missions, core Zombies features, and secrets to discover. Ready up for an open world PvE survival experience against some of the biggest enemies in Call of Duty history', '2023-11-06 18:37:10', '2023-11-06 18:37:10'),
(166, '32166', '6OVeUA084R6LxgUEosrDrBJ9r6y9LsSpV5nHc5Ht.png', 'INSTANTLY UNLOCK', 'ZOMBIES GHOST OPERATOR SKIN', 'Pre-order Modern Warfare III and instantly unlock the Zombie Ghost Operator Skin for Modern Warfare II, Modern Warfare III, and Call of Duty: Warzone.', '2023-11-06 18:37:10', '2023-11-06 18:37:10'),
(167, '32166', '1r9idhOG05KmOwpiKLw6STjZLwxCfd41fRf1IWnS.png', 'MULTIPLAYER', 'IT\'S TIME TO SETTLE OLD SCORES AND START NEW ONES', 'All 16 launch maps from the original Modern Warfare 2 [2009] have been modernized with new modes and gameplay features and will be available at launch to get everyone started, while over 12 all-new core 6v6 maps will fuel post launch live seasons. Modern Warfare III will also launch with new Ground War maps boasting innovative play space and the epic return and evolution of the popular War Mode that first debuted in 2017\'s Call of Duty: WWII.', '2023-11-06 18:37:11', '2023-11-06 18:37:11'),
(168, '32166', 'idLNsr6VHHZdDC07G7AlBv987kf8SMg9yxAxpjkO.png', 'COMING TO MODERN WARFARE III', 'GAMEPLAY FEATURES', 'Carry Forward your MWII inventory into MWIII plus the return of the classic minimap, map voting, a silent movement Perk, updated movement mechanics, and more.', '2023-11-06 18:37:11', '2023-11-06 18:37:11'),
(169, '23498', 'i4zr0xu9l5Qn5OdfM8rHCAsjSQGZL1HWVyHDNoml.jpg', 'MAP', 'WELCOME TO PALM CITY', 'Palm City is a unique street-racer’s paradise. Daytime is a bright sunny, urban environment. The night is a more dangerous neon playground.', '2023-11-06 19:17:31', '2023-11-06 19:17:31'),
(170, '23498', 'Nrvns2JLsoQ6gFLNLLRgVl5DpIE1KMKEpJLQ7xYX.jpg', 'LIMITLESS', 'BURN ALL LIMITS', 'In Need for Speed Heat, the lines of the law fade when the sun starts to set. By daylight, compete in the Speedhunter Showdown, a series of sanctioned events where you can earn Bank to customize your personal fleet of cars. When your ride’s styled just right, ramp up the intensity at night. Enter illicit street races with your die-hard crew but stay ready – rogue cops are waiting. Take chances, burn competitors to increase your Rep, and risk it all for underground glory', '2023-11-06 19:17:31', '2023-11-06 19:17:31'),
(171, '23498', 'fblXN1UGXhaFvAMOZQ8wk7iT4zynl83OYlBSMaL9.jpg', 'COPS', 'ESCAPING THE COPS', 'It takes brains and skill to outmaneuver and outrun the Palm City PD. A quick turn at the right second can send them swerving off in the wrong direction and give you the opening you need to make a hot getaway. Lose all the cops on your tail and you\'re home free. During the day an escape means your Heat goes back to zero, and you\'re no longer Palm City\'s most wanted – at night just make it back to the garage or a safehouse and your accumulated Heat acts as a multiplier on the Rep you\'ll earn.', '2023-11-06 19:17:32', '2023-11-06 19:17:32'),
(172, '23498', 'hxzMjm3YcWwcFBuTmpTpo2fBC6QvjZJ5enK6wkZl.jpg', 'THE CARS', 'MUCH MORE CARS', 'See the full list of dream cars you’ll be customizing, hyper-tuning, and pushing past the limits, rom wild colors to racing stripes to tons of high-performance options, you’ll have everything you need to trick out and tweak your car to match your driving style.', '2023-11-06 19:17:32', '2023-11-06 19:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `idkomen` int(11) NOT NULL,
  `idgame` int(11) NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iduser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `komen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aksi` int(11) NOT NULL,
  `upload` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `idkomen`, `idgame`, `tanggal`, `iduser`, `rate`, `komen`, `aksi`, `upload`, `created_at`, `updated_at`) VALUES
(37, 39995, 19856, '6-11-2023', '7', '4', 'Apex Legend Game  Battle Royale Yang Seru', 0, 1, '2023-11-06 07:05:53', '2023-11-06 07:06:34'),
(38, 71736, 19856, '6-11-2023', '3', '5', 'Game Yang Kerennnn', 0, 1, '2023-11-06 07:07:41', '2023-11-06 07:07:50'),
(39, 69269, 19856, '6-11-2023', '7', '3', 'keren', 0, 1, '2023-11-06 08:33:41', '2023-11-06 08:33:48'),
(40, 82397, 19856, '6-11-2023', '7', '5', 'alskcakjvbcs', 0, 1, '2023-11-06 08:58:24', '2023-11-06 08:58:34'),
(41, 71736, 19856, '6-11-2023', '7', '0', 'SETUJUUU', 1, 1, '2023-11-06 09:54:02', '2023-11-06 09:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gambar_games`
--

CREATE TABLE `gambar_games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idgame` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_preview1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_preview2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_preview3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gambar_games`
--

INSERT INTO `gambar_games` (`id`, `idgame`, `game_preview1`, `game_preview2`, `game_preview3`, `created_at`, `updated_at`) VALUES
(39, '8686', '3lWry15Ed3thh4z2P7NWdOCXfcOQc2al39bW5HrX.jpg', 'CAxkIExzyf7yktt4raAPh9fG78oyUJHhf8kSCbUE.jpg', 'ktun5PsCskvaVbW7dIenydXItocGwC1zKHT5aB28.jpg', '2023-10-16 22:02:39', '2023-10-16 22:02:39'),
(43, '99359', '6UzvMrn1rDlNz3C93E86vackc0UFX92sampm4AFc.jpg', 'qRdCr2BlKZo3XPn1kfoBzknY3PGIstlL3Au6cY7Z.jpg', 'Bjokq70Iy4qqvA1e7P41SD9KGI1mdukBWz7b4JrY.jpg', '2023-11-01 02:07:06', '2023-11-01 02:07:06'),
(44, '99359', 'Y2JQeTmwGksSdiAwRCOIJeXdjbKdMv0EchpqYIvF.jpg', 'wpk6PxEvRyh7AaVjlIdTKxqQqYUDzLnFzZIo3F8s.jpg', 'hBggo07iQKIGcwGvAZvGqhh1MKOg1OeIyZZV3m5k.jpg', '2023-11-01 02:08:34', '2023-11-01 02:08:34'),
(45, '19856', 'Vd5xS1xKuRgzXyYZ23s4UYyKw1A7b60rcglPjjCi.jpg', '4RP73wtjnzIUvKIHiL85YUo91UvWOVvqjJF7XPD3.jpg', 'rnXb5iyUyXTFRgN1DSszmXpq34QLHk9xzbHpGDDt.jpg', '2023-11-01 02:14:33', '2023-11-01 02:14:33'),
(46, '19856', '3bsZK0GRwsjZRnL7OPhCJ6WMga6G8b4IgpQRCkWr.jpg', 'wbPEUs0tfEzE7SfXlgbAAgBt21PV9ittZieyUTYJ.jpg', 'vnXOphHlrQpwP8qijYDp9I5hBKZ7iiOO4lzZSa91.jpg', '2023-11-01 02:14:43', '2023-11-01 02:14:43'),
(47, '57329', 'Fep8mcC0RsHDAk78PXtnnBpdgFwcwue5i15WqUiw.png', 'vhC1VM4ji139az1ewIQdf1V0kHtr6a2OPW60eO96.jpg', 'qmJf2e2TsKMo7OwQeFxQc5z9KHjAVerXSsRPgGvo.jpg', '2023-11-01 04:05:08', '2023-11-01 04:05:08'),
(48, '57329', 'nkDqxoxV0xY7abwM5cMhXscgObuM09fgf74GOio7.png', 'DCehZyvbfB0WxJ6uRIDiMwMhrwxUWMs0u4XpAyT7.jpg', 'M2IPKcnccjialQJZE4kan9XLbWCppksK2ThccvCl.jpg', '2023-11-01 04:05:19', '2023-11-01 04:05:19'),
(49, '57329', 'ybLE88jRdLdlXOqkry8BU97KcaVDmkJelD16MvOx.png', 'L9tuR0tkZwiTymiv8cBFnXbcdijWmScvmwQqMA26.jpg', 'URsApRa1pIjIsVAwoTWBnJFEOTtBhghX4oUawVsi.jpg', '2023-11-01 04:06:14', '2023-11-01 04:06:14'),
(50, '57329', '4iZDpc5AEGVhlrQDxV2qQtcckEq3WKYGF1s7udAE.png', 'IMymSOpOnDJzq9FAKj0R37YRR5Eb9FB4KGL9vpwY.jpg', 'kOue2unVXk7OmkAYCuvUxW6ZLf5tKDNnMn02yKoq.jpg', '2023-11-01 04:07:06', '2023-11-01 04:07:06'),
(51, '57329', 'YBIkZhySk9RA0FWph2PflYBYz2npNqj1ytOZJRGq.png', 'Eu3U6hqpwozFCbQYNXSnrVpFLZyD7C45LgWpCicJ.jpg', 'GNXFRTCSlzAfvKOrxPOBT6U3P7NWZOqrHe6pRYaR.jpg', '2023-11-01 04:08:18', '2023-11-01 04:08:18'),
(52, '57329', 'NuYtxcXnEicg73SzTpHF1O1tHFdrfqYoNecXSwc4.png', 'UgmLTA8oVtihzrUAoW2sw4uOIHK2M0k9F5o79P0E.jpg', 'Q0YSq8j1VWqDaoYyDLWckCVdofLGv29ldv3fbBs2.jpg', '2023-11-01 04:09:55', '2023-11-01 04:09:55'),
(53, '57329', 'M7uqwyOtGUT4pAm6DmG3DpB7FtAuxy1krR91IjV3.png', 'K4f3Eh4auHXpyTCyJ4Cbk2Y4ej97PSS8PUNRFiFV.jpg', 'CQQJ1XFA7OPAICIKSuC45XBRuPUOBJCybBd5It5r.jpg', '2023-11-01 04:10:28', '2023-11-01 04:10:28'),
(54, '57329', 'FDUHxFNGnzrwiBUNzCX0cfzsbsrxqH8KtQY9C9gR.png', 'pvTSe4Hq8j8YbFJ64PwqPQ8W3ZknGRvFbYVqqdy0.jpg', 'lPFxrr3zb6GzQnJeIyE1xgqTmhUCUG6ecqwWOMSc.jpg', '2023-11-01 04:11:15', '2023-11-01 04:11:15'),
(55, '57329', '7cSoQam9IV8PcErMtwlxvL37lT1aogx3rGcjmhLu.png', 'fsOntCy4Bg07IZdFCAmxrHIgLHVNorH9lDVGaY5H.jpg', 'v86G6Y52UMtwBtP6pLrkDOgaUGwJvR4srh97Y6N0.jpg', '2023-11-01 04:12:16', '2023-11-01 04:12:16'),
(56, '57329', 'eVImmmXPM90PX6bvfCRi5eleEqoM4OWTrXkryY9O.png', 'zt4uhQSFGtvbUyotgoZHl4jg1A1vWbBCPawyfi5V.jpg', 'FEreN23UC1t4IWiCT5UjyTtpOf5TdBygO7o3YbyT.jpg', '2023-11-01 04:14:11', '2023-11-01 04:14:11'),
(57, '57329', 'Lh70CaO3N0bAkxS0ihH0yTApdVzZLMyTFyNW9jkr.png', '8jjmUHKTO5QbIh4MquBAFw6Le0u7RXseuv2gDcol.jpg', 'JyaFZOYQM268pwAeVv0SSWPviej2LrtB6kb2Z72n.jpg', '2023-11-01 04:15:19', '2023-11-01 04:15:19'),
(59, '45821', 'Id0nXNmz4oVfxgRQguZbvceURuMrzMdtCNyYeS3o.jpg', '9uyfjpaET98btoso1oYT4NZRV9e10EtNoAuy5isC.jpg', 'FSYOq7DwpL3bpiI8ZCrLxsSznvn5PWj573zpgqZ2.jpg', '2023-11-01 23:22:49', '2023-11-01 23:22:49'),
(68, '79897', 'RGzlyJ2hnRogIAMkLV979FWSr4Y53342n7bFB661.jpg', 'aNVVBdtH6GJI2x1fz7lyi7na6I49fZvIdKDnENN4.jpg', 'uYn3UyEG55O7X8XmIIQLKSLIvkhM8J6APXpuHZ7x.jpg', '2023-11-03 22:40:10', '2023-11-03 22:40:10'),
(69, '29432', 'fr3C3xfSlIRHQhQE8dtHtG0uqGeKcInpVBiS7FN9.jpg', 'g0nydeT72e8WW3YaznG8hrvdGk4hZvw9hm7o6p1j.png', 'WfxjeUeMxKG6DzBVWAMOlLYbr3njr2ZrX36gSa0j.jpg', '2023-11-03 22:49:41', '2023-11-03 22:49:41'),
(70, '11633', 'jMgdznLn5fH8jtwqmGDQMglrzFEcESxgJyQltywg.jpg', 'uQAn6826d9Qku6ieIseduOQn8YnijcFHkAOrbtVS.jpg', 'IoCFIqPpi7iaDV9mEUPLHEJlpf5AnB7UAois1k7j.jpg', '2023-11-03 22:57:34', '2023-11-03 22:57:34'),
(71, '85455', 'ni7k0ha9jb39lOvI6Hup23EZlQdbN53f10rDdu30.jpg', 'gqufXtBEVI5R4iRQ2YudYdQaSRhhF67A6T6NRIVJ.jpg', 'jsXtHKsraE4NOW0JJCpWvkPno9OVRXyUlEUClllW.jpg', '2023-11-03 23:21:58', '2023-11-03 23:21:58'),
(75, '69882', 'W0tNi7gOO3u2rSrELHr8Uip4diOxNOthpFaN46XX.jpg', 'IpIDwt6uLV7ZnLUNT4M4BKopfOdna7QPzR0Uvre4.jpg', 'sVaDecivWqjeBwByQt3wsM3qYZv88rZfR9SvVi2F.jpg', '2023-11-05 22:53:43', '2023-11-05 22:53:43'),
(76, '24488', 'fOytAFnilEoAQudF9Qt73h7l2jziciPl5yGcpq84.jpg', '9MJjgYu7XP2v3mZPNm2y8YRTsP79XfJsUfn917Nm.jpg', 'Wj9IUFdg2cgCbVPPwytBtL5aNd4TIquA0S35MdbW.jpg', '2023-11-05 22:55:23', '2023-11-06 09:24:11'),
(77, '25306', 'ohE2czQ7I4cBh1AbX3V76ARko1Yo3ilFZ5gPiO1d.jpg', 'SvKPzIKRMAUS64LNTiYVVXNFeTJg1ldzR4nupBNw.jpg', 'EeFZvtSuEtbpVyEWv1jEXk1q4GbgMSNtIpPG7KuD.jpg', '2023-11-05 23:13:24', '2023-11-05 23:13:24'),
(78, '32166', 'fKegiK1TmUSNfCisYsoHe5VO5aQtkfn8Sykm30vj.jpg', 'zUMWbKJH8CU2M8FjXmCjGtGBM7BORiDX5tZZANiY.jpg', 'iKS9k0TWpb2BCCfnJddX3m1uzZGRjlw1SHYMJrLC.jpg', '2023-11-06 18:37:12', '2023-11-06 18:37:12'),
(79, '23498', 'OQ5ED5S24BL6hgCNLv9zgBYDIGKr9ZiJ3fYmMX2C.jpg', 'rFcWWFlm44rTqQEUDbU9H3X3lyLSq5oTTkoBVZ8D.jpg', 'l5T87DN0zgMnrdIvvmaFJ3tD5To9Db14Q62vGoMR.jpg', '2023-11-06 19:17:32', '2023-11-06 19:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `idkategori` int(11) NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`idkategori`, `kategori`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'FPS', 'F3WUiLPKwksjQdzx7LBqEqKiVsRcq3Jgam3uMABE.jpg', NULL, '2023-11-03 02:49:46'),
(2, 'Horror', 'UPbJKnV6MO8NYsNUktNfo6hbnscKykSyySbERzQc.jpg', NULL, '2023-11-03 02:51:17'),
(18, 'MMORPG', 'Ybf5krZmchCTsmjsGWLTCfWYlne1TBxVPnfrbG2v.jpg', '2023-11-01 23:08:12', '2023-11-01 23:08:12'),
(19, 'Farm-Sim', 'OBYH2kABYMtWHJfI8aa8QWPQKuyDWpuVTsbgNXi9.jpg', '2023-11-01 23:56:50', '2023-11-01 23:56:50'),
(23, 'Battleroyale', 'mxkc21dO2v3zRR2uktHAXrQ5mBLKa6ALlNLTMK5W.jpg', '2023-11-06 00:13:18', '2023-11-06 09:43:30'),
(25, 'Racing', 'O0m1B8CzpJw7kSn3Sh6bQXRXGKxCkLnLqQSl6QBW.webp', '2023-11-06 19:07:19', '2023-11-06 19:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `master_games`
--

CREATE TABLE `master_games` (
  `idgame` int(11) NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_game` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlM` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idkategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_games`
--

INSERT INTO `master_games` (`idgame`, `tanggal`, `nama_game`, `gambar`, `deskripsi`, `url`, `urlM`, `idkategori`, `status`, `created_at`, `updated_at`) VALUES
(11633, '27 December 2018', 'Pamali', 'u9KnIy3soRMk12auoSgLr0Jr8J0LFOUMLf2tCiPW.jpg', 'The word pamali in Bahasa means taboo, in these game you will experiencing first person view from various characters with Indonesian Culture from various Province among Indonesia. If you doing pamali stuff\'s during the gameplay, it will be added to your sompral information in the end of gameplay.', 'https://store.steampowered.com/app/854570/Pamali_Indonesian_Folklore_Horror/', '#', '2', '3', '2023-11-03 22:57:33', '2023-11-05 22:39:30'),
(19856, '4 February 2019', 'Apex Legends', 'VLvvSy5Hz18G2NmwgYqq6bL6dhS0gVTbClm1D3eE.jpg', 'Choose from a lineup of outlaws, soldiers, misfits, and misanthropes, each with their own set of skills. The Apex Games welcome all comers – survive long enough, and they call you a Legend.', 'https://store.steampowered.com/app/1172470/Apex_Legends/', 'https://www.ea.com/games/apex-legends', '23', '1', '2023-11-01 02:14:41', '2023-11-06 18:10:42'),
(23498, '16 October 2019', 'NFS HEAT', 'H1L1HZqAUG8ezzlH0osPtXutgfUT4kuI2oYcBNIA.jpg', 'DAY SHIFT, You’ll have to go out of your way to rile up the cops patrolling Palm City during daylight hours. They’re more professional and controlled, but push things too far and they’ll pull out all the stops. NIGHT SHIFT,After dark, the rules change when a rogue task force comes out to play. Led by Mercer, they’re on the hunt for you and your wheels. It won’t take as much for things to escalate when the sun goes down', 'https://store.steampowered.com/app/1222680/Need_for_Speed_Heat/', 'https://www-ea-com.translate.goog/games/need-for-speed/need-for-speed-heat?_x_tr_sl=en&_x_tr_tl=id&_x_tr_hl=id&_x_tr_pto=tc', '25', '0', '2023-11-06 19:17:31', '2023-11-06 19:17:31'),
(24488, '4 Oktober 2022', 'Overwatch 2', 'LMB0CJCtfPQsVp8GgCZ705MOdVxBztxLknfgG6h0.jpg', 'Overwatch 2 teams up with LE SSERAFIM to bring the game’s first music-inspired collab. You’ll play as Dazzle D.Va, Traysi Tracer, Kira-Kira Kiriko, Slay Star Sombra, or BB Brigitte, who need tickets for the big LE SSERAFIM concert in town. Battle against the tough competition and the antics of Fawksey James Junkrat in a new and unique 3v3 Team Deathmatch mode.', 'https://store.steampowered.com/app/2357570/Overwatch_2/', '#https://overwatch.blizzard.com/en-us/', '1', '2', '2023-11-05 22:55:22', '2023-11-06 18:22:16'),
(25306, '6 April 2021', 'Lost Saga Origin', 'kiwT39NJU2YTEGc7Juc1wWkKkUBECs24FQJXcrQR.jpg', 'Lost Saga Origin adalah Game Online berbasis 3D Action Casual Fighting Game yang mengusung versi original Lost Saga, dengan menghadirkan ratusan Hero, puluhan Mode, serta gameplay yang akan memberikan pengalaman nostalgia bermain Lost Saga yang menarik dan menantang.', 'https://vfun.valofe.com/library?service_code=lostsaga-origin&section=home', '#', '18', '2', '2023-11-05 23:13:23', '2023-11-06 00:08:02'),
(29432, '8 October 2022', 'Coral Island', 'GvIZWu7cbmcGfd16vIq9YfFrcBAYqWqnPyp9ECXs.jpg', 'It’s time to leave big-city life in Pokyo behind and start a new chapter of your life on Coral Island! Be who you want and create the idyllic farm of your dreams, where you’ll tend crops, nurture animals, and build a bond with the natural world around you. Help revitalize the nearby town and its surrounding coral reefs, and forge relationships with a vibrant community of more than 70 fellow people who call Coral Island home.', 'https://store.steampowered.com/app/1158160/Coral_Island/', 'https://www.stairwaygames.com/coral-island', '19', '3', '2023-11-03 22:49:39', '2023-11-06 00:03:54'),
(32166, '10 November 2023', 'COD MW3', 'Z0DJBZwh5ieAgdbcuBZI4TwatAqKD5pJNkzVnAzQ.jpg', 'Get ready for an all-new Campaign that continues the story immediately following the events of Modern Warfare II. Lead developer Sledgehammer Games, in partnership with Infinity Ward is set to deliver a full Campaign of action-packed operations ranging from signature, cinematic experiences to free-form Open Combat Missions, resulting in more player choice than ever before.', 'https://store.steampowered.com/agecheck/app/1938090/', 'https://www.callofduty.com/modernwarfare2', '1', '2', '2023-11-06 18:37:11', '2023-11-06 18:40:31'),
(45821, '27 September 2023', 'Counter Strike 2', 'Et23t0bi5QFLcXWD1gd8OhDZ71MZR0DSMAtWcyDh.jpg', 'Counter-Strike 2 is the largest technical leap forward in Counter-Strike’s history, ensuring new features and updates for years to come. Counter-Strike 2 is a free upgrade to CS:GO. So build your loadout, hone your skills, and prepare yourself for what’s next!', 'https://store.steampowered.com/app/730/CounterStrike_2/', 'https://www.counter-strike.net/cs2', '1', '2', '2023-11-01 23:22:47', '2023-11-06 00:04:02'),
(57329, '8 January 2014', 'Point blank', 'eDe4V89YW2aXsir4vdVwK7J99wEwlMjoQ3Iib8rK.jpg', 'Generasi perubahan dan perkembangan yang cepat Tumbuh sebagai negara adikuasa dengan waktu yang singkat dari beberapa negara berkembang memunculkan beberapa faktor seperti penurunan terhadap tingkat kelahiran dan kekurangan sumber daya manusia yang parah.', 'https://www.pointblank.id/game/download', 'https://www.pointblank.id/', '1', '1', '2023-11-01 04:15:17', '2023-11-05 22:40:04'),
(79897, '15 May 2014', 'DreadOut', 'P4c3hddtznuXD1dK9juedpFcGcREZpQ5GGeGcZDk.jpg', 'A third-person horror adventure that draws inspiration from Indonesian urban legend. Play as Linda, a high school student with the ability to sense and see ghosts. This spine-chilling sequel expands on the cult hit original, making DreadOut 2 another terrifying addition to the horror genre', 'https://store.steampowered.com/app/269790/DreadOut/', '#', '2', '3', '2023-11-03 22:40:08', '2023-11-05 22:38:05'),
(85455, 'June 2, 2020', 'Valorant', 'yibnHXnt9PPgScv2z4vOj1YWStXS7ZotdY3ZtLqJ.jpg', 'Valorant is a free-to-play first-person tactical hero shooter developed and published by Riot Games, for Windows. Teased under the codename Project A in October 2019, the game began a closed beta period with limited access on April 7, 2020, followed by a release on June 2, 2020.', 'https://store.epicgames.com/en-US/p/valorant', 'https://playvalorant.com/id-id/', '1', '1', '2023-11-03 23:21:39', '2023-11-06 00:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_16_035950_create_comments_table', 1),
(6, '2023_10_16_041638_create_reply_comments_table', 1),
(7, '2023_10_16_045158_create_master_games_table', 1),
(8, '2023_10_16_050712_create_kategoris_table', 1),
(9, '2023_10_16_115754_create_gambar_games_table', 1),
(10, '2023_10_16_120548_create_about_games_table', 1),
(11, '2023_10_16_121539_create_spek_games_table', 1),
(12, '2023_10_16_122352_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spek_games`
--

CREATE TABLE `spek_games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idgame` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_cpu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_gpu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_ram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_storage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_cpu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_gpu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_ram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_storage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spek_games`
--

INSERT INTO `spek_games` (`id`, `idgame`, `min_cpu`, `min_gpu`, `min_ram`, `min_storage`, `rec_cpu`, `rec_gpu`, `rec_ram`, `rec_storage`, `created_at`, `updated_at`) VALUES
(17, '19856', 'Intel Core i3-6300 3.8GHz / AMD FX-4350 4.2 GHz Quad-Core Processor', '1 GB NVIDIA GeForce GT 640 / Radeon HD 7730', '6 GB', '56 GB', 'Intel i5 3570K / Ryzen 5 CPU or equivalent', '8 GB Nvidia GeForce GTX 970 / AMD Radeon R9 290', '8 GB', '56 GB', '2023-11-01 02:14:41', '2023-11-06 18:10:42'),
(18, '57329', 'Pentium 4 2.4 GHz / Athlon XP 2500+ RAM: 512 MB', 'GeForce FX 5700/ Radeon9600', '512 MB', '3 GB', 'Pentium 4 3.0 GHz / Athlon XP 3000+', 'GeForce 6600 / Radeon X600', '1 GB', '2 GB', '2023-11-01 04:15:17', '2023-11-05 22:40:04'),
(20, '45821', 'Core i5-2400 / Ryzen 3 2200', '2 GB GeForce GTX 950 / Radeon R7 265', '8 GB', '85 GB available space.', 'Intel Core i7-9700K', 'NVIDIA GeForce RTX 2070', '16 GB', '85 GB', '2023-11-01 23:22:47', '2023-11-06 00:04:03'),
(25, '79897', 'Intel Core 2 Duo Q6867', 'Intel HD 4000', '4 GB', '5 GB', 'Intel Core i5-2300', 'AMD Radeon HD 7750', '8 GB', '10 GB', '2023-11-03 22:40:08', '2023-11-05 22:38:05'),
(26, '29432', 'Intel i3 Processor', 'Nvidia GeForce GTX 660 2GB', '6 GB', '8 GB', 'Intel i7 Processor/Ryzen 1700+', 'Nvidia GeForce GTX960+', '16 GB', '8 GB', '2023-11-03 22:49:39', '2023-11-06 00:03:54'),
(27, '11633', 'Intel Core i5-7200U', 'NVIDIA GeForce 940MX', '4 GB', '2 GB', 'Intel Core i7-6700', 'NVIDIA GeForce GTX 970', '16 GB', '3 GB', '2023-11-03 22:57:33', '2023-11-05 22:39:30'),
(28, '85455', 'Intel Core 2 Duo E8400 or Athlon 200GE', 'Intel HD 4000', '4 GB', '23 GB', 'Intel Core i3-4150 or Ryzen 3', 'NVIDIA GeForce GT 730 or Radeon R7 240', '4 GB', '23 GB', '2023-11-03 23:21:40', '2023-11-06 00:02:42'),
(31, '24488', 'Intel Core i3 or AMD Phenom X3 8650', 'GeForce GTX 660 with 2GB VRAM', '6 GB RAM', '50 GB available hard drive space', 'Intel Core i7 or AMD Ryzen 5 processor', 'Nvidia GeForce GTX 1060', '8 GB RAM', '50 GB available hard drive space', '2023-11-05 22:55:22', '2023-11-06 18:22:16'),
(32, '25306', 'Prosesor Intel Pentium 4 1.2 GHz atau AMD 1600+', 'Geforce 4 Ti atau ATI Radeon 9000', '2 GB', '1 GB', 'Prosesor Pentium 4 2.4 GHz', 'Geforce FX5200 atau ATI Radeon 9250', '4 GB', '2 GB', '2023-11-05 23:13:23', '2023-11-06 00:08:02'),
(33, '32166', 'Intel Core i5-6600 or AMD Ryzen 5 1600', 'NVIDIA GeForce GTX 970 or AMD Radeon RX 480 RAM 3GB', '12 GB', 'SSD with 65GB available (25GB with COD HQ Downloaded)', 'Intel Core i5-6600 or AMD Ryzen 5 1600', 'NVIDIA GeForce GTX 1070/ GeForce RTX 3050 or AMD Radeon RX Vega RAM 6GB', '16 GB', 'SSD with 65GB available (25GB with COD HQ Downloaded)', '2023-11-06 18:37:11', '2023-11-06 18:40:31'),
(34, '23498', 'FX-6350 or Equivalent; Core i5-3570 or Equivalent', 'AMD: Radeon 7970/Radeon R9 280x or Equivalent; NVIDIA: GeForce GTX 760 or Equivalent', '8 GB', '50 GB', 'Ryzen 3 1300X or Equivalent; Core i7-4790 or Equivalent', 'AMD: Radeon RX 480 or Equivalent; NVIDIA: GeForce GTX 1060 or Equivalent', '16 GB', '50 GB', '2023-11-06 19:17:31', '2023-11-06 19:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$Jw2z2.9wRAuFGrQvclITSufc5FP1.WimTLtzg/xjbWdET6p4DNM5q', NULL, 'admin', '2023-10-29 05:09:26', '2023-10-29 05:09:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_games`
--
ALTER TABLE `about_games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gambar_games`
--
ALTER TABLE `gambar_games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `master_games`
--
ALTER TABLE `master_games`
  ADD PRIMARY KEY (`idgame`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `spek_games`
--
ALTER TABLE `spek_games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_games`
--
ALTER TABLE `about_games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambar_games`
--
ALTER TABLE `gambar_games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spek_games`
--
ALTER TABLE `spek_games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
