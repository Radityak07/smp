-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2019 at 02:35 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_smp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `gambar` varchar(255) NOT NULL DEFAULT 'default.png',
  `theme` varchar(20) NOT NULL DEFAULT 'sb_admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `nama`, `status`, `gambar`, `theme`) VALUES
(2, 'admin@admin.com', 'admin', 'admin', 1, 'default.png', 'sb_admin');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(3) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`, `jenis_kelamin`, `alamat`, `username`, `password`) VALUES
(1, 'Joko tingkir', 'Laki-Laki', '<p>\n	adajsdkajsdkasjdklajd</p>\n', 'joko123', '12345'),
(2, 'Jaka mansur', 'Laki-Laki', '<p>\n	kasdjajsdklajslkdjaksjd</p>\n', 'jaka12', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(3) NOT NULL,
  `id_soal` int(3) NOT NULL,
  `jawaban_a` varchar(150) NOT NULL,
  `jawaban_b` varchar(150) NOT NULL,
  `jawaban_c` varchar(150) NOT NULL,
  `jawaban_d` varchar(150) NOT NULL,
  `jawaban_benar` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `id_soal`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`, `jawaban_benar`) VALUES
(2, 12, 'Sabana, sungai dan jalan', 'laut, danau dan sungai', 'stepa, sabana dan sungai', 'danau, padang rumput ', 'B'),
(3, 32, 'Tumbuhan', 'Jasad renik', 'hewan', 'iklim', 'D'),
(4, 22, '{3}', '{1, 2, 3, 4}', '{1, 3}', ' {2, 4}', 'A'),
(5, 2, 'Pengamatan', 'Mengkomunikasikan', 'Membuat Inferensi', 'Mempresentasikan', 'A'),
(6, 21, 'Waktu', 'Planet', 'Ruang', 'Ekosistem', 'C'),
(7, 31, '{4, 8, 10}', '{1, 2, 3, 5, 6, 7, 9}', '{3, 4, 5, 7, 8, 10}', '{3, 5, 7}', 'A'),
(8, 41, 'Danau', 'Sungai', 'Sawah', 'muara', 'C'),
(9, 11, 'satuan', 'pengukuran', 'besaran pokok', 'besaran turunan', 'A'),
(10, 13, 'Adanya persamaan potensi alam yang dimiliki setiap ruang', 'Suatu ruang memiliki iklim tropis diseluruh wilayah negara', 'Memiliki ciri khas yang berbeda-beda antara suatu ruang dengan ruang lainnya', 'Adanya keadaan alam yang relatif sama antara satu ruang dengan ruang lainnya', 'C'),
(11, 3, 'Pengamatan', 'Mengkomunikasikan', 'Membuat Inferensi', 'Mempresentasikan', 'C'),
(12, 33, 'Ekosistem', ' Padang lamun', 'Ekosistem perairan', '  Ekosistem air payau', 'C'),
(13, 4, 'pokok', 'vektor', 'scalar', 'turunan', 'A'),
(14, 15, ' mobilitas penduduk   ', ' sensus penduduk', 'sosialisasi penduduk', 'populasi penduduk', 'A'),
(15, 23, '5', '6', '7', '8', 'A'),
(16, 14, 'Karena penduduk wilayah pegunungan lebih kaya daripada daerah pantai', 'Karena penduduk wilayah pegunungan membutuhkkan ikan laut sebagai protein hewani dalam kehidupannya', 'Karena penduduk wilayah pegunungan membutuhkan sayur-sayuran dan buah-buahan untuk memenuhi kebutuhannya', 'Karena penduduk pegunungan lebih makmur hidupnya daripada penduduk pantai', 'B'),
(17, 24, '{0, 1, 2, 3, 4, 5}', '{1, 2, 3, 4, 5}', '{-1, 0, 1, 2, 3, 4}', '{-1, 0, 1, 2, 3, 4, 5}', 'B'),
(18, 16, 'Membangun sekolah dan universitas yang berstandar Internasional', 'Membangun jalan, jembatan, pelabuhan dan bandara diseluruh wilayah Indonesia', 'Membangun Rumah sakit dan Puskesmas sampai daerah yang terpencil', 'Membangun industri dan pertanian untuk memenuhi kebutuhan masyarakat Indonesia', 'B'),
(19, 25, '5', '6', '7', '8', 'A'),
(20, 35, 'Air genangan ', 'Sungai', 'Selokan', ' Muara', 'D'),
(21, 5, 'gaya dan luas', 'berat dan arus', 'gaya dan berat', 'tegangan dan gaya', 'C'),
(22, 36, ' Bakau dan nipah', 'Mangga dan rambutan', '  Lamun dan terumbuh karang', ' Mangrove, nipah dan terumbuh karang', 'A'),
(24, 17, 'Televisi', 'Radio', 'Mesin Industri  ', 'Internet', 'C'),
(25, 37, 'Terumbuh karang', ' Lamun', '  Bintang laut', ' Bakau', 'B'),
(26, 27, ' {1, 2, 3, .... , 9}', '{0, 1, 3, 5, 7, 9}', '{2, 4, 6, 8}', '{1, 3, 5, 7, 9}', 'D'),
(27, 7, 'massa, waktu, gaya, dan suhu', 'massa, usaha, waktu, dan suhu', 'panjang, massa, waktu, dan suhu', 'panjang, volume, massa dan kecepatan', 'C'),
(28, 18, 'Saling menggantikan', 'Saling melengkapi  ', 'Kesempatan antara', ' Keadaan yang bisa dipindahkan', 'B'),
(29, 28, 'P', 'Q', '{0}', ' Ø', 'B'),
(30, 38, '1, 2 dan 3', ' 2, 3 dan 4', '1, 2 dan 4', '1, 3 dan 4', 'B'),
(31, 9, '10 m/s', '20 m/s', '30 m/s', '40 m/s', 'B'),
(32, 10, 'massa dan suhu', 'massa dan waktu', 'massa dan volume', 'massa dan panjang', 'D'),
(33, 43, '200 g/L', '250 g/L', '350 g/L', '500 g/L', 'D'),
(34, 44, '1, 2, dan 3', '1 dan 3', '2 dan 4', '4', 'A'),
(35, 45, 'Platipus', 'Landak', 'Katak', 'Kadal', 'D'),
(36, 30, '18', '19', '20', '21', 'D'),
(37, 29, '1', '2', '3', '4', 'A'),
(38, 26, '8', '9', '10', '11', 'C'),
(39, 19, 'karena wilayah C lebih makmur daripada wilayah B', 'Karena wilayah C lebih kaya daripada wilayah B', 'Karena wilayah C lebih banyak penduduknya daripada wilayah B', 'Karena wilayah C lebih dekat daripada wilayah B', 'D'),
(40, 20, 'Ruang', 'Informasi', 'Transportasi', 'Interaksi', 'D'),
(41, 34, 'Air tawar', '  Air payau', ' Air sungai', 'Air laut', 'C'),
(42, 39, 'Biotik', 'Abiotik', 'Erosi', 'Abrasi', 'B'),
(43, 40, 'untuk membuat atap rumah', 'Sebagai bahan utama membuat tikar', 'Sebagai tempat layanan mencari ikan dan udang', 'Sebagai tempat berkembang biak ikan, udang, dan jenis burung', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_soal`
--

CREATE TABLE `kategori_soal` (
  `id_kategori` int(3) NOT NULL,
  `id_mapel` int(3) NOT NULL,
  `kategori` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_soal`
--

INSERT INTO `kategori_soal` (`id_kategori`, `id_mapel`, `kategori`) VALUES
(3, 3, 'Soal latiha uas IPA'),
(4, 7, 'Soal latihan uas Pengertian Lingkungan Hidup'),
(5, 6, 'Soal latiha uas IPS'),
(7, 4, 'Soal latiha uas matematika');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(3) NOT NULL,
  `nama_kelas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, '7 A'),
(2, '7 B');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `id_kelas`, `nama_mapel`) VALUES
(3, 1, 'ipa'),
(4, 1, 'matematika'),
(6, 2, 'ips'),
(7, 2, 'pendidikan lingkungan hidup');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(3) NOT NULL,
  `id_mapel` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `dekripsi` text NOT NULL,
  `file_materi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(3) NOT NULL,
  `id_siswa` int(3) NOT NULL,
  `nilai` int(3) NOT NULL,
  `tgl_quiz` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_siswa`, `nilai`, `tgl_quiz`) VALUES
(11, 1, 2, '2019-07-18'),
(12, 1, 0, '2019-07-23'),
(13, 1, 1, '2019-07-23'),
(14, 1, 0, '2019-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `pengajar`
--

CREATE TABLE `pengajar` (
  `id_pengajar` int(4) NOT NULL,
  `id_guru` int(4) NOT NULL,
  `id_kelas` int(4) NOT NULL,
  `id_mapel` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajar`
--

INSERT INTO `pengajar` (`id_pengajar`, `id_guru`, `id_kelas`, `id_mapel`) VALUES
(1, 2, 1, 3),
(2, 2, 2, 4),
(3, 1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_quiz`
--

CREATE TABLE `riwayat_quiz` (
  `id_riwayat` int(4) NOT NULL,
  `id_nilai` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `id_soal` int(4) NOT NULL,
  `jawaban_siswa` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riwayat_quiz`
--

INSERT INTO `riwayat_quiz` (`id_riwayat`, `id_nilai`, `id_siswa`, `id_soal`, `jawaban_siswa`) VALUES
(21, 11, 1, 7, 'A'),
(22, 11, 1, 9, 'B'),
(23, 11, 1, 2, 'B'),
(24, 11, 1, 5, 'B'),
(25, 11, 1, 45, 'A'),
(26, 11, 1, 43, 'C'),
(27, 11, 1, 4, 'A'),
(28, 11, 1, 10, 'B'),
(29, 11, 1, 44, 'B'),
(30, 11, 1, 3, 'A'),
(31, 12, 1, 5, ''),
(32, 12, 1, 4, ''),
(33, 12, 1, 3, ''),
(34, 12, 1, 7, ''),
(35, 12, 1, 45, ''),
(36, 12, 1, 2, ''),
(37, 12, 1, 9, ''),
(38, 12, 1, 43, ''),
(39, 12, 1, 44, ''),
(40, 12, 1, 10, 'C'),
(41, 13, 1, 2, ''),
(42, 13, 1, 45, 'A'),
(43, 13, 1, 43, ''),
(44, 13, 1, 5, ''),
(45, 13, 1, 7, ''),
(46, 13, 1, 4, 'A'),
(47, 13, 1, 44, ''),
(48, 13, 1, 3, ''),
(49, 13, 1, 9, ''),
(50, 13, 1, 10, ''),
(51, 14, 1, 43, ''),
(52, 14, 1, 45, ''),
(53, 14, 1, 5, ''),
(54, 14, 1, 44, ''),
(55, 14, 1, 3, ''),
(56, 14, 1, 9, 'C'),
(57, 14, 1, 7, ''),
(58, 14, 1, 4, ''),
(59, 14, 1, 2, ''),
(60, 14, 1, 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(3) NOT NULL,
  `id_kelas` int(3) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nis` varchar(24) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perumpuan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_kelas`, `nama`, `nis`, `tgl_lahir`, `alamat`, `username`, `password`, `jenis_kelamin`) VALUES
(1, 1, 'Yudisthira A', '15441155', '2019-07-01', '<p>\n	adasdasd asdasd asda dadasda</p>\n', '15441155', '123', 'Laki-Laki'),
(2, 2, 'Audrey Aubrey', '16114422', '2019-07-07', '<p>\n	sfdsdfsdfsdfsdfs</p>\n', '16114422', '123', 'Perumpuan');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(4) NOT NULL,
  `id_kategori` int(3) NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `id_kategori`, `pertanyaan`) VALUES
(2, 3, '<p>\n	Langkah awal yang harus dilakukan dalam sebuah penyelidikan IPA adalah ....</p>\n'),
(3, 3, '<p>\n	Kegiatan merumuskan penjelasan berdasarkan pengamatan yang bertujuan untuk</p>\n<p>\n	menemukan pola-pola atau hubungan antaraspek yang diamati dan membuat</p>\n<div>\n	perkiraan, disebut.....</div>\n'),
(4, 3, '<p>\n	Besaran yang tidak tergantung pada besaran-besaran yang lain disebut</p>\n<div>\n	besaran....</div>\n'),
(5, 3, '<p>\n	Besaran massa dapat diturunkan menjadi ....</p>\n'),
(7, 3, '<p>\n	Kelompok besaran pokok yaitu ....</p>\n'),
(9, 3, '<p>\n	Sebuah kendaraan melaju dengan kecepatan 72 km/jam. Jika dinyatakan dalam</p>\n<div>\n	SI, maka kecepatan kendaraan tersebut adalah ....</div>\n'),
(10, 3, '<p>\n	Massa jenis merupakan besaran turunan. Besaran ini diturunkan dari....</p>\n'),
(12, 5, '<p>\n	Ruang pada daerah bisa terwujud</p>\n'),
(13, 5, '<p>\n	Apa yang menyebabkan terjadinya terkaitan antar ruang?</p>\n'),
(14, 5, '<p>\n	Mengapa penduduk wilayah gunung membutuhkan pendudukan wilayah pantai?</p>\n'),
(15, 5, '<p>\n	interaksi antar ruang yang berwujud pergerakan manusia disebut ?</p>\n'),
(16, 5, '<p>\n	Apakah yang dilakukan pemerintah supaya bisa memudahkan transfer barang kebutuhan pokok dari wilayah satu wilayah lain ?</p>\n'),
(17, 5, '<p>\n	Interaksi antar ruang&nbsp; dalam bidang informasi dapat dilakukan dengan media ?</p>\n'),
(18, 5, '<p>\n	&nbsp;Perhatikan Gambar dibawah ini!</p>\n<p>\n	&nbsp; &nbsp;<img src=\"https://3.bp.blogspot.com/-qYRpn2b_wwk/WV8r11OiMrI/AAAAAAAACK0/llZo1uLaK5YFghqL__syQyfk4tPpjonnwCLcBGAs/s1600/Interaksi+antarruang.png\" /></p>\n<p>\n	Gambar Tersebut menunjukan interaksi social yang ?</p>\n<p>\n	&nbsp;</p>\n'),
(19, 5, '<p>\n	&nbsp;Perhatikan Gambar Dibawah ini!!</p>\n<p>\n	<img src=\"https://4.bp.blogspot.com/-DfD0Os4gmVI/WV8sEVqyLaI/AAAAAAAACK4/ssKgC9Lzx1slylFe65-lnZqz7OUkxt_JgCLcBGAs/s1600/Interaksi+antarruang+2.png\" /></p>\n<p>\n	Mengapa wilayah A&nbsp; lebih cenderung memilih dengan wilayah C padahal pada sebelumnya berdagang dengan wilayah C&nbsp;</p>\n<p>\n	&nbsp;</p>\n'),
(20, 5, '<p>\n	Perhatikan Penyataan Berikut ini!</p>\n<p>\n	- Proses Timbal Balik</p>\n<p>\n	- Bisa mengpengaruhi kedua pihak atau lebih dalam betingkah laku</p>\n<p>\n	- Terjadi kontak langsung ataupun tidak langsung</p>\n<p>\n	Pernyataan tersebut menunjukan pengertian ?</p>\n<p>\n	&nbsp;</p>\n'),
(21, 5, '<p>\n	Perhatikan penyataan dibawah ini!!</p>\n<p>\n	- Tempat yang berada di muka bumi</p>\n<p>\n	- Mencakup sebagian atau seluruh muka bumi</p>\n<p>\n	- Tempat tinggal mahluk hidup</p>\n<p>\n	pernyataan tersebut menunjukan pengertian dari...</p>\n'),
(22, 7, '<p>\n	&nbsp;<span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">Diketahui A = {2, 3, 4} dan B = {1, 3}, maka A &cup; B adalah ...</span></p>\n'),
(23, 7, '<p>\n	<span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">Diketahui M = {a, i, u, e, o} dan N = {a, u, o}, maka n(M &cup; N) adalah ....</span></p>\n<p>\n	&nbsp;</p>\n'),
(24, 7, '<p>\n	<span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">Diketahui X = {x | x &lt; 6, x ? bilangan asli) dan Y = {x | - 1 &le; x &le; 5, x ? bilangan bulat}, maka anggota (X &cap; Y) adalah ....</span></p>\n'),
(25, 7, '<p>\n	<span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">Diketahui M = {a, i, u, e, o} dan N = {a, u, o}, maka n(M &cup; N) adalah ....</span></p>\n'),
(26, 7, '<p>\n	<span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">&nbsp;Jika n(A)= 10, n(B)= 8, dan n(A &cap; B)= 8, maka nilai n(A &cup; B) adalah ....</span></p>\n'),
(27, 7, '<p>\n	&nbsp;<span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">Diketahui S= {bilangan asli kurang dari 10} dan A= {2, 4, 6, 8}. Nilai dari A</span><span bottom:=\"\" color:=\"\" font-size:=\"\" height:=\"\" line-height:=\"\" margin:=\"\" outline:=\"\" padding:=\"\" position:=\"\" roboto=\"\" style=\"box-sizing: border-box; border: 0px; font-family: \" vertical-align:=\"\">c</span><span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">&nbsp;adalah ....</span></p>\n'),
(28, 7, '<p>\n	<span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">Jika P = {1, 5} dan Q = {1, 3, 5, 7}, maka P &cup; Q&nbsp; adalah ....</span></p>\n'),
(29, 7, '<p>\n	<span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">Diketahui P = {bilangan asli kurang dari 5}, Q = {bilangan cacah kurang dari 6}, dan R = {bilangan ganjil kurang dari 6}, maka n(P &ndash; (Q &cap; R)) adalah ....</span></p>\n'),
(30, 7, '<p>\n	<span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">Jika A = {x | -5 &le; x &le; 15, x ? bilangan bulat}, maka n(A) adalah ....</span></p>\n'),
(31, 7, '<p>\n	<span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">Perhatikan diagaram Venn berikut !&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p>\n<div class=\"separator\" clear:=\"\" color:=\"\" font-size:=\"\" margin:=\"\" outline:=\"\" padding:=\"\" roboto=\"\" style=\"box-sizing: border-box; border: 0px; font-family: \" text-align:=\"\" vertical-align:=\"\">\n	<a href=\"https://2.bp.blogspot.com/-dCqk3z449fk/W122XYGpvkI/AAAAAAAAIeI/2-n4md_KA7weXd-XTihH6Axf8t_pAG_8ACLcBGAs/s1600/Soal-Himpunan-Kelas-7-SMP-Gambar-1.jpg\" imageanchor=\"1\" style=\"box-sizing: border-box; border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px 1em; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(64, 64, 64); transition: all 0.7s ease-in-out 0s;\"><img alt=\"Contoh Soal Himpunan Matematika Kelas 7 Diagram Venn 1\" border=\"0\" data-original-height=\"169\" data-original-width=\"344\" height=\"157\" src=\"https://2.bp.blogspot.com/-dCqk3z449fk/W122XYGpvkI/AAAAAAAAIeI/2-n4md_KA7weXd-XTihH6Axf8t_pAG_8ACLcBGAs/s320/Soal-Himpunan-Kelas-7-SMP-Gambar-1.jpg\" style=\"box-sizing: border-box; height: auto; max-width: 100%; border: 0px;\" title=\"Soal Himpunan Matematika Kelas 7 Diagram Venn 1\" width=\"320\" /></a></div>\n<p>\n	<span font-size:=\"\" roboto=\"\" style=\"color: rgb(64, 64, 64); font-family: \">A &cap; B adalah ....</span></p>\n'),
(32, 4, '<p>\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">&nbsp;Di bawah ini yang tidak termasuk mahkluk hidup adalah &hellip;</span></p>\n'),
(33, 4, '<p>\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">Semua makhluk hidup yang ada di air dan hubungan timbale balik antara sesama makhluk hidup itu maupun dengan lingungan abiotik yang ada di sekelilingnya adalah pengertian dari &hellip;</span></p>\n'),
(34, 4, '<p>\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">Berdasarkan pembagian zona wilayahnya, yang tidak termasuk dalam ekosistem perairan adalah &hellip;.</span></p>\n'),
(35, 4, '<p>\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">Yang tidak termasuk dalam ekosistem air tawar adalah &hellip;.</span></p>\n'),
(36, 4, '<p>\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">Tumbuhan yang biasa hidup di daerah ekosistem air payau adalah &hellip;.</span></p>\n'),
(37, 4, '<p>\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">Tumbuhan laut yang bentuknya mirip dengan tumbuhan daratan karena dapat brefotosintesis adalah &hellip;.</span></p>\n'),
(38, 4, '<p style=\"text-align: start; \">\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">&nbsp;1)&nbsp; Sebagai sumber makanan bagi manusia</span></p>\n<p style=\"text-align: start; \">\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">&nbsp;2)&nbsp;&nbsp;&nbsp; Sebagai tempat berlindung hewan-hewan</span></p>\n<p style=\"text-align: start; \">\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">3)&nbsp;&nbsp;&nbsp; Melindungi pantai dan daratan dari erosi laut</span></p>\n<p>\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">4)&nbsp;&nbsp;&nbsp; Tempat tamasya dan penelitian Ilmu Penngetahuan&nbsp;</span></p>\n<p>\n	<span style=\"text-align: justify; background-color: transparent; color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px;\">&nbsp;Yang termasuk manfaat terumbuh karang ditunjukkan oleh nomor &hellip;</span></p>\n'),
(39, 4, '<p>\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">Bagian dari ekosistem yang bukan merupakan makhluk hidup disebut&nbsp;</span></p>\n'),
(40, 4, '<p>\n	<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">&nbsp;Salah satu manfaat pohon bakau adalah &hellip;</span></p>\n'),
(41, 4, '<p>\n	&nbsp;<span style=\"color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-size: 13px; text-align: justify;\">Yang merupakan perairan buatan adalah &hellip;.</span></p>\n'),
(43, 3, '<div>\n	Jika kita melarutkan 20 gram gula ke dalam 100 mL air, maka konsentrasi</div>\n<div>\n	larutan garam yang terjadi adalah ....</div>\n'),
(44, 3, '<div>\n	Perhatikan pernyataan berikut!</div>\n<div>\n	1. Mempunyai nilai tetap</div>\n<div>\n	2. Mudah ditiru dan diadakan kembali sebagai satuan yang sama&rsquo;</div>\n<div>\n	3. Dapat digunakan semua orang di seluruh dunia&rsquo;</div>\n<div>\n	4. Mudah dibawa</div>\n<div>\n	Syarat satuan SI ditunjukan oleh pernyataan nomor....</div>\n'),
(45, 3, '<div>\n	Contoh hewan bersifat ovovivipar dalam proses perkembangan embrionya</div>\n<div>\n	adalah ...</div>\n');

-- --------------------------------------------------------

--
-- Table structure for table `tjm_menu`
--

CREATE TABLE `tjm_menu` (
  `id` int(11) NOT NULL,
  `parent_menu` int(11) NOT NULL DEFAULT '1',
  `nama_menu` varchar(50) NOT NULL,
  `url_menu` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `urutan` tinyint(3) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` enum('Admin','Guru') NOT NULL DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tjm_menu`
--

INSERT INTO `tjm_menu` (`id`, `parent_menu`, `nama_menu`, `url_menu`, `icon`, `urutan`, `status`, `type`) VALUES
(1, 1, 'root', '/', '', 0, 0, 'Admin'),
(2, 1, 'dashboard', 'admin/dashboard', 'fa fa-fw fa-dashboard', 1, 1, 'Admin'),
(3, 1, 'User Admin', 'admin/useradmin', 'fa fa-users', 99, 0, 'Admin'),
(4, 1, 'Menu', 'admin/menu', 'fa fa-gear', 100, 1, 'Admin'),
(25, 1, 'Master', 'admin/master', 'fa fa-ticket', 2, 0, 'Admin'),
(31, 1, 'Data Guru', 'admin/dataguru', 'glyphicon glyphicon-user', 2, 1, 'Admin'),
(32, 1, 'kelas', 'admin/kelas', 'glyphicon glyphicon-th-large', 3, 1, 'Admin'),
(33, 1, 'Mata Pelajaran', 'admin/mapel', 'glyphicon glyphicon-th-list', 4, 1, 'Admin'),
(34, 1, 'Data Siswa', 'admin/data_siswa', 'glyphicon glyphicon-user', 5, 1, 'Admin'),
(35, 1, 'Materi', 'admin/materi', 'glyphicon glyphicon-th-list', 6, 1, 'Admin'),
(36, 1, 'Katagori soal', 'admin/kategori_soal', 'glyphicon glyphicon-th-list', 7, 1, 'Admin'),
(37, 1, 'Soal', 'admin/soal', 'glyphicon glyphicon-th-list', 8, 1, 'Admin'),
(38, 1, 'Jawaban', 'admin/jawaban', 'glyphicon glyphicon-ok', 9, 1, 'Admin'),
(39, 1, 'Pengajar', 'admin/pengajar', 'glyphicon glyphicon-user', 9, 1, 'Admin'),
(40, 1, 'Materi', 'guru/materi', 'glyphicon glyphicon-book', 11, 1, 'Guru'),
(42, 1, 'Kategori', 'guru/kategori_soal', 'glyphicon glyphicon-th-list', 12, 1, 'Guru'),
(43, 1, 'Soal', 'guru/soal', 'glyphicon glyphicon-th-list', 13, 1, 'Guru'),
(44, 1, 'Jawaban', 'guru/jawaban', 'glyphicon glyphicon-ok', 14, 1, 'Guru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `kategori_soal`
--
ALTER TABLE `kategori_soal`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id_pengajar`);

--
-- Indexes for table `riwayat_quiz`
--
ALTER TABLE `riwayat_quiz`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `kategori_soal`
--
ALTER TABLE `kategori_soal`
  MODIFY `id_kategori` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id_pengajar` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `riwayat_quiz`
--
ALTER TABLE `riwayat_quiz`
  MODIFY `id_riwayat` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tjm_menu`
--
ALTER TABLE `tjm_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
