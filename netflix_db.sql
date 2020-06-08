-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 May 2020, 17:16:52
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `netflix_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `netflix_kullanicilar`
--

CREATE TABLE `netflix_kullanicilar` (
  `user_id` int(11) NOT NULL,
  `sifre` varchar(150) NOT NULL,
  `adsoyad` varchar(255) NOT NULL,
  `eposta` varchar(255) NOT NULL,
  `dogum_tarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `netflix_kullanicilar`
--

INSERT INTO `netflix_kullanicilar` (`user_id`, `sifre`, `adsoyad`, `eposta`, `dogum_tarihi`) VALUES
(1, '1', 'Mehmet KIYAK', 'mkiyak', '1997-06-13'),
(2, '123456', 'Abdullah GÜMÜŞ', 'abdullah@hotmail.com', '1994-05-12'),
(3, '1', 'Derya ÖZGÜ', 'derya', '1997-02-24');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `netflix_kullaniciprogram`
--

CREATE TABLE `netflix_kullaniciprogram` (
  `kp_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `program` int(11) NOT NULL,
  `tarih` date NOT NULL,
  `sure` time NOT NULL,
  `bolum` int(11) NOT NULL,
  `puan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `netflix_kullaniciprogram`
--

INSERT INTO `netflix_kullaniciprogram` (`kp_id`, `user`, `program`, `tarih`, `sure`, `bolum`, `puan`) VALUES
(1, 1, 2, '2020-05-16', '00:00:00', 1, 0),
(2, 1, 1, '2020-05-17', '00:00:00', 2, 6),
(3, 1, 3, '2020-05-16', '00:00:00', 2, 0),
(4, 3, 1, '2020-05-16', '00:00:00', 2, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `netflix_programlar`
--

CREATE TABLE `netflix_programlar` (
  `program_id` int(11) NOT NULL,
  `program_adi` varchar(255) NOT NULL,
  `tip` varchar(20) NOT NULL,
  `bolum` int(11) NOT NULL,
  `uzunluk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `netflix_programlar`
--

INSERT INTO `netflix_programlar` (`program_id`, `program_adi`, `tip`, `bolum`, `uzunluk`) VALUES
(1, 'Recep İvedik 6', 'Film', 1, 90),
(2, 'Assassin s Creed', 'Film', 1, 90),
(3, 'Alaca Karanlık', 'Film', 1, 90),
(4, 'Yüzüklerin Efendisi İki Kule', 'Film', 1, 90),
(5, 'Maske', 'Film', 1, 90),
(6, 'Kara Şövalye', 'Film', 1, 90),
(7, 'Sherlock Holmes', 'Film', 1, 90),
(8, 'Yüzüklerin Efendisi kralın Dönüşü', 'Film', 1, 90),
(9, 'Transformers Kayip Çağ', 'Film', 1, 90),
(10, 'Başlangıç', 'Film', 1, 90),
(11, 'Interstellar', 'Film', 1, 90),
(12, 'Harry Potter lüm Yadigarları', 'Film', 1, 90),
(13, 'Jurassic World', 'Film', 1, 90),
(14, 'Fantastik Canavarlar', 'Film', 1, 90),
(15, 'Ninja Kaplumbağalar', 'Film', 1, 90),
(16, 'Kuşlarla Dans', 'Film', 1, 90),
(17, 'Mission Blue', 'Film', 1, 90),
(18, 'Mercan Peşinde', 'Film', 1, 90),
(19, 'Dream Big', 'Film', 1, 90),
(20, 'Ay daki Son Adam', 'Film', 1, 90),
(21, 'Plastik Okyanus', 'Film', 1, 90),
(22, 'Rakamlarla Tahmin', 'Film', 1, 90),
(23, 'Ben Efsaneyim', 'Film', 1, 90),
(24, 'Arif V 216', 'Film', 1, 90),
(25, 'pk', 'Film', 1, 90),
(26, 'Örümcek Adam', 'Film', 1, 90),
(27, 'Jurassic Park', 'Film', 1, 90),
(28, 'Frankestein', 'Film', 1, 90),
(29, 'Gezegenimiz', 'Film', 1, 90),
(30, '72 sevimli hayvan', 'Film', 1, 90),
(31, 'Kuşçular', 'Film', 1, 90),
(32, 'Marsta Keşif', 'Film', 1, 90),
(33, 'Gezegenimiz', 'Film', 1, 90),
(34, 'Pandemic', 'Film', 1, 90),
(35, 'Pokemon', 'Film', 1, 90),
(36, 'Şirinler', 'Film', 1, 90),
(37, 'Charlie nin Çikolata Fabrikasi', 'Film', 1, 90),
(38, 'Alvin ve Sincaplar', 'Film', 1, 90),
(39, 'Scooby-Doo', 'Film', 1, 90),
(40, 'Kung Fu Panda', 'Film', 1, 90),
(41, 'Mr. Bean Tatilde', 'Film', 1, 90),
(42, 'Shrek', 'Film', 1, 90),
(43, 'Mega Zeka', 'Film', 1, 90),
(44, 'Bizi Hatirla', 'Film', 1, 90),
(45, 'Delibal', 'Film', 1, 90),
(46, 'Kardeşim Benim', 'Film', 1, 90),
(47, 'Dangal', 'Film', 1, 90),
(48, 'Yerçekimi', 'Film', 1, 90),
(49, 'Jaws', 'Film', 1, 90),
(50, 'Da Vinci Şifresi', 'Film', 1, 90),
(51, 'Marwel Iron Fist', 'Dizi', 10, 65),
(52, 'Ejderhalar', 'Dizi', 10, 65),
(53, 'Diriliş Ertuğrul', 'Dizi', 135, 65),
(54, 'Trol Avcıları: Arcadia Hikayeleri', 'Dizi', 10, 65),
(55, 'How I met your mother', 'Dizi', 10, 65),
(56, 'Leyla ile Mecnun', 'Dizi', 10, 65),
(57, 'Beni Böyle Sev', 'Dizi', 10, 65),
(58, 'Patron Bebek Yine İş başında', 'Dizi', 10, 65),
(59, 'Atiye', 'Dizi', 10, 65),
(60, 'Maşa ve Koca Ayı', 'Dizi', 10, 65),
(61, 'Sünger Bob', 'Dizi', 10, 65),
(62, 'Stranger Tings', 'Dizi', 10, 65),
(63, 'The Originals', 'Dizi', 10, 65),
(64, 'Angry Birds', 'Dizi', 10, 65),
(65, 'Criminal', 'Dizi', 10, 65),
(66, 'Beyblade', 'Dizi', 10, 65),
(67, 'Sonic X ', 'Dizi', 10, 65),
(68, 'Kung Fu Panda Muhteşem Sırlar', 'Dizi', 10, 65),
(69, 'The Blacklist', 'Dizi', 10, 65),
(70, 'Dünyanin En Sira Dişi Evleri', 'Tv Show', 1, 75),
(71, 'Car Masters', 'Tv Show', 1, 75),
(72, 'Büyük Tasarimlar', 'Tv Show', 1, 75),
(73, 'Basketball or Nothing', 'Tv Show', 1, 75),
(74, 'The Big Family Cooking', 'Tv Show', 1, 75),
(75, 'Siradişi Kulübeler', 'Tv Show', 1, 75);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `netflix_programtur`
--

CREATE TABLE `netflix_programtur` (
  `bag_id` int(11) NOT NULL,
  `program` int(11) NOT NULL,
  `tur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `netflix_programtur`
--

INSERT INTO `netflix_programtur` (`bag_id`, `program`, `tur`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 3, 1),
(8, 3, 2),
(9, 3, 5),
(10, 4, 1),
(11, 4, 7),
(12, 4, 5),
(13, 4, 12),
(14, 5, 1),
(15, 5, 7),
(16, 5, 5),
(17, 5, 12),
(18, 6, 1),
(19, 6, 7),
(20, 6, 5),
(21, 6, 12),
(22, 8, 1),
(23, 8, 7),
(24, 8, 5),
(25, 8, 12),
(26, 7, 1),
(27, 7, 7),
(28, 9, 1),
(29, 9, 7),
(30, 10, 1),
(31, 10, 7),
(32, 11, 1),
(33, 11, 7),
(34, 11, 3),
(35, 12, 1),
(36, 12, 7),
(37, 12, 5),
(38, 12, 12),
(39, 12, 10),
(40, 12, 17),
(41, 13, 1),
(42, 13, 7),
(43, 14, 1),
(44, 14, 7),
(45, 14, 10),
(46, 14, 17),
(47, 15, 1),
(48, 15, 7),
(49, 15, 5),
(50, 15, 12),
(51, 16, 8),
(52, 17, 8),
(53, 18, 8),
(54, 19, 8),
(55, 20, 8),
(56, 21, 8),
(57, 22, 8),
(58, 23, 5),
(59, 23, 12),
(60, 24, 5),
(61, 24, 12),
(62, 24, 2),
(63, 25, 5),
(64, 25, 6),
(65, 26, 1),
(66, 26, 7),
(67, 26, 5),
(68, 26, 12),
(69, 27, 5),
(70, 27, 12),
(71, 27, 1),
(72, 28, 5),
(73, 28, 12),
(74, 28, 1),
(75, 28, 15),
(76, 29, 8),
(77, 29, 5),
(78, 29, 16),
(79, 30, 8),
(80, 30, 5),
(81, 30, 16),
(82, 31, 8),
(83, 31, 5),
(84, 31, 16),
(85, 32, 8),
(86, 32, 5),
(87, 32, 16),
(88, 33, 8),
(89, 33, 5),
(90, 33, 16),
(91, 34, 8),
(92, 34, 5),
(93, 34, 16),
(94, 35, 10),
(95, 35, 17),
(96, 36, 10),
(97, 36, 17),
(98, 36, 2),
(99, 37, 10),
(100, 37, 17),
(101, 37, 2),
(102, 38, 10),
(103, 38, 17),
(104, 39, 10),
(105, 39, 17),
(106, 40, 10),
(107, 40, 17),
(108, 40, 1),
(109, 40, 7),
(110, 41, 10),
(111, 41, 17),
(112, 42, 10),
(113, 42, 17),
(114, 42, 2),
(115, 43, 10),
(116, 43, 17),
(117, 43, 2),
(118, 44, 3),
(119, 45, 3),
(120, 45, 6),
(121, 46, 2),
(122, 46, 3),
(123, 47, 3),
(124, 48, 3),
(125, 48, 5),
(126, 49, 4),
(127, 50, 4),
(128, 51, 1),
(129, 51, 7),
(130, 52, 10),
(131, 52, 17),
(132, 52, 1),
(133, 52, 7),
(134, 53, 1),
(135, 53, 7),
(136, 54, 10),
(137, 54, 17),
(138, 54, 1),
(139, 54, 7),
(140, 55, 6),
(141, 56, 6),
(142, 57, 3),
(143, 57, 6),
(144, 58, 10),
(145, 58, 17),
(146, 58, 2),
(147, 59, 1),
(148, 59, 7),
(149, 59, 2),
(150, 60, 10),
(151, 60, 17),
(152, 61, 10),
(153, 61, 17),
(154, 61, 2),
(155, 62, 1),
(156, 62, 7),
(157, 62, 15),
(158, 63, 3),
(159, 63, 15),
(160, 64, 2),
(161, 64, 10),
(162, 64, 17),
(163, 65, 4),
(164, 66, 10),
(165, 66, 11),
(166, 66, 17),
(167, 67, 11),
(168, 67, 1),
(169, 67, 7),
(170, 68, 1),
(171, 68, 7),
(172, 69, 1),
(173, 69, 7),
(174, 69, 4),
(175, 70, 14),
(176, 71, 14),
(177, 72, 14),
(178, 73, 14),
(179, 74, 14),
(180, 75, 14);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `netflix_turler`
--

CREATE TABLE `netflix_turler` (
  `tur_id` int(11) NOT NULL,
  `tur_adi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `netflix_turler`
--

INSERT INTO `netflix_turler` (`tur_id`, `tur_adi`) VALUES
(1, 'Aksiyon'),
(2, 'Komedi'),
(3, 'Drama'),
(4, 'Gerilim'),
(5, 'Bilim Kurgu'),
(6, 'Romantik'),
(7, 'Macera'),
(8, 'Belgesel'),
(9, 'Gizem'),
(10, 'Aile'),
(11, 'Anime'),
(12, 'Fantastik'),
(13, 'Suç'),
(14, 'Reality Program'),
(15, 'Korku'),
(16, 'Doğa'),
(17, 'Çocuk');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `netflix_kullanicilar`
--
ALTER TABLE `netflix_kullanicilar`
  ADD PRIMARY KEY (`user_id`);

--
-- Tablo için indeksler `netflix_kullaniciprogram`
--
ALTER TABLE `netflix_kullaniciprogram`
  ADD PRIMARY KEY (`kp_id`);

--
-- Tablo için indeksler `netflix_programlar`
--
ALTER TABLE `netflix_programlar`
  ADD PRIMARY KEY (`program_id`);

--
-- Tablo için indeksler `netflix_programtur`
--
ALTER TABLE `netflix_programtur`
  ADD PRIMARY KEY (`bag_id`);

--
-- Tablo için indeksler `netflix_turler`
--
ALTER TABLE `netflix_turler`
  ADD PRIMARY KEY (`tur_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `netflix_kullanicilar`
--
ALTER TABLE `netflix_kullanicilar`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `netflix_kullaniciprogram`
--
ALTER TABLE `netflix_kullaniciprogram`
  MODIFY `kp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `netflix_programlar`
--
ALTER TABLE `netflix_programlar`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Tablo için AUTO_INCREMENT değeri `netflix_programtur`
--
ALTER TABLE `netflix_programtur`
  MODIFY `bag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- Tablo için AUTO_INCREMENT değeri `netflix_turler`
--
ALTER TABLE `netflix_turler`
  MODIFY `tur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
