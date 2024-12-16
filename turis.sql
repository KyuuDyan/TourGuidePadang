-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 04:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `turis`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `namaEvent` varchar(191) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `namaEvent`, `deskripsi`, `image`) VALUES
(1, 'Pacu Jawi', 'Pacu jawi, salah satu permainan traditional yang diadakan setelah musim panen. Perlombaan ini dilaksanakan di sawah yang basah dan berlumpur. Hal unik lain dari lomba ini adalah bahwa hanya satu pasang sapi yang dilepaskan di sawah bersama jokinya. Sang joki berdiri diatas bajak yang berada di antara dua sapi. Sang joki menggunakan ekor sapi sebagai pengontrolnya. Ketika ingin menambah kecepatan, sang joki menggigit ekor si sapi. Pemenang dari perlombaan itu adalah yang bisa mengendalikan sapinya dalam garis lurus dari awal hingga ke garis finish. Tidak ada hadiah untuk joki dalam lomba pacu jawi. Namun harga sapi yang menang dapat meningkat dengan cepat sampai berharga jutaan rupiah.', 'https://visitbeautifulwestsumatra.id/wp-content/uploads/2022/09/pjw-1536x512.jpg'),
(2, 'Tabuik', 'Tabuik merupakan sebuah patung Buraq yaitu sebuah makhluk majestik yang menyerupai seekor kuda bersayap dengan kepala wanita yang terbuat dari bambu, rotan dan kertas. Di punggungnya terdapat sebuah peti yang berisi perhiasan dekoratif dan payung. Prosesi Tabuik berupa sebuah proses ritual yang menyimbolkan kejadian di Perang Karbala yang diperkenalkan oleh Tentara Muslim Tamil India. Prosesi ini telah berkembang menjadi sebuah festival yang melibatkan hampir semua masyarakat Pariaman, sebuah kota yang terletak sekitar 60 km dari Padang. Festival ini merupakan penggambaran kembali Pertempuran di Perang Karbala dengan gendang tassa dan tambur. Selama Festival Tabuik beragam aktifitas seperti lomba layang-layang, perlombaan tarian traditional dan permainan tradisional dilaksanakan. Festival yang dilaksanakan pada tanggal 1 – 10 Muharram (Kalender Islam) dan diikuti oleh ribuan orang yang berkumpul di Pantai Gandoriah saat Tabuik dibuang ke laut.', 'https://visitbeautifulwestsumatra.id/wp-content/uploads/2022/09/tabuik-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tempatwisata`
--

CREATE TABLE `tempatwisata` (
  `id` int(11) NOT NULL,
  `namaTempat` varchar(191) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `lokasi` varchar(191) NOT NULL,
  `koordinat` varchar(191) DEFAULT NULL,
  `hargaTiket` double DEFAULT NULL,
  `jamOperasional` varchar(191) DEFAULT NULL,
  `kontak` varchar(191) DEFAULT NULL,
  `kategori` varchar(191) DEFAULT NULL,
  `sejarah` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tempatwisata`
--

INSERT INTO `tempatwisata` (`id`, `namaTempat`, `deskripsi`, `lokasi`, `koordinat`, `hargaTiket`, `jamOperasional`, `kontak`, `kategori`, `sejarah`, `image`) VALUES
(1, 'Museum Adityawarman', 'Museum Adityawarman terletak di Padang, Sumatera Barat. Museum Adityawarman merupakan museum budaya untuk melestarikan benda-benda bersejarah, seperti cagar budaya Minangkabau dan cagar budaya nasional. Museum yang berjulukan Taman Mini ala Sumatera Barat merupakan cara singkat untuk melihat budaya Sumatera Barat.', 'Jl. Diponegoro No.10, Belakang Tangsi, Kec. Padang Bar., Kota Padang, Sumatera Barat 25114', '-0.9565813531944869, 100.35618154907282', 5000, '08.00 - 17.00', '082171003088', 'Museum', 'Lokasi Museum Adityawarman berada di kompleks Tugu Jalan Diponegoro No 10, Padang Sumatera Barat. Dulunya, lokasi ini dikenal dengan Taman Melati, sebuah taman bermain masyarakat Kota Padang.  Pada masa penjajahan Belanda, di lokasi ini berdiri Tugu Micheils. Menurut cerita pada masa penjajahan Jepang, tugu tersebut diruntuhkan dan besi-besinya dibawa ke Jepang.  Nama Adityawarman yang merupakan nama yang melekat pada nama Museum Adityawarman merupakan salah seorang raja Martapura pada abad ke 14. Dimana keberadaan kerjaan ini satu zaman dengan Kerajaan Majapahit.  Penamaan Museum Adityawarman berdasarkan Surat Keputusan Menteri No 093/0/1979 tanggal 28 Mei 1979. Museum Adityawarman diresmikan oleh Prof Dr Syarif Thayeb. Konstruksi Museum dikerjakan pada tahun 1974 dan museum ini diresmikan pada tanggal 16 Maret 1977. Museum Adityawarman menempati lahan seluas 2,6 hektar dengan luas bangunan sekitar 2.854,8 mter persegi. Terdapat 100 jenis tanaman berupa apotek hidup dan pohon pelindung.', 'https://padangutara.padang.go.id/assets/images/museum.png'),
(2, 'Mesjid Raya Sumbar', 'Masjid Raya Sumatera Barat atau juga dikenal sebagai Masjid Mahligai Minang adalah salah satu masjid terbesar di Indonesia yang terletak di Kecamatan Padang Utara, Kota Padang, Provinsi Sumatera Barat. Masjid yang pembangunannya masih dalam tahap pengerjaan ini merupakan masjid terbesar di Sumatera Barat.', '39G6+7XM, Jl. Khatib Sulaiman, Alai Parak Kopi, Kec. Padang Utara, Kota Padang, Sumatera Barat 25173', '-0.9240489688751798, 100.36241750674549', 0, '00.00 - 11.59', NULL, 'Mesjid/Mushalla', 'Gagasan pembangunan Masjid Raya Sumatera Barat telah di mulai sejak tahun 2005 oleh Pemda Provinsi Sumatera Barat, maka diadakanlah sayembara rancangan Masjid, sayembara diikuti oleh 323 peserta, dan masuklah 71 desain Masjid, diputuskanlah desain Masjid yang tidak pakai Gobah, hal ini menuai polimik di kalangan DPRD Sumatera Barat, yang mengakibatkan ter undurnya pembangunan Masjid. Gubernur Sumatera Barat Dr.H. Gamawan Fauzi, SH, MM. meletakan batu pertama sebagai tanda dimulainya pembangunan Masjid Raya Sumatera Barat pada 21 Desember 2007. Pembangunan Masjid memperguanakan anggaran tahun Jamak, sehingga pembangunan dilaksanakan secara bertahap. Baru pada tanggal 14 Rabi\'ul Akhir 1435 H bertepatan 14 Februari 2014, Gubernur Sumatera Barat Prof. Dr. H. Irwan Prayitno, M.Sc, Psikolog meresmikan pemakaian Masjid Raya Sumatera Barat.', 'https://padang.go.id/uploads/images/image_default_6216e0430b416.jpg'),
(3, 'Pantai Air Manis', 'Pantai Air Manis (bahasa Minangkabau: Pantai Aia Manih) adalah pantai yang terletak kurang lebih 10 km ke selatan dari pusat Kota Padang. Lokasinya Berada di belakang Gunung Padang atau tepatnya di Kelurahan Air Manis, Kecamatan Padang Selatan, Kota Padang. Pantai ini merupakan salah satu tujuan wisata populer yang selalu ramai dikunjungi oleh masyarakat. Pantai ini dikenal dengan ombaknya yang kecil, memiliki panorama yang indah di sisi utaranya dan legenda Malin Kundang.', 'Sumatera Barat', '-0.9912208880423206, 100.36068216376042', 10000, '00.00 - 11.59', NULL, 'Pantai', 'Air Manis atau dalam dialek Minang disebut ‘aia manih’ merupakan sebuah pantai dengan garis pantai yang lebar, kontur yang landai, dan berpasir cokelat keputihan. Pantai ini dikenal dengan ombaknya yang kecil serta memiliki panorama yang indah di sisi utaranya. Selain panorama alam dan ombaknya, pantai ini tidak bisa dilepaskan dari Legenda Malin Kundang. Tak diragukan, legenda si Malin Kundang merupakan salah satu cerita rakyat paling populer dari Sumatera Barat. Bahkan popularitasnya menyebar ke berbagai penjuru Indonesia hingga pernah berkali-kali diangkat ke layar kaca dalam berbagai versi. Cerita penuh hikmah ini pun kerap kali dikisahkan sebagai perumpamaan mengenai pentingnya berbakti kepada orangtua.', 'https://asset.kompas.com/crops/OFi4brLn8Ieda4bRXTxsK8SZnf8=/0x17:1361x924/1200x800/data/photo/2024/10/22/6717ad6aa9584.jpg'),
(4, 'Mesjid Batu', 'Surau yang dalam bahasa Minang berarti mushala atau tempat shalat, sementara struktur dari bangunan tersebut semuanya dari batu jenis batu kali yang ditumpuk menjadi dinding sehingga dikenal lah tempat tersebut dengan sebutan Surau Batu. Pada bagian dalamnya terdapat sebuah ruangan seperti ruangan yang ada dalam masjid.', '3FQG+XWM, Limau Manis, Kec. Pauh, Kota Padang, Sumatera Barat 25175', '-0.9095029560149909, 100.4772658637276', 0, '00.00 - 11.59', NULL, 'Mesjid/Mushalla', 'Musala yang dibangun di kampus Universitas Andalas, Kota Padang, Sumatera Barat, dibangun menyerupai rumah ibadah pada zaman nabi. Musala ini terbuat dari tumpukan batu yang mirip seperti goa, desain dan arsitekturnya pun dibangun di lokasi perbukitan, seperti di negara timur tengah. Inilah Musala Jabal Rahmah yang dibangun di lokasi perbukitan Fakultas Politenik. Bangunan musala ini hanya terbuat dari tumpukan-tumpukan batu berukuran besar, mulai dari pondasi hingga atapnya mirip seperti goa besar. Alunan kumandang azan terdengar dari dalam musala, satu persatu jemaah mesjid yang merupakan mahasiswa dan warga setempat mulai berdatangan untuk menunaikan salat. Suasana sejuk dan sunyi, serta bernuansa zaman para nabi makin membuat beribadah terasa semakin khusyuk. Di dalam musala terdapat sebuah mimbar yang juga terbuat dari batu besar yang ditumpuk.', 'https://asset-2.tstatic.net/padang/foto/bank/images/masjid-batu-di-kawasan-universitas-andalas-limau-manis.jpg'),
(5, 'Bukit Nobita', 'Bukit Nobita merupakan destinasi wisata panorama yang berlokasi di Kelurahan Kampung Jua, Kecamatan Lubuk Begalung, Kota Padang. Destinasi wisata ini sebenarnya bernama Bukit Batu Jarang, namun lebih dikenal dengan Bukit Nobita karena terinspirasi dari film kartun Doraemon. Bukit Nobita dapat menjadi salah satu destinasi wisata pilihan untuk menikmati suasana perkotaaan dari ketinggian. Saat sore, pengunjung bisa menikmati matahari terbenam serta kelap kelip lampu kota saat mulai malam.', 'Kp. Jua Nan XX, Kec. Lubuk Begalung, Kota Padang, Sumatera Barat 25153', '-0.9733395532686061, 100.4156717511481', 3000, '00.00 - 11.59', NULL, 'Bukit', 'Nama Bukit Nobita terinspirasi dari film kartun Doraemon dan menampilkan panorama cantik dari ketinggian. Bukit ini memiliki kesamaan dengan bukit yang berada di belakang sekolah Nobita, tokoh dalam film Doraemon. Dari bukit ini, pemandangan seantero kota Padang dapat terlihat dengan jelas. Tak hanya itu, nama Bukit Nobita ini juga menjadi sorotan dan menambah rasa penasaran warganet untuk dapat datang ke bukit yang banyak ilalangnya ini. Sebenarnya tidak ada kepastian nama dari bukit ini, tetapi masyarakat sekitar menyebut dengan nama Bukit Tigo Tungku Sajarangan sebab di puncak sana terdapat 3 buah batu yang mengelilingi satu pohon besar. Ada juga yang memberi nama Bukit Jarangan karena di bukit terdapat beberapa batu besar yang jaraknya tidak berdekatan (dalam bahasa Minangkabau jarang-jarang, berjauhan). Selain itu sebagian masyarakat menyebutnya Bukit Batu Kasek dan Bukit Kampung Jua.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_KeW1ECOduTiYawwidIBYV1a391TIYl4aJA&s');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('0e8401c5-9228-4077-a8bf-85a9c6dcba7e', 'fbf9788b4e5c2b5c8dbe7aab3835d6801bc784e5ec8e8ed616af6656a2180844', '2024-12-15 09:46:55.028', '20241215094654_init', NULL, NULL, '2024-12-15 09:46:54.984', 1),
('1d8152b5-b44d-4ef9-a1cc-73cc673a831c', '066b8f2a08e87a851a927472e8fb5c90b14a51f217942817afb1dfeda5939ae9', '2024-12-15 09:59:15.266', '20241215095915_init', NULL, NULL, '2024-12-15 09:59:15.191', 1),
('33f767fd-6192-4473-91c6-d5df31a03520', '08bc63fee16cca483fc559dce9ab0f0fc3e86e5d6482378b9d91cc9767ff6a34', '2024-12-16 12:20:59.773', '20241216122059_init', NULL, NULL, '2024-12-16 12:20:59.760', 1),
('3476b194-53e7-4b7d-bb3b-7495f52b2c4d', 'd3f840efe33d25344d5c86d876bf6c66b1009cfe388ba7874912b0396d2bcc93', '2024-12-15 11:16:54.708', '20241215111654_init', NULL, NULL, '2024-12-15 11:16:54.662', 1),
('72c4ad5c-994e-47c0-881d-12f2914e8775', 'ba2546ce552df340191a74b54021fc0b4d052b2509ca061a46c6963d72687a10', '2024-12-15 06:07:05.797', '20241215060704_init', NULL, NULL, '2024-12-15 06:07:05.010', 1),
('7b773b2a-6d12-4af9-a352-37c618fbe6f1', 'eda638a67496fa6f8523ad62987f196fe7d0d246ba0997b3c17a20cc605acd81', '2024-12-15 11:28:39.853', '20241215112839_init', NULL, NULL, '2024-12-15 11:28:39.660', 1),
('86cca878-9497-4de4-a17e-73bb42063072', 'ad13a93691c588f0fc815031b9ab8b743926e7664cce985f1414e6459ca82aec', '2024-12-16 12:18:53.511', '20241216121853_init', NULL, NULL, '2024-12-16 12:18:53.479', 1),
('963847d4-6d9b-49c5-bf75-d582b6220b3d', '79c7740923627ae9b411b1073457ffea15e052efef72f2cc52a4946702580e5c', '2024-12-15 09:43:58.445', '20241215094358_init', NULL, NULL, '2024-12-15 09:43:58.271', 1),
('98cfb7db-cfd1-4be0-8788-568da893d804', '4f27f206292f8a376f82f4f33027a914bdc5f8b5d4fd74020bb1b58e61bf80fb', '2024-12-15 09:56:39.353', '20241215095639_init', NULL, NULL, '2024-12-15 09:56:39.184', 1),
('9c45b834-5887-4d36-bac3-ed76427b3b6d', '9dedba5da9d9ea3fdd385c7f56a68bbdcc5094ef6352f47a3bd8c9706a11e535', '2024-12-15 09:20:13.925', '20241215092013_init', NULL, NULL, '2024-12-15 09:20:13.869', 1),
('a1fb34ca-8964-4577-96e7-af11b3255b3a', 'e9c70edc770cc6dda82e4a1d5cb9e8ee1a3259b5115b67d32596add692c2c5ff', '2024-12-16 09:22:27.962', '20241216092227_init', NULL, NULL, '2024-12-16 09:22:27.933', 1),
('c2fee43a-0d47-4625-b354-08231d97126d', '4a5f1fdd00d81bc150fcf3ae835bed4644b9deb4e7adb653c8ad1aa191550a4d', '2024-12-15 09:33:24.910', '20241215093324_init', NULL, NULL, '2024-12-15 09:33:24.853', 1),
('ca7cd056-93b7-41df-b30e-c9a57f4f5486', '1ff530fd96c42c67749265043a5f01ca77c2d284ef5c1fde47b27d516010362c', '2024-12-15 11:43:24.112', '20241215114324_init', NULL, NULL, '2024-12-15 11:43:24.068', 1),
('cbfa367d-5684-4a5f-88df-bd5dc1d45c08', '4834ab7eb73bf9132ca3a647ae16abf231b4930c95839fd848d4eaee516283ad', '2024-12-16 09:48:48.653', '20241216094848_init', NULL, NULL, '2024-12-16 09:48:48.262', 1),
('f243eba5-b6e9-465a-b913-2c0bf733983a', 'e21296163ff121dadf05110a319f4ad1ec18c0404af112e99e241870f980cced', '2024-12-15 11:47:39.177', '20241215114739_init', NULL, NULL, '2024-12-15 11:47:39.156', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempatwisata`
--
ALTER TABLE `tempatwisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tempatwisata`
--
ALTER TABLE `tempatwisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
