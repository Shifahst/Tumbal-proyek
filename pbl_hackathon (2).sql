-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2025 pada 05.35
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbl_hackathon`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Pengelasan dan Logam', NULL, NULL),
(2, 'Pemrograman dan Otomasi', NULL, NULL),
(3, 'Desain dan Prototyping', NULL, NULL),
(4, 'Konstruksi dan Infrastruktur', NULL, NULL),
(5, 'Manufaktur dan Mesin', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurikulum`
--

CREATE TABLE `kurikulum` (
  `kurikulum_id` bigint(20) UNSIGNED NOT NULL,
  `kursus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_topik` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `durasi` int(11) NOT NULL,
  `materi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kurikulum`
--

INSERT INTO `kurikulum` (`kurikulum_id`, `kursus_id`, `nama_topik`, `deskripsi`, `durasi`, `materi`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pengenalan Alat Las Listrik', 'Mempelajari alat dasar pengelasan listrik dan fungsinya.', 4, 'https://www.youtube.com/embed/dqpdtflblbdhsfyfdcne', NULL, NULL),
(2, 1, 'Teknik Dasar Pengelasan Listrik', 'Dasar-dasar pengelasan listrik dengan teknik yang mudah dipahami pemula.', 5, 'https://www.youtube.com/embed/iidilrgrhplqlbtmjwct', NULL, NULL),
(3, 1, 'Pengelasan dengan Bahan Logam', 'Menggunakan teknik pengelasan dengan bahan logam untuk menghasilkan pengelasan yang kuat.', 5, 'https://www.youtube.com/embed/pzmeagtyzgdswqbgtxqy', NULL, NULL),
(4, 1, 'Pengujian Kekuatan Hasil Las', 'Melakukan pengujian kekuatan pengelasan untuk memastikan kualitasnya.', 2, 'https://www.youtube.com/embed/llwhjczhjdtvfmkdkpqk', NULL, NULL),
(5, 1, 'Praktik Pengelasan Listrik', 'Praktik langsung dalam melakukan pengelasan listrik untuk pemula.', 5, 'https://www.youtube.com/embed/llyewsgeqqyrddcwmkzz', NULL, NULL),
(6, 2, 'Pengenalan Mesin CNC dan Fungsinya', 'Pengenalan tentang mesin CNC dan berbagai fungsinya dalam industri fabrikasi.', 4, 'https://www.youtube.com/embed/csgapvvenewecwofjlxt', NULL, NULL),
(7, 2, 'Dasar-Dasar Pemrograman CNC', 'Dasar-dasar pemrograman CNC untuk memulai penggunaan mesin.', 3, 'https://www.youtube.com/embed/xvpuybzprudmoiycuxtx', NULL, NULL),
(8, 2, 'Pengoperasian Mesin CNC', 'Cara mengoperasikan mesin CNC untuk menghasilkan produk presisi.', 3, 'https://www.youtube.com/embed/aoceiejyxipzivpqkwgk', NULL, NULL),
(9, 2, 'Pemrograman untuk Pembuatan Komponen Presisi', 'Pemrograman mesin CNC untuk menghasilkan komponen dengan tingkat presisi yang tinggi.', 5, 'https://www.youtube.com/embed/hfjagrjgnfqqporhzhhl', NULL, NULL),
(10, 2, 'Praktik Pemrograman CNC', 'Praktik langsung dalam pemrograman dan pengoperasian mesin CNC.', 3, 'https://www.youtube.com/embed/bghvvjxovovjnmmjbzby', NULL, NULL),
(11, 3, 'Pengenalan Desain CAD untuk Fabrikasi', 'Pengenalan desain CAD sebagai dasar dalam proses fabrikasi produk.', 4, 'https://www.youtube.com/embed/kvzajlyyysyjjyxdnvgu', NULL, NULL),
(12, 3, 'Mendesain Produk untuk Prototyping 3D', 'Teknik mendesain produk yang akan diproduksi menggunakan teknologi prototyping 3D.', 3, 'https://www.youtube.com/embed/sfqkumjsyltxvikchafh', NULL, NULL),
(13, 3, 'Pembuatan Prototipe dengan Printer 3D', 'Proses pembuatan prototipe dengan printer 3D untuk melihat hasil desain sebelum produksi massal.', 5, 'https://www.youtube.com/embed/whssnaksdmkivvvrbkxc', NULL, NULL),
(14, 3, 'Evaluasi Prototipe 3D', 'Evaluasi hasil prototipe 3D untuk perbaikan desain lebih lanjut.', 2, 'https://www.youtube.com/embed/egwqcposqmdbjqmcylgh', NULL, NULL),
(15, 3, 'Perbaikan Desain Berdasarkan Hasil Uji Prototipe', 'Perbaikan desain berdasarkan evaluasi hasil uji prototipe untuk mendapatkan produk final.', 3, 'https://www.youtube.com/embed/axblklavbbzgpxbszuih', NULL, NULL),
(16, 4, 'Pengenalan Mesin Pemotong Laser', 'Deskripsi untuk topik ini', 2, 'https://www.youtube.com/embed/vjyygjwxjogrxslatjuz', NULL, NULL),
(17, 4, 'Fungsi Mesin Pemotong Laser dalam Fabrikasi', 'Deskripsi untuk topik ini', 3, 'https://www.youtube.com/embed/yiorcpiqxcnlymlrmbpv', NULL, NULL),
(18, 4, 'Pengoperasian Mesin Pemotong Laser', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/wuxvdhdcpjfcujwghrpy', NULL, NULL),
(19, 4, 'Pemrograman Mesin Pemotong Laser', 'Deskripsi untuk topik ini', 3, 'https://www.youtube.com/embed/fujwixpiztfsoxduvhlr', NULL, NULL),
(20, 4, 'Penyetelan dan Perawatan Mesin Pemotong Laser', 'Deskripsi untuk topik ini', 5, 'https://www.youtube.com/embed/jagnzecljzthcxhpajrd', NULL, NULL),
(21, 5, 'Pengenalan Mold dan Die dalam Produksi Massal', 'Deskripsi untuk topik ini', 3, 'https://www.youtube.com/embed/rjirwzuvaxfdeebutspg', NULL, NULL),
(22, 5, 'Desain Mold dan Die', 'Deskripsi untuk topik ini', 2, 'https://www.youtube.com/embed/wkfcubozkxdiohmszran', NULL, NULL),
(23, 5, 'Bahan yang Digunakan untuk Mold dan Die', 'Deskripsi untuk topik ini', 2, 'https://www.youtube.com/embed/lhosfxwtmrjzezlipcyr', NULL, NULL),
(24, 5, 'Proses Pembuatan Mold dan Die', 'Deskripsi untuk topik ini', 5, 'https://www.youtube.com/embed/qgmwffuuxxxhmghnmhrl', NULL, NULL),
(25, 5, 'Evaluasi dan Uji Kualitas Mold dan Die', 'Deskripsi untuk topik ini', 2, 'https://www.youtube.com/embed/xgliocwezxdmxwxdjlen', NULL, NULL),
(26, 6, 'Pengenalan Teknik Pengelasan MIG dan TIG', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/wwhaetdltgmckuiyufbx', NULL, NULL),
(27, 6, 'Perbedaan Pengelasan MIG dan TIG', 'Deskripsi untuk topik ini', 5, 'https://www.youtube.com/embed/anrunvwjgiudebeqdrnc', NULL, NULL),
(28, 6, 'Pemilihan Mesin Las MIG dan TIG', 'Deskripsi untuk topik ini', 3, 'https://www.youtube.com/embed/wdeoxulyemyttfbzzsbw', NULL, NULL),
(29, 6, 'Teknik Pengelasan dengan Mesin MIG dan TIG', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/kckmasytmtxyxckmoqck', NULL, NULL),
(30, 6, 'Praktik Pengelasan MIG dan TIG', 'Deskripsi untuk topik ini', 2, 'https://www.youtube.com/embed/aplisivzhevshusqglph', NULL, NULL),
(31, 7, 'Pengenalan Manajemen Proyek dalam Fabrikasi', 'Deskripsi untuk topik ini', 3, 'https://www.youtube.com/embed/lonuhkzeyfiduzahcycl', NULL, NULL),
(32, 7, 'Perencanaan dan Pengorganisasian Proyek Fabrikasi', 'Deskripsi untuk topik ini', 3, 'https://www.youtube.com/embed/lbmdcdmpubfzexiokgsv', NULL, NULL),
(33, 7, 'Pengendalian Anggaran dan Sumber Daya', 'Deskripsi untuk topik ini', 3, 'https://www.youtube.com/embed/erhgyshrsgondfoggqwg', NULL, NULL),
(34, 7, 'Manajemen Risiko dalam Proyek Fabrikasi', 'Deskripsi untuk topik ini', 3, 'https://www.youtube.com/embed/cmdhaxwluipxfmqucqkl', NULL, NULL),
(35, 7, 'Evaluasi dan Penyelesaian Proyek Fabrikasi', 'Deskripsi untuk topik ini', 2, 'https://www.youtube.com/embed/oxhhoumahknzwfqwbvhx', NULL, NULL),
(36, 8, 'Pengenalan Robot Industri', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/oezftvycftiyjeijhpvd', NULL, NULL),
(37, 8, 'Dasar-Dasar Pemrograman Robot', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/wifggwgttbaaixomwftr', NULL, NULL),
(38, 8, 'Pemrograman Robot untuk Proses Fabrikasi', 'Deskripsi untuk topik ini', 3, 'https://www.youtube.com/embed/ydfhkvpxbenqbodhycag', NULL, NULL),
(39, 8, 'Pengoperasian Robot Industri di Batam', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/wvdfqiyzdvbfkmahugkm', NULL, NULL),
(40, 8, 'Pemeliharaan dan Perawatan Robot Industri', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/tusxkwmjndemvogklabe', NULL, NULL),
(41, 9, 'Pengenalan Mesin Milling dalam Fabrikasi', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/tbwdggedjrfrzhieklwn', NULL, NULL),
(42, 9, 'Pengoperasian Mesin Milling', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/pmdhekcyugpiotivrsfo', NULL, NULL),
(43, 9, 'Pemrograman Mesin Milling', 'Deskripsi untuk topik ini', 5, 'https://www.youtube.com/embed/amrsmnhzbklrffsipwap', NULL, NULL),
(44, 9, 'Penyetelan Mesin Milling', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/fcfednbwobjguskyfccf', NULL, NULL),
(45, 9, 'Perawatan Mesin Milling', 'Deskripsi untuk topik ini', 3, 'https://www.youtube.com/embed/uktwuqlhrluaufvtqmoq', NULL, NULL),
(46, 10, 'Pengenalan Teknologi Additive Manufacturing', 'Deskripsi untuk topik ini', 2, 'https://www.youtube.com/embed/ymugzgyeybvoxezhzvpb', NULL, NULL),
(47, 10, 'Desain untuk Additive Manufacturing', 'Deskripsi untuk topik ini', 2, 'https://www.youtube.com/embed/pkqnoymrutsekievgoen', NULL, NULL),
(48, 10, 'Proses Cetak 3D untuk Prototipe', 'Deskripsi untuk topik ini', 2, 'https://www.youtube.com/embed/gjswzltvxpbafmavoehx', NULL, NULL),
(49, 10, 'Material untuk Additive Manufacturing', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/vitteuqibvejmocclslm', NULL, NULL),
(50, 10, 'Evaluasi dan Perbaikan Prototipe 3D', 'Deskripsi untuk topik ini', 4, 'https://www.youtube.com/embed/dpsmsweuzaydorcvoimw', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursus`
--

CREATE TABLE `kursus` (
  `kursus_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `tingkat_kesulitan` enum('-','Pemula','Menengah','Lanjutan') NOT NULL DEFAULT '-',
  `status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Tidak Aktif',
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `kapasitas` int(11) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `foto_kursus` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kursus`
--

INSERT INTO `kursus` (`kursus_id`, `pengguna_id`, `kategori_id`, `judul`, `deskripsi`, `harga`, `tingkat_kesulitan`, `status`, `tgl_mulai`, `tgl_selesai`, `kapasitas`, `lokasi`, `foto_kursus`, `created_at`, `updated_at`) VALUES
(1, 4, 5, 'Pelatihan Pengelasan Listrik untuk Pemula', 'Pelatihan ini ditujukan bagi pemula yang ingin mempelajari dasar-dasar pengelasan listrik. Peserta akan dikenalkan dengan peralatan pengelasan, teknik dasar pengelasan yang aman, serta penerapannya dalam industri fabrikasi. Kursus ini sangat penting bagi mereka yang ingin memulai karir di industri manufaktur di Batam.', 6000000.00, 'Lanjutan', 'Aktif', '2025-04-02', '2025-06-29', 10, 'Batam Lubuk Baja', 'kursus_fotos/MVbOfCJNXdgQ7pLglNMyhsJxzifSGyNLYsrrIb4y.jpg', NULL, '2025-01-03 21:17:26'),
(2, 3, 3, 'Pelatihan Pemrograman Mesin CNC di Dunia Fabrikasi', 'Kursus ini memberikan pemahaman mendalam tentang pengoperasian mesin CNC (Computer Numerical Control), termasuk cara membaca gambar teknik dan pemrograman mesin untuk produksi komponen presisi. Pelatihan ini sangat relevan dengan kebutuhan industri manufaktur di Batam yang mengandalkan mesin CNC untuk produksi komponen presisi.', 6500000.00, 'Pemula', 'Aktif', '2025-02-16', '2025-02-23', 10, 'Batam Nagoya', 'kursus_fotos/37BqT5mKopNAT7P00sUTYJJWXK9YU7Plhw9zU6ej.png', NULL, '2025-01-03 21:09:56'),
(3, 6, 4, 'Desain dan Prototyping 3D dalam Proses Fabrikasi', 'Pelatihan ini mengajarkan peserta cara mendesain produk menggunakan perangkat lunak CAD dan mencetak prototipe menggunakan printer 3D. Dengan keterampilan ini, peserta dapat menghasilkan prototipe untuk evaluasi dan pengujian, yang sangat dibutuhkan dalam industri fabrikasi di Batam.', 8600000.00, 'Pemula', 'Aktif', '2025-03-22', '2025-05-02', 30, 'Batam Kabil', 'kursus_fotos/Sym0xYWnTgJ88Y6Rf18QLhFhBRcuHpcVK7T0r3Q7.png', NULL, '2025-01-03 21:25:12'),
(4, 4, 1, 'Pengenalan Mesin Pemotong Laser untuk Fabrikasi', 'Kursus ini memberikan pelatihan mengenai pengoperasian mesin pemotong laser untuk memotong bahan seperti logam, plastik, dan kayu. Peserta akan mempelajari cara pengaturan dan pemrograman mesin untuk menghasilkan potongan dengan presisi tinggi, sesuai dengan kebutuhan produksi di Batam.', 4900000.00, 'Lanjutan', 'Aktif', '2025-03-11', '2025-03-12', 11, 'Batam Jodoh', 'kursus_fotos/USlrvU0xyrJuMvLre0G7vyPAKpbBmVWFaiqqpx8r.jpg', NULL, '2025-01-03 21:17:54'),
(5, 7, 5, 'Pembuatan Mold dan Die untuk Produksi Massal', 'Pelatihan ini dirancang untuk mengajarkan pembuatan mold dan die yang digunakan dalam proses produksi massal. Peserta akan mempelajari teknik merancang dan membuat cetakan yang dapat digunakan untuk memproduksi komponen dalam jumlah besar, sangat diperlukan di industri besar di Batam.', 6000000.00, 'Pemula', 'Aktif', '2025-06-08', '2025-07-18', 11, 'Batam Muka Kuning', NULL, NULL, NULL),
(6, 5, 2, 'Teknik Pengelasan MIG dan TIG untuk Fabrikasi', 'Kursus ini berfokus pada teknik pengelasan MIG (Metal Inert Gas) dan TIG (Tungsten Inert Gas) yang banyak digunakan dalam industri fabrikasi. Peserta akan mempelajari cara mengelas berbagai jenis logam, termasuk baja dan aluminium, dengan teknik yang tepat untuk menghasilkan sambungan yang kuat dan tahan lama.', 8600000.00, 'Lanjutan', 'Aktif', '2025-02-25', '2025-03-21', 17, 'Batam Bintan Center', 'kursus_fotos/Ly5PDN62oYhQUkD2PYGwEdI062h4J5gDxsupIfOY.jpg', NULL, '2025-01-03 21:21:12'),
(7, 6, 3, 'Manajemen Proyek di Industri Fabrikasi', 'Pelatihan ini memberikan keterampilan manajerial yang dibutuhkan untuk mengelola proyek-proyek fabrikasi. Peserta akan mempelajari cara merencanakan, mengatur, dan mengendalikan proyek dari awal hingga akhir, termasuk pengelolaan anggaran, sumber daya, dan waktu yang sangat penting dalam industri fabrikasi di Batam.', 6100000.00, 'Lanjutan', 'Aktif', '2025-01-26', '2025-05-11', 29, 'Batam Tanjung Uncang', 'kursus_fotos/oyHhTOqAdMJfX3i0nkLwq3jaK5riw7Ogeh6u3xL1.jpg', NULL, '2025-01-03 21:25:50'),
(8, 5, 4, 'Teknik Pemrograman Robot Industri di Batam', 'Pelatihan ini mengajarkan peserta cara memprogram robot industri untuk tugas-tugas otomatisasi dalam proses fabrikasi. Peserta akan belajar cara mengoptimalkan penggunaan robot dalam lini produksi, sesuai dengan perkembangan pesat teknologi di Batam yang banyak menggunakan robot dalam produksi.', 9900000.00, 'Pemula', 'Aktif', '2025-08-01', '2025-10-20', 21, 'Batam Tiban', 'kursus_fotos/QZNXhGO5x9SSUvVSKaqnPRcNlmQiH7q2pmcVU0LE.jpg', NULL, '2025-01-03 21:22:15'),
(9, 4, 3, 'Pelatihan Pengoperasian Mesin Milling untuk Fabrikasi', 'Pelatihan ini memberikan keterampilan praktis dalam pengoperasian mesin milling, yang digunakan untuk memotong dan membentuk bahan logam dan plastik. Peserta akan diajarkan cara mengoperasikan mesin dengan aman dan efektif untuk menghasilkan komponen presisi yang dibutuhkan di industri fabrikasi.', 5700000.00, 'Lanjutan', 'Aktif', '2025-06-16', '2025-06-28', 24, 'Batam Lubuk Baja', 'kursus_fotos/8PodXvkYoIcg7QFWvrjwGTuvSD3pAmzUoiERZgRI.jpg', NULL, '2025-01-03 21:18:22'),
(10, 7, 3, 'Pembuatan Prototipe dengan Teknologi Additive Manufacturing', 'Kursus ini memberikan pemahaman tentang teknologi Additive Manufacturing (AM), termasuk penggunaan printer 3D untuk membuat prototipe. Peserta akan belajar cara memanfaatkan teknologi terbaru untuk mempercepat pengembangan produk dan inovasi di industri fabrikasi.', 4700000.00, 'Menengah', 'Aktif', '2025-01-21', '2025-04-15', 28, 'Batam Tiban', NULL, NULL, NULL),
(11, 3, 5, 'Kursus Pengelasan Aluminium dan Baja untuk Fabrikasi', 'Aut quia aperiam delectus eum. Aut exercitationem est et recusandae. Delectus explicabo quis modi quia. In in itaque repudiandae enim ut debitis cumque.', 3600000.00, 'Lanjutan', 'Aktif', '2025-07-06', '2025-10-04', 17, 'Batam Teban', 'kursus_fotos/0iEuObtqJHD7cyOuTXH3MECVv5FXJUQq4j6syLn0.jpg', NULL, '2025-01-03 21:12:43'),
(12, 4, 5, 'Pengoperasian Mesin Laser Cutting di Batam', 'Vel tempora sit aliquam maxime ipsam blanditiis necessitatibus rerum. Amet suscipit omnis consequatur similique accusamus aut itaque dolorem. Sit soluta sed aperiam officiis ad et harum est.', 7500000.00, 'Lanjutan', 'Aktif', '2025-05-26', '2025-09-03', 23, 'Batam Nagoya', 'kursus_fotos/dNud8HM39ORVR5IjmPh4S6szeab7LGlrH0Udg7Y5.jpg', NULL, '2025-01-03 21:18:59'),
(13, 7, 2, 'Pembuatan Alat Ukur untuk Konstruksi dan Fabrikasi', 'Doloremque et eius sit minima repellat excepturi. Et tempora aliquid reiciendis dolores quis. Saepe repellat occaecati officiis eum quis. Cumque corporis nam omnis quas.', 7000000.00, 'Lanjutan', 'Aktif', '2025-08-12', '2025-11-11', 18, 'Batam Batam Kota', NULL, NULL, NULL),
(14, 3, 5, 'Pelatihan Pengoperasian Mesin Gerinda di Industri Fabrikasi', 'Inventore rerum nostrum repellat illum molestiae. Natus distinctio assumenda repellendus dolor dolorum. Ut sunt omnis ut.', 3100000.00, 'Lanjutan', 'Aktif', '2025-05-01', '2025-05-09', 21, 'Batam Batu Aji', 'kursus_fotos/yb1r7YVuc3DrPjSauI1okQ8fsD23SW8K0hdmsXKZ.png', NULL, '2025-01-03 21:16:13'),
(15, 5, 3, 'Teknik Perawatan Mesin dalam Industri Fabrikasi', 'Vero assumenda amet in consequuntur. Ex aliquam ea sunt libero ut. Minus ipsum provident culpa. Natus repellat nostrum est quia aperiam quos.', 5000000.00, 'Lanjutan', 'Aktif', '2025-10-08', '2025-12-10', 24, 'Batam Lubuk Baja', NULL, NULL, NULL),
(16, 4, 3, 'Pelatihan Pengelasan Stainless Steel dan Inox', 'Velit assumenda et rem voluptatibus voluptates. Nihil quia qui quasi corrupti repellendus. Sit enim itaque repellat aliquam in. Dicta et cum nemo et.', 7700000.00, 'Pemula', 'Aktif', '2025-12-30', '2025-12-30', 18, 'Batam Jodoh', 'kursus_fotos/8PpZGAydLPKfebjo2TWgxfKZbsoQnZDeG9Hbf3gM.jpg', NULL, '2025-01-03 21:19:26'),
(17, 6, 1, 'Desain Cetakan untuk Fabrikasi Plastik di Batam', 'Ut rerum vero et. Aut dolore reiciendis ea. Vero voluptatem adipisci nobis recusandae. Enim doloribus ut molestiae suscipit praesentium. Quibusdam voluptatem distinctio enim nesciunt optio.', 4000000.00, 'Lanjutan', 'Aktif', '2025-01-14', '2025-02-22', 20, 'Batam Batu Ampar', 'kursus_fotos/1fRue13vwxKdqVKSAP7B4gmjRdn82PcoZkXZMzVq.jpg', NULL, '2025-01-03 21:26:28'),
(18, 6, 5, 'Kursus Pembuatan Alat-alat Konstruksi dari Logam', 'Molestiae praesentium corrupti ratione. Quidem quia autem voluptatem quibusdam nam laudantium ipsum. Repellat dignissimos officiis quia aut tenetur.', 5700000.00, 'Lanjutan', 'Aktif', '2025-03-06', '2025-11-04', 21, 'Batam Batu Besar', 'kursus_fotos/uwxjg6Aw7A9Y13xL8RrqyJLtZxUTUJaLxqHzZiRE.jpg', NULL, '2025-01-03 21:27:10'),
(19, 5, 4, 'Teknik Finishing dan Polishing untuk Produk Fabrikasi', 'Non deleniti dolores provident expedita aliquid nam. Est veniam officiis aut ratione nam maxime voluptas.', 7500000.00, 'Pemula', 'Aktif', '2025-05-26', '2025-11-03', 30, 'Batam Batam Center', 'kursus_fotos/oWRwItknDvG3JcjPWGaV3qJbf7zIYkZxY1pDA5Lg.jpg', NULL, '2025-01-03 21:22:41'),
(20, 6, 3, 'Pengantar Desain CAD untuk Produksi Fabrikasi', 'Mollitia nulla corrupti exercitationem labore iste aut. Sit ullam consequatur in sequi nihil modi. Inventore officiis neque itaque.', 9000000.00, 'Lanjutan', 'Aktif', '2025-03-22', '2025-09-07', 16, 'Batam Batu Aji', 'kursus_fotos/u0YXGwJzNmXeIbcl5VFoGcJwbblFVPqnbe7YUjDJ.jpg', NULL, '2025-01-03 21:27:40'),
(21, 4, 2, 'Pelatihan Pengelasan dan Pembuatan Struktur Baja', 'Quibusdam reiciendis laboriosam aut iste dolorem aut et. Numquam velit pariatur nemo sed. Illum ut esse excepturi laboriosam accusantium mollitia.', 6100000.00, 'Lanjutan', 'Aktif', '2025-06-05', '2025-09-08', 20, 'Batam Teban', 'kursus_fotos/g0XFqXgp41qjRYBihbWu8Yp1KNGE2KPibjNErEak.jpg', NULL, '2025-01-03 21:19:41'),
(22, 7, 4, 'Proses Manufaktur Komponen Elektronik untuk Fabrikasi', 'Dolore dolor a laborum eos ipsa. Consequuntur consequatur at sint illum et et similique. Sapiente et maiores fugiat consequatur. Assumenda modi qui dignissimos nobis nemo quis.', 7400000.00, 'Menengah', 'Aktif', '2025-04-29', '2025-05-15', 25, 'Batam Sei Beduk', NULL, NULL, NULL),
(23, 3, 3, 'Pelatihan Pengoperasian Mesin Pabrik Komponen Logam', 'Laborum aut aut voluptatum itaque dicta eum reprehenderit. Est ipsa sed asperiores deleniti id blanditiis laboriosam.', 4500000.00, 'Menengah', 'Aktif', '2025-06-07', '2025-10-09', 25, 'Batam Kabil', 'kursus_fotos/jiQIhteXZgWJWQ4kwHSe5coZJPzW3UsjcC6cSgO4.jpg', NULL, '2025-01-03 21:15:54'),
(24, 4, 4, 'Kursus Pengelasan Mig dan Tig untuk Profesional', 'Qui aut vel asperiores aliquam nesciunt occaecati maxime. Excepturi aut laudantium fuga cupiditate id est cumque. Qui quae molestiae aut qui.', 6800000.00, 'Lanjutan', 'Aktif', '2025-09-24', '2025-12-27', 24, 'Batam Lubuk Baja', NULL, NULL, NULL),
(25, 3, 1, 'Pelatihan Pengoperasian Mesin Gerinda di Industri Fabrikasi', 'Inventore rerum nostrum repellat illum molestiae. Natus distinctio assumenda repellendus dolor dolorum. Ut sunt omnis ut.', 3100000.00, 'Lanjutan', 'Aktif', '2025-05-01', '2025-05-09', 21, 'Batam Baloi', 'kursus_fotos/Y9CHEj2wc21qUBwyG66ovUd5uPEdORkc54ZLzlTI.jpg', NULL, '2025-01-03 21:14:44'),
(26, 5, 5, 'Teknik Penggunaan Printer 3D dalam Proses Fabrikasi', 'Est eius voluptates perferendis error praesentium perspiciatis. Reprehenderit vitae officiis amet aut. Distinctio voluptatem veniam ut et saepe. Qui vitae beatae nisi atque deserunt numquam et.', 9900000.00, 'Menengah', 'Aktif', '2025-11-30', '2025-12-01', 22, 'Batam Batam Kota', 'kursus_fotos/PzYzD8aKJCR7OoA7RJqRS5x1p4uMZYcfFBP1Rrsf.jpg', NULL, '2025-01-03 21:23:10'),
(27, 6, 2, 'Teknik Perawatan dan Reparasi Alat Fabrikasi', 'Modi facilis atque ea amet. Veritatis cum consequatur sed non quis error eius. At totam vel cum cumque quidem est non.', 8600000.00, 'Menengah', 'Aktif', '2025-01-17', '2025-03-03', 13, 'Batam Teluk Tering', NULL, NULL, NULL),
(28, 6, 1, 'Pelatihan Menggunakan Mesin Bubut untuk Fabrikasi', 'Inventore quas doloremque atque. Eum eligendi quis alias tempore. Et et autem aperiam sit aspernatur cum qui repellat.', 8800000.00, 'Lanjutan', 'Aktif', '2025-11-01', '2025-11-27', 18, 'Batam Batu Ampar', NULL, NULL, NULL),
(29, 7, 1, 'Desain dan Pembuatan Produk untuk Industri Konstruksi', 'Odio quos magni asperiores eius cumque quo. Nihil voluptas quaerat et vel. Eum est quo adipisci est. Alias fuga quam laboriosam dignissimos aliquid.', 9400000.00, 'Pemula', 'Aktif', '2025-08-08', '2025-10-05', 11, 'Batam Batu Besar', NULL, NULL, NULL),
(30, 4, 1, 'Pelatihan Proses Pemotongan dan Perakitan Logam', 'Fugit neque et vitae est repudiandae voluptatem. Commodi veniam sed modi laboriosam numquam a explicabo ea. Iste nihil id est praesentium. Non labore quod consequatur quia odit porro autem.', 7400000.00, 'Menengah', 'Aktif', '2025-07-31', '2025-11-12', 29, 'Batam Muka Kuning', 'kursus_fotos/dOKiDXjUMEOyPR2xKlOLJWVat3vjQQrwLC1PHMzD.jpg', NULL, '2025-01-03 21:19:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_10_13_053509_create_pengguna_pelatih_peserta_tables', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelatih`
--

CREATE TABLE `pelatih` (
  `pelatih_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tahun_pengalaman` int(11) DEFAULT NULL,
  `bulan_pengalaman` int(11) DEFAULT NULL,
  `nama_spesialisasi` varchar(255) DEFAULT NULL,
  `file_sertifikasi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelatih`
--

INSERT INTO `pelatih` (`pelatih_id`, `pengguna_id`, `tahun_pengalaman`, `bulan_pengalaman`, `nama_spesialisasi`, `file_sertifikasi`, `created_at`, `updated_at`) VALUES
(1, 3, 5, 5, 'Personal Trainer', 'sertifikasi_pt.pdf', NULL, NULL),
(2, 4, 10, 3, 'Yoga Instructor', 'sertifikasi_yoga.pdf', NULL, NULL),
(3, 5, 2, 7, 'Strength Coach', 'sertifikasi_strength.pdf', NULL, NULL),
(4, 6, 3, 2, 'Nutrition Specialist', 'sertifikasi_nutrition.pdf', NULL, NULL),
(5, 7, 7, 1, 'CrossFit Coach', 'sertifikasi_crossfit.pdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `pembayaran_id` bigint(20) UNSIGNED NOT NULL,
  `pendaftaran_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tgl_pembayaran` date NOT NULL,
  `metode_pembayaran` enum('Bank Transfer','Credit Card','E-Wallet','Midtrans') NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `status` enum('Pending','Berhasil','Gagal') NOT NULL,
  `midtrans_order_id` varchar(255) DEFAULT NULL,
  `midtrans_transaction_id` varchar(255) DEFAULT NULL,
  `midtrans_status` varchar(255) DEFAULT NULL,
  `midtrans_response` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `pendaftaran_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kursus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tgl_pendaftaran` date NOT NULL,
  `status_pendaftaran` enum('Menunggu','Aktif','Selesai','Dibatalkan') NOT NULL DEFAULT 'Menunggu',
  `status_pembayaran` enum('Pending','Berhasil','Gagal') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`pendaftaran_id`, `pengguna_id`, `kursus_id`, `tgl_pendaftaran`, `status_pendaftaran`, `status_pembayaran`, `created_at`, `updated_at`) VALUES
(1, 8, 9, '1986-04-12', 'Aktif', 'Berhasil', NULL, NULL),
(2, 9, 28, '1997-01-17', 'Aktif', 'Berhasil', NULL, NULL),
(3, 10, 19, '2014-07-06', 'Aktif', 'Berhasil', NULL, NULL),
(4, 11, 10, '2013-07-06', 'Aktif', 'Berhasil', NULL, NULL),
(5, 12, 1, '2001-02-09', 'Aktif', 'Berhasil', NULL, NULL),
(6, 13, 28, '1985-08-25', 'Aktif', 'Berhasil', NULL, NULL),
(7, 14, 24, '1978-12-12', 'Aktif', 'Berhasil', NULL, NULL),
(8, 15, 21, '1985-09-28', 'Aktif', 'Berhasil', NULL, NULL),
(9, 16, 30, '2009-06-28', 'Aktif', 'Berhasil', NULL, NULL),
(10, 17, 1, '1998-04-17', 'Aktif', 'Berhasil', NULL, NULL),
(11, 18, 2, '1994-01-25', 'Aktif', 'Berhasil', NULL, NULL),
(12, 19, 21, '2011-01-22', 'Aktif', 'Berhasil', NULL, NULL),
(13, 20, 16, '2004-10-18', 'Aktif', 'Berhasil', NULL, NULL),
(14, 21, 6, '1973-12-15', 'Aktif', 'Berhasil', NULL, NULL),
(15, 22, 25, '1992-01-10', 'Aktif', 'Berhasil', NULL, NULL),
(16, 23, 23, '1974-04-25', 'Aktif', 'Berhasil', NULL, NULL),
(17, 24, 17, '1992-06-16', 'Aktif', 'Berhasil', NULL, NULL),
(18, 25, 23, '1988-06-27', 'Aktif', 'Berhasil', NULL, NULL),
(19, 26, 24, '1995-06-18', 'Aktif', 'Berhasil', NULL, NULL),
(20, 27, 10, '1988-11-23', 'Aktif', 'Berhasil', NULL, NULL),
(21, 28, 30, '1987-10-31', 'Aktif', 'Berhasil', NULL, NULL),
(22, 29, 2, '2016-10-14', 'Aktif', 'Berhasil', NULL, NULL),
(23, 30, 26, '2018-12-26', 'Aktif', 'Berhasil', NULL, NULL),
(24, 31, 3, '2004-12-26', 'Aktif', 'Berhasil', NULL, NULL),
(25, 32, 6, '1974-12-25', 'Aktif', 'Berhasil', NULL, NULL),
(26, 33, 21, '2008-06-16', 'Aktif', 'Berhasil', NULL, NULL),
(27, 34, 12, '2023-03-08', 'Aktif', 'Berhasil', NULL, NULL),
(28, 35, 4, '2001-02-16', 'Aktif', 'Berhasil', NULL, NULL),
(29, 36, 1, '1993-07-14', 'Aktif', 'Berhasil', NULL, NULL),
(30, 37, 3, '2003-06-06', 'Aktif', 'Berhasil', NULL, NULL),
(31, 38, 17, '2010-05-27', 'Aktif', 'Berhasil', NULL, NULL),
(32, 39, 1, '2017-11-19', 'Aktif', 'Berhasil', NULL, NULL),
(33, 40, 7, '2012-03-17', 'Aktif', 'Berhasil', NULL, NULL),
(34, 41, 17, '1977-09-21', 'Aktif', 'Berhasil', NULL, NULL),
(35, 42, 15, '1983-11-26', 'Aktif', 'Berhasil', NULL, NULL),
(36, 43, 21, '2013-09-22', 'Aktif', 'Berhasil', NULL, NULL),
(37, 44, 14, '1993-07-15', 'Aktif', 'Berhasil', NULL, NULL),
(38, 45, 21, '1985-01-29', 'Aktif', 'Berhasil', NULL, NULL),
(39, 46, 27, '1980-02-12', 'Aktif', 'Berhasil', NULL, NULL),
(40, 47, 11, '1982-01-09', 'Aktif', 'Berhasil', NULL, NULL),
(41, 48, 15, '1992-11-23', 'Aktif', 'Berhasil', NULL, NULL),
(42, 49, 24, '1972-11-09', 'Aktif', 'Berhasil', NULL, NULL),
(43, 50, 4, '2012-11-20', 'Aktif', 'Berhasil', NULL, NULL),
(44, 51, 17, '1982-02-23', 'Aktif', 'Berhasil', NULL, NULL),
(45, 52, 26, '1990-12-28', 'Aktif', 'Berhasil', NULL, NULL),
(46, 53, 16, '2013-12-11', 'Aktif', 'Berhasil', NULL, NULL),
(47, 54, 25, '2009-02-01', 'Aktif', 'Berhasil', NULL, NULL),
(48, 55, 8, '2006-06-06', 'Aktif', 'Berhasil', NULL, NULL),
(49, 56, 23, '2017-09-07', 'Aktif', 'Berhasil', NULL, NULL),
(50, 57, 6, '2019-11-09', 'Aktif', 'Berhasil', NULL, NULL),
(51, 58, 19, '2004-04-25', 'Aktif', 'Berhasil', NULL, NULL),
(52, 59, 19, '1982-01-09', 'Aktif', 'Berhasil', NULL, NULL),
(53, 60, 7, '1983-11-05', 'Aktif', 'Berhasil', NULL, NULL),
(54, 61, 15, '1998-05-20', 'Aktif', 'Berhasil', NULL, NULL),
(55, 62, 15, '2024-03-13', 'Aktif', 'Berhasil', NULL, NULL),
(56, 63, 19, '2009-05-19', 'Aktif', 'Berhasil', NULL, NULL),
(57, 64, 25, '2017-09-29', 'Aktif', 'Berhasil', NULL, NULL),
(58, 65, 12, '2013-10-17', 'Aktif', 'Berhasil', NULL, NULL),
(59, 66, 26, '1975-09-18', 'Aktif', 'Berhasil', NULL, NULL),
(60, 67, 20, '1979-06-22', 'Aktif', 'Berhasil', NULL, NULL),
(61, 68, 26, '1973-02-18', 'Aktif', 'Berhasil', NULL, NULL),
(62, 69, 6, '1999-11-05', 'Aktif', 'Berhasil', NULL, NULL),
(63, 70, 29, '1987-01-24', 'Aktif', 'Berhasil', NULL, NULL),
(64, 71, 22, '1970-07-19', 'Aktif', 'Berhasil', NULL, NULL),
(65, 72, 26, '1989-11-18', 'Aktif', 'Berhasil', NULL, NULL),
(66, 73, 27, '1990-05-26', 'Aktif', 'Berhasil', NULL, NULL),
(67, 74, 18, '2013-07-06', 'Aktif', 'Berhasil', NULL, NULL),
(68, 75, 28, '2017-05-04', 'Aktif', 'Berhasil', NULL, NULL),
(69, 76, 24, '1992-04-07', 'Aktif', 'Berhasil', NULL, NULL),
(70, 77, 6, '1975-01-07', 'Aktif', 'Berhasil', NULL, NULL),
(71, 78, 22, '1995-12-10', 'Aktif', 'Berhasil', NULL, NULL),
(72, 79, 3, '2014-07-20', 'Aktif', 'Berhasil', NULL, NULL),
(73, 80, 13, '1978-08-31', 'Aktif', 'Berhasil', NULL, NULL),
(74, 81, 26, '1999-07-03', 'Aktif', 'Berhasil', NULL, NULL),
(75, 82, 30, '1998-01-09', 'Aktif', 'Berhasil', NULL, NULL),
(76, 83, 13, '1978-01-08', 'Aktif', 'Berhasil', NULL, NULL),
(77, 84, 6, '1986-10-26', 'Aktif', 'Berhasil', NULL, NULL),
(78, 85, 26, '1973-06-14', 'Aktif', 'Berhasil', NULL, NULL),
(79, 86, 21, '1973-11-23', 'Aktif', 'Berhasil', NULL, NULL),
(80, 87, 29, '1975-03-08', 'Aktif', 'Berhasil', NULL, NULL),
(81, 88, 10, '2007-11-11', 'Aktif', 'Berhasil', NULL, NULL),
(82, 89, 5, '2009-02-05', 'Aktif', 'Berhasil', NULL, NULL),
(83, 90, 17, '2011-08-12', 'Aktif', 'Berhasil', NULL, NULL),
(84, 91, 19, '1976-06-19', 'Aktif', 'Berhasil', NULL, NULL),
(85, 92, 25, '2006-09-30', 'Aktif', 'Berhasil', NULL, NULL),
(86, 93, 12, '2016-01-01', 'Aktif', 'Berhasil', NULL, NULL),
(87, 94, 11, '2014-07-03', 'Aktif', 'Berhasil', NULL, NULL),
(88, 95, 27, '1996-02-05', 'Aktif', 'Berhasil', NULL, NULL),
(89, 96, 20, '2014-10-01', 'Aktif', 'Berhasil', NULL, NULL),
(90, 97, 15, '2000-04-04', 'Aktif', 'Berhasil', NULL, NULL),
(91, 98, 23, '1974-10-16', 'Aktif', 'Berhasil', NULL, NULL),
(92, 99, 27, '2018-12-20', 'Aktif', 'Berhasil', NULL, NULL),
(93, 100, 24, '1998-02-25', 'Aktif', 'Berhasil', NULL, NULL),
(94, 101, 30, '1986-11-24', 'Aktif', 'Berhasil', NULL, NULL),
(95, 102, 7, '1976-03-05', 'Aktif', 'Berhasil', NULL, NULL),
(96, 103, 17, '1985-01-14', 'Aktif', 'Berhasil', NULL, NULL),
(97, 104, 11, '1981-09-15', 'Aktif', 'Berhasil', NULL, NULL),
(98, 105, 9, '2018-01-03', 'Aktif', 'Berhasil', NULL, NULL),
(99, 106, 21, '2018-01-04', 'Aktif', 'Berhasil', NULL, NULL),
(100, 107, 28, '1993-06-18', 'Aktif', 'Berhasil', NULL, NULL),
(101, 108, 10, '1973-08-28', 'Aktif', 'Berhasil', NULL, NULL),
(102, 109, 10, '2005-08-30', 'Aktif', 'Berhasil', NULL, NULL),
(103, 110, 5, '1980-06-03', 'Aktif', 'Berhasil', NULL, NULL),
(104, 111, 12, '2017-01-05', 'Aktif', 'Berhasil', NULL, NULL),
(105, 112, 23, '1982-01-20', 'Aktif', 'Berhasil', NULL, NULL),
(106, 113, 25, '2013-09-30', 'Aktif', 'Berhasil', NULL, NULL),
(107, 114, 1, '1998-06-23', 'Aktif', 'Berhasil', NULL, NULL),
(108, 115, 14, '1976-03-02', 'Aktif', 'Berhasil', NULL, NULL),
(109, 116, 7, '1999-01-19', 'Aktif', 'Berhasil', NULL, NULL),
(110, 117, 13, '1973-05-03', 'Aktif', 'Berhasil', NULL, NULL),
(111, 118, 13, '1990-12-25', 'Aktif', 'Berhasil', NULL, NULL),
(112, 119, 21, '2013-12-26', 'Aktif', 'Berhasil', NULL, NULL),
(113, 120, 25, '2003-01-25', 'Aktif', 'Berhasil', NULL, NULL),
(114, 121, 6, '2005-05-03', 'Aktif', 'Berhasil', NULL, NULL),
(115, 122, 15, '1977-12-24', 'Aktif', 'Berhasil', NULL, NULL),
(116, 123, 28, '1975-07-30', 'Aktif', 'Berhasil', NULL, NULL),
(117, 124, 16, '2008-04-21', 'Aktif', 'Berhasil', NULL, NULL),
(118, 125, 10, '2011-04-05', 'Aktif', 'Berhasil', NULL, NULL),
(119, 126, 4, '2016-03-29', 'Aktif', 'Berhasil', NULL, NULL),
(120, 127, 29, '2010-03-19', 'Aktif', 'Berhasil', NULL, NULL),
(121, 128, 9, '1978-11-03', 'Aktif', 'Berhasil', NULL, NULL),
(122, 129, 10, '1991-01-20', 'Aktif', 'Berhasil', NULL, NULL),
(123, 130, 20, '1990-04-11', 'Aktif', 'Berhasil', NULL, NULL),
(124, 131, 29, '2014-03-04', 'Aktif', 'Berhasil', NULL, NULL),
(125, 132, 17, '1984-05-03', 'Aktif', 'Berhasil', NULL, NULL),
(126, 133, 30, '1981-06-06', 'Aktif', 'Berhasil', NULL, NULL),
(127, 134, 2, '2008-09-12', 'Aktif', 'Berhasil', NULL, NULL),
(128, 135, 17, '2002-08-18', 'Aktif', 'Berhasil', NULL, NULL),
(129, 136, 14, '1978-05-23', 'Aktif', 'Berhasil', NULL, NULL),
(130, 137, 10, '2022-05-25', 'Aktif', 'Berhasil', NULL, NULL),
(131, 138, 13, '1977-10-06', 'Aktif', 'Berhasil', NULL, NULL),
(132, 139, 24, '2008-11-14', 'Aktif', 'Berhasil', NULL, NULL),
(133, 140, 26, '2024-08-22', 'Aktif', 'Berhasil', NULL, NULL),
(134, 141, 24, '1979-11-20', 'Aktif', 'Berhasil', NULL, NULL),
(135, 142, 7, '2003-07-31', 'Aktif', 'Berhasil', NULL, NULL),
(136, 143, 18, '2003-09-16', 'Aktif', 'Berhasil', NULL, NULL),
(137, 144, 9, '1997-07-04', 'Aktif', 'Berhasil', NULL, NULL),
(138, 145, 9, '1982-10-21', 'Aktif', 'Berhasil', NULL, NULL),
(139, 146, 9, '2004-01-12', 'Aktif', 'Berhasil', NULL, NULL),
(140, 147, 11, '2014-02-16', 'Aktif', 'Berhasil', NULL, NULL),
(141, 148, 22, '1996-07-18', 'Aktif', 'Berhasil', NULL, NULL),
(142, 149, 8, '2015-05-24', 'Aktif', 'Berhasil', NULL, NULL),
(143, 150, 10, '1977-04-24', 'Aktif', 'Berhasil', NULL, NULL),
(144, 151, 17, '2010-07-16', 'Aktif', 'Berhasil', NULL, NULL),
(145, 152, 6, '2020-12-02', 'Aktif', 'Berhasil', NULL, NULL),
(146, 153, 10, '1995-08-31', 'Aktif', 'Berhasil', NULL, NULL),
(147, 154, 17, '1994-06-22', 'Aktif', 'Berhasil', NULL, NULL),
(148, 155, 28, '2024-06-01', 'Aktif', 'Berhasil', NULL, NULL),
(149, 156, 22, '1987-08-30', 'Aktif', 'Berhasil', NULL, NULL),
(150, 157, 18, '1993-02-22', 'Aktif', 'Berhasil', NULL, NULL),
(151, 158, 17, '2022-07-03', 'Aktif', 'Berhasil', NULL, NULL),
(152, 159, 10, '1999-09-21', 'Aktif', 'Berhasil', NULL, NULL),
(153, 160, 25, '2013-01-19', 'Aktif', 'Berhasil', NULL, NULL),
(154, 161, 18, '1975-11-18', 'Aktif', 'Berhasil', NULL, NULL),
(155, 162, 30, '1976-05-16', 'Aktif', 'Berhasil', NULL, NULL),
(156, 163, 14, '2000-08-19', 'Aktif', 'Berhasil', NULL, NULL),
(157, 164, 13, '2010-02-16', 'Aktif', 'Berhasil', NULL, NULL),
(158, 165, 8, '1996-12-14', 'Aktif', 'Berhasil', NULL, NULL),
(159, 166, 16, '1979-05-05', 'Aktif', 'Berhasil', NULL, NULL),
(160, 167, 22, '2004-01-13', 'Aktif', 'Berhasil', NULL, NULL),
(161, 168, 18, '2018-10-27', 'Aktif', 'Berhasil', NULL, NULL),
(162, 169, 22, '1976-03-03', 'Aktif', 'Berhasil', NULL, NULL),
(163, 170, 7, '2016-09-21', 'Aktif', 'Berhasil', NULL, NULL),
(164, 171, 9, '1988-05-25', 'Aktif', 'Berhasil', NULL, NULL),
(165, 172, 12, '1991-01-11', 'Aktif', 'Berhasil', NULL, NULL),
(166, 173, 15, '2008-07-07', 'Aktif', 'Berhasil', NULL, NULL),
(167, 174, 11, '1979-12-24', 'Aktif', 'Berhasil', NULL, NULL),
(168, 175, 27, '2006-03-27', 'Aktif', 'Berhasil', NULL, NULL),
(169, 176, 24, '1994-04-06', 'Aktif', 'Berhasil', NULL, NULL),
(170, 177, 5, '1983-05-02', 'Aktif', 'Berhasil', NULL, NULL),
(171, 178, 9, '1978-11-20', 'Aktif', 'Berhasil', NULL, NULL),
(172, 179, 4, '2023-12-08', 'Aktif', 'Berhasil', NULL, NULL),
(173, 180, 24, '2015-09-02', 'Aktif', 'Berhasil', NULL, NULL),
(174, 181, 20, '1979-05-27', 'Aktif', 'Berhasil', NULL, NULL),
(175, 182, 9, '2010-01-08', 'Aktif', 'Berhasil', NULL, NULL),
(176, 183, 17, '1991-10-31', 'Aktif', 'Berhasil', NULL, NULL),
(177, 184, 28, '2003-09-15', 'Aktif', 'Berhasil', NULL, NULL),
(178, 185, 12, '2008-04-06', 'Aktif', 'Berhasil', NULL, NULL),
(179, 186, 11, '2004-05-13', 'Aktif', 'Berhasil', NULL, NULL),
(180, 187, 30, '1999-11-07', 'Aktif', 'Berhasil', NULL, NULL),
(181, 188, 27, '2009-04-11', 'Aktif', 'Berhasil', NULL, NULL),
(182, 189, 15, '1983-12-17', 'Aktif', 'Berhasil', NULL, NULL),
(183, 190, 18, '2011-06-07', 'Aktif', 'Berhasil', NULL, NULL),
(184, 191, 12, '2001-12-09', 'Aktif', 'Berhasil', NULL, NULL),
(185, 192, 9, '1984-08-08', 'Aktif', 'Berhasil', NULL, NULL),
(186, 193, 20, '2000-11-29', 'Aktif', 'Berhasil', NULL, NULL),
(187, 194, 26, '1977-07-18', 'Aktif', 'Berhasil', NULL, NULL),
(188, 195, 16, '1976-03-26', 'Aktif', 'Berhasil', NULL, NULL),
(189, 196, 6, '1990-11-02', 'Aktif', 'Berhasil', NULL, NULL),
(190, 197, 6, '1975-09-18', 'Aktif', 'Berhasil', NULL, NULL),
(191, 198, 10, '2003-02-22', 'Aktif', 'Berhasil', NULL, NULL),
(192, 199, 24, '2008-08-03', 'Aktif', 'Berhasil', NULL, NULL),
(193, 200, 17, '1988-04-15', 'Aktif', 'Berhasil', NULL, NULL),
(194, 8, 1, '2025-01-04', 'Menunggu', 'Pending', '2025-01-03 21:31:03', '2025-01-03 21:31:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `pengguna_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `kata_sandi` varchar(255) NOT NULL,
  `foto_profil` varchar(255) DEFAULT NULL,
  `peran` enum('Pelatih','Peserta','Admin') DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`pengguna_id`, `nama`, `email`, `no_telepon`, `alamat`, `jenis_kelamin`, `kata_sandi`, `foto_profil`, `peran`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '08123456789', 'Jakarta', 'Laki-laki', '$2y$12$L0OcS2.3hhmY0Ys/SMuNU.fH.nE3utFscoak5JaYpEqJUVTkCt9aO', NULL, 'Admin', 'Aktif', NULL, NULL),
(2, 'Admin2', 'admin2@gmail.com', '08123456789', 'Jakarta', 'Laki-laki', '$2y$12$CFqbXTYLWOSkh.TXiw6kuOYLW1XRnd99Qx3eI9sid23L5UcggDqVu', NULL, 'Admin', 'Aktif', NULL, NULL),
(3, 'M Zaini Ridha', 'zaini@gmail.com', '08123456789', 'Ki. Karel S. Tubun No. 549, Tangerang Selatan 97396, Papua', 'Laki-laki', '$2y$12$liD4walf1ZLKJWvXG6z9subChkfc7NoeKmLeKj9jZIPU6wvuKga4e', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(4, 'Niati', 'niati@gmail.com', '08123456788', 'Ki. Juanda No. 224, Depok 91743, Babel', 'Perempuan', '$2y$12$LKogjihzpsHyVNlLeXSux./yNw8Puz5r209WOCZokYNL7qgWsB2rG', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(5, 'Aiko', 'aiko@gmail.com', '08123456787', 'Jln. Casablanca No. 978, Sukabumi 15729, Kaltara', 'Perempuan', '$2y$12$4aJkYVY3SsrDW5G.rVWgauACg.276enZCWIgGiBOWEujf8HM.MGn2', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(6, 'Dina', 'dina@gmail.com', '08123456786', 'Ds. Gading No. 807, Balikpapan 93514, Gorontalo', 'Perempuan', '$2y$12$CHF9YF9NBgCX41noZULndeokemInqKWOD2rs/z0XE7HgTOYrWUCES', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(7, 'Aziz', 'aziz@gmail.com', '08123456785', 'Ds. Setia Budi No. 944, Kediri 29123, Jateng', 'Laki-laki', '$2y$12$PhNXj0YHqAA.ZZCf1x5GN.Uod0vAz8UGtKTUVmKjPO9y2uNJCYHtO', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(8, 'Ozed', 'ozed@gmail.com', '08123456785', 'Ds. Setia Budi No. 944, Kediri 29123, Jateng', 'Laki-laki', '$2y$12$Fn8oEWKCtJ0kXvt5FtpQPOzuGPQaYMkcmOfkQhNNlcUZXOpRse.bm', NULL, 'Peserta', 'Aktif', NULL, NULL),
(9, 'Eli Susanti', 'atma40@example.com', '0921 9583 3026', 'Ki. Karel S. Tubun No. 549, Tangerang Selatan 97396, Papua', 'Perempuan', '$2y$12$IKbICXPTD0rrrp9.EKmaY.zraQBQ0oMKl0Oj9v/fLSJhkk4eUjxtS', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(10, 'Dodo Firgantoro', 'ygunawan@example.com', '(+62) 27 0268 6435', 'Ki. Juanda No. 224, Depok 91743, Babel', 'Laki-laki', '$2y$12$Ow/Eh5Zkx1qjDxL2QWrk6uBTsMKJHufTiG5moCUR/MSFIE3pxYcti', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(11, 'Putri Kamila Aryani', 'sihombing.oni@example.com', '0684 2604 339', 'Jln. Casablanca No. 978, Sukabumi 15729, Kaltara', 'Laki-laki', '$2y$12$82IGOLxunmL.0oH.1aec2OIgapaUHrx8ObYK7Leu5EHBtb99dD10m', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(12, 'Ilsa Rahayu', 'kasim.megantara@example.org', '0809 8899 859', 'Ds. Gading No. 807, Balikpapan 93514, Gorontalo', 'Perempuan', '$2y$12$3rJC34QVflg77fr1eJcRAOFHabIbUtw5nKIvAOrLkjMP5joVMoFEC', NULL, 'Peserta', 'Aktif', NULL, NULL),
(13, 'Bancar Kusuma Nugroho', 'rendy39@example.org', '0936 5132 414', 'Jln. Yogyakarta No. 492, Administrasi Jakarta Barat 24685, Kepri', 'Laki-laki', '$2y$12$h0/1DNR6FIO73/jp06s/UOXsigJScV5dwfhFRYrWnkskmbKVG0EUS', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(14, 'Lanjar Hutagalung', 'ami.puspasari@example.com', '0231 0134 260', 'Ki. Cikutra Timur No. 585, Palembang 57094, Banten', 'Laki-laki', '$2y$12$m1sP5My.kaZHgeTu/igGx.vOMkalvYBZTeBWsDu6qBpwr4JLJcK8a', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(15, 'Endra Sirait S.Pd', 'bambang21@example.org', '(+62) 744 0280 2775', 'Gg. Gedebage Selatan No. 949, Cimahi 52158, Sultra', 'Perempuan', '$2y$12$cZ0EmB.Ii75R/Aw1nZdy.O07bQGoqNiiHoVHyPP.m.2ApdVyI8Sn.', NULL, 'Peserta', 'Aktif', NULL, NULL),
(16, 'Cengkal Sihombing', 'siregar.aswani@example.com', '0498 4747 340', 'Ds. Setia Budi No. 944, Kediri 29123, Jateng', 'Perempuan', '$2y$12$eZaCHfuOjJCqoYC.WKY3o.OCb32rap5x0Zav/mhGZiuJrv3kcPH9q', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(17, 'Wani Indah Kusmawati', 'novitasari.cayadi@example.org', '0677 1121 695', 'Ds. Pelajar Pejuang 45 No. 63, Langsa 62466, Jambi', 'Perempuan', '$2y$12$yx/tdzURE.eu85To2OO4AOOO1KqoPoVMaGwuopB0MM/kdgfqgH4Wi', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(18, 'Hasna Safitri', 'saptono.michelle@example.net', '(+62) 29 7872 4921', 'Jr. Tubagus Ismail No. 936, Mataram 92104, Gorontalo', 'Laki-laki', '$2y$12$vYhZr/rn9NSwIG/YcYStpez1ajJC9ugrgiJug7hP75juTaT83xTYW', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(19, 'Gatot Siregar', 'hakim.cahyadi@example.net', '0866 534 947', 'Kpg. Nangka No. 779, Tanjung Pinang 95918, Banten', 'Perempuan', '$2y$12$9WyZDEKuGaHGZJ2OCz/y6u9lM.MYfySUawGWN7bOvdpvE/a4cl//S', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(20, 'Baktiadi Darmanto Hakim S.Gz', 'wijayanti.dagel@example.com', '(+62) 406 0297 123', 'Jln. Jaksa No. 971, Cirebon 83373, Riau', 'Laki-laki', '$2y$12$70Cm7bL7whTGPMAQUzJ7veB.WP0D9W5G4R6bXV7AZSDljE0KKRvE2', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(21, 'Nasrullah Pranowo', 'tari17@example.net', '(+62) 711 6567 5189', 'Gg. Supomo No. 215, Dumai 71007, Jatim', 'Laki-laki', '$2y$12$XYTFU8f.r.UTb.sD69JB9eGezGKzFSQiYw3cjHpNBeRv3W/LJZzAS', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(22, 'Gara Irawan', 'ellis55@example.net', '(+62) 438 4656 7402', 'Jr. Bacang No. 575, Banjar 12511, Jabar', 'Laki-laki', '$2y$12$peYN827mbpAybPdtqEsc2efC0EPUJnWokjYMowRyyyTqOxPYEeQJm', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(23, 'Paris Karen Lailasari', 'jane50@example.net', '(+62) 23 6660 268', 'Ki. Tangkuban Perahu No. 890, Administrasi Jakarta Selatan 46558, Papua', 'Laki-laki', '$2y$12$JueHV5JUoQw6uTTukkcWBuZE0p0BCKR.FuOFdzx68I7SVipdRUxEq', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(24, 'Cahyanto Aditya Gunawan S.H.', 'gandewa33@example.net', '0934 2006 2086', 'Dk. Labu No. 519, Blitar 70555, Bali', 'Laki-laki', '$2y$12$cAwcdfCTVNmrgWafJpsg3.iaX97Q0Jmk8sBsgDAK8M/9Kv2Rt3CDK', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(25, 'Devi Kusmawati S.H.', 'belinda90@example.com', '0998 8759 6531', 'Jln. Bagas Pati No. 99, Tidore Kepulauan 17810, Sumsel', 'Perempuan', '$2y$12$QFL4lqo09bkdNE8VXMqh1efQMEwNrUg.4EYZJIuISF7uHEAQpoi9a', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(26, 'Nyana Narpati', 'wirda.hidayanto@example.net', '(+62) 27 6503 301', 'Jr. Katamso No. 503, Metro 19988, Jambi', 'Perempuan', '$2y$12$WHWjTWtxhwaMMl38IoWEEeBvdgq2qpHIiRfu8GifOWjFrnFAsPxjy', NULL, 'Peserta', 'Aktif', NULL, NULL),
(27, 'Prabawa Natsir', 'suartini.zahra@example.net', '(+62) 412 8118 009', 'Jln. Uluwatu No. 888, Serang 71396, Jambi', 'Laki-laki', '$2y$12$rKS3LH6FbA5.XRDdiNj84uAlIxFIFnIiwJC9Neyk8sPWzjbM8Ki.S', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(28, 'Wulan Mayasari', 'hutapea.vanya@example.net', '0229 4231 744', 'Jln. Fajar No. 70, Ambon 52798, Riau', 'Laki-laki', '$2y$12$WJTzuizJvbc/DlZAF3ZAuOlZS9NmVrBtnuJ5FGIIaBMEEoqJMX2Ke', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(29, 'Intan Utami', 'narpati.rina@example.net', '0998 3769 000', 'Ki. Bakin No. 913, Tarakan 50538, Jambi', 'Perempuan', '$2y$12$0eNOGSFAIIqAOGlg0PS5VOaZfVXLzWKAyKkE/1V4IU9wj5k1DKL7S', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(30, 'Slamet Hendri Suwarno S.Gz', 'prasetya.gina@example.net', '(+62) 27 9737 3607', 'Ki. Sutoyo No. 558, Administrasi Jakarta Pusat 72097, Riau', 'Laki-laki', '$2y$12$jGdNog3si3pLO.2cbwv4h.kpUyd7sk0ORE6EWxZnKGUVFJdnXd1Wu', NULL, 'Peserta', 'Aktif', NULL, NULL),
(31, 'Jaiman Firgantoro S.H.', 'bancar.handayani@example.net', '(+62) 657 5749 735', 'Psr. R.M. Said No. 947, Sorong 64611, Sulsel', 'Laki-laki', '$2y$12$Fns4oFvzVT4FJzQ9wL1iFePKw/eDEfsrl.tu7bfdh.deIFKy/5ZY.', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(32, 'Yono Irawan', 'klestari@example.com', '(+62) 713 8719 710', 'Ds. Balikpapan No. 415, Sibolga 79665, Bali', 'Laki-laki', '$2y$12$cPQBNzOjJw9iAunN4QczXOaZz6jTMZMN97jW20nI4qVRkjJC1qaiG', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(33, 'Pia Kusmawati', 'maras.mansur@example.org', '0209 1502 628', 'Gg. S. Parman No. 187, Palu 52552, Sultra', 'Laki-laki', '$2y$12$wmzn0eislevAefAxMtfS2uQSdZlrs0jVusvq5MMKamfZSHSW2ol9K', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(34, 'Indra Santoso', 'purwadi37@example.com', '0791 7632 584', 'Ki. Gatot Subroto No. 363, Tegal 11137, Sulut', 'Perempuan', '$2y$12$wdmG7A9sY3o0MtIGHkSNVevmQWCMGwz47jvK0ijy9c2b1qZmQt63S', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(35, 'Aisyah Wijayanti', 'vpertiwi@example.org', '0630 6130 4997', 'Ki. Zamrud No. 943, Tanjung Pinang 81568, Maluku', 'Perempuan', '$2y$12$qowi2MzgwHYz9joiQ.NxwuW4Ke3qYWEYtYxJNhK./t.amPOKfKswC', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(36, 'Ophelia Yance Wastuti S.E.I', 'vanesa.megantara@example.net', '(+62) 944 0291 6952', 'Dk. Baiduri No. 682, Sukabumi 74805, Sultra', 'Laki-laki', '$2y$12$VgJmpIFkdKIB1Wv2w2uqCeCIB6SupdrSLdufTwbdyl/oArB4NS3Vm', NULL, 'Peserta', 'Aktif', NULL, NULL),
(37, 'Reksa Budiman', 'puji.nasyidah@example.net', '(+62) 360 1099 1930', 'Jr. Baranang Siang No. 584, Tomohon 33088, Kalsel', 'Perempuan', '$2y$12$7tWiyp4.bVh9hlfwEVLG4evAy/pArRGs969wjeCZ4QFWeMyPVq0.y', NULL, 'Peserta', 'Aktif', NULL, NULL),
(38, 'Paris Yance Mandasari', 'jailani.wisnu@example.org', '0206 8667 4564', 'Ki. Mahakam No. 904, Palopo 68945, Jateng', 'Laki-laki', '$2y$12$O54p7DGpxOKQdq4vFbuBXOGV7bvgQ6PFciIXKLb66G0CUFxwUlX6O', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(39, 'Gina Kuswandari', 'ajiono27@example.com', '(+62) 495 1580 4273', 'Ds. Radio No. 788, Jayapura 31307, Kalsel', 'Perempuan', '$2y$12$8LpjdLABZM7.DgtnPPD7GuLNEjnKcNqM4Wl0z5YB8gBkjHSdYaYaC', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(40, 'Bakda Irawan', 'victoria.suwarno@example.net', '0337 4018 691', 'Jr. Imam Bonjol No. 964, Yogyakarta 28428, Sulsel', 'Perempuan', '$2y$12$93bffRfsNVOJU4dmxqGtUOc4EenKv8zowy2XqcYT8dtZTvKunXwCC', NULL, 'Peserta', 'Aktif', NULL, NULL),
(41, 'Ifa Farida', 'queen.uwais@example.org', '(+62) 342 5265 421', 'Ki. Muwardi No. 874, Surakarta 14040, Jambi', 'Perempuan', '$2y$12$rS9TAbkDCJR/cVClKx5G1ecCP5FlhkLUu/jyZOfFmzV4LS3ylitrC', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(42, 'Upik Umaya Sihombing', 'rsuwarno@example.com', '0745 6757 418', 'Dk. Abang No. 698, Langsa 43206, Kepri', 'Laki-laki', '$2y$12$uQzLaApuVmAW8AA6sgF3auS3tighMSgFWBUYqqVFiHMhUL/qgV8pW', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(43, 'Utama Rajata', 'jarwa.hariyah@example.net', '(+62) 263 8549 1210', 'Ki. Merdeka No. 376, Lhokseumawe 27447, NTB', 'Perempuan', '$2y$12$5v07VpRkKOF0OCv/HXL3vOCoCxJPhqKna9R0mh677OZllWeuyiEN.', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(44, 'Ghani Anggriawan', 'psudiati@example.net', '0832 1761 0526', 'Ki. Bak Air No. 760, Langsa 36773, Sultra', 'Perempuan', '$2y$12$iDvuMpg5NMAgHpVEksO85OZfZSfPkLpJZRGNn7cMsS62hU5ueR9vG', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(45, 'Halima Uyainah', 'bakiman.hariyah@example.net', '(+62) 803 111 408', 'Dk. Yoga No. 556, Bima 53264, Sulteng', 'Perempuan', '$2y$12$SfJ/TuolhJ0MP.z645sTx.qejuT5ZsSp.hpWPIKwiTXQbmXj7eYH6', NULL, 'Peserta', 'Aktif', NULL, NULL),
(46, 'Ulya Ayu Nasyiah', 'oni.pradana@example.org', '(+62) 611 9941 6698', 'Gg. Ki Hajar Dewantara No. 268, Kotamobagu 74581, Kalbar', 'Perempuan', '$2y$12$DMhuJjycT.BCkd2wLEKCZebF8QiBwfbTwRprUPcJ4KP80PRjqVgtq', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(47, 'Kartika Susanti M.Kom.', 'fmayasari@example.org', '0736 6794 7821', 'Jr. Ketandan No. 492, Administrasi Jakarta Timur 77218, Kalsel', 'Laki-laki', '$2y$12$UcLqgJdenXhcg1uIB4DY9eJKUFbaBVbvjHSIMBYxYU.y3cXK5ES62', NULL, 'Peserta', 'Aktif', NULL, NULL),
(48, 'Jayeng Lazuardi', 'nalar31@example.net', '0871 0586 0602', 'Dk. B.Agam 1 No. 973, Sibolga 51324, Jatim', 'Laki-laki', '$2y$12$bbtRXKCn90zBEO0w6BvYkOPmFTNK5vVfFAk2zahg1M26aYGKz.Asi', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(49, 'Mulya Kuswoyo', 'widiastuti.niyaga@example.com', '(+62) 844 550 659', 'Jr. Baja No. 792, Tual 58552, Maluku', 'Perempuan', '$2y$12$UgR9sUsbF86b5KBnQP7P2uDfyylpbctLOS2kjPkWCZWo257LtribW', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(50, 'Wani Tania Usada M.TI.', 'reza40@example.com', '(+62) 369 9021 575', 'Dk. Katamso No. 354, Blitar 30586, Kaltara', 'Perempuan', '$2y$12$Yx83PaQ09fYrLIDz7xe7FuRKBptspdjetvcnlmDrlWnr8odbN4Tq6', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(51, 'Eka Safitri', 'rsusanti@example.org', '(+62) 812 9734 194', 'Kpg. Nanas No. 867, Padangsidempuan 49891, Sultra', 'Laki-laki', '$2y$12$XJfK4S5nvwhnXTBT8npL1OuOC26DNkR6nBsRshISHzAu1VOpz3.mS', NULL, 'Peserta', 'Aktif', NULL, NULL),
(52, 'Jindra Maulana', 'latika96@example.net', '0620 1021 900', 'Gg. Cihampelas No. 900, Banjarmasin 87464, DIY', 'Laki-laki', '$2y$12$FYKb1trNE.96LBVdCTv2qeiG4o/g9/z1lSja6KZL1a3NOYnZS/dcy', NULL, 'Peserta', 'Aktif', NULL, NULL),
(53, 'Jaiman Banawi Saefullah', 'dina.wulandari@example.net', '0421 6470 430', 'Ki. Gatot Subroto No. 777, Pasuruan 33230, Kaltara', 'Perempuan', '$2y$12$augrout4a3ORF1N6NQBrROaQ3p5AT14v6H5.aPs0ba9OSw2KGmZF2', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(54, 'Putri Yuliarti S.T.', 'psaefullah@example.net', '(+62) 24 5769 8616', 'Gg. Bazuka Raya No. 297, Bandar Lampung 42146, Kepri', 'Laki-laki', '$2y$12$JIA0ygBlXIQ/8aC00n6tgO7FryTK5efeWt6IEidk2zG6PPcgYp5L.', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(55, 'Ciaobella Natalia Purnawati M.Pd', 'xriyanti@example.org', '(+62) 217 1416 946', 'Jln. Bacang No. 206, Administrasi Jakarta Utara 24014, Sumut', 'Perempuan', '$2y$12$1A.GxLLA3gTciPTRDELWN.RnWX.LkcVNmBnKYgBO0O.zEp59qU2gC', NULL, 'Peserta', 'Aktif', NULL, NULL),
(56, 'Lega Setya Jailani S.IP', 'karta.rahayu@example.com', '(+62) 984 0171 9196', 'Kpg. Setia Budi No. 996, Sungai Penuh 94466, Kalsel', 'Perempuan', '$2y$12$kVlpin1EVlA66RrEocAlk.71iptDOrrN7SmU9iztBuAuM532Q3ZUC', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(57, 'Lasmono Mansur M.Pd', 'jwidiastuti@example.org', '0323 5110 557', 'Psr. Rajawali Timur No. 765, Langsa 51476, NTT', 'Laki-laki', '$2y$12$nOs7Lbh34BNFUb1UxvA1veLLN4xYhAZSnfzDmN1jsAhWjjk9gAXVe', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(58, 'Violet Elvina Pudjiastuti M.Pd', 'rdamanik@example.org', '(+62) 816 879 091', 'Jln. Bappenas No. 262, Makassar 55856, Lampung', 'Perempuan', '$2y$12$O9YrCozDrlG2SRkDLpaj1uO6GW30CAZkS9vJEP3mD6Qt7BORwSLRO', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(59, 'Tiara Usada M.TI.', 'susada@example.org', '(+62) 935 1644 0619', 'Ki. Bata Putih No. 294, Malang 30076, Bengkulu', 'Perempuan', '$2y$12$BJwQcD/cYQHlFywOXQ/gbebfywFWP1ip5VzGUqCevOKfuDzMrjyEq', NULL, 'Peserta', 'Aktif', NULL, NULL),
(60, 'Tania Susanti', 'kamila42@example.org', '023 4282 020', 'Jln. Ki Hajar Dewantara No. 878, Yogyakarta 98048, Babel', 'Perempuan', '$2y$12$KF8sMEo9YhGacHsCtSRhnOq5DWfn0XbdNlBtTuJVK0VM9HQwFn7IK', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(61, 'Uchita Suryatmi', 'gandi33@example.org', '0597 4592 016', 'Jr. Eka No. 706, Dumai 81925, Sulbar', 'Perempuan', '$2y$12$i10TcCtu4lapUkoxeHbfQO8XeVfbZO7mjTN/z38q4GNmpx2YGDQx2', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(62, 'Daru Tirtayasa Megantara S.T.', 'banara.uyainah@example.net', '(+62) 400 5764 317', 'Dk. Sutarto No. 114, Solok 73693, Jatim', 'Perempuan', '$2y$12$q30H02oLp2gTTFu.Nq62NexKZHeFZQmLshhH.415UTuBRom4ZbF9y', NULL, 'Peserta', 'Aktif', NULL, NULL),
(63, 'Raditya Sinaga', 'hasan25@example.com', '(+62) 286 5021 331', 'Gg. Padma No. 30, Bandar Lampung 96943, DIY', 'Perempuan', '$2y$12$yxTpsyjSZJc5KDvo6oASheBMgB7l0MpRegkssHWij32YV9ftq3bqm', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(64, 'Adika Ega Widodo S.Kom', 'karen34@example.org', '0621 8268 8819', 'Jln. Raden No. 109, Solok 96069, Papua', 'Perempuan', '$2y$12$NpHx0rEhTm.Jz0.QnzACdOXfT5lmlxEsOMWIeAPhypxo/4zG/90.S', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(65, 'Karen Hafshah Hariyah S.IP', 'puji.maryadi@example.com', '0508 3784 100', 'Ki. Labu No. 392, Madiun 76108, Sumsel', 'Perempuan', '$2y$12$odKERT.N3H57Z9jo.hgQw.ncHJHzkQjgnnSFtYK.KaDUdD5VBsiXe', NULL, 'Peserta', 'Aktif', NULL, NULL),
(66, 'Janet Kuswandari', 'kenes55@example.com', '(+62) 27 1884 522', 'Kpg. Basket No. 693, Mojokerto 39898, DKI', 'Laki-laki', '$2y$12$Kxtoxz9Fi0xvAQD3Y7tIH.YknawTOlFfGYJl0qDHO8tknGnyFtXSO', NULL, 'Peserta', 'Aktif', NULL, NULL),
(67, 'Titi Agustina', 'putra.gilang@example.org', '(+62) 655 1822 0547', 'Psr. Kebangkitan Nasional No. 482, Banjar 35395, Pabar', 'Laki-laki', '$2y$12$1b7fE.XLswVR50bXoP1G3e/XCqYtcHsmwqUN0H.80rx95URMaSK/m', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(68, 'Intan Pertiwi', 'wasis18@example.com', '0594 7303 876', 'Psr. Lada No. 923, Surakarta 72020, NTB', 'Laki-laki', '$2y$12$m.BwT6OBLmiQgu7P7pEbsOc8L0i7qJ9rKYCz1VzuI.dUez7fDf/N6', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(69, 'Marwata Lazuardi', 'wahyuni.mutia@example.com', '028 8450 761', 'Dk. Gajah Mada No. 780, Palopo 93395, Papua', 'Perempuan', '$2y$12$tEiqHXh/TBof9YFhp2xJfeRN6mjVnUH9FMCMPgxPIbj/uPGXaA/gK', NULL, 'Peserta', 'Aktif', NULL, NULL),
(70, 'Reksa Wacana', 'maya46@example.org', '(+62) 634 5202 845', 'Ki. Uluwatu No. 919, Tanjungbalai 12917, Malut', 'Perempuan', '$2y$12$/BFlx3diP45pcuHfiH8FO.luLNe6/DkgWXqaHFxTQlW2DRGrH3xuK', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(71, 'Kenari Lega Halim', 'paris.ardianto@example.com', '0295 4988 141', 'Psr. Ketandan No. 110, Mataram 95618, Kaltara', 'Perempuan', '$2y$12$5o8A50MMBRAxrqdIjchwmuNIwzUiHJ0SanyS50IKxYW5zdxkbTx.u', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(72, 'Hani Yuliarti', 'candrakanta11@example.org', '0812 784 831', 'Kpg. Ahmad Dahlan No. 858, Sungai Penuh 69232, Kalteng', 'Laki-laki', '$2y$12$fk0fEVZoY3vlPn23luvcjuJ.LN4rtliEf12NkXC0j.A6F1i/624ne', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(73, 'Gangsar Pangestu', 'prayoga.empluk@example.com', '(+62) 347 9169 4678', 'Dk. R.E. Martadinata No. 436, Bengkulu 93005, Jatim', 'Perempuan', '$2y$12$Q6FNHthlF2rSjY6t2MgV6OBY1BySEs6SpP1Sc7LtQuMQR7cPHM2n6', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(74, 'Cahyadi Pranata Gunawan S.Gz', 'wakiman.permadi@example.com', '0707 9827 810', 'Kpg. Ters. Buah Batu No. 129, Administrasi Jakarta Selatan 32296, Kalbar', 'Perempuan', '$2y$12$IGvhI0cpgCEN7Vp6JqfkBe6yMpCDiYKrEBXTUXDR1W/302Unx.Rna', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(75, 'Faizah Laksita', 'dina91@example.net', '0988 0192 119', 'Ds. Flora No. 478, Parepare 74174, Pabar', 'Perempuan', '$2y$12$N5MwDARUqibIXm4wyh40MeVWdwtXtaSf587PK9XPdmqMNGd8sgO0C', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(76, 'Warsa Habibi', 'rahmi72@example.net', '(+62) 898 3977 8195', 'Kpg. W.R. Supratman No. 469, Semarang 16169, Babel', 'Laki-laki', '$2y$12$3X/OHJuFJATWseBp7bnom.iPVSUgf79gDEhmPswiR8AnUXHLs/PiW', NULL, 'Peserta', 'Aktif', NULL, NULL),
(77, 'Dagel Kurniawan', 'vmaulana@example.net', '(+62) 844 2352 9299', 'Psr. Laksamana No. 202, Madiun 57043, DKI', 'Perempuan', '$2y$12$0klA06oGao7OLnoRDdI5XuF6bpLBhNNSEBaHoHBujd7lPzwk..Z2G', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(78, 'Mitra Carub Hidayat S.Kom', 'kusuma.wijaya@example.com', '(+62) 454 1251 450', 'Ds. Kartini No. 952, Sibolga 21228, Papua', 'Laki-laki', '$2y$12$K9F7rA/2gCiMow5lPsxemuPGPZeMl8ft7fMxiNgXbsnLSctytZqYK', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(79, 'Farah Nurul Palastri', 'betania85@example.com', '(+62) 371 6642 8421', 'Gg. Madrasah No. 265, Solok 56489, Kaltim', 'Perempuan', '$2y$12$31RMe5SQeF3826gM7Rt52.Ca68qHvQai0mm7pVHMNz2fVfLFTDI6.', NULL, 'Peserta', 'Aktif', NULL, NULL),
(80, 'Vero Daliono Tarihoran S.Gz', 'ian.wacana@example.org', '(+62) 847 5002 4692', 'Jln. Lada No. 117, Sorong 85736, Bengkulu', 'Perempuan', '$2y$12$YKRP7XEqwD4HnOIHD.2keOZ7AywtnYv5ovMSGqOAjzjUMBWWDWaC6', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(81, 'Dwi Mustofa', 'bprasetya@example.net', '(+62) 979 7620 5124', 'Ds. Ciwastra No. 482, Ambon 45989, Bali', 'Perempuan', '$2y$12$xJCrsJYQF3wPjgsg6qTivOUE0cbr71yDPdbyOuEdmOqc2/74dMfXe', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(82, 'Lukita Abyasa Hidayat', 'tiara.melani@example.net', '0819 3900 109', 'Jr. Dr. Junjunan No. 880, Tasikmalaya 21169, Gorontalo', 'Perempuan', '$2y$12$R.0U8cloo2ksr7.Sy5nUsuyrwGjFFfZ0SVSwqOFATUSCL6C52rhpO', NULL, 'Peserta', 'Aktif', NULL, NULL),
(83, 'Raden Ramadan S.Gz', 'dalimin.farida@example.com', '(+62) 428 8678 479', 'Dk. Sudiarto No. 884, Malang 88972, Jatim', 'Laki-laki', '$2y$12$5ZrCDIff8vrCBtXO778su.QwFnPOl6M.3FKlfonE.Y.OCbM3A1Mua', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(84, 'Labuh Saefullah', 'tri83@example.net', '020 6362 4043', 'Jr. Ters. Jakarta No. 548, Tasikmalaya 89313, Jambi', 'Laki-laki', '$2y$12$LPr6AOrk8gUIZL1O.D6qr.l1PZrCYD86SYDIbf9Wq0j916TsEePiq', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(85, 'Cici Farah Hariyah', 'uchita55@example.org', '(+62) 277 5725 5760', 'Jln. Salatiga No. 539, Tarakan 51936, Kalbar', 'Perempuan', '$2y$12$5S1R2U1dFLTuPm9K7suaS.Uc9LIKUv3tQdgi/SOvLNAfaeoJg85Xq', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(86, 'Jessica Maya Nuraini S.Farm', 'julia.padmasari@example.org', '(+62) 886 0439 185', 'Kpg. Baranang Siang Indah No. 200, Administrasi Jakarta Pusat 29114, Kalteng', 'Laki-laki', '$2y$12$ZKOWNAFvKPTVGnVqdS75xOM0lfZeXnyFPDMm1CArh6EtVEGn91YPC', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(87, 'Kayla Rahayu', 'padmasari.aditya@example.com', '(+62) 574 1488 927', 'Psr. Baranang No. 701, Sorong 97376, Aceh', 'Laki-laki', '$2y$12$uieZTHAFyYShswEaRCKa4uBTZ7OW5Z5z5NhS/97Nakg4T8cL8MiWq', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(88, 'Dinda Gawati Permata', 'darmaji07@example.net', '0538 6482 473', 'Gg. Sukabumi No. 409, Tidore Kepulauan 90148, Sulteng', 'Perempuan', '$2y$12$X5zn.V7.i8Zbk6iG5opgEemQhnOm6PdBJdx/BnAwSbG.5C0wgT..q', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(89, 'Zulaikha Ghaliyati Wijayanti M.Ak', 'bakijan25@example.org', '(+62) 683 3853 8054', 'Jr. Batako No. 488, Padang 69502, Banten', 'Perempuan', '$2y$12$ylwsQ1.tdbditFaBA.uA4OS87TcQ.9mblf5fpn9diUBSnWg2IaKUy', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(90, 'Cinta Purwanti', 'nuraini.murti@example.com', '(+62) 324 7171 9650', 'Kpg. Kartini No. 61, Padang 92927, Sumsel', 'Laki-laki', '$2y$12$fEj46f2jVf0ojEVUyvmIaOxkpk7u0ZYsPP6MTcyYCyJNdZ4pmt5De', NULL, 'Peserta', 'Aktif', NULL, NULL),
(91, 'Intan Gawati Susanti M.Ak', 'unjani.budiyanto@example.net', '0779 2600 2501', 'Dk. Sugiono No. 595, Bogor 68324, Gorontalo', 'Perempuan', '$2y$12$8SOGNi71ZZ6SMeyCjOx0s.rDXgmvhXbuxwRmTabs2Z6DvCI6mYt.6', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(92, 'Indra Setiawan', 'ida50@example.net', '(+62) 646 7963 616', 'Gg. Bayan No. 149, Prabumulih 70049, Sultra', 'Perempuan', '$2y$12$YAxSTmtkKc50I.vf5xZEvOI7kNrQRm7.A93jYN7pE6XUO6C8bjDLm', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(93, 'Ibrani Luis Ardianto', 'ktampubolon@example.com', '0774 4360 9398', 'Kpg. Abdul Rahmat No. 24, Palangka Raya 17389, Sulbar', 'Perempuan', '$2y$12$.KybnrzI8FC2avTYlOr10uuWOiDrKYdW7eaxSSOsZ/m2Zy9PThHrS', NULL, 'Peserta', 'Aktif', NULL, NULL),
(94, 'Paris Handayani', 'widya52@example.com', '(+62) 894 454 611', 'Psr. Peta No. 886, Solok 18628, Jateng', 'Perempuan', '$2y$12$ry1WrLxrvqR6UFoye1rUy.1qsJEgmHnY3DpUSfP0aQd9PxIStGGHq', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(95, 'Zalindra Purwanti', 'nurdiyanti.darmaji@example.org', '0328 7357 0851', 'Jr. K.H. Maskur No. 546, Padangsidempuan 42921, DKI', 'Perempuan', '$2y$12$PccvEXqaqA1vqbNvV5wtae86GMwKKXfCKsw8P32U3J48qWm33MJgq', NULL, 'Peserta', 'Aktif', NULL, NULL),
(96, 'Gada Unggul Dongoran S.Gz', 'darman10@example.net', '0896 340 259', 'Ki. Wahidin No. 465, Manado 86947, Papua', 'Perempuan', '$2y$12$mY/lh50xYgDRDBhV.xiyM.U7N3zA.i2YfhlfwqfWD4DQNKDZE5wnK', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(97, 'Maimunah Lintang Widiastuti', 'unggul.kusumo@example.org', '(+62) 379 9148 457', 'Jr. B.Agam 1 No. 14, Ternate 90919, Jatim', 'Perempuan', '$2y$12$xPaU/K48zGeJQ6PeSBLAYuXb6dHFkpMICdoPIWKbSc7i4RaYP6Z5e', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(98, 'Salwa Utami', 'sudiati.irwan@example.net', '0369 8533 8526', 'Psr. Achmad No. 979, Bau-Bau 38876, Lampung', 'Laki-laki', '$2y$12$MSe9ZU3VYZc6yeLE/mom7O/7XfwoZD.MNETutDprmMfb35nZsF.4.', NULL, 'Peserta', 'Aktif', NULL, NULL),
(99, 'Hafshah Kusmawati', 'ypalastri@example.net', '(+62) 24 2579 9240', 'Kpg. Ikan No. 4, Palopo 51432, Kalbar', 'Laki-laki', '$2y$12$bW5lZ/gahNY..aI6Z8Gee.k8CO2IRdbGt2F.8LuRtr/yyMsSNEOQe', NULL, 'Peserta', 'Aktif', NULL, NULL),
(100, 'Ira Permata', 'wastuti.mala@example.net', '(+62) 556 8882 1997', 'Ds. Perintis Kemerdekaan No. 833, Gorontalo 10862, Maluku', 'Perempuan', '$2y$12$cNvxgk4NgnVmoTRyo5rhV.YG8qA2O.Phi6gHFe65ygOS6225DOtK2', NULL, 'Peserta', 'Aktif', NULL, NULL),
(101, 'Cemplunk Haryanto', 'anggraini.gangsar@example.org', '(+62) 906 7072 494', 'Jln. Yohanes No. 965, Batam 60310, NTT', 'Laki-laki', '$2y$12$nzYhSCRd1/AEX45lp4FIkOsC2T7SzWKljHC3uTeE0LR6WvAectc36', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(102, 'Puspa Gawati Suartini M.Ak', 'osiregar@example.net', '(+62) 352 3319 9349', 'Psr. Gremet No. 497, Tanjung Pinang 10337, Jambi', 'Perempuan', '$2y$12$hqoO0JiJZBv78RMZeu2ON.6Z35GwsFCDZqpp8aoEJJ1GxfNcsBlNy', NULL, 'Peserta', 'Aktif', NULL, NULL),
(103, 'Lukman Dongoran', 'upalastri@example.com', '0529 0704 2796', 'Ki. Mahakam No. 803, Kotamobagu 12526, Banten', 'Laki-laki', '$2y$12$h7v1wbbnhSC9YwTGD/1dueEKkcacGUFVZ7R1Hd9HLZ7nunaPbGszW', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(104, 'Ismail Saefullah', 'adriansyah.clara@example.com', '(+62) 880 7302 043', 'Jln. Wahid Hasyim No. 908, Madiun 41126, Sulbar', 'Laki-laki', '$2y$12$OQPIMi4YkfgdaND/zUlItuNqDxqtjly4wUSLzPKkf0UEgIu0j71pm', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(105, 'Kalim Martana Setiawan', 'ami.nasyidah@example.com', '0767 1340 634', 'Dk. Gading No. 331, Tidore Kepulauan 76183, Papua', 'Perempuan', '$2y$12$4Dv/pyeHEiBH0chAaqql1e7Vs/1KHItMaiX3O6sx4TC5ucCX82iTy', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(106, 'Genta Purwanti', 'nadine07@example.com', '021 7076 929', 'Gg. Rajawali Timur No. 381, Denpasar 15586, Gorontalo', 'Perempuan', '$2y$12$dU2hnEsSs0GHShzP8JBLcO2.dniOwVR1IgwhjbBICD8dm75SMihrm', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(107, 'Kezia Farhunnisa Wulandari S.Pd', 'mulyani.asman@example.com', '(+62) 869 9749 958', 'Dk. Rajawali Barat No. 575, Serang 11315, Kalbar', 'Perempuan', '$2y$12$lXPVbkf0nzCqwVbwtAIeuO0mDcSE0TaNm0VXTu8gEK294lHpMoy7G', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(108, 'Dewi Prastuti', 'dina94@example.net', '(+62) 255 7451 7782', 'Jln. Urip Sumoharjo No. 405, Cimahi 10262, Riau', 'Perempuan', '$2y$12$97cawuCyFy1RCoJ3/JlqF.UqZZIcrtRyIx/wTloSo.sMlrZS5UdCm', NULL, 'Peserta', 'Aktif', NULL, NULL),
(109, 'Prayogo Banawi Hakim S.E.', 'widiastuti.mitra@example.com', '0473 5330 7017', 'Psr. Lumban Tobing No. 511, Tangerang Selatan 26372, Jateng', 'Laki-laki', '$2y$12$6n17h3toKRaHGWhIZqnZOevnZLALifqt.7.nJaBhZVD3g0Srl594C', NULL, 'Peserta', 'Aktif', NULL, NULL),
(110, 'Emil Dabukke M.Farm', 'ibrani07@example.com', '(+62) 644 1641 906', 'Ki. K.H. Wahid Hasyim (Kopo) No. 606, Pematangsiantar 30028, Gorontalo', 'Laki-laki', '$2y$12$kbR04K/nrItKUUR/9eDAEOiQqNpJGG6/mRS3nLn5o60Q9ebutineG', NULL, 'Peserta', 'Aktif', NULL, NULL),
(111, 'Najib Najmudin', 'palastri.ciaobella@example.com', '0572 7877 0823', 'Ki. Untung Suropati No. 758, Blitar 26196, Bali', 'Perempuan', '$2y$12$BZPUv6bwzFKld1jE/k.9SOtMqPP1eO6ZMeQ71Z5EJEbYfXf3Tzmom', NULL, 'Peserta', 'Aktif', NULL, NULL),
(112, 'Bakiman Nashiruddin', 'utami.farah@example.org', '(+62) 667 2056 2703', 'Ds. Antapani Lama No. 354, Depok 52559, Papua', 'Laki-laki', '$2y$12$RnD4UlWb1AnMaAHM0LUNNO9bJ6CJZufEcvrYJM7y6vmwuo1ZPYW5u', NULL, 'Peserta', 'Aktif', NULL, NULL),
(113, 'Kenzie Gandi Mahendra', 'galur.pangestu@example.org', '0224 5420 477', 'Psr. Ters. Jakarta No. 36, Malang 99546, Aceh', 'Perempuan', '$2y$12$CCegSchHLl3l67p7W5WJ2.KwwjqXooecFrVngAeqfXSZFmCpzuS2.', NULL, 'Peserta', 'Aktif', NULL, NULL),
(114, 'Dartono Permadi M.M.', 'nasyidah.eli@example.net', '(+62) 552 5318 337', 'Psr. Ciwastra No. 109, Langsa 76531, Kaltim', 'Perempuan', '$2y$12$/zvdw.8aW0B07IzWYuKu0uLyHRwR2QklVlF5APwtXHeC1vh0STexm', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(115, 'Ajimat Siregar', 'ltamba@example.net', '(+62) 887 070 254', 'Ki. Krakatau No. 42, Banda Aceh 92320, DKI', 'Laki-laki', '$2y$12$plWZLb2AC8Y/KzL49A2QderWzJXvwkzm61P1tJxf23ZoNJjTwFp9C', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(116, 'Intan Devi Winarsih S.Pt', 'ganda34@example.net', '(+62) 894 2146 399', 'Jr. Flores No. 489, Pariaman 99172, Lampung', 'Perempuan', '$2y$12$Ve0C.sB5GjKb2wa.lD6joei38DtEltQKOrIB2GrHlvy961KiqpKd2', NULL, 'Peserta', 'Aktif', NULL, NULL),
(117, 'Bakti Baktiadi Siregar S.T.', 'zamira02@example.org', '026 1321 184', 'Psr. Babadan No. 91, Mataram 40206, Gorontalo', 'Perempuan', '$2y$12$ZBOFUgPnBA/GBnu4uX7mF.cbEbobbadKWzUENDdnFtKue2gDNJlIG', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(118, 'Anastasia Zizi Yolanda', 'asirwanda.hariyah@example.net', '(+62) 300 3491 9272', 'Dk. Rajawali Barat No. 514, Sorong 66548, Kaltim', 'Perempuan', '$2y$12$dsnW3rYblCIzCo2ZFP3ooub0V27TztKHJkka25FKqnse7iHZDjpeq', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(119, 'Hendri Widodo', 'namaga.novi@example.net', '(+62) 856 1347 3637', 'Psr. Laksamana No. 516, Surabaya 35783, Kaltara', 'Laki-laki', '$2y$12$ZUAcZ8xleOqXs1JR9BDLpOspCNvw9qR7XMMkteuv0MT60FOGAzjMi', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(120, 'Yance Aisyah Mandasari M.M.', 'ami68@example.org', '(+62) 472 6776 561', 'Psr. Bagis Utama No. 328, Ambon 13972, Babel', 'Laki-laki', '$2y$12$Na0OTfvlrYlYVQn5F13fUORScMizPdtg4FSn2FPL5MFPwAeHscQaO', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(121, 'Kayla Diana Nasyiah S.Kom', 'lukita.utami@example.net', '0629 0058 2306', 'Dk. Tambun No. 822, Lubuklinggau 29614, Jatim', 'Perempuan', '$2y$12$awRE3fC30LUvWO7NO6t5QeNxVOkwihkrJnB740G1SPX39he403oAe', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(122, 'Caturangga Salahudin', 'kamaria35@example.org', '0318 1526 361', 'Ds. Bass No. 353, Sukabumi 71697, Kalsel', 'Laki-laki', '$2y$12$HlzkDWxnXBv5qMwOBkP.uO8ibaNjBlmxXhMksa240Lp2pebkRQUae', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(123, 'Maman Rajasa', 'xsamosir@example.net', '0791 5822 7743', 'Ds. Ekonomi No. 24, Bontang 91189, Jabar', 'Perempuan', '$2y$12$/eyh64aCzd.nQMkv6Zi7Q.Zac89tkoYhWTgo4gZCY5DvPtFtFA7YO', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(124, 'Syahrini Elisa Pratiwi M.Ak', 'paris.wahyuni@example.org', '0913 5540 9241', 'Kpg. Sukabumi No. 292, Ambon 63069, Riau', 'Perempuan', '$2y$12$/4Jz7KZnSUmjSBgm5/xRxuZMCK7YemaqYlKKcMHx/zIn.q1Gw/m/y', NULL, 'Peserta', 'Aktif', NULL, NULL),
(125, 'Tina Diah Namaga', 'nkusmawati@example.com', '0607 4641 0449', 'Ki. Zamrud No. 348, Semarang 52683, Jateng', 'Perempuan', '$2y$12$NoMStS18HXOttJfTBcVQDellHLzUncxKopIEVqdaMpxWvomSFID7a', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(126, 'Rahmat Sirait', 'adiarja58@example.org', '(+62) 777 8876 8486', 'Jln. Abdullah No. 949, Padangpanjang 57629, Sulsel', 'Perempuan', '$2y$12$YeFQvaV3PcmVz568Y0/rJ.FKgh/QgsyOLKRroj1wh/eUXSC19Mrge', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(127, 'Makara Gangsa Waskita S.Pd', 'shania56@example.net', '(+62) 842 1221 897', 'Ds. Bara Tambar No. 300, Cilegon 53859, Papua', 'Perempuan', '$2y$12$pSX48bEhRGrYm6nwCRngO.Ac3vh.SJvHkP8WUWLLnehNlPwRyHmFG', NULL, 'Peserta', 'Aktif', NULL, NULL),
(128, 'Laksana Umay Siregar S.H.', 'ega.hartati@example.org', '(+62) 29 3376 4021', 'Kpg. Dipenogoro No. 438, Sungai Penuh 11478, Malut', 'Laki-laki', '$2y$12$O.N4kMxzK5xbpzLaZreWjeHLPo9pNd0Iwcp6AlfWQneFSW2iMXHsW', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(129, 'Pangestu Waskita M.Ak', 'danu.mustofa@example.org', '(+62) 795 4351 595', 'Jr. Panjaitan No. 151, Malang 96687, Bengkulu', 'Laki-laki', '$2y$12$Rdjp8ZATCwZdFZ91wFAG6uzaQzP7x3VM2y3VOueHZwWQZCMEd2hZO', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(130, 'Ghani Wira Hidayanto S.Ked', 'marpaung.johan@example.net', '(+62) 310 6529 254', 'Jr. Bakhita No. 968, Sibolga 56346, NTB', 'Perempuan', '$2y$12$syh.1DmtHfTQnXdTLrtlt.LB/8GRZu4QC1TXmB2XHtUSw/PbLo/lq', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(131, 'Kalim Cawisono Nainggolan S.Farm', 'januar.aurora@example.org', '(+62) 640 2759 219', 'Psr. Baha No. 63, Binjai 56697, Sulsel', 'Perempuan', '$2y$12$eQsGf.107HiwAl/BcxFSbuUhJxO.DyrLVvAJHYsD2K0wBeyBMXQ62', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(132, 'Simon Wijaya', 'sarah99@example.com', '(+62) 20 1441 0144', 'Dk. Ikan No. 457, Pematangsiantar 56309, Jabar', 'Perempuan', '$2y$12$ky4d5kqW7Dzszp1DWmvHMuJGq3yJGf14MBTfVP.s43qCKU7WIALV.', NULL, 'Peserta', 'Aktif', NULL, NULL),
(133, 'Kezia Laksita', 'purwa.astuti@example.net', '(+62) 20 0411 7714', 'Ki. Bayam No. 142, Magelang 61792, Kalteng', 'Perempuan', '$2y$12$DjLrICe4CKNrOIMhh4qzX.NuKvJHU2gOSWeXPLklnR3EVjHqM3ALy', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(134, 'Heryanto Simbolon S.E.', 'dimas68@example.net', '0832 905 408', 'Jr. Gegerkalong Hilir No. 714, Tegal 15607, DIY', 'Perempuan', '$2y$12$PdsEvzmoM72rMjO082yVJuGHZ0bwE0xizU1gVTm7RIttjhMjbWlnu', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(135, 'Zelda Hartati', 'chabibi@example.net', '(+62) 262 8681 0944', 'Jr. Bappenas No. 895, Batam 96859, Jatim', 'Perempuan', '$2y$12$TrRcivhgn8L0Gkv2EZiNEuhB6VwUQ5NgSMEzCMQ4xcwOTllgtcXam', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(136, 'Tira Suartini', 'jono18@example.org', '0358 4984 311', 'Ki. Yogyakarta No. 116, Manado 76646, Malut', 'Laki-laki', '$2y$12$COFPa7zZiDGF0QkK8sN4nOK7w0/eLuXLL61OV..XyPBfEFD9lcCsy', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(137, 'Oskar Adinata Hardiansyah', 'wastuti.jono@example.net', '0539 2721 454', 'Ki. Sudiarto No. 708, Balikpapan 54779, DIY', 'Laki-laki', '$2y$12$GqxLjDDVYOTRG28LyDsnV.vKvW0ETa401ezIYZ4QpcN2GeSfZ0lC.', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(138, 'Kartika Lailasari', 'maria10@example.net', '(+62) 383 1467 4656', 'Jln. Halim No. 734, Surakarta 36821, Sumbar', 'Laki-laki', '$2y$12$bvssFQdLj0COBl/V7wCipeQ3Bqt.R6lF8vfdNsy5p8Cxbb0zoZIWa', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(139, 'Jayadi Harimurti Simbolon M.TI.', 'dadap42@example.net', '(+62) 355 2770 076', 'Jr. Basuki No. 86, Lubuklinggau 86801, DKI', 'Perempuan', '$2y$12$EbPWerjPZt6iHwoeS5EVyOAs1RblWlPZCVNdBjHZZ6XMhd2vcdqHO', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(140, 'Anom Winarno S.Sos', 'mustofa.restu@example.com', '0410 7420 821', 'Psr. Basuki No. 224, Tebing Tinggi 85325, Jabar', 'Laki-laki', '$2y$12$5DUPfsYvpm1F.qKSXoSqx.GzNuVLUi32HdRA/oZz40pOCus8wfO3m', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(141, 'Vega Sihombing M.Ak', 'prasasta.rahmat@example.net', '(+62) 961 4529 807', 'Dk. Tambak No. 403, Padang 42598, NTT', 'Perempuan', '$2y$12$9wFmYDtiP03yiF5/uF.9LuVfP6tcZkDYQKO2EwVAUWcXLF9Gb1AE2', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(142, 'Siska Rahmawati', 'dimaz.kuswandari@example.net', '(+62) 945 0679 255', 'Jln. Uluwatu No. 716, Bekasi 14863, Kalteng', 'Perempuan', '$2y$12$QZjbV6Z0IyXMzJ96rGMkJulUVycDjX..57jaOPWBe7/oPFNoLCavO', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(143, 'Victoria Kusmawati S.Pd', 'mangunsong.oman@example.net', '0918 8601 138', 'Jln. Karel S. Tubun No. 644, Batu 95590, Jateng', 'Perempuan', '$2y$12$I7PfhrBNEXxNlHsLcr1GN.c9DkMUcbf.CkG1cfHCP26U4xGt6wVLm', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(144, 'Respati Tarihoran S.I.Kom', 'artanto.lailasari@example.net', '(+62) 21 0545 1420', 'Ds. Suprapto No. 15, Sorong 38885, Malut', 'Perempuan', '$2y$12$NwbK.v0AGC3niM1Aaymxs.ja3zhrIHTgdXf8NIC19ipCISInaFxGa', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(145, 'Kartika Salimah Suartini', 'qrahmawati@example.com', '0222 3500 5110', 'Kpg. Salak No. 478, Batu 10738, Pabar', 'Laki-laki', '$2y$12$clgM.JDLt6DF4ZVGJtS53.AWOoH7UswnSogzujehXD3dnyGPISKB2', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(146, 'Darijan Johan Gunarto', 'sihombing.iriana@example.com', '0795 8079 7135', 'Gg. Eka No. 860, Cilegon 34282, Kaltara', 'Laki-laki', '$2y$12$Dt6e/dV1X67aDX5wiZZgZeUbq.rQxRCnOwenXWSLT/Mc5KagPTGTC', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(147, 'Febi Yance Farida S.Gz', 'hartati.hafshah@example.com', '0961 1977 0355', 'Dk. Tentara Pelajar No. 341, Lubuklinggau 90783, Jabar', 'Perempuan', '$2y$12$BYUXSKhGXrpFei78fPMRnueELLkI6Y7KjHuNjzhndh/laDttIxy4S', NULL, 'Peserta', 'Aktif', NULL, NULL),
(148, 'Irfan Pangestu', 'owijayanti@example.com', '(+62) 602 7885 5241', 'Dk. Imam No. 783, Malang 66615, Kepri', 'Perempuan', '$2y$12$LbvXnv32HYcU4c1BpyCDmO5CBclZ1C2Hfm1/VF3Bz9oEL7MIw6gKW', NULL, 'Peserta', 'Aktif', NULL, NULL),
(149, 'Lantar Setya Kurniawan M.Farm', 'psaptono@example.org', '0985 4489 9827', 'Ki. Gotong Royong No. 618, Tebing Tinggi 39572, Bali', 'Laki-laki', '$2y$12$CKgH..ic/cSd0HsijW.k9O1IZTpemGGj7o.FeZdLcGa6VZlW3K73m', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(150, 'Usyi Nasyidah', 'mansur.yance@example.org', '(+62) 609 0686 7727', 'Kpg. Cikutra Timur No. 418, Kupang 61115, Lampung', 'Perempuan', '$2y$12$xH.Vamh8UGsiX24qk/nPqOUm6rnQ8dJy4DOOO2NmnyOedwjMh/TV6', NULL, 'Peserta', 'Aktif', NULL, NULL),
(151, 'Tira Suartini', 'gara.nababan@example.com', '0259 3171 361', 'Dk. HOS. Cjokroaminoto (Pasirkaliki) No. 504, Cimahi 59017, Sumsel', 'Perempuan', '$2y$12$UkRHxgCL42ZRigPEUdWzPuPZBLZgEVh7XHSLvUr3/CuCuIQnb9JGa', NULL, 'Peserta', 'Aktif', NULL, NULL),
(152, 'Bala Siregar', 'mahendra.diah@example.com', '(+62) 998 4427 630', 'Kpg. Warga No. 305, Pariaman 97369, Sulteng', 'Laki-laki', '$2y$12$0rTZuSa9Egx9s24NevNKZeC5BaPYsYVSORTX3Tbekcq1cmgadBlki', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(153, 'Galur Zulkarnain M.TI.', 'dina80@example.org', '(+62) 963 4627 4060', 'Psr. Wahid Hasyim No. 739, Gorontalo 13124, DKI', 'Perempuan', '$2y$12$6RFqr1kWuEGGRMXkYc4g.O5kPa1uepLT9HYRuGhoYBR.oJ4ZJoS2.', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(154, 'Hesti Susanti', 'mprasetyo@example.org', '(+62) 880 392 444', 'Gg. Ketandan No. 796, Subulussalam 52389, Bali', 'Perempuan', '$2y$12$qznuC4HGo.0KBwoV/HOWd.Ls7FbOqEMRvyT8lDBP9AyaJi.FqH/0S', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(155, 'Intan Purnawati', 'digdaya.wibowo@example.com', '(+62) 939 2365 598', 'Jln. Adisucipto No. 449, Serang 47648, Sulsel', 'Perempuan', '$2y$12$4PwKiDajwZ7F3G65fjuyCuyiLZu/TG9YwwQsp.lE7pJNP/Jc5pMYe', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(156, 'Jaya Saefullah', 'violet.namaga@example.net', '0362 2754 182', 'Jr. Basuki Rahmat  No. 840, Cirebon 66334, NTT', 'Perempuan', '$2y$12$00end6ZZ1hBK.9XycuQkcuvbDRRBeikSQVs2A.ttJyelDJWrvDP2y', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(157, 'Padmi Lestari', 'kasiyah36@example.org', '0737 7888 4091', 'Jr. Abdullah No. 183, Banjarbaru 28956, Sulbar', 'Perempuan', '$2y$12$Bv33R7.owexCiyLob9N.XeotOtpDaeY4O/7YJg2zjrNFI/vHgMheO', NULL, 'Peserta', 'Aktif', NULL, NULL),
(158, 'Elma Kusmawati', 'anggabaya.prakasa@example.net', '(+62) 239 5353 912', 'Jln. Pattimura No. 985, Bekasi 12795, Sulsel', 'Laki-laki', '$2y$12$D0XEsKo4kIZGnos8tk11nOoxfuQRjvK8jRJl/3Temg6BZ8xNzKJ9e', NULL, 'Peserta', 'Aktif', NULL, NULL),
(159, 'Asmadi Edison Rajasa S.Sos', 'utami.jaiman@example.net', '(+62) 490 8629 587', 'Kpg. Badak No. 55, Ternate 22085, Sulsel', 'Perempuan', '$2y$12$LLn2qG0RKRBRlkAsg00J1.S79fMmLY4nVN7bP4/1WQWzxD//4AC6W', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(160, 'Caket Gunawan', 'setya.sihombing@example.net', '(+62) 22 6594 9981', 'Jln. Baabur Royan No. 858, Administrasi Jakarta Pusat 82921, Sulbar', 'Perempuan', '$2y$12$HbdagzNxd9TSovC3u48oqOgO8Pnd98400l4GHVHXDtncuS5mLRM9G', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(161, 'Akarsana Simbolon M.Pd', 'yance27@example.org', '0837 8697 261', 'Jr. Ujung No. 736, Pariaman 26842, Kalsel', 'Perempuan', '$2y$12$bLxVvRVBPC5xAnjx034.ieTZkZ.V3zzu3zgT/IuTCuMRx3X914ITa', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(162, 'Zizi Hasanah', 'lutfan.hariyah@example.org', '(+62) 340 6424 269', 'Jr. Flora No. 506, Langsa 13695, DKI', 'Laki-laki', '$2y$12$C/.nJ54lK/ptR74Kl5Qro./s.oGXbqAtbNTIj4oa7Bq1MIp6.p4t2', NULL, 'Peserta', 'Aktif', NULL, NULL),
(163, 'Balidin Daryani Mangunsong', 'baktiadi.fujiati@example.net', '(+62) 881 8572 6084', 'Jr. Adisucipto No. 454, Salatiga 11485, Lampung', 'Perempuan', '$2y$12$JMNsp2WpfvAhFJSUMckYteq6Fv4D4fjwMkr1OPx/M1OIBx5BztOrC', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(164, 'Belinda Prastuti', 'manullang.cahyadi@example.org', '0424 3816 6094', 'Jr. Dipenogoro No. 643, Sabang 63539, Kaltim', 'Laki-laki', '$2y$12$bSrabASML9Bd/ZSIzL5feOQc48WPWXGrW7isAUKPGoCLG0c0Iar0C', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(165, 'Ratih Titin Uyainah S.Kom', 'hairyanto23@example.net', '(+62) 388 1844 0570', 'Jr. Umalas No. 231, Sungai Penuh 23278, Jambi', 'Laki-laki', '$2y$12$NkCcMEFnkcaztSZkDaCpfunEwPct.yEaE0/n6vP/i1GeVPEtWSu7W', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(166, 'Rahayu Uyainah M.Pd', 'bpratiwi@example.org', '(+62) 574 7483 7576', 'Jln. Babadak No. 538, Palu 40688, Jateng', 'Perempuan', '$2y$12$VBhNfJniClUNiaf68eshVe/mGutRTqDdM05w9lrVPtgEa5sbFKDgm', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(167, 'Prabowo Natsir M.Kom.', 'epurnawati@example.org', '0483 4450 259', 'Jln. Rajawali No. 300, Tual 40451, Malut', 'Perempuan', '$2y$12$Qy5xXOq8m2LpUkCo8WSY4uLw8IZJY0g4VZoNLW2Z1mpe5X9/sqKCO', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(168, 'Silvia Andriani S.Pd', 'onababan@example.org', '(+62) 941 7979 8515', 'Jln. Hang No. 98, Bontang 35468, Kalsel', 'Laki-laki', '$2y$12$bj4BB4nCsJs60ZdpSfeWt.c3ccbkElHZpNhA7U0En.6i.uGMbTY3y', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(169, 'Marwata Wahyudin', 'puti78@example.com', '(+62) 818 716 320', 'Jln. Yos Sudarso No. 417, Ambon 71963, Kalbar', 'Laki-laki', '$2y$12$KESicxn06neKBWfssmWjfOPTxuNw/DJzNAxORjKUo6b5/hssj9hIS', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(170, 'Adhiarja Marpaung', 'yolanda.ellis@example.org', '(+62) 981 0794 683', 'Dk. Lumban Tobing No. 132, Kotamobagu 53897, Sumbar', 'Laki-laki', '$2y$12$OIJpIeb1eHTFTR6kBWYE2OK6RFgD/O5pWOyZWptsVBP0xMGGNOHTK', NULL, 'Peserta', 'Aktif', NULL, NULL),
(171, 'Taufik Siregar', 'najmudin.indra@example.org', '(+62) 984 9081 903', 'Kpg. Tentara Pelajar No. 578, Mojokerto 27038, Jambi', 'Perempuan', '$2y$12$oawf0AlAPXoVXN93LTMdBOERxqctjDYdPwUTbhD.oubAnaSi/tEBe', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(172, 'Dartono Rama Tarihoran', 'novi.maryati@example.org', '0753 4550 1176', 'Dk. Yohanes No. 212, Probolinggo 25164, Maluku', 'Laki-laki', '$2y$12$W91tRrwngBQPB8Bw7pWH4Omb/w5FI8OxqQH767Wix1CmX3Ce.mMCG', NULL, 'Peserta', 'Aktif', NULL, NULL),
(173, 'Catur Rajata', 'cengkir.simbolon@example.org', '0834 560 753', 'Dk. K.H. Wahid Hasyim (Kopo) No. 934, Tarakan 94248, Papua', 'Laki-laki', '$2y$12$5qwOcGk03K7xH2FAOY/KMOcEDhZilh1G8u3goezXStBO/IIiKT.zq', NULL, 'Peserta', 'Aktif', NULL, NULL),
(174, 'Sakura Keisha Hastuti S.E.', 'sakura46@example.com', '0360 5357 4696', 'Psr. S. Parman No. 328, Administrasi Jakarta Pusat 92874, Kaltim', 'Laki-laki', '$2y$12$1gIK2K3CcCAHLet8oHvm/.O/ot9N6fD6zl0kza.xDCJ7BXjwHPTG.', NULL, 'Peserta', 'Aktif', NULL, NULL),
(175, 'Jati Maheswara', 'digdaya55@example.org', '0998 5679 520', 'Dk. K.H. Maskur No. 658, Banjar 26222, Papua', 'Laki-laki', '$2y$12$5dqSbXGhwfYcx1oIxmiI6ud.9OCSIllHRVmScSKLxYwmn7PlZeDti', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(176, 'Garan Pradipta', 'pratama.gada@example.org', '(+62) 236 2000 054', 'Psr. Sutan Syahrir No. 952, Kediri 56519, Papua', 'Laki-laki', '$2y$12$KrBqGAzWE47v4YdeqCSXoevh5jrZcvZ8UTwfCS2svOY2E7KZGcjQu', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(177, 'Adikara Hutasoit', 'shania.utami@example.net', '0622 5726 1875', 'Dk. Kusmanto No. 463, Tanjungbalai 36895, Sulbar', 'Laki-laki', '$2y$12$u9KMllZs.4RlVlQ4UZ/0Ee5iSPSXNnNMcHL4m5jWx8k.wVWMdeKYG', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(178, 'Ajiman Marpaung', 'sihotang.karman@example.org', '0416 5636 326', 'Psr. Kali No. 932, Bandung 13508, Kalbar', 'Laki-laki', '$2y$12$THqUefJB/X45kHDQo0066OM9h8MFR8iiP9.udnLg35PWarhsPybl2', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(179, 'Wirda Qori Riyanti S.Pd', 'oni20@example.org', '0733 5211 025', 'Kpg. Bahagia  No. 834, Probolinggo 92904, Sumbar', 'Perempuan', '$2y$12$KCHaEk1q4y1pAEgW57jw5.Pdc1MHoP6u97doyahy26qZzG0AAbW42', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(180, 'Rafi Wibisono', 'tirtayasa18@example.com', '022 1640 7005', 'Psr. B.Agam 1 No. 513, Jambi 81995, Kalteng', 'Perempuan', '$2y$12$oFELq1XFAkTWbHRu0eUXiuUulk3JzgCQESuzL1U7WJA3lXaFvI/tm', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(181, 'Hani Zulaika', 'asirwanda.suryatmi@example.com', '0696 4833 225', 'Gg. Ciwastra No. 486, Kotamobagu 47686, Malut', 'Laki-laki', '$2y$12$qRlN5xnRgB22txAoi6eV5Ox.gPKG15aXbAmCNq8rH7SfqS6Ssy1km', NULL, 'Peserta', 'Aktif', NULL, NULL),
(182, 'Belinda Susanti', 'tantri.wijaya@example.org', '0712 7386 358', 'Gg. Nangka No. 106, Banjarbaru 80458, Sumsel', 'Laki-laki', '$2y$12$DkC6oPsAGlEwOUziRPl9YOBtW5uedmU91VO8NvbOzUOQMXNax83x6', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(183, 'Tania Zulaika', 'epradana@example.net', '0442 2387 5453', 'Gg. Warga No. 293, Bogor 64661, Malut', 'Laki-laki', '$2y$12$JFiynjBVYpNufyGTyLGVUO417LsHA8Fbk.PS/CBlP5PmFwKQtcjRe', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(184, 'Hani Namaga', 'rajata.johan@example.org', '(+62) 25 5116 312', 'Ki. Suryo No. 491, Samarinda 46067, Maluku', 'Laki-laki', '$2y$12$ywVi//3TuQgEX4jEN/S.quRUCklQnJDk6B9p61HJ5m/mQvduwfHie', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(185, 'Jaswadi Makuta Utama S.Psi', 'zulaika.bakda@example.org', '(+62) 247 8398 7894', 'Ki. Umalas No. 180, Pontianak 26868, Papua', 'Perempuan', '$2y$12$fTL2cZWXjVyh654FgcJsTeeKBxPAT7X8yEyO0/wFWTPdIacndTdO2', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(186, 'Tami Padmasari', 'khandayani@example.org', '0584 6193 975', 'Gg. Baiduri No. 169, Padangpanjang 78472, Papua', 'Perempuan', '$2y$12$gnqWPJbJafiGV0SO.l6Urui3yspiriSOzIXUudAnr8Zrfv5i1vn62', NULL, 'Peserta', 'Aktif', NULL, NULL),
(187, 'Gantar Nababan S.T.', 'waluyo.nyana@example.com', '(+62) 754 1829 2418', 'Jr. Gremet No. 537, Medan 86635, Kalbar', 'Perempuan', '$2y$12$trpi2/LpwccluwM4Ols4eehIR2f/poc45IEZNxHizSHctLqOEevEq', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(188, 'Cengkir Parman Winarno S.H.', 'cici34@example.net', '0814 3431 858', 'Gg. Laksamana No. 397, Sawahlunto 43097, Lampung', 'Perempuan', '$2y$12$0fNIx6D5VCWvRhexiWtt6OFaufesmMqR63MfQu9i4rD1cNYn1ZsBG', NULL, 'Peserta', 'Aktif', NULL, NULL),
(189, 'Pranawa Prasetya', 'dagel85@example.com', '(+62) 547 5939 635', 'Jln. Bayan No. 506, Cimahi 35599, Sumbar', 'Perempuan', '$2y$12$GgxqPhPwk7rlG3IQiPeNEeENsJKM1iblEOEwx5sC.vhyUqkSbJfzW', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(190, 'Tomi Suwarno', 'winarsih.kayla@example.org', '0859 681 992', 'Jln. Jayawijaya No. 443, Padang 38605, Kaltara', 'Laki-laki', '$2y$12$HlIyWa5MeTXErfmgs00lNeLTQvNCA1CQLUDKzjYQQlefoyByb2VWO', NULL, 'Peserta', 'Aktif', NULL, NULL),
(191, 'Kala Hutagalung', 'oastuti@example.org', '0360 5891 6391', 'Jr. K.H. Wahid Hasyim (Kopo) No. 290, Kotamobagu 83895, Sultra', 'Perempuan', '$2y$12$UFcUy4s/AlGvL.FfMSHlieznOZbKAXNgSAENbEg3TYt/u5Aty8qrG', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(192, 'Farah Lailasari', 'victoria97@example.org', '(+62) 560 0933 8879', 'Kpg. Bak Mandi No. 246, Ambon 44277, Kalsel', 'Laki-laki', '$2y$12$ZaACCPlIW6Ulcp8sPwxtP.d8c2BpIjrGJPOp4O1lj9t1JyvDIy3i6', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(193, 'Ulva Kuswandari', 'jarwi57@example.com', '(+62) 787 1175 7495', 'Jr. Sumpah Pemuda No. 818, Prabumulih 32750, Sumsel', 'Laki-laki', '$2y$12$D2E5DEFGICZyIVtv7HWCFeB9zIapimts9JeMjXcVNSXnTjPMzQ1y2', NULL, 'Peserta', 'Aktif', NULL, NULL),
(194, 'Irwan Prayoga', 'laksmiwati.ida@example.com', '(+62) 26 4976 7279', 'Psr. W.R. Supratman No. 620, Tidore Kepulauan 97431, Kaltara', 'Perempuan', '$2y$12$L8n.NSNBQNVEPwaiuWZ8NOTe3SF1wP7xTNudGMVMU.PMTFEHKkiui', NULL, 'Peserta', 'Aktif', NULL, NULL),
(195, 'Rudi Niyaga Prayoga', 'farida.jais@example.org', '(+62) 659 6262 122', 'Jr. Rajiman No. 245, Payakumbuh 99586, Babel', 'Perempuan', '$2y$12$Hci7Gd6Sykk0foJthxe6zObfk8mY53JFZMbl3kD5KS9dO8LxbQiQW', NULL, 'Peserta', 'Aktif', NULL, NULL),
(196, 'Limar Rajasa', 'xwasita@example.org', '0592 8661 8312', 'Dk. Ekonomi No. 737, Prabumulih 18018, DKI', 'Perempuan', '$2y$12$OhPMLhWy0KZTzht8LOwqV.GPFg/0mc2cmjVm9ntdlxDX.NAvKT4uO', NULL, 'Peserta', 'Tidak Aktif', NULL, NULL),
(197, 'Satya Adriansyah S.Pd', 'nababan.harsanto@example.org', '(+62) 264 6056 716', 'Ki. Ahmad Dahlan No. 906, Denpasar 14696, Jateng', 'Perempuan', '$2y$12$PPccbv1Kc0e.tltDb96tiOJfPTpcZf87TBLv4T6IDpIdEh1b3AYPi', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(198, 'Sabar Mahfud Narpati', 'gmaryati@example.net', '0261 2922 8257', 'Ki. Labu No. 702, Administrasi Jakarta Timur 97191, Kalteng', 'Perempuan', '$2y$12$NZHTWd5SxOfkLjP5hhDNouqG6ualSovLV6XtMpmnCW9kmu8kLr1n.', NULL, 'Pelatih', 'Aktif', NULL, NULL),
(199, 'Yahya Dabukke', 'bagya94@example.net', '(+62) 891 850 675', 'Psr. Halim No. 749, Bogor 79309, Sulsel', 'Perempuan', '$2y$12$hRrg1ZWKUMAHiD7IhHr6w.krk45n1nsD7BRH9oHMVdF6k4OcnLx8.', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(200, 'Adinata Mansur M.Farm', 'chelsea.agustina@example.net', '(+62) 417 4651 4250', 'Jr. M.T. Haryono No. 732, Padangpanjang 86764, Jabar', 'Laki-laki', '$2y$12$9P5YYpybbzwfzG248BpSreBV72ruBzx6/opCdVmkGUClvmdr28YxC', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(201, 'Cinta Susanti', 'widodo.ganjaran@example.org', '0984 7734 3043', 'Jr. Padma No. 903, Banjarmasin 66732, Pabar', 'Perempuan', '$2y$12$4g.fV7DZHSKXWP/ciKumk.TQkIfJ6FoPGz0uvedIfTzlj.OHczqeG', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL),
(202, 'Tami Zulaika', 'nnasyidah@example.net', '(+62) 847 3086 435', 'Psr. Ronggowarsito No. 260, Manado 28276, Papua', 'Laki-laki', '$2y$12$GlQ5ApSzOL5HJmSRNnIe8ud1mY1io/Bsi8sIqVPwNbBGcBPjr/Pwu', NULL, 'Pelatih', 'Tidak Aktif', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `peserta_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tahun_pengalaman` int(11) DEFAULT NULL,
  `bulan_pengalaman` int(11) DEFAULT NULL,
  `nama_keahlian` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`peserta_id`, `pengguna_id`, `tahun_pengalaman`, `bulan_pengalaman`, `nama_keahlian`, `created_at`, `updated_at`) VALUES
(1, 7, 10, 8, 'commodi', NULL, NULL),
(2, 7, 2, 12, 'dignissimos', NULL, NULL),
(3, 7, 1, 1, 'et', NULL, NULL),
(4, 3, 2, 8, 'laboriosam', NULL, NULL),
(5, 6, 5, 8, 'non', NULL, NULL),
(6, 9, 3, 5, 'et', NULL, NULL),
(7, 8, 10, 3, 'alias', NULL, NULL),
(8, 6, 6, 3, 'non', NULL, NULL),
(9, 5, 3, 10, 'non', NULL, NULL),
(10, 5, 4, 9, 'aut', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_kursus`
--

CREATE TABLE `rating_kursus` (
  `rating_kursus_id` bigint(20) UNSIGNED NOT NULL,
  `kursus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pengguna_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rating_kursus`
--

INSERT INTO `rating_kursus` (`rating_kursus_id`, `kursus_id`, `pengguna_id`, `rating`, `komentar`, `created_at`, `updated_at`) VALUES
(1, 9, 27, 5, 'Aut laudantium distinctio libero alias doloribus ipsum alias.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(2, 21, 20, 10, 'Modi maxime et ipsa optio.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(3, 21, 8, 9, 'Cupiditate iure sequi repellat quia totam ad.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(4, 9, 13, 10, 'Qui autem aspernatur numquam dolore eum molestiae quas.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(5, 30, 30, 6, 'Ut perspiciatis laudantium unde deserunt quo reprehenderit.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(6, 8, 20, 5, 'Culpa assumenda ea voluptatem quisquam aut aut quis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(7, 19, 14, 6, 'Inventore aut iusto architecto commodi architecto libero.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(8, 15, 13, 6, 'Est ut et inventore qui fugiat qui.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(9, 16, 21, 8, 'Eos praesentium laborum perferendis dolorum eius perferendis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(10, 19, 16, 5, 'Pariatur eaque unde sequi hic distinctio maiores rerum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(11, 17, 18, 7, 'Adipisci non omnis dolorem odio nihil.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(12, 30, 14, 6, 'Odio cupiditate fugit corporis maxime laboriosam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(13, 22, 25, 7, 'Quasi officiis et error labore.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(14, 8, 12, 5, 'Sunt deserunt et quam distinctio natus.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(15, 21, 30, 8, 'Voluptate maxime rem qui.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(16, 16, 28, 10, 'Perspiciatis neque mollitia sed vel.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(17, 7, 30, 10, 'Sed quo voluptas placeat molestiae.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(18, 9, 17, 10, 'Adipisci et aperiam eos et et.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(19, 15, 12, 5, 'Neque cupiditate error et non veritatis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(20, 15, 22, 9, 'Animi illum beatae dolor consequatur doloribus et atque.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(21, 4, 22, 6, 'Cupiditate id et qui est illum labore.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(22, 29, 8, 10, 'Dicta similique omnis aut enim quia.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(23, 13, 23, 7, 'Ut rerum nobis consequuntur reiciendis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(24, 12, 16, 7, 'Praesentium in ex reiciendis inventore omnis aut velit itaque.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(25, 21, 6, 6, 'Commodi inventore quia nihil rerum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(26, 22, 18, 5, 'Maxime quae molestias consectetur et necessitatibus repellat laboriosam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(27, 15, 8, 7, 'Possimus itaque est corporis sequi.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(28, 4, 26, 5, 'Maxime sint incidunt est quo ab qui.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(29, 27, 8, 5, 'Optio id aut enim corrupti ut quia.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(30, 16, 11, 9, 'Ratione soluta voluptas quia enim similique excepturi eum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(31, 27, 15, 6, 'Odio maxime ea totam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(32, 26, 27, 5, 'Quaerat similique consectetur id.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(33, 3, 13, 9, 'A eaque sunt earum nostrum id necessitatibus nemo.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(34, 8, 22, 6, 'Asperiores ratione ad alias cupiditate est dignissimos eveniet.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(35, 9, 26, 10, 'Enim cum adipisci ipsa voluptatibus aut aut.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(36, 8, 13, 8, 'Nemo adipisci repudiandae quisquam ipsam similique et.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(37, 2, 30, 9, 'Placeat et eaque tempora inventore eum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(38, 13, 14, 6, 'Dignissimos recusandae qui consequuntur id.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(39, 30, 30, 6, 'Dicta soluta ut dolor temporibus optio sed amet.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(40, 5, 14, 7, 'Et architecto modi similique eum error aut quod.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(41, 19, 11, 7, 'Hic voluptas eum reiciendis laborum maiores eaque aperiam necessitatibus.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(42, 15, 7, 6, 'Neque molestias quo illo sed iste molestias.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(43, 27, 25, 5, 'Nam rerum nulla iusto quae.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(44, 2, 20, 9, 'Consequatur aperiam porro assumenda quam iste soluta.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(45, 6, 12, 6, 'Et assumenda et velit odio et.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(46, 1, 19, 5, 'Nihil repellat est saepe ut dolore voluptatem.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(47, 25, 30, 9, 'Voluptatibus qui officia iure accusamus.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(48, 16, 18, 6, 'Odit iure nihil est est aspernatur cum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(49, 9, 20, 9, 'Assumenda doloribus nesciunt ad error illum dolore doloribus.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(50, 19, 15, 8, 'Voluptates non mollitia maxime sequi adipisci esse.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(51, 6, 24, 5, 'Cumque blanditiis tenetur est iusto.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(52, 21, 27, 5, 'Earum non nesciunt nam ratione qui laborum qui architecto.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(53, 17, 24, 10, 'Omnis et fuga non animi esse officiis natus.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(54, 27, 22, 6, 'Quia dolorum veritatis est qui quod unde.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(55, 21, 25, 5, 'Hic qui voluptatem minima illum quo eum nemo.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(56, 14, 11, 7, 'Delectus blanditiis sunt ullam voluptatem.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(57, 6, 12, 6, 'Accusantium quidem commodi quasi id in et.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(58, 5, 30, 6, 'Autem distinctio nemo in sequi dolorem non quis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(59, 26, 27, 10, 'Repellat accusamus est laborum quam ipsa nostrum earum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(60, 18, 9, 5, 'Iste fugiat vel repudiandae voluptatem quasi asperiores ut.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(61, 21, 6, 6, 'Error dicta quo exercitationem unde exercitationem.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(62, 9, 21, 10, 'Ut fuga repudiandae porro et.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(63, 30, 6, 7, 'Porro pariatur ducimus in aut aut voluptatem odio aut.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(64, 20, 30, 10, 'Aperiam cumque consequuntur deleniti quo.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(65, 5, 13, 5, 'Velit voluptas eos sint ipsum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(66, 28, 17, 8, 'Voluptatum expedita tempora ex dolorem sint dolorum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(67, 10, 25, 5, 'Eos quis recusandae vitae ut eligendi dolor.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(68, 4, 26, 5, 'Et dolore deserunt corporis rerum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(69, 19, 8, 8, 'Eius non distinctio rerum ut est veritatis voluptatem.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(70, 8, 12, 8, 'Dolorum omnis cum minus iste et eos.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(71, 15, 22, 7, 'Rerum sit rem beatae ipsam consequatur tempore voluptates.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(72, 19, 17, 9, 'Atque mollitia accusamus eos tenetur perspiciatis fugiat voluptates.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(73, 6, 25, 6, 'Labore possimus ut mollitia qui eius.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(74, 6, 12, 10, 'Tenetur explicabo commodi et quia dolor.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(75, 23, 8, 5, 'Iusto et amet sint qui voluptatem quia fugiat.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(76, 20, 7, 5, 'Rem nostrum architecto accusantium tenetur.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(77, 27, 29, 6, 'Sit vero autem omnis maxime iusto ratione commodi quasi.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(78, 4, 9, 5, 'Eum aut corporis in perferendis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(79, 25, 18, 9, 'Est illo velit autem voluptatem temporibus quod.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(80, 11, 9, 5, 'Corrupti officia voluptatibus nam iusto facilis perferendis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(81, 30, 23, 8, 'Culpa ab aliquid sed.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(82, 27, 15, 7, 'Non rerum occaecati praesentium.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(83, 6, 29, 8, 'Non deleniti repellendus commodi nulla impedit eveniet velit.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(84, 15, 10, 5, 'Occaecati ipsa mollitia possimus error quia sit.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(85, 16, 23, 7, 'Minus quis suscipit tempore eum vitae.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(86, 4, 26, 6, 'Sunt sed nihil suscipit tenetur.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(87, 11, 29, 7, 'Soluta quas fugit sapiente.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(88, 29, 12, 8, 'Voluptate repudiandae dolorum et nihil dolore vitae.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(89, 27, 21, 9, 'Enim consequatur vero eum dolores doloremque ipsam molestiae.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(90, 11, 14, 9, 'Pariatur id eius a velit ut reiciendis necessitatibus id.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(91, 30, 27, 5, 'Cupiditate repudiandae animi minus qui dolorem ut dolores.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(92, 11, 14, 8, 'Natus debitis earum officiis officiis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(93, 9, 30, 8, 'Ex est numquam sit ad sed.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(94, 17, 20, 10, 'Illo laborum et sunt modi alias.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(95, 5, 23, 9, 'Fuga sint sit autem beatae eveniet iusto.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(96, 29, 12, 9, 'Saepe illum quia tempore nobis rem ut.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(97, 14, 22, 10, 'Quae sequi quia laudantium cum commodi voluptatum aut.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(98, 8, 19, 9, 'Omnis optio qui est minima officia voluptas enim ut.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(99, 27, 12, 6, 'Neque et sit neque ab sunt ut laborum asperiores.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(100, 20, 11, 6, 'Officia optio maiores est ut commodi quia.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(101, 3, 28, 9, 'Quisquam vel earum omnis quia.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(102, 9, 21, 6, 'Earum et inventore expedita est dolorum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(103, 9, 12, 9, 'Velit assumenda corporis dolor quidem et porro ab.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(104, 8, 23, 6, 'Quo quidem iste commodi ut amet ad.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(105, 23, 19, 8, 'Quo delectus dolore esse.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(106, 27, 13, 6, 'Ipsa et consequuntur consequatur dolor.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(107, 3, 21, 5, 'Illo sint unde sed quis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(108, 5, 23, 8, 'Modi assumenda odio esse suscipit id incidunt ut.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(109, 29, 11, 5, 'Ut nisi ullam dolor illo.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(110, 13, 30, 9, 'Recusandae provident similique ut.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(111, 6, 7, 8, 'Perspiciatis maiores vel molestias.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(112, 16, 11, 7, 'Id impedit deleniti sunt id reiciendis voluptate.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(113, 28, 26, 8, 'Ab excepturi ut quis sed.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(114, 4, 22, 5, 'Magni voluptas et possimus distinctio possimus dolor.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(115, 25, 11, 9, 'Debitis et qui quia deserunt.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(116, 23, 25, 8, 'Voluptatem optio rerum architecto minus aut omnis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(117, 28, 17, 7, 'Sit ut quibusdam quo nesciunt.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(118, 30, 30, 10, 'Ea nesciunt quaerat repellat dolor.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(119, 30, 8, 8, 'Qui expedita rerum tempora ad commodi porro.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(120, 28, 22, 10, 'Ut vitae soluta nemo rerum provident velit autem sunt.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(121, 23, 7, 9, 'Ducimus esse at exercitationem ut aut libero.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(122, 7, 24, 9, 'Sed deserunt dolorum ea est voluptas.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(123, 17, 25, 10, 'Voluptatem sed est reprehenderit veniam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(124, 2, 12, 6, 'Et tempore voluptas praesentium animi quis ut voluptatem est.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(125, 19, 9, 8, 'Veritatis autem in necessitatibus omnis molestiae autem.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(126, 5, 22, 7, 'In et expedita harum laudantium omnis suscipit et.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(127, 20, 23, 10, 'Et enim ipsum culpa id.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(128, 28, 11, 8, 'Et nobis eum ratione ea officia vitae mollitia sit.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(129, 17, 11, 5, 'Quasi minima non nisi est odio excepturi.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(130, 27, 26, 5, 'Autem magni quia soluta.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(131, 4, 27, 10, 'In sunt repellat sed dolore perspiciatis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(132, 6, 14, 6, 'Ullam veritatis quidem cupiditate recusandae nemo est veniam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(133, 21, 7, 7, 'Doloribus veniam adipisci dolorem est omnis nisi labore.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(134, 11, 11, 6, 'Exercitationem a odio alias dolor quis dolor veniam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(135, 5, 17, 10, 'Delectus nihil quis labore corporis accusantium delectus placeat.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(136, 9, 22, 10, 'At molestiae dolor sed voluptatibus magnam in.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(137, 25, 29, 7, 'Debitis in dolore quidem totam nesciunt.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(138, 1, 17, 7, 'Accusamus excepturi sed exercitationem laudantium et sit.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(139, 18, 19, 6, 'Et itaque aut laudantium officiis eos.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(140, 14, 15, 8, 'Quis sed iure sit tenetur.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(141, 5, 19, 9, 'In quidem mollitia corporis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(142, 4, 28, 9, 'Inventore molestiae quia deserunt qui.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(143, 14, 9, 6, 'Autem rerum reiciendis sapiente ab quaerat est commodi.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(144, 28, 11, 7, 'Beatae ut ab error perferendis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(145, 23, 26, 6, 'Laboriosam beatae minus occaecati enim repellendus.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(146, 25, 19, 5, 'Assumenda non voluptatem voluptatibus corrupti animi placeat.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(147, 7, 11, 8, 'Eius quae accusamus quaerat iusto dignissimos accusantium.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(148, 1, 13, 9, 'Corrupti id incidunt eum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(149, 21, 19, 9, 'Consectetur nam sint asperiores et.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(150, 22, 27, 9, 'Pariatur voluptas qui occaecati placeat.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(151, 28, 7, 8, 'Commodi vel occaecati exercitationem non consequatur.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(152, 30, 21, 10, 'Perferendis sit et velit.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(153, 22, 28, 5, 'Natus magni quia omnis odio dignissimos.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(154, 21, 16, 5, 'Eum consequatur voluptas est et.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(155, 27, 29, 10, 'Ipsa ullam qui cumque itaque natus dolor autem.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(156, 4, 25, 8, 'Quaerat quia voluptate voluptatem explicabo et ipsum magni.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(157, 16, 23, 6, 'Sequi perspiciatis accusamus vel quis tenetur aperiam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(158, 22, 12, 9, 'Blanditiis molestiae rerum temporibus quia hic illo.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(159, 11, 17, 8, 'Enim dignissimos dicta voluptas voluptatem iste omnis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(160, 25, 16, 6, 'Laudantium accusamus dolores iusto quis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(161, 23, 30, 10, 'Mollitia occaecati sequi id quam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(162, 1, 9, 9, 'Optio perspiciatis dicta necessitatibus incidunt esse dolores soluta iure.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(163, 29, 18, 10, 'Doloremque error corporis et.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(164, 29, 20, 8, 'Asperiores suscipit ex aut.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(165, 23, 22, 6, 'Quia omnis repellendus modi et minus atque.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(166, 23, 25, 6, 'Deserunt quo eligendi fugit facilis.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(167, 13, 13, 7, 'Aperiam sit recusandae eum necessitatibus rerum accusantium.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(168, 1, 6, 5, 'Ex blanditiis et consequatur ut impedit officia.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(169, 12, 9, 10, 'Dolorem ipsam est eos eaque.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(170, 6, 30, 10, 'Magni praesentium est nihil aperiam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(171, 12, 18, 7, 'Accusamus ratione et sunt eaque non.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(172, 16, 20, 8, 'Expedita similique et amet et et est.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(173, 9, 17, 10, 'Est corporis voluptatum consectetur pariatur consequatur.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(174, 24, 13, 6, 'Non est deserunt quas maxime iure.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(175, 14, 14, 7, 'Eos aut necessitatibus nam non.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(176, 17, 26, 6, 'Praesentium ea hic quam quibusdam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(177, 24, 6, 7, 'Est ut cumque molestiae quisquam et.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(178, 9, 23, 5, 'Commodi est distinctio natus dolor velit ut rerum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(179, 1, 25, 8, 'In quidem in expedita voluptatem possimus quibusdam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(180, 10, 14, 6, 'Fuga quo sit magnam itaque velit maxime ut soluta.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(181, 21, 7, 5, 'Nihil mollitia consectetur aut accusamus molestiae ipsum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(182, 2, 13, 10, 'Voluptatem voluptatem excepturi autem cupiditate.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(183, 11, 22, 10, 'Eligendi cupiditate consequatur expedita laudantium temporibus aliquid.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(184, 6, 10, 9, 'Deserunt nihil explicabo asperiores velit.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(185, 7, 8, 6, 'Laboriosam alias ea quod et.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(186, 23, 26, 7, 'Consequatur asperiores aut rem atque consequatur alias enim.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(187, 30, 12, 10, 'Dolorem voluptatibus omnis eligendi delectus laborum.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(188, 15, 9, 9, 'Corporis molestias consequatur quas optio sit.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(189, 23, 23, 5, 'Ut qui eius iste ullam vel sunt.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(190, 21, 30, 9, 'Non accusantium quia dolores eius et repudiandae veniam.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(191, 18, 9, 10, 'Voluptatum ab quibusdam sed voluptatum iure.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(192, 3, 9, 10, 'Dolorem at animi reiciendis aut iusto.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(193, 20, 18, 7, 'Voluptatem sit nesciunt reprehenderit sed consectetur doloribus.', '2025-01-03 21:03:56', '2025-01-03 21:03:56'),
(194, 7, 8, 6, 'Quidem rerum suscipit blanditiis eaque eum.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(195, 30, 18, 8, 'Culpa a nulla quod autem cum illum dignissimos.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(196, 5, 9, 7, 'Voluptatibus cum voluptas quam.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(197, 30, 7, 8, 'Qui repellat aspernatur consequatur.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(198, 7, 17, 8, 'Eveniet ullam quia non beatae mollitia sapiente.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(199, 7, 17, 8, 'Temporibus quia dolores nihil error odit commodi.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(200, 30, 12, 6, 'Culpa sed facilis consectetur sunt.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(201, 29, 30, 8, 'Non deserunt voluptas nihil natus corporis hic.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(202, 28, 25, 8, 'Quos sint odit quia doloribus.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(203, 15, 12, 8, 'Voluptatibus maxime laboriosam nesciunt.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(204, 11, 29, 8, 'Aspernatur tempora itaque aperiam numquam at iusto quas.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(205, 14, 13, 9, 'Dolorum qui amet error delectus neque repellendus esse enim.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(206, 15, 20, 6, 'Voluptatibus repellendus voluptatem sunt similique facere.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(207, 2, 26, 6, 'Qui minus molestiae eum et.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(208, 29, 29, 9, 'Aliquam debitis voluptate dolores facilis expedita vel fugit.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(209, 4, 16, 7, 'Reiciendis est fugiat beatae quidem.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(210, 5, 25, 10, 'Numquam ut ad delectus molestiae qui non ut deserunt.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(211, 6, 10, 5, 'Illum eos magnam natus molestiae tenetur minima.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(212, 26, 16, 10, 'Sint voluptatem enim aut ut enim tempora accusantium.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(213, 26, 6, 10, 'Debitis voluptatem sapiente perferendis in.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(214, 30, 22, 10, 'Vel nisi aspernatur suscipit earum ut ea quaerat.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(215, 2, 16, 7, 'Qui fuga veritatis modi occaecati vitae.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(216, 13, 6, 10, 'Minima dolorem aliquam odit perferendis sapiente.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(217, 17, 21, 10, 'Placeat commodi doloribus non aut.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(218, 30, 24, 6, 'Magnam at voluptatibus et illum ipsam ullam.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(219, 24, 16, 7, 'Sapiente dolore est unde sunt sint.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(220, 23, 30, 7, 'Veniam ducimus repudiandae cum sunt.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(221, 8, 10, 7, 'Laborum et et totam aperiam delectus non nesciunt.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(222, 27, 27, 8, 'Ut aliquid eius exercitationem impedit voluptas.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(223, 29, 19, 7, 'Aut ex dicta qui dolor aut veniam.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(224, 30, 13, 6, 'Adipisci quis necessitatibus laudantium tempore non in.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(225, 22, 27, 7, 'Et quis explicabo voluptates voluptatem.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(226, 27, 24, 6, 'Voluptatem quidem quos numquam libero modi omnis.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(227, 6, 25, 9, 'Perspiciatis corrupti aut sequi dolorum qui ipsa.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(228, 10, 9, 9, 'Cum cupiditate eos porro mollitia consequatur exercitationem.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(229, 24, 20, 8, 'Consequatur veniam saepe iusto dolor tenetur quia soluta veniam.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(230, 20, 10, 8, 'Quia accusamus magnam natus vel.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(231, 14, 29, 6, 'Occaecati aperiam et cum soluta nobis vitae.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(232, 13, 21, 5, 'Fugiat repellat reprehenderit totam architecto natus.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(233, 21, 28, 10, 'Qui minima quasi iste ea pariatur officiis.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(234, 5, 12, 9, 'Tenetur adipisci corporis ipsam voluptas dignissimos ex.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(235, 23, 28, 6, 'Consequatur exercitationem et vel ea beatae ea.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(236, 13, 12, 10, 'Culpa et architecto earum molestias ut quibusdam veniam similique.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(237, 2, 8, 10, 'Aut magnam est dolorem dicta sed.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(238, 2, 24, 9, 'Ut non exercitationem pariatur omnis blanditiis quo.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(239, 24, 24, 6, 'Et enim enim vitae magni magni nulla asperiores necessitatibus.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(240, 14, 10, 9, 'Facere consequatur quasi quasi.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(241, 28, 21, 7, 'Quis sunt debitis qui sit enim.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(242, 25, 16, 8, 'Dolorum vel et consequuntur et ut.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(243, 23, 7, 10, 'Rerum quod eveniet non.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(244, 15, 13, 9, 'Blanditiis reprehenderit alias sunt autem et.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(245, 16, 14, 7, 'Voluptas eveniet quo itaque non.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(246, 4, 21, 7, 'Deleniti rerum doloremque voluptatem et.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(247, 23, 7, 10, 'Quis voluptatem quam assumenda accusamus quia nihil ut.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(248, 28, 9, 10, 'Corrupti soluta et et quas alias possimus fuga.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(249, 1, 29, 7, 'Repellat vero ut enim.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(250, 25, 8, 5, 'Ut et est placeat.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(251, 16, 16, 8, 'Consequatur dolorem ut at placeat quis qui.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(252, 27, 6, 6, 'Ut expedita sapiente iusto sit.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(253, 11, 19, 7, 'Beatae deleniti laboriosam et dicta optio et repellat.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(254, 5, 8, 5, 'Nihil veniam rerum nemo officiis sed.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(255, 17, 26, 5, 'Vel rerum a consequatur eveniet.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(256, 23, 20, 9, 'Qui qui voluptatem odio libero natus.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(257, 17, 26, 10, 'Quaerat aliquid repellendus quis perferendis.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(258, 30, 24, 8, 'Ea molestiae placeat quibusdam rerum nulla explicabo est sapiente.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(259, 22, 26, 7, 'Ut asperiores nulla laudantium atque quidem.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(260, 9, 19, 6, 'Impedit ut ut recusandae ea iste dolor beatae minima.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(261, 30, 29, 5, 'Tempora esse eum a.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(262, 22, 6, 7, 'Quibusdam quisquam earum culpa ipsa asperiores et repellat quia.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(263, 9, 19, 6, 'Nam recusandae repudiandae quisquam dolor molestiae reiciendis esse unde.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(264, 11, 30, 9, 'Blanditiis at sint dolorem.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(265, 13, 12, 10, 'Odio praesentium ut molestiae qui quo soluta qui.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(266, 24, 17, 8, 'Qui repudiandae labore voluptate error quas tempora facilis.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(267, 30, 18, 9, 'Accusamus sunt et iste.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(268, 22, 13, 8, 'Quo ut quibusdam ea eum eligendi odit quibusdam.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(269, 12, 28, 5, 'Vero explicabo vel et deleniti aut ab maiores.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(270, 23, 21, 9, 'Provident inventore repellendus natus eos vel iure et aut.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(271, 24, 7, 10, 'Et autem corrupti architecto fuga adipisci repellendus molestiae.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(272, 13, 15, 10, 'Repudiandae rerum amet nesciunt pariatur qui eum est.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(273, 2, 24, 5, 'Et similique ut voluptatum voluptatem dolorem.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(274, 10, 7, 7, 'Consequatur ut ratione maxime velit provident at alias.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(275, 3, 11, 8, 'Quibusdam sed sint quis et dignissimos dolorem.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(276, 28, 30, 5, 'Et et quidem autem aut.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(277, 15, 27, 8, 'Sed minus dolorem vitae itaque odio est totam.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(278, 10, 23, 10, 'Similique odio accusantium in rerum quibusdam quia error.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(279, 19, 19, 8, 'Alias fugit ut atque voluptatum dolore dolores ullam.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(280, 16, 18, 9, 'Culpa repellendus est consequatur sunt doloribus.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(281, 3, 22, 7, 'Nemo laboriosam eius voluptatum praesentium nobis perspiciatis voluptas.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(282, 7, 15, 9, 'Deserunt magni nam tempore rerum optio accusantium voluptatum.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(283, 25, 15, 6, 'Sed optio doloribus culpa quia et atque quam.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(284, 7, 27, 8, 'Veniam esse et vero accusantium qui tempore.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(285, 3, 17, 5, 'Voluptas ut aut et.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(286, 12, 9, 6, 'Et consequatur excepturi deserunt veritatis velit nesciunt aut totam.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(287, 24, 27, 5, 'Non qui eaque est dolore ex doloribus mollitia.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(288, 4, 11, 10, 'Doloribus consectetur nisi repellat eum cum vero.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(289, 21, 16, 8, 'Illo eaque natus eum non tempore excepturi.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(290, 21, 29, 9, 'Voluptas iste rem blanditiis temporibus qui voluptatibus est.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(291, 7, 29, 5, 'Voluptatem praesentium accusamus repudiandae qui.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(292, 21, 9, 6, 'Rerum voluptatem dignissimos a vero.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(293, 7, 29, 6, 'Cumque nobis id omnis earum aut blanditiis ipsa.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(294, 2, 8, 6, 'Assumenda in alias laudantium illum vitae optio.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(295, 30, 28, 6, 'Eveniet facere voluptatem deleniti earum.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(296, 1, 17, 7, 'Omnis quos non et dolores tenetur a.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(297, 18, 26, 7, 'Nam consequatur rerum dicta error.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(298, 28, 22, 5, 'Quia recusandae aut vel.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(299, 17, 9, 7, 'Aut quos repellendus explicabo aut.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(300, 11, 18, 5, 'Exercitationem explicabo voluptatem quia quis ut dicta.', '2025-01-03 21:03:57', '2025-01-03 21:03:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_pelatih`
--

CREATE TABLE `rating_pelatih` (
  `rating_pelatih_id` bigint(20) UNSIGNED NOT NULL,
  `pemberi_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double NOT NULL,
  `komentar` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rating_pelatih`
--

INSERT INTO `rating_pelatih` (`rating_pelatih_id`, `pemberi_id`, `pengguna_id`, `rating`, `komentar`, `created_at`, `updated_at`) VALUES
(1, 68, 5, 9.8, NULL, NULL, NULL),
(2, 59, 4, 9.2, NULL, NULL, NULL),
(3, 33, 6, 5.3, NULL, NULL, NULL),
(4, 55, 3, 5.7, NULL, NULL, NULL),
(5, 79, 7, 5.8, NULL, NULL, NULL),
(6, 39, 6, 7.9, NULL, NULL, NULL),
(7, 72, 7, 6.1, NULL, NULL, NULL),
(8, 54, 7, 5.2, NULL, NULL, NULL),
(9, 99, 5, 8, NULL, NULL, NULL),
(10, 28, 7, 9.8, NULL, NULL, NULL),
(11, 38, 7, 9.2, NULL, NULL, NULL),
(12, 99, 6, 9.7, NULL, NULL, NULL),
(13, 8, 3, 9.9, NULL, NULL, NULL),
(14, 28, 5, 7.9, NULL, NULL, NULL),
(15, 11, 3, 9.2, NULL, NULL, NULL),
(16, 9, 5, 5.5, NULL, NULL, NULL),
(17, 10, 7, 6.5, NULL, NULL, NULL),
(18, 61, 6, 6.4, NULL, NULL, NULL),
(19, 88, 3, 9.8, NULL, NULL, NULL),
(20, 27, 7, 10, NULL, NULL, NULL),
(21, 21, 5, 7.9, NULL, NULL, NULL),
(22, 29, 3, 8.1, NULL, NULL, NULL),
(23, 76, 3, 7.1, NULL, NULL, NULL),
(24, 100, 3, 6, NULL, NULL, NULL),
(25, 17, 7, 7.2, NULL, NULL, NULL),
(26, 60, 6, 8.7, NULL, NULL, NULL),
(27, 98, 6, 8, NULL, NULL, NULL),
(28, 29, 7, 6.3, NULL, NULL, NULL),
(29, 93, 7, 10, NULL, NULL, NULL),
(30, 59, 4, 5.4, NULL, NULL, NULL),
(31, 27, 3, 5.4, NULL, NULL, NULL),
(32, 46, 5, 5.1, NULL, NULL, NULL),
(33, 58, 5, 7.8, NULL, NULL, NULL),
(34, 92, 3, 6.7, NULL, NULL, NULL),
(35, 21, 6, 7.5, NULL, NULL, NULL),
(36, 19, 6, 5.8, NULL, NULL, NULL),
(37, 10, 7, 8.1, NULL, NULL, NULL),
(38, 95, 6, 6.5, NULL, NULL, NULL),
(39, 44, 3, 9.1, NULL, NULL, NULL),
(40, 84, 6, 9.7, NULL, NULL, NULL),
(41, 43, 4, 9.2, NULL, NULL, NULL),
(42, 64, 7, 9.5, NULL, NULL, NULL),
(43, 79, 4, 6.7, NULL, NULL, NULL),
(44, 56, 4, 8.7, NULL, NULL, NULL),
(45, 18, 5, 8.8, NULL, NULL, NULL),
(46, 19, 5, 8.9, NULL, NULL, NULL),
(47, 13, 4, 8.4, NULL, NULL, NULL),
(48, 27, 5, 7.5, NULL, NULL, NULL),
(49, 17, 4, 6, NULL, NULL, NULL),
(50, 53, 6, 7.7, NULL, NULL, NULL),
(51, 53, 4, 5.2, NULL, NULL, NULL),
(52, 45, 6, 7.5, NULL, NULL, NULL),
(53, 85, 4, 8.5, NULL, NULL, NULL),
(54, 22, 5, 5.2, NULL, NULL, NULL),
(55, 34, 3, 9.5, NULL, NULL, NULL),
(56, 87, 5, 5.1, NULL, NULL, NULL),
(57, 30, 6, 9.8, NULL, NULL, NULL),
(58, 15, 6, 5.2, NULL, NULL, NULL),
(59, 28, 4, 8.6, NULL, NULL, NULL),
(60, 43, 5, 5, NULL, NULL, NULL),
(61, 51, 4, 7.1, NULL, NULL, NULL),
(62, 8, 5, 6.5, NULL, NULL, NULL),
(63, 94, 5, 6.3, NULL, NULL, NULL),
(64, 13, 5, 7.5, NULL, NULL, NULL),
(65, 28, 6, 8.3, NULL, NULL, NULL),
(66, 97, 6, 7.7, NULL, NULL, NULL),
(67, 52, 6, 9.5, NULL, NULL, NULL),
(68, 70, 3, 6.8, NULL, NULL, NULL),
(69, 40, 3, 6.1, NULL, NULL, NULL),
(70, 19, 3, 6.2, NULL, NULL, NULL),
(71, 57, 3, 6, NULL, NULL, NULL),
(72, 32, 5, 7.6, NULL, NULL, NULL),
(73, 71, 6, 9.3, NULL, NULL, NULL),
(74, 91, 7, 8.5, NULL, NULL, NULL),
(75, 26, 6, 7.2, NULL, NULL, NULL),
(76, 93, 4, 9.7, NULL, NULL, NULL),
(77, 47, 4, 7.3, NULL, NULL, NULL),
(78, 100, 6, 6.8, NULL, NULL, NULL),
(79, 97, 7, 7.9, NULL, NULL, NULL),
(80, 79, 6, 5.9, NULL, NULL, NULL),
(81, 34, 5, 6.1, NULL, NULL, NULL),
(82, 90, 3, 9.7, NULL, NULL, NULL),
(83, 95, 6, 8.7, NULL, NULL, NULL),
(84, 55, 3, 10, NULL, NULL, NULL),
(85, 85, 4, 7.9, NULL, NULL, NULL),
(86, 30, 4, 6, NULL, NULL, NULL),
(87, 58, 6, 6.3, NULL, NULL, NULL),
(88, 34, 5, 6.6, NULL, NULL, NULL),
(89, 87, 3, 9.4, NULL, NULL, NULL),
(90, 25, 5, 6.6, NULL, NULL, NULL),
(91, 64, 4, 8.2, NULL, NULL, NULL),
(92, 63, 4, 10, NULL, NULL, NULL),
(93, 36, 7, 5.7, NULL, NULL, NULL),
(94, 66, 3, 5.2, NULL, NULL, NULL),
(95, 11, 3, 9.5, NULL, NULL, NULL),
(96, 13, 6, 8.2, NULL, NULL, NULL),
(97, 44, 7, 5.6, NULL, NULL, NULL),
(98, 23, 4, 8.3, NULL, NULL, NULL),
(99, 30, 5, 8.4, NULL, NULL, NULL),
(100, 78, 4, 5.4, NULL, NULL, NULL),
(101, 72, 3, 6.6, NULL, NULL, NULL),
(102, 66, 6, 5.4, NULL, NULL, NULL),
(103, 63, 7, 8.5, NULL, NULL, NULL),
(104, 53, 3, 5.2, NULL, NULL, NULL),
(105, 76, 5, 7.3, NULL, NULL, NULL),
(106, 19, 7, 8.8, NULL, NULL, NULL),
(107, 9, 4, 5.4, NULL, NULL, NULL),
(108, 52, 5, 8.5, NULL, NULL, NULL),
(109, 93, 3, 7.6, NULL, NULL, NULL),
(110, 33, 4, 6.4, NULL, NULL, NULL),
(111, 77, 6, 7.6, NULL, NULL, NULL),
(112, 46, 7, 5.7, NULL, NULL, NULL),
(113, 63, 4, 5.7, NULL, NULL, NULL),
(114, 55, 4, 5.2, NULL, NULL, NULL),
(115, 83, 3, 7.8, NULL, NULL, NULL),
(116, 70, 7, 8, NULL, NULL, NULL),
(117, 59, 4, 7.1, NULL, NULL, NULL),
(118, 35, 7, 8.4, NULL, NULL, NULL),
(119, 56, 3, 5, NULL, NULL, NULL),
(120, 59, 4, 9.3, NULL, NULL, NULL),
(121, 14, 4, 5.7, NULL, NULL, NULL),
(122, 98, 7, 7.7, NULL, NULL, NULL),
(123, 97, 7, 9.8, NULL, NULL, NULL),
(124, 38, 3, 5.5, NULL, NULL, NULL),
(125, 83, 7, 6.4, NULL, NULL, NULL),
(126, 81, 5, 8.8, NULL, NULL, NULL),
(127, 26, 7, 7.9, NULL, NULL, NULL),
(128, 67, 5, 8.2, NULL, NULL, NULL),
(129, 46, 3, 9.9, NULL, NULL, NULL),
(130, 23, 7, 6.7, NULL, NULL, NULL),
(131, 43, 6, 5.3, NULL, NULL, NULL),
(132, 54, 6, 8.2, NULL, NULL, NULL),
(133, 7, 3, 8.7, NULL, NULL, NULL),
(134, 86, 5, 7.7, NULL, NULL, NULL),
(135, 29, 4, 6.4, NULL, NULL, NULL),
(136, 81, 4, 8.8, NULL, NULL, NULL),
(137, 36, 7, 7.5, NULL, NULL, NULL),
(138, 57, 7, 7.8, NULL, NULL, NULL),
(139, 97, 4, 5.8, NULL, NULL, NULL),
(140, 23, 6, 9.5, NULL, NULL, NULL),
(141, 27, 6, 8, NULL, NULL, NULL),
(142, 34, 3, 8.3, NULL, NULL, NULL),
(143, 98, 5, 5.3, NULL, NULL, NULL),
(144, 27, 3, 7.6, NULL, NULL, NULL),
(145, 97, 5, 7.5, NULL, NULL, NULL),
(146, 29, 7, 6.3, NULL, NULL, NULL),
(147, 20, 7, 5.5, NULL, NULL, NULL),
(148, 10, 5, 8.2, NULL, NULL, NULL),
(149, 44, 6, 6.9, NULL, NULL, NULL),
(150, 16, 6, 5.2, NULL, NULL, NULL),
(151, 81, 6, 8.4, NULL, NULL, NULL),
(152, 24, 3, 7.4, NULL, NULL, NULL),
(153, 82, 7, 8.2, NULL, NULL, NULL),
(154, 80, 3, 9.8, NULL, NULL, NULL),
(155, 90, 6, 5.4, NULL, NULL, NULL),
(156, 54, 4, 9.6, NULL, NULL, NULL),
(157, 27, 5, 9.8, NULL, NULL, NULL),
(158, 65, 6, 5.1, NULL, NULL, NULL),
(159, 15, 4, 9.3, NULL, NULL, NULL),
(160, 48, 3, 7.1, NULL, NULL, NULL),
(161, 39, 7, 8.9, NULL, NULL, NULL),
(162, 75, 4, 5.6, NULL, NULL, NULL),
(163, 8, 3, 8.7, NULL, NULL, NULL),
(164, 43, 4, 6.7, NULL, NULL, NULL),
(165, 78, 7, 7.9, NULL, NULL, NULL),
(166, 46, 3, 9.1, NULL, NULL, NULL),
(167, 29, 4, 7.9, NULL, NULL, NULL),
(168, 15, 6, 9.6, NULL, NULL, NULL),
(169, 71, 3, 9.4, NULL, NULL, NULL),
(170, 71, 6, 9.8, NULL, NULL, NULL),
(171, 96, 4, 7.5, NULL, NULL, NULL),
(172, 42, 3, 9.8, NULL, NULL, NULL),
(173, 88, 3, 5.7, NULL, NULL, NULL),
(174, 25, 4, 6.1, NULL, NULL, NULL),
(175, 31, 6, 9.4, NULL, NULL, NULL),
(176, 68, 6, 6, NULL, NULL, NULL),
(177, 56, 7, 5.8, NULL, NULL, NULL),
(178, 38, 3, 7.2, NULL, NULL, NULL),
(179, 33, 3, 10, NULL, NULL, NULL),
(180, 35, 6, 9.1, NULL, NULL, NULL),
(181, 74, 6, 5.6, NULL, NULL, NULL),
(182, 23, 5, 6.9, NULL, NULL, NULL),
(183, 18, 5, 8.2, NULL, NULL, NULL),
(184, 34, 7, 8, NULL, NULL, NULL),
(185, 19, 5, 5, NULL, NULL, NULL),
(186, 37, 7, 5.6, NULL, NULL, NULL),
(187, 56, 6, 9.6, NULL, NULL, NULL),
(188, 71, 4, 8.3, NULL, NULL, NULL),
(189, 41, 6, 6.4, NULL, NULL, NULL),
(190, 6, 5, 8.2, NULL, NULL, NULL),
(191, 62, 5, 6.3, NULL, NULL, NULL),
(192, 81, 6, 9.6, NULL, NULL, NULL),
(193, 38, 6, 8.8, NULL, NULL, NULL),
(194, 77, 4, 6.9, NULL, NULL, NULL),
(195, 17, 6, 7.9, NULL, NULL, NULL),
(196, 38, 5, 8.4, NULL, NULL, NULL),
(197, 61, 3, 6.1, NULL, NULL, NULL),
(198, 61, 3, 6.7, NULL, NULL, NULL),
(199, 25, 4, 8.9, NULL, NULL, NULL),
(200, 83, 5, 5.4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sertifikat`
--

CREATE TABLE `sertifikat` (
  `sertifikat_id` bigint(20) UNSIGNED NOT NULL,
  `pendaftaran_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kursus_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_kursus` varchar(255) NOT NULL,
  `file_sertifikat` varchar(255) NOT NULL,
  `nomor_sertifikat` varchar(255) NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sertifikat`
--

INSERT INTO `sertifikat` (`sertifikat_id`, `pendaftaran_id`, `kursus_id`, `nama_kursus`, `file_sertifikat`, `nomor_sertifikat`, `tanggal_terbit`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Kursus Bahasa Inggris', 'sertifikat-001.pdf', 'SERTIFIKAT-001', '2025-01-02', NULL, NULL),
(2, 2, NULL, 'Kursus Public Speaking', 'sertifikat-002.pdf', 'SERTIFIKAT-002', '2025-01-03', NULL, NULL),
(3, 3, NULL, 'Kursus Desain Grafis', 'sertifikat-003.pdf', 'SERTIFIKAT-003', '2025-01-04', NULL, NULL),
(4, 4, NULL, 'Kursus Pemrograman Web', 'sertifikat-004.pdf', 'SERTIFIKAT-004', '2025-01-05', NULL, NULL),
(5, 5, NULL, 'Kursus Digital Marketing', 'sertifikat-005.pdf', 'SERTIFIKAT-005', '2025-01-06', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `umpan_balik`
--

CREATE TABLE `umpan_balik` (
  `umpan_balik_id` bigint(20) UNSIGNED NOT NULL,
  `nama_komentar` varchar(255) NOT NULL,
  `komentar` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `umpan_balik`
--

INSERT INTO `umpan_balik` (`umpan_balik_id`, `nama_komentar`, `komentar`, `created_at`, `updated_at`) VALUES
(1, 'User 1', 'Tolong tambahkan fitur untuk diskusi peserta.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(2, 'User 2', 'Audio video sedikit kurang jernih.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(3, 'User 3', 'Saya suka format kuisnya.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(4, 'User 4', 'Materi mudah dipahami.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(5, 'User 5', 'Saya belajar banyak hal baru.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(6, 'User 6', 'Tolong tambahkan fitur catatan di setiap modul.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(7, 'User 7', 'Fitur sertifikat sangat berguna.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(8, 'User 8', 'Instruktur sangat interaktif.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(9, 'User 9', 'Audio video sedikit kurang jernih.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(10, 'User 10', 'Fitur progress tracker sangat membantu.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(11, 'User 11', 'Harapan saya: ada lebih banyak pelatihan lanjutan.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(12, 'User 12', 'Materi terlalu singkat, tolong diperpanjang.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(13, 'User 13', 'Pelatihan ini meningkatkan keterampilan saya.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(14, 'User 14', 'Materi mudah dipahami.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(15, 'User 15', 'Instruktur kurang interaktif, mohon ditingkatkan.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(16, 'User 16', 'Sistem sangat user-friendly.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(17, 'User 17', 'Instruktur sangat profesional.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(18, 'User 18', 'Ada beberapa bug kecil saat mengakses modul.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(19, 'User 19', 'Instruktur sangat interaktif.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(20, 'User 20', 'Saya belajar banyak hal baru.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(21, 'User 21', 'Materi mudah dipahami.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(22, 'User 22', 'Materi terlalu singkat, tolong diperpanjang.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(23, 'User 23', 'Materi tidak sesuai ekspektasi saya.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(24, 'User 24', 'Fitur progress tracker sangat membantu.', '2025-01-03 21:03:57', '2025-01-03 21:03:57'),
(25, 'User 25', 'Saya berharap ada lebih banyak contoh studi kasus.', '2025-01-03 21:03:57', '2025-01-03 21:03:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi`
--

CREATE TABLE `verifikasi` (
  `verifikasi_id` bigint(20) UNSIGNED NOT NULL,
  `pengguna_id` bigint(20) UNSIGNED NOT NULL,
  `status_verifikasi` enum('Menunggu','Disetujui','Ditolak') NOT NULL DEFAULT 'Menunggu',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indeks untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`kurikulum_id`),
  ADD KEY `kurikulum_kursus_id_foreign` (`kursus_id`);

--
-- Indeks untuk tabel `kursus`
--
ALTER TABLE `kursus`
  ADD PRIMARY KEY (`kursus_id`),
  ADD KEY `kursus_pengguna_id_foreign` (`pengguna_id`),
  ADD KEY `kursus_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelatih`
--
ALTER TABLE `pelatih`
  ADD PRIMARY KEY (`pelatih_id`),
  ADD KEY `pelatih_pengguna_id_foreign` (`pengguna_id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`pembayaran_id`),
  ADD KEY `pembayaran_pendaftaran_id_foreign` (`pendaftaran_id`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`pendaftaran_id`),
  ADD KEY `pendaftaran_pengguna_id_foreign` (`pengguna_id`),
  ADD KEY `pendaftaran_kursus_id_foreign` (`kursus_id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`pengguna_id`),
  ADD UNIQUE KEY `pengguna_email_unique` (`email`);

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`peserta_id`),
  ADD KEY `peserta_pengguna_id_foreign` (`pengguna_id`);

--
-- Indeks untuk tabel `rating_kursus`
--
ALTER TABLE `rating_kursus`
  ADD PRIMARY KEY (`rating_kursus_id`),
  ADD KEY `rating_kursus_kursus_id_foreign` (`kursus_id`),
  ADD KEY `rating_kursus_pengguna_id_foreign` (`pengguna_id`);

--
-- Indeks untuk tabel `rating_pelatih`
--
ALTER TABLE `rating_pelatih`
  ADD PRIMARY KEY (`rating_pelatih_id`),
  ADD KEY `rating_pelatih_pemberi_id_foreign` (`pemberi_id`),
  ADD KEY `rating_pelatih_pengguna_id_foreign` (`pengguna_id`);

--
-- Indeks untuk tabel `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD PRIMARY KEY (`sertifikat_id`),
  ADD KEY `sertifikat_pendaftaran_id_foreign` (`pendaftaran_id`),
  ADD KEY `sertifikat_kursus_id_foreign` (`kursus_id`);

--
-- Indeks untuk tabel `umpan_balik`
--
ALTER TABLE `umpan_balik`
  ADD PRIMARY KEY (`umpan_balik_id`);

--
-- Indeks untuk tabel `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD PRIMARY KEY (`verifikasi_id`),
  ADD KEY `verifikasi_pengguna_id_foreign` (`pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `kurikulum_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `kursus`
--
ALTER TABLE `kursus`
  MODIFY `kursus_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pelatih`
--
ALTER TABLE `pelatih`
  MODIFY `pelatih_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `pembayaran_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `pendaftaran_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `pengguna_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `peserta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `rating_kursus`
--
ALTER TABLE `rating_kursus`
  MODIFY `rating_kursus_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT untuk tabel `rating_pelatih`
--
ALTER TABLE `rating_pelatih`
  MODIFY `rating_pelatih_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `sertifikat`
--
ALTER TABLE `sertifikat`
  MODIFY `sertifikat_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `umpan_balik`
--
ALTER TABLE `umpan_balik`
  MODIFY `umpan_balik_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `verifikasi`
--
ALTER TABLE `verifikasi`
  MODIFY `verifikasi_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD CONSTRAINT `kurikulum_kursus_id_foreign` FOREIGN KEY (`kursus_id`) REFERENCES `kursus` (`kursus_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kursus`
--
ALTER TABLE `kursus`
  ADD CONSTRAINT `kursus_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kursus_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pelatih`
--
ALTER TABLE `pelatih`
  ADD CONSTRAINT `pelatih_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_pendaftaran_id_foreign` FOREIGN KEY (`pendaftaran_id`) REFERENCES `pendaftaran` (`pendaftaran_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `pendaftaran_kursus_id_foreign` FOREIGN KEY (`kursus_id`) REFERENCES `kursus` (`kursus_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pendaftaran_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `peserta_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rating_kursus`
--
ALTER TABLE `rating_kursus`
  ADD CONSTRAINT `rating_kursus_kursus_id_foreign` FOREIGN KEY (`kursus_id`) REFERENCES `kursus` (`kursus_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_kursus_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rating_pelatih`
--
ALTER TABLE `rating_pelatih`
  ADD CONSTRAINT `rating_pelatih_pemberi_id_foreign` FOREIGN KEY (`pemberi_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_pelatih_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD CONSTRAINT `sertifikat_kursus_id_foreign` FOREIGN KEY (`kursus_id`) REFERENCES `kursus` (`kursus_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sertifikat_pendaftaran_id_foreign` FOREIGN KEY (`pendaftaran_id`) REFERENCES `pendaftaran` (`pendaftaran_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `verifikasi`
--
ALTER TABLE `verifikasi`
  ADD CONSTRAINT `verifikasi_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`pengguna_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
