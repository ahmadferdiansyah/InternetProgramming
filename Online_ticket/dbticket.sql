-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jan 2021 pada 19.17
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbticket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `category_id` varchar(5) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`) VALUES
('1', 'KONSER', 'TIKET UNTUK MENONTON KONSER'),
('2', 'BIOSKOP', 'TIKET UNTUK MENONTON FILM'),
('3', 'MUSIKAL', 'TIKET UNTUK MENONTON MUSIKAL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `product_id` varchar(5) NOT NULL,
  `search_name` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `company` varchar(60) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` varchar(5) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `search_name`, `name`, `company`, `description`, `price`, `category_id`, `image`) VALUES
('1', 'KPOP', 'Tiket TWICE', 'JYP', 'TIKET UNTUK MENONTON TWICE', 100000, '1', 'https://static.tvtropes.org/pmwiki/pub/images/twice_2.png'),
('2', 'KPOP', 'Tiket ITZY', 'JYP', 'TIKET UNTUK MENONTON ITZY', 100000, '1', 'https://www.cosmopolitan.co.id/newtest/vrgallery/teaser/Itzy_64_20190204130858ZqiXyP.jpg'),
('3', 'KPOP', 'Tiket BLACKPINK', 'YG', 'TIKET UNTUK MENONTON BLACKPINK', 150000, '1', 'https://asset.kompas.com/crops/u2wwPiKoNNS96C8AZh4WcOXRwYk=/0x0:0x0/750x500/data/photo/2020/08/28/5f488c17e8c0c.jpeg'),
('4', 'KARTUN', 'BOIBOIBOY THE MOVIE 2', 'Animonsta Studios', 'TIKET UNTUK MENONTON BOIBOIBOY THE MOVIE 2', 25000, '2', 'https://i.pinimg.com/originals/7a/58/c2/7a58c2e2a75e57d3daeb584a4b9c81e8.jpg'),
('5', 'ACTION', 'Avengers: Endgame', 'Marvel Studios', 'TIKET UNTUK MENONTON AVENGERS : ENDGAME', 30000, '2', 'https://images-na.ssl-images-amazon.com/images/I/81ai6zx6eXL._AC_SL1304_.jpg'),
('6', 'ACTION', 'Aquaman', 'DC Films', 'TIKET UNTUK MENONTON AQUAMAN', 30000, '2', 'https://upload.wikimedia.org/wikipedia/id/3/3a/Aquaman_poster.jpg'),
('7', 'MUSIKAL', '\'CATS\'', 'Multiple productions worldwide', 'TIKET UNTUK MENONTON CATS MUSIKAL', 50000, '3', 'https://upload.wikimedia.org/wikipedia/en/thumb/3/3e/CatsMusicalLogo.jpg/220px-CatsMusicalLogo.jpg'),
('8', 'MUSIKAL', 'MAMMA MIA!', 'Universal Pictures Playtone', 'TIKET UNTUK MENONTON MAMMA MIA MUSIKAL', 40000, '3', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Mammamiaposter.jpg/220px-Mammamiaposter.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promotion`
--

CREATE TABLE `promotion` (
  `promotion_id` varchar(5) NOT NULL,
  `product_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `promotion`
--

INSERT INTO `promotion` (`promotion_id`, `product_id`) VALUES
('2', '3'),
('1', '6');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotion_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Ketidakleluasaan untuk tabel `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
