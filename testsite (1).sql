-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 22 2015 г., 20:17
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `testsite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `game1`
--

CREATE TABLE IF NOT EXISTS `game1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `game1`
--

INSERT INTO `game1` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0', '0.03'),
(2, '76561198179773853', 'Adm1x', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/31/31e441252113d0d73e72ccb1a4c5fd876cb1d7c1_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.03', '0.06'),
(3, '76561198179773853', 'Adm1x', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/31/31e441252113d0d73e72ccb1a4c5fd876cb1d7c1_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.06', '0.09'),
(4, '76561198179773853', 'Adm1x', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/31/31e441252113d0d73e72ccb1a4c5fd876cb1d7c1_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.09', '0.12'),
(5, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'MP9 | Sand Dashed (Battle-Scarred)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou6r8FBRw7OfJYTh9_9S5hpS0hPb6N4TZk2pH8Yt12r2XrImt3FXnqRdpMjv7LYKRewBvZVCD-QO3lejngpK16pTImCFlpGB8shsy0D21', '0.12', '0.16'),
(6, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.16', '0.23'),
(7, '76561198144185023', 'Tom|Hardi', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1f/1f6707f21478dad313ea193da48b24c8e259e4cb_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.23', '0.26'),
(8, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.26', '0.33'),
(9, '76561198179773853', 'Adm1x', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/31/31e441252113d0d73e72ccb1a4c5fd876cb1d7c1_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.33', '0.36'),
(10, '76561198179773853', 'Adm1x', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/31/31e441252113d0d73e72ccb1a4c5fd876cb1d7c1_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.36', '0.39'),
(11, '76561198179773853', 'Adm1x', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/31/31e441252113d0d73e72ccb1a4c5fd876cb1d7c1_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.39', '0.42000000000000004'),
(12, '76561198179773853', 'Adm1x', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/31/31e441252113d0d73e72ccb1a4c5fd876cb1d7c1_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.42000000000000004', '0.46'),
(13, '76561198179773853', 'Adm1x', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/31/31e441252113d0d73e72ccb1a4c5fd876cb1d7c1_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.46', '0.49'),
(14, '76561198179773853', 'Adm1x', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/31/31e441252113d0d73e72ccb1a4c5fd876cb1d7c1_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.49', '0.53'),
(15, '76561198179773853', 'Adm1x', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/31/31e441252113d0d73e72ccb1a4c5fd876cb1d7c1_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.53', '0.5700000000000001'),
(16, '76561198144185023', 'Tom|Hardi', 'SSG 08 | Abyss (Field-Tested)', 'D2D2D2', '0.09', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1f/1f6707f21478dad313ea193da48b24c8e259e4cb_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopamie19f0uL3fThU5d2inIGFqPrxN7LEmyVX7pJ12rjEoNr2igDm_EZqMT3wJNeVegA5aQnT_Ve9l---hce47cnB1zI97YmTQpGt', '0.5700000000000001', '0.66'),
(17, '76561198144185023', 'Tom|Hardi', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1f/1f6707f21478dad313ea193da48b24c8e259e4cb_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.66', '0.73'),
(18, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.73', '0.8'),
(19, '76561198124851591', 'Uni | CSGO-HELL.RU', 'UMP-45 | Corporal (Minimal Wear)', 'D2D2D2', '0.09', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoo7e1f1Jf0Ob3ZDBS09-5hpCEhfb4DLfYkWNFpscg3bmRoNik0Azm8hZlNmv0J4fDJwJtM13W-AC9ybrvg8Xpuc7NyHR9-n51lVYBVKs', '0.8', '0.89'),
(20, '76561198124851591', 'Uni | CSGO-HELL.RU', 'P250 | Boreal Forest (Battle-Scarred)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopujwezhoyszOfi9H_8iJlo-Zkvb4DLPUl31IppJz2L6So9-niga3qENtNWDwIY6cJg9tYVCD-ADtwubtgpC76ZufySF9-n51_ozB8PE', '0.89', '0.93');

-- --------------------------------------------------------

--
-- Структура таблицы `game2`
--

CREATE TABLE IF NOT EXISTS `game2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `game2`
--

INSERT INTO `game2` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0', '0.07'),
(2, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.07', '0.1'),
(3, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.1', '0.13'),
(4, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.13', '0.2'),
(5, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.2', '0.24000000000000002'),
(6, '76561198124851591', 'Uni | CSGO-HELL.RU', 'SSG 08 | Blue Spruce (Field-Tested)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopamie19fwPz3fDJR_-O7kYSCgvq6armJxTNT6cZ1j73EporzjAzjqRI_NmumJ9CdJAVrYQmG_VG2x-rphYj84sr1r6m09w', '0.24000000000000002', '0.28'),
(7, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.28', '0.35000000000000003'),
(8, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.35000000000000003', '0.42000000000000004'),
(9, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Falchion Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', '0.42000000000000004', '0.49000000000000005'),
(10, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Falchion Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', '0.49000000000000005', '0.56');

-- --------------------------------------------------------

--
-- Структура таблицы `game3`
--

CREATE TABLE IF NOT EXISTS `game3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `game3`
--

INSERT INTO `game3` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198124851591', 'Uni | CSGO-HELL.RU', 'G3SG1 | Polar Camo (Minimal Wear)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposem2LFZf2-r3cC9B-NW1q4OEmePmMqjFqWdY781lxO2Qodih3ALjrhZlam72cIfHdlI7Y1DXq1O2wbvng5646ZrKynpnsyM8pSGKziuLMdo', '0', '0.04'),
(2, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Tec-9 | Army Mesh (Minimal Wear)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoor-mcjhzw8zFdC5K092kmZm0m_7zO6-flDkFuJFz3OjApY-ijQXh80c6Nmv1LYfGJFNsMF_Qrlm8wr-505O6voOJlyUZNPPaxw', '0.04', '0.08'),
(3, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Falchion Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', '0.08', '0.15000000000000002'),
(4, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'SSG 08 | Blue Spruce (Field-Tested)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopamie19fwPz3fDJR_-O7kYSCgvq6armJxTNT6cZ1j73EporzjAzjqRI_NmumJ9CdJAVrYQmG_VG2x-rphYj84sr1r6m09w', '0.15000000000000002', '0.19000000000000003'),
(5, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.19000000000000003', '0.22000000000000003'),
(6, '76561198124851591', 'Uni | CSGO-HELL.RU', 'M4A1-S | Boreal Forest (Field-Tested)', 'D2D2D2', '0.15', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou-6kejhz2v_Nfz5H_uO-jb-NmOXxIK_ulGRD7cR9teTE8YXghRrhrRBrMWD7coCQegU6aQyE_gC6xOi6gJC5tJTMn3BqvyNztH_VnRS-n1gSOeVXeHpm', '0.22000000000000003', '0.37'),
(7, '76561198124851591', 'Uni | CSGO-HELL.RU', 'USP-S | Royal Blue (Field-Tested)', 'D2D2D2', '0.24', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoo6m1FBRp3_bGcjhQ09Svq4mFk_7zPITEhXtu5cB1g_zMu92n3VayqUZvNmD1I4OVJg5qYQvT-lfvle6515a46c-Yy3sx7HEjtnnD30vg1elDWp4', '0.37', '0.61'),
(8, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.61', '0.6799999999999999'),
(9, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.6799999999999999', '0.75');

-- --------------------------------------------------------

--
-- Структура таблицы `game4`
--

CREATE TABLE IF NOT EXISTS `game4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `game4`
--

INSERT INTO `game4` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0', '0.04'),
(2, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.04', '0.07'),
(3, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.07', '0.1'),
(4, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.1', '0.13'),
(5, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.13', '0.17'),
(6, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.17', '0.2');

-- --------------------------------------------------------

--
-- Структура таблицы `game5`
--

CREATE TABLE IF NOT EXISTS `game5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `game5`
--

INSERT INTO `game5` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0', '0.03'),
(2, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'MP9 | Sand Dashed (Battle-Scarred)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou6r8FBRw7OfJYTh9_9S5hpS0hPb6N4TZk2pH8Yt12r2XrImt3FXnqRdpMjv7LYKRewBvZVCD-QO3lejngpK16pTImCFlpGB8shsy0D21', '0.03', '0.07'),
(3, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.07', '0.1'),
(4, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.1', '0.13'),
(5, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.13', '0.16'),
(6, '76561198124851591', 'Uni | CSGO-HELL.RU', 'MP9 | Storm (Field-Tested)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou6r8FBRv7ODcfi9P6s65mpS0mvLwOq7c2GoG65wnib6Q9tXz3VLkqBVpZ2rzIdfGd1c7ZVzU8gK8xuy-0Ja86svXiSw038eOvP4', '0.16', '0.2'),
(7, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.2', '0.23'),
(8, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.23', '0.26'),
(9, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.26', '0.29000000000000004'),
(10, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.29000000000000004', '0.32000000000000006'),
(11, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.32000000000000006', '0.3500000000000001'),
(12, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.3500000000000001', '0.3800000000000001'),
(13, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Tec-9 | Army Mesh (Minimal Wear)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoor-mcjhzw8zFdC5K092kmZm0m_7zO6-flDkFuJFz3OjApY-ijQXh80c6Nmv1LYfGJFNsMF_Qrlm8wr-505O6voOJlyUZNPPaxw', '0.3800000000000001', '0.4200000000000001'),
(14, '76561198124851591', 'Uni | CSGO-HELL.RU', 'G3SG1 | Polar Camo (Minimal Wear)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposem2LFZf2-r3cC9B-NW1q4OEmePmMqjFqWdY781lxO2Qodih3ALjrhZlam72cIfHdlI7Y1DXq1O2wbvng5646ZrKynpnsyM8pSGKziuLMdo', '0.4200000000000001', '0.4600000000000001'),
(15, '76561198124851591', 'Uni | CSGO-HELL.RU', 'PP-Bizon | Night Ops (Well-Worn)', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpotLO_JAlf2-r3ZzxQ5d-3mY-0mf7zO6_um25V4dB8xOyRrYnzi1HgrRVlNTrxJtDBdQA_Zw7V8wfok7zv1Je7tZWayHdl6Sc8pSGKDqcODX0', '0.4600000000000001', '0.53');

-- --------------------------------------------------------

--
-- Структура таблицы `game6`
--

CREATE TABLE IF NOT EXISTS `game6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `game6`
--

INSERT INTO `game6` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0', '0.07'),
(2, '76561198168693644', 'Калаш>Сильвер(HELLBE', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fe1863470675c4699c349531a5252a5fc9402ede_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.07', '0.14'),
(3, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.14', '0.17'),
(4, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.17', '0.2'),
(5, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.2', '0.23'),
(6, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.23', '0.26'),
(7, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.26', '0.3'),
(8, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.3', '0.33999999999999997'),
(9, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'MP9 | Storm (Field-Tested)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpou6r8FBRv7ODcfi9P6s65mpS0mvLwOq7c2GoG65wnib6Q9tXz3VLkqBVpZ2rzIdfGd1c7ZVzU8gK8xuy-0Ja86svXiSw038eOvP4', '0.33999999999999997', '0.37999999999999995');

-- --------------------------------------------------------

--
-- Структура таблицы `game7`
--

CREATE TABLE IF NOT EXISTS `game7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `game7`
--

INSERT INTO `game7` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0', '0.07'),
(2, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.07', '0.1'),
(3, '76561198168693644', 'Neo|CSGO-Hell.ru', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/db/db46cfc413a9bc72a67497bf21c1241623fd0487_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.1', '0.14'),
(4, '76561198168693644', 'Neo|CSGO-Hell.ru', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/db/db46cfc413a9bc72a67497bf21c1241623fd0487_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.14', '0.17'),
(5, '76561198168693644', 'Neo|CSGO-Hell.ru', 'Operation Breakout Weapon Case', 'D2D2D2', 'undefined', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/db/db46cfc413a9bc72a67497bf21c1241623fd0487_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.17', '0.17'),
(6, '76561198168693644', 'Neo|CSGO-Hell.ru', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/db/db46cfc413a9bc72a67497bf21c1241623fd0487_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0', '0.04'),
(7, '76561198168693644', 'Neo|CSGO-Hell.ru', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/db/db46cfc413a9bc72a67497bf21c1241623fd0487_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0', '0.03'),
(8, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.24000000000000002', '0.31000000000000005'),
(9, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.31000000000000005', '0.35000000000000003'),
(10, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma Case', 'D2D2D2', 'undefined', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.35000000000000003', '0.35000000000000003');

-- --------------------------------------------------------

--
-- Структура таблицы `game8`
--

CREATE TABLE IF NOT EXISTS `game8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `game8`
--

INSERT INTO `game8` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198168693644', 'Neo|CSGO-Hell.ru', 'Operation Phoenix Weapon Case', 'D2D2D2', 'undefined', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/db/db46cfc413a9bc72a67497bf21c1241623fd0487_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0', '0'),
(2, '76561198168693644', 'Neo|CSGO-Hell.ru', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/db/db46cfc413a9bc72a67497bf21c1241623fd0487_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0', '0.04'),
(3, '76561198168693644', 'Neo|CSGO-Hell.ru', 'P250 | Boreal Forest (Battle-Scarred)', 'D2D2D2', 'undefined', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/db/db46cfc413a9bc72a67497bf21c1241623fd0487_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopujwezhoyszOfi9H_8iJlo-Zkvb4DLPUl31IppJz2L6So9-niga3qENtNWDwIY6cJg9tYVCD-ADtwubtgpC76ZufySF9-n51_ozB8PE', '0', '0'),
(4, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma Case', 'D2D2D2', 'undefined', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.04', '0.04'),
(5, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0', '0.04'),
(6, '76561198168693644', 'Neo|CSGO-Hell.ru', 'SSG 08 | Abyss (Field-Tested)', 'D2D2D2', '0.09', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/db/db46cfc413a9bc72a67497bf21c1241623fd0487_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopamie19f0uL3fThU5d2inIGFqPrxN7LEmyVX7pJ12rjEoNr2igDm_EZqMT3wJNeVegA5aQnT_Ve9l---hce47cnB1zI97YmTQpGt', '0.08', '0.16999999999999998'),
(7, '76561198168693644', 'Neo|CSGO-Hell.ru', 'Falchion Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/db/db46cfc413a9bc72a67497bf21c1241623fd0487_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', '0.16999999999999998', '0.24');

-- --------------------------------------------------------

--
-- Структура таблицы `game9`
--

CREATE TABLE IF NOT EXISTS `game9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `game9`
--

INSERT INTO `game9` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0', '0.03'),
(2, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.03', '0.06'),
(3, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.06', '0.09');

-- --------------------------------------------------------

--
-- Структура таблицы `game10`
--

CREATE TABLE IF NOT EXISTS `game10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `game10`
--

INSERT INTO `game10` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0', '0.03'),
(2, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.03', '0.06'),
(3, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.06', '0.09'),
(4, '76561198124851591', 'Uni | CSGO-HELL.RU', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.09', '0.12');

-- --------------------------------------------------------

--
-- Структура таблицы `game11`
--

CREATE TABLE IF NOT EXISTS `game11` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `game11`
--

INSERT INTO `game11` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0', '0.03'),
(2, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.03', '0.06'),
(3, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.06', '0.09'),
(4, '76561198030364068', 'rewCSGOTrophy.ru ♥ CSgetto.com', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.09', '0.13'),
(5, '76561198030364068', 'rewCSGOTrophy.ru ♥ CSgetto.com', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.13', '0.17'),
(6, '76561198030364068', 'rewCSGOTrophy.ru ♥ CSgetto.com', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.17', '0.21000000000000002'),
(7, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Falchion Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', '0.21000000000000002', '0.28'),
(8, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Five-SeveN | Forest Night (Field-Tested)', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgposLOzLhRlxfbGTjVb09q5hoWYg8j6OrzZglRc7cF4n-SP9o2gjQbhqRVla2GnJ46VIQA_ZlyD-VHvxuu808S7tc7NzXFm7iUh4mGdwULQPtyarQ', '0.28', '0.31000000000000005'),
(9, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'SCAR-20 | Contractor (Field-Tested)', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopbmkOVUw7ODHTi1P7-O7kYSCgvq6ZO2EwmlU6ZEji-qRoo6tigzk_xZpY2mmcI6RdVBrMFnV_FLslOy804j84so1c9KYww', '0.31000000000000005', '0.3400000000000001');

-- --------------------------------------------------------

--
-- Структура таблицы `game12`
--

CREATE TABLE IF NOT EXISTS `game12` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `game12`
--

INSERT INTO `game12` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198030364068', 'rewCSGOTrophy.ru ♥ CSgetto.com', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0', '0.04'),
(2, '76561198030364068', 'rewCSGOTrophy.ru ♥ CSgetto.com', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.04', '0.08'),
(3, '76561198030364068', 'rewCSGOTrophy.ru ♥ CSgetto.com', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.08', '0.12'),
(4, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.12', '0.19'),
(5, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.19', '0.22'),
(6, '76561198130056077', 'Bogdan', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/3c/3ce7fd0c1a5225790d67d90d4f1e60d2d29d2037_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.22', '0.25');

-- --------------------------------------------------------

--
-- Структура таблицы `game13`
--

CREATE TABLE IF NOT EXISTS `game13` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `game13`
--

INSERT INTO `game13` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0', '0.04'),
(2, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.04', '0.07'),
(3, '76561198030364068', 'rewCSGOTrophy.ru ♥ CSgetto.com', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.07', '0.11000000000000001'),
(4, '76561198030364068', 'rewCSGOTrophy.ru ♥ CSgetto.com', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.11000000000000001', '0.15000000000000002'),
(5, '76561198030364068', 'rewCSGOTrophy.ru ♥ CSgetto.com', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.15000000000000002', '0.19000000000000003'),
(6, '76561198030364068', 'rewCSGOTrophy.ru ♥ CSgetto.com', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.19000000000000003', '0.23000000000000004'),
(7, '76561198030364068', 'rewCSGOTrophy.ru ♥ CSgetto.com', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.23000000000000004', '0.27'),
(8, '76561198130056077', 'Bogdan', 'AK-47 | Safari Mesh (Field-Tested)', 'D2D2D2', '0.09', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/3c/3ce7fd0c1a5225790d67d90d4f1e60d2d29d2037_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpot7HxfDhzw8zFdC5K08i3mr-GkvP9JrafxDtV6Z1wjr2Wod-sjg228hZvam6lcIPHcwNrYFCF-AW4lLzvgZG5tYOJlyX4zEyDKA', '0.27', '0.36'),
(9, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Falchion Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FF8ugPDMIWpAuIq1w4KIlaChZOyFwzgJuZNy3-2T89T0jlC2rhZla2vwIJjVLFHz75yKpg', '0.36', '0.43'),
(10, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Phoenix Weapon Case', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFUuh6qZJmlD7tiyl4OIlaGhYuLTzjhVupJ12urH89ii3lHlqEdoMDr2I5jVLFFSv_J2Rg', '0.43', '0.47'),
(11, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Operation Breakout Weapon Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFMu1aPMI24auITjxteJwPXxY72AkGgIvZAniLjHpon2jlbl-kpvNjz3JJjVLFG9rl1YLQ', '0.47', '0.5'),
(12, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Chroma 2 Case', 'D2D2D2', '0.07', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFAuhqSaKWtEu43mxtbbk6b1a77Twm4Iu8Yl3bCU9Imii1Xt80M5MmD7JZjVLFH-6VnQJQ', '0.5', '0.5700000000000001');

-- --------------------------------------------------------

--
-- Структура таблицы `game14`
--

CREATE TABLE IF NOT EXISTS `game14` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `game14`
--

INSERT INTO `game14` (`id`, `userid`, `username`, `item`, `color`, `value`, `avatar`, `image`, `from`, `to`) VALUES
(1, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Tec-9 | Army Mesh (Field-Tested)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpoor-mcjhzw8zFdC5K092kmZm0mvLwOq7c2DJSscFy2OiXpo_zi1fgqko6YmGhLNWWdVI_NFmC8lW3xOnt0cO5v5zXiSw00ze-NIQ', '0', '0.04'),
(2, '76561198074892915', 'youtube.com/c/MrOBZORKA1', 'Nova | Sand Dune (Field-Tested)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpouLWzKjhz3MzbcDNG09GzkImemrnwYOOGwjIJ7JB1j-3D9Nms0FDh_0tqYjulLNCWdFNvZl7QrlPswOu6m9bi6_rlVdP1', '0.04', '0.08'),
(3, '76561198130056077', 'Bogdan', 'Chroma Case', 'D2D2D2', '0.03', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/3c/3ce7fd0c1a5225790d67d90d4f1e60d2d29d2037_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXU5A1PIYQNqhpOSV-fRPasw8rsUFJ5KBFZv668FFEuh_KQJTtEuI63xIXbxqOtauyClTMEsJV1jruS89T3iQKx_BBqa2j3JpjVLFH1xpp0EQ', '0.08', '0.11'),
(4, '76561198068851675', 'Normalisera', 'SSG 08 | Blue Spruce (Battle-Scarred)', 'D2D2D2', '0.04', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/6f/6f3c673a7797d8f6ba9024c97e07ac10c90246fb_full.jpg', '-9a81dlWLwJ2UUGcVs_nsVtzdOEdtWwKGZZLQHTxDZ7I56KU0Zwwo4NUX4oFJZEHLbXH5ApeO4YmlhxYQknCRvCo04DEVlxkKgpopamie19fwPz3fDJR_-O-kYGdjrnxNeyAwGgAvcci3LyRp9nx3gzm_kNrYz2nIIeWdVU4ZgvQ-VG9lLy8m9bi65T-xKwc', '0.11', '0.15');

-- --------------------------------------------------------

--
-- Структура таблицы `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL,
  `cost` text,
  `winner` varchar(128) NOT NULL,
  `userid` varchar(70) NOT NULL,
  `percent` varchar(10) DEFAULT NULL,
  `itemsnum` int(11) NOT NULL,
  `module` text NOT NULL,
  `players` int(2) NOT NULL,
  `stating` varchar(11) NOT NULL DEFAULT 'wait',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `games`
--

INSERT INTO `games` (`id`, `starttime`, `cost`, `winner`, `userid`, `percent`, `itemsnum`, `module`, `players`, `stating`) VALUES
(1, 1442931795, '0.93', 'Калаш>Сильвер(HELLBE', '76561198168693644', '11.8279569', 20, '0.655259559', 4, 'started'),
(2, 1442932453, '0.56', 'Калаш>Сильвер(HELLBE', '76561198168693644', '50', 10, '0.549157006', 2, 'started'),
(3, 1442932666, '0.75', 'Uni | CSGO-HELL.RU', '76561198124851591', '72', 9, '0.978270138', 2, 'started'),
(4, 1442934251, '0.2', 'Калаш>Сильвер(HELLBE', '76561198168693644', '85', 6, '0.626379329', 2, 'started'),
(5, 1442934572, '0.53', 'Uni | CSGO-HELL.RU', '76561198124851591', '52.8301886', 15, '0.123477911', 2, 'started'),
(6, 1442935825, '0.37999999999999995', 'youtube.com/c/MrOBZORKA1', '76561198074892915', '63.1578947', 9, '0.441553094', 2, 'started'),
(7, 1442936743, '0.35000000000000003', 'youtube.com/c/MrOBZORKA1', '76561198074892915', '60', 10, '0.952108214', 2, 'started'),
(8, 1442937161, '0.24', '', '', '0', 7, '0.265577362', 2, 'started'),
(9, 1442940005, '0.09', 'youtube.com/c/MrOBZORKA1', '76561198074892915', '66.6666666', 3, '0.903024515', 2, 'started'),
(10, 1442940461, '0.12', 'Uni | CSGO-HELL.RU', '76561198124851591', '25', 4, '0.778223571', 2, 'started'),
(11, 1442941087, '0.3400000000000001', 'youtube.com/c/MrOBZORKA1', '76561198074892915', '64.7058823', 9, '0.617244397', 2, 'started'),
(12, 1442941451, '0.25', 'Bogdan', '76561198130056077', '12', 6, '0.443673029', 3, 'started'),
(13, 1442941714, '0.5700000000000001', 'Bogdan', '76561198130056077', '15.7894736', 12, '0.615762637', 3, 'started'),
(14, 1442942176, '0.15', '', '', NULL, 4, '', 3, 'started');

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`name`, `value`) VALUES
('current_game', '14'),
('state', 'waiting'),
('rake', '10'),
('minbet', '0'),
('maxitems', '10');

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `cost` text NOT NULL,
  `lastupdate` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `name`, `cost`, `lastupdate`) VALUES
(64, 'SSG%2008%20|%20Blue%20Spruce%20(Battle-Scarred)', '0.04', '1442942209'),
(63, 'Nova%20|%20Sand%20Dune%20(Field-Tested)', '0.04', '1442941938'),
(62, 'Tec-9%20|%20Army%20Mesh%20(Field-Tested)', '0.04', '1442941938'),
(61, 'AK-47%20|%20Safari%20Mesh%20(Field-Tested)', '0.09', '1442941744'),
(60, 'SCAR-20%20|%20Contractor%20(Field-Tested)', '0.03', '1442941193'),
(59, 'Five-SeveN%20|%20Forest%20Night%20(Field-Tested)', '0.03', '1442941191'),
(58, 'PP-Bizon%20|%20Night%20Ops%20(Well-Worn)', '0.07', '1442934674'),
(57, 'MP9%20|%20Storm%20(Field-Tested)', '0.04', '1442934565'),
(56, 'M4A1-S%20|%20Boreal%20Forest%20(Field-Tested)', '0.15', '1442932685'),
(55, 'USP-S%20|%20Royal%20Blue%20(Field-Tested)', '0.24', '1442932685'),
(54, 'Tec-9%20|%20Army%20Mesh%20(Minimal%20Wear)', '0.04', '1442932649'),
(53, 'G3SG1%20|%20Polar%20Camo%20(Minimal%20Wear)', '0.04', '1442932649'),
(52, 'SSG%2008%20|%20Blue%20Spruce%20(Field-Tested)', '0.04', '1442932486'),
(51, 'P250%20|%20Boreal%20Forest%20(Battle-Scarred)', '0.04', '1442931887'),
(50, 'UMP-45%20|%20Corporal%20(Minimal%20Wear)', '0.09', '1442931886'),
(49, 'SSG%2008%20|%20Abyss%20(Field-Tested)', '0.09', '1442931886'),
(48, 'Operation%20Phoenix%20Weapon%20Case', '0.04', '1442931851'),
(46, 'Chroma%20Case', '0.03', '1442931851'),
(45, 'Chroma%202%20Case', '0.07', '1442931789'),
(44, 'MP9%20|%20Sand%20Dashed%20(Battle-Scarred)', '0.04', '1442931789'),
(43, 'Operation%20Breakout%20Weapon%20Case', '0.03', '1442931274'),
(42, 'Falchion%20Case', '0.07', '1442931018');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `msg` text NOT NULL,
  `from` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Структура таблицы `queue`
--

CREATE TABLE IF NOT EXISTS `queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `token` varchar(128) NOT NULL,
  `items` text NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `queue`
--

INSERT INTO `queue` (`id`, `userid`, `token`, `items`, `status`) VALUES
(1, '76561198168693644', 'RoYq5zsT', 'Operation Breakout Weapon Case/Operation Breakout Weapon Case/Operation Breakout Weapon Case/Operation Breakout Weapon Case/Chroma Case/Operation Breakout Weapon Case/Operation Breakout Weapon Case/Operation Breakout Weapon Case/MP9 | Sand Dashed (Battle-Scarred)/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/P250 | Boreal Forest (Battle-Scarred)/Chroma 2 Case/Chroma 2 Case/Chroma 2 Case/Chroma 2 Case/SSG 08 | Abyss (Field-Tested)', 'sent [object Object]'),
(2, '76561198168693644', 'RoYq5zsT', 'Operation Breakout Weapon Case/Chroma Case/Operation Phoenix Weapon Case/SSG 08 | Blue Spruce (Field-Tested)/Chroma 2 Case/Chroma 2 Case/Chroma 2 Case/Chroma 2 Case/Falchion Case', 'sent [object Object]'),
(3, '76561198124851591', 'zXMAXEaK', 'Chroma Case/G3SG1 | Polar Camo (Minimal Wear)/Tec-9 | Army Mesh (Minimal Wear)/SSG 08 | Blue Spruce (Field-Tested)/Falchion Case/Chroma 2 Case/M4A1-S | Boreal Forest (Field-Tested)/USP-S | Royal Blue (Field-Tested)', 'sent [object Object]'),
(4, '76561198168693644', 'RoYq5zsT', 'Operation Breakout Weapon Case/Operation Breakout Weapon Case/Operation Breakout Weapon Case/Chroma Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case', 'sent [object Object]'),
(5, '76561198124851591', 'zXMAXEaK', 'Operation Breakout Weapon Case/Operation Breakout Weapon Case/Operation Breakout Weapon Case/Chroma Case/Chroma Case/Chroma Case/Operation Breakout Weapon Case/Chroma Case/Operation Breakout Weapon Case/Operation Breakout Weapon Case/MP9 | Sand Dashed (Battle-Scarred)/MP9 | Storm (Field-Tested)/Tec-9 | Army Mesh (Minimal Wear)/G3SG1 | Polar Camo (Minimal Wear)', 'sent [object Object]'),
(6, '76561198074892915', 'WwV2E6qH', 'Chroma Case/Chroma Case/Operation Breakout Weapon Case/Chroma Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Chroma 2 Case/Chroma 2 Case', 'sent [object Object]'),
(7, '76561198074892915', 'WwV2E6qH', 'Operation Breakout Weapon Case/Operation Breakout Weapon Case/Chroma Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Chroma 2 Case/Chroma 2 Case', 'sent [object Object]'),
(8, '', '', 'Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Falchion Case/SSG 08 | Abyss (Field-Tested)', 'sent [object Object]'),
(9, '76561198074892915', 'WwV2E6qH', 'Chroma Case/Operation Breakout Weapon Case/Operation Breakout Weapon Case', 'sent [object Object]'),
(10, '76561198124851591', 'zXMAXEaK', 'Operation Breakout Weapon Case/Chroma Case/Chroma Case/Operation Breakout Weapon Case', 'sent [object Object]'),
(11, '76561198074892915', 'WwV2E6qH', 'Operation Breakout Weapon Case/Operation Breakout Weapon Case/Chroma Case/Five-SeveN | Forest Night (Field-Tested)/SCAR-20 | Contractor (Field-Tested)/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Falchion Case', 'sent [object Object]'),
(12, '76561198130056077', 'v8nSbe-w', 'Chroma Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Chroma 2 Case', 'active'),
(13, '76561198130056077', 'v8nSbe-w', 'Operation Breakout Weapon Case/Operation Breakout Weapon Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Operation Phoenix Weapon Case/Falchion Case/AK-47 | Safari Mesh (Field-Tested)', 'sent [object Object]');

-- --------------------------------------------------------

--
-- Структура таблицы `rakeitems`
--

CREATE TABLE IF NOT EXISTS `rakeitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `rakeitems`
--

INSERT INTO `rakeitems` (`id`, `item`) VALUES
(1, 'UMP-45 | Corporal (Minimal Wear)'),
(2, 'Operation Breakout Weapon Case'),
(3, 'Falchion Case'),
(4, 'Chroma 2 Case'),
(5, 'PP-Bizon | Night Ops (Well-Worn)'),
(6, 'MP9 | Storm (Field-Tested)'),
(7, 'Chroma Case'),
(8, 'Operation Breakout Weapon Case'),
(9, 'Operation Phoenix Weapon Case'),
(10, 'Chroma Case'),
(11, 'P250 | Boreal Forest (Battle-Scarred)'),
(12, 'Operation Phoenix Weapon Case'),
(13, 'Operation Phoenix Weapon Case'),
(14, 'Chroma Case'),
(15, 'Chroma 2 Case');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steamid` varchar(70) NOT NULL,
  `tlink` varchar(255) DEFAULT NULL,
  `won` float DEFAULT '0',
  `admin` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `games` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `steamid`, `tlink`, `won`, `admin`, `name`, `avatar`, `games`) VALUES
(1, '76561198159854902', NULL, 0, 0, 'SENDER', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/e4/e4108f615aef360b60c52b79e9aae106063c183f_full.jpg', 0),
(2, '76561198164439617', 'https://steamcommunity.com/tradeoffer/new/?partner=204173889&token=hUQ_7LNM', 0, 0, 'chiken', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/e0/e04b541a9dc052e2441ecd4d49e2be8fa9b3f85e_full.jpg', 0),
(3, '76561198124834167', 'https://steamcommunity.com/tradeoffer/new/?partner=164568439&token=Ul96ATab', 0, 0, 'FresTO', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/16/16ecc6292a0026b95c91524c6c1f16e39835987f_full.jpg', 0),
(4, '76561198093298452', NULL, 0, 0, 'Twinky', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/3b/3bedeaecdf0382eba591cced23aabfb9645f9907_full.jpg', 0),
(5, '76561198146178289', NULL, 0, 0, 'ADMIN', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/f3/f3f5eee4efe059d164cf0e631eb2ce1ff25edbbd_full.jpg', 0),
(6, '76561198127637451', 'https://steamcommunity.com/tradeoffer/new/?partner=167371723&token=Pmrfl2E7', 0, 0, 'KiwiJamba', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/29/29ecad1feb84ae20bc27495da712b4da50d8ca6b_full.jpg', 0),
(7, '76561198165276772', NULL, 0, 0, 'HunTeR SKINS-CASINO.COM', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/c6/c6741d7cf5a6a33ca2221ee933f33e665ffbbb9f_full.jpg', 0),
(8, '76561198088067825', 'https://steamcommunity.com/tradeoffer/new/?partner=127802097&token=vcDqlXQm', 0, 0, 'QwertyBits #Holo Waifus', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/32/32391fa971591c9e2790e8be3e3a9691d14b7a3a_full.jpg', 0),
(9, '76561198083524363', 'https://steamcommunity.com/tradeoffer/new/?partner=123258635&token=mg1i1HK_', 0, 1, 'Верн | CSGO-HELL.RU', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/10/10e531e7218eec41e563d6d477ca197869d6258e_full.jpg', 0),
(10, '76561198124851591', 'https://steamcommunity.com/tradeoffer/new/?partner=164585863&token=zXMAXEaK', 1.4, 1, 'Uni | CSGO-HELL.RU', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1d/1ddf975e8337a0b57c192c405268bb7e46d5a634_full.jpg', 3),
(11, '76561198189616117', NULL, 0, 0, 'twitch.tv/bogdans2609', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/68/68ed1fe9d36ff440eac3e44f5693078f5f9046ac_full.jpg', 0),
(12, '76561198085454468', 'https://steamcommunity.com/tradeoffer/new/?partner=125188740&token=0k0sWfo-', 0, 0, 'TED | EZLIFECSGO.RU', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/17/17e94af8fbb2a11391fa20b295b9aa22bbcf3e52_full.jpg', 0),
(13, '76561198052519139', NULL, 0, 0, 'Seter430', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/3b/3b7c82f9ac47f52b677d8b37ded52bd6e14e3ead_full.jpg', 0),
(14, '76561198081389488', 'https://steamcommunity.com/tradeoffer/new/?partner=121123760&token=zkjlXBwE', 0, 0, 'Indaialon', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d5/d5ea6deafb584ddaacada1de74689d0605c9066a_full.jpg', 0),
(15, '76561198113901917', 'https://steamcommunity.com/tradeoffer/new/?partner=153636189&token=f3jla85R', 0, 0, 'NOKIA', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/7f/7f748d350a48b593a4c99a44113d5c8ae0d25e87_full.jpg', 0),
(16, '76561198198823546', 'https://steamcommunity.com/tradeoffer/new/?partner=238557818&token=Hx7ZqS5c', 0, 0, 'BOT#1 | CSGO-Hell.ru', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/48/48a012fd1958ca6d3c7497dacc91d5f71141dfcd_full.jpg', 0),
(17, '76561198074892915', 'https://steamcommunity.com/tradeoffer/new/?partner=114627187&token=WwV2E6qH', 1.16, 0, 'youtube.com/c/MrOBZORKA1', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/d0/d07e40e2fdc2c18da72ee679a611e44ad1930937_full.jpg', 4),
(18, '76561198096771940', NULL, 0, 0, 'NeoKing', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/26/265713926e95d4d3dc8c5f1e0fe61bfd5709daaa_full.jpg', 0),
(19, '76561198103703702', NULL, 0, 0, 'pew pew :]', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/27/2754a3d20f99a19e1f5c2c586f887cef6d424e76_full.jpg', 0),
(20, '76561198168693644', 'https://steamcommunity.com/tradeoffer/new/?partner=208427916&token=RoYq5zsT', 1.69, 0, 'Neo|CSGO-Hell.ru', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/db/db46cfc413a9bc72a67497bf21c1241623fd0487_full.jpg', 3),
(21, '76561198144185023', 'https://steamcommunity.com/tradeoffer/new/?partner=183919295&token=_ylXVyQ5', 0, 0, 'Tom|Hardi', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/1f/1f6707f21478dad313ea193da48b24c8e259e4cb_full.jpg', 0),
(22, '76561198179773853', 'https://steamcommunity.com/tradeoffer/new/?partner=219508125&token=v0ZG06GA', 0, 0, 'Adm1x', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/31/31e441252113d0d73e72ccb1a4c5fd876cb1d7c1_full.jpg', 0),
(24, '76561198219451299', 'https://steamcommunity.com/tradeoffer/new/?partner=259185571&token=XOkwWH5_', 0, 0, 'Mr_Vorigaz | CSGO-HELL.RU', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/e9/e998578cce83e0b73002396aa0369cc5542362af_full.jpg', 0),
(23, '76561198036614730', 'https://steamcommunity.com/tradeoffer/new/?partner=76349002&token=JgZ7iGXR', 0, 0, 'SED KennyS', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/61/61a1de3ad667befe9da0d119a899738288c1f5d6_full.jpg', 0),
(25, '76561198126079160', NULL, 0, 0, 'bot 28', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/11/1132e68e74232da887ee7cc670381339338ea290_full.jpg', 0),
(26, '76561198071543352', NULL, 0, 0, 'RaMi4', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/f1/f137e6dfec03c6034fdf76fbcc0b62a66ea22e12_full.jpg', 0),
(27, '76561198030364068', 'https://steamcommunity.com/tradeoffer/new/?partner=70098340&token=X22Yf_vS', 0, 0, 'rewCSGOTrophy.ru ♥ CSgetto.com', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/87/87152f0e2b95ac6ae06e535cdf8e3bbdf804d61a_full.jpg', 0),
(29, '76561198068851675', 'https://steamcommunity.com/tradeoffer/new/?partner=108585947&token=qx0WK42A', 0, 0, 'Normalisera', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/6f/6f3c673a7797d8f6ba9024c97e07ac10c90246fb_full.jpg', 0),
(28, '76561198130056077', 'https://steamcommunity.com/tradeoffer/new/?partner=169790349&token=v8nSbe-w', 0.82, 0, 'Bogdan', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/3c/3ce7fd0c1a5225790d67d90d4f1e60d2d29d2037_full.jpg', 2),
(30, '76561198241231450', NULL, 0, 0, 'Kazuto "Kirito"', 'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/e3/e3b26d8cb60550635841e894bb39466e25684984_full.jpg', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
