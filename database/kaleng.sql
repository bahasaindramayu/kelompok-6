-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 Jan 2018 pada 01.01
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaleng`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `Id_Admin` int(11) NOT NULL,
  `User_name` varchar(20) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Asal_Daerah` varchar(50) DEFAULT NULL,
  `Password` varchar(30) NOT NULL,
  `No_hp` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`Id_Admin`, `User_name`, `Email`, `Asal_Daerah`, `Password`, `No_hp`) VALUES
(1, 'yoshie', 'yoshiepang@hotmail.com', 'indramayu', 'polindra', '089525321829'),
(2, 'Widiana Silvi', 'widianasilvi@gmail.com', 'Jatibarang, Indramayu', 'apabae', '083823325233'),
(3, 'Lulu Mukhoyyaroh', 'lulumukhoyyaroh97@gmail.com', 'Cirebon', 'password', '083120419592'),
(4, 'Warsa ', 'warsa@outlook.com', 'parean, indramayu', 'polindra', '087525435782');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `no` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `balasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`no`, `nama`, `email`, `hp`, `pesan`, `balasan`) VALUES
(1, 'Deny Ismunandar', 'denycoker@yahoo.com', '087727632123', 'Pelajaran dan materi seperti apa yang tersedia disini?', 'Ada kurang lebih 28 pelajaran di mana\r\nAnda dapat mempelajari beragam ungkapan\r\nyang dibawakan dalam kehidupan sehari -\r\nhari. \r\nSelain itu, ada juga daftar suku kata\r\nbahasa Indramayu, kuis, latihan soal,\r\npenjabaran mengenai tata bahasa oleh\r\npakar bahasa Indramayu.'),
(2, 'Karina Fitri Sari', 'Karinfs@gmail.com', '089525321260', 'Ada yang saya tidak pahami mengenai bahasa indramayu. apakah anda akan menanggapi jika saya kirim pertanyaan nya melalui email?', 'Kami tidak menyediakan layanan untuk\r\nmenanggapi email atau surat pribadi. Kami akan\r\nmenanggapi pertanyaan melalui laman internet ini. \r\nSilahkan gunakan <a href=\"contact.php\">formulir surat</a> ini untuk mengirimkan pertanyaan Anda.'),
(3, 'Karina Fitri Sari', 'karinfs@hotmail.com', '089525321829', '<p>siapa yang membuat web ini?</p>', '<p>Web ini dibuat oleh mahasiswa Polindra jurusan Teknik Informatika</p>\r\n<p>guna memenuhi project mata kuliah PBL,</p>\r\n<p>serta sebagai bentuk pengabdian mahasiswa kepada masyarakat.</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_pertanyaan`
--

CREATE TABLE `list_pertanyaan` (
  `no` int(11) NOT NULL,
  `nama` varchar(55) NOT NULL,
  `pesan` text NOT NULL,
  `balasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `list_pertanyaan`
--

INSERT INTO `list_pertanyaan` (`no`, `nama`, `pesan`, `balasan`) VALUES
(1, 'Deny Ismunandar', 'Pelajaran dan materi seperti apa yang tersedia disini?', 'Ada kurang lebih 28 pelajaran di mana \r\nAnda dapat mempelajari beragam ungkapan \r\nyang dibawakan dalam kehidupan sehari -\r\nhari. Selain itu, ada juga daftar suku \r\nkata bahasa Indramayu, kuis, latihan \r\nsoal,penjabaran mengenai tata bahasa oleh \r\npakar bahasa Indramayu.'),
(2, 'Karina Fitri Sari', 'Ada yang saya tidak pahami mengenai bahasa indramayu. apakah anda akan menanggapi jika saya kirim pertanyaan nya melalui email?', 'Kami tidak menyediakan layanan untuk \r\nmenanggapi email atau surat pribadi. Kami \r\nakan menanggapi pertanyaan melalui laman \r\ninternet ini. Silahkan gunakan fitur \r\n\"CONTACT\" untuk mengirimkan pertanyaan \r\nanda.'),
(7, 'arie fahmi', '<p>bagaimana ?</p>', '<p>apa</p>'),
(8, 'wahidin', '<p>bagaimana ?</p>', '<p>apa</p>'),
(9, 'Karina Fitri Sari', '<p>siapa yang membuat web ini?</p>', '<p>Web ini dibuat oleh mahasiswa Polindra jurusan Teknik Informatika</p>\r\n<p>guna memenuhi project mata kuliah PBL,</p>\r\n<p>serta sebagai bentuk pengabdian mahasiswa kepada masyarakat.</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `Id_materi` int(11) NOT NULL,
  `judul_materi` varchar(30) NOT NULL,
  `isi` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`Id_materi`, `judul_materi`, `isi`) VALUES
(1, 'Pekakas teng Griya', 'Pekakas niku macem â€“ macem rupa,\r\nWonten pekakas pawon,\r\nWonten pekakas tukang kayu,\r\nWonten pekakas tukang batu,\r\nWonten pekakas bengkel,\r\nWonten pekakas tiyang tani,\r\nWonten pekakas mbasuh,\r\nLan macem â€“ macem malih.\r\nTeng andap puniki bade diwedaraken pekakas teng griya.\r\nKados pekakas ngangge kepriyogian tamu, \r\nYaiku Gelas, cangkir, tutup gelas, tatakan gelas, pisin, penimbal, cere, baki, bit, lan sanes â€“ sanesipun.\r\n'),
(2, 'Tatakrama nenamu', 'Bapa Mertamu\r\n\r\nEsuk â€“ esuk bapa wis tangi.\r\nKayane bapa arep ana perlu.\r\nWis beres sarapan bapa permisi ning ibu.\r\nBapa arep marani Mang Kusnen.\r\nSedurunge manjing bapa ketok â€“ ketok lawing bari ngomong â€œpunten â€¦, punten â€¦â€\r\nSing jero umah njawab, â€œmangga â€¦â€\r\nBeli sue Mang Kusnen metu, â€œOh Mang Radiâ€\r\nâ€œMangga Mang melebetâ€, cape Mang Kusnen.\r\nâ€œInggihâ€, jawab Mang Radi.\r\nMang Radi langsung manjing meng umah.\r\nâ€œMang lenggah Mangâ€, cape Mang Kusnen.\r\nMang Radi langsung lenggah.\r\nMang Radi ngaturaken weling sing kantor.\r\nYen Mang Kusnen sukiki kudu meng Bandung.\r\nBeli suwe Mang Radi permisi.\r\nâ€œMangga Mang semonten mawonâ€, cape Mang Radi.\r\nMang Radi bari metu sing umah.\r\n'),
(3, 'Maca (Membaca)', 'a. Tatakrama nenamu\r\n\r\n\r\nBapa Mertamu\r\n\r\nEsuk â€“ esuk bapa wis tangi.\r\nKayane bapa arep ana perlu.\r\nWis beres sarapan bapa permisi ning ibu.\r\nBapa arep marani Mang Kusnen.\r\nSedurunge manjing bapa ketok â€“ ketok lawing bari ngomong â€œpunten â€¦, punten â€¦â€\r\nSing jero umah njawab, â€œmangga â€¦â€\r\nBeli sue Mang Kusnen metu, â€œOh Mang Radiâ€\r\nâ€œMangga Mang melebetâ€, cape Mang Kusnen.\r\nâ€œInggihâ€, jawab Mang Radi.\r\nMang Radi langsung manjing meng umah.\r\nâ€œMang lenggah Mangâ€, cape Mang Kusnen.\r\nMang Radi langsung lenggah.\r\nMang Radi ngaturaken weling sing kantor.\r\nYen Mang Kusnen sukiki kudu meng Bandung.\r\nBeli suwe Mang Radi permisi.\r\nâ€œMangga Mang semonten mawonâ€, cape Mang Radi.\r\nMang Radi bari metu sing umah.'),
(4, 'Mirangaken (Menyimak)', 'a. Cobi rungokaken Bapa utawa Ibu Guru Arep nerangaken bab tata tertib sekolah.\r\nTata Tertib Sekolah\r\n1. Sederenge bel moni siswa sampun wonten teng sekolah.\r\n2. 15 menit sederenge genau mulai kedah dedonga rumiyin.\r\n3. Tugas piket kedah sampun priyad.\r\n4. Umpami dugie telat kedah lapor dumateng guru.\r\n5. Ngangge rasukan seragam sing sampun ditemtokaken.\r\n6. Teng lebet kelas mboten angsal ngangge rasukan angat, kaos utawi cotom.\r\n7. Waktos olah raga kedah ngangge kaos olah raga.\r\n8. Siswa kedah tumut upacara bendera teng sekolah.\r\n9. Umpami mboten saged dugi teng sekolah kedah nyukani uning ngangge serat saking tiyang sepuh.\r\n10. Kedah baris sederenge mbelebet teng sekolah/kelas.\r\n11. Dedonga sederenge lan sesampune genau teng sekolah.\r\n12. Mbirat runtah kedah teng genae lan mboten angsal mbirat runtah padu mawon.\r\n13. Mboten angsal nyoret â€“ nyoret teng tembok, meja lan korsi sekolah.\r\n14. Mboten angsal mbakta yatra jajan katah â€“ katah lan lare istri mboten angsal ngangge hiasan sing luwih uga lare jaler mboten angsal rambute Panjang (gondrong).\r\n15. Wiraos kedah santun lan sae mboten angsal wiraose jorok napa malih mboten sopan.\r\n16. Waktos genau teng kelas mboten angsal ribut napa malih gullet.\r\n17. Mboten angsal mbakta buku komik utawa dolanan teng lebet kelas.\r\n18. Saben siswa kedah maca buku perpustakaan.\r\n19. Mboten angsal ngerjani PR teng sekolah.\r\n20. Waktos res siswa mboten angsal teng lebet kelas.\r\n21. Umpami bade medal saking kelas kerna sakit kedah ijin rumiyin dumateng guru.\r\n22. Saben dinten Saptu kedah tumut olah raga.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi_sedang`
--

CREATE TABLE `materi_sedang` (
  `Id_materi` int(11) NOT NULL,
  `judul_materi` varchar(50) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materi_sedang`
--

INSERT INTO `materi_sedang` (`Id_materi`, `judul_materi`, `isi`) VALUES
(1, 'Tembung Nunggal Misah', 'Tembung nunggal misah (homonim  = Bhs. Indonesia) yaiku tembung loro utawa luwih sing unen-unen ejaane padha tapi artine bedha, \r\nsebab konteks ukarane beli padha.\r\nContoh:\r\n1. Pajeng\r\n	a. Sadeanipun dereng pajeng (pajeng = payu)\r\n	b. Ibu tumbas pajeng (pajeng = payung)\r\n2. mas\r\n	a. Tuti dolan ning Mas Parmin (mas = kakang)\r\n	b. Regane mas lagi larang (mas = logam mulya)\r\n3. ari\r\n	a. Ari beli sida, sira wewaraha! (ari = lamon)\r\n	b. Bapa mendhem ari-ari ning sor balik lawang guri. (ari-ari = bali-bali)'),
(2, 'Ukara Tanduk lan Ukara Tanggap', 'a. Ukara Tanduk\r\nUkara Tanduk iku ana rong werna, yaiku ukara tanduk transitif lan ukara tanduk intransitif.\r\nTitenana ukara-ukara ngesor!\r\n1. Raden Wiralodra nerusaken lelakone.\r\n2. Kidang kencana nabrang kali gedhe.\r\n3. Raden Wiralodra nerusaken.\r\n4. Kidang kencana nabrang.\r\nUkara no. 1 dan 2 iku ukara sing wis pragat sebab wong sing maca iku wis ngarti maksude.\r\nUkara no. 3 dan 4  iku ukara sing durung pragat sebab wong sing maca beli ngarti maksude.\r\nUkara no. 1 dan Iku diarani ukara tanduk sing wasesane nganggo tembung kriya. Tembung Kriya mau merlokaken obyek atawa \r\ngatra lesan.\r\nDadi ukara sing gatra wasesane sing nganggo tembung kriya kang merlokaken lesan iku diarani ukara tanduk transitif.\r\nb. Ukara Tanggap \r\nUkara tanggap yaiku ukara sing gatra wasesane nganggo tembung kriya olih ater-ater di-\r\nContoh:\r\n1. Kali gedhe ditabrangi kidang kencana.\r\n2. Bocah telu diukum nguras wc.\r\nUkara tanggap bisa dirobah dadi ukara tanduk transitif lan sebalike.\r\nContoh :\r\na. Ukara tanduk transitif	: Kidang kencana nabrang kali gedhe.\r\nUkara tanggp		: Kali gedhe ditabarangi kidang kencana.\r\na. Ukara tanggap		: Pangeran Guru ditantang kenang Nyi Endang Darma.\r\nUkara tanduk transitif	: Nyi Endang Darma nantang Pangeran Guru.\r\nUkara tanduk transitif  beli bisa dirobah dadi ukara tanggap, sebab ukara tanduk transitif langka obyeke(gatra lesane).'),
(3, 'Tembung Camboran lan Tembung Sifat', '1. Tembung Camboran\r\n Tembung Camboran iku ana werna loro, yaiku tembung camboran lan tembung camboran tugel,\r\na. Tembung Camboran Wutuh\r\nTembung camboran wutuh yaiku tembung loro utawa luwih jinejer lan nduweni teges sawiji (senyawa). Contoh : nagasari, \r\nkuping gajah, kaca mata, lan sejen-sejene.\r\nCiri tembung camboran wutuh\r\n1)  Beli bisa diselapi tembung sing, sebab lamon diselapi tembung sing artine robah.\r\nContoh :\r\nKursi males =  tembung camboran wutuh.\r\nKursi sing males =  dudu tembung camboran wutuh, lan artine  beli manjing akal\r\n2) Beli bisa diselapi tembung lan, sebab lamon diselapi tembung lan artine artine robah.\r\nContoh : \r\nKaca mata =  tembung camboran wutuh, sebab tegase nyawiji.\r\nKaca lan mata	= dudu tembung camboran wutuh, lan artine ana rong warna.\r\nb. Tembung Camboran Tugel (Akronim = Bhs. Indonesia)\r\nTembung camboran tugel yaiku tembung loro utawa luwih jinejer lan nduweni teges sawiji (senyawa). \r\nMung sing dicambor wandha ning guri.\r\nContoh :\r\n1. Rupane entas lara awake lunglit pisan. (lunglit = balung karo kulit)\r\n2. Bapa lagi ngopi lawuhe cireng. (cireng = aci digoreng)\r\nTembung Sifat/Keanan\r\nTembung sifat yaiku tembung sing nerangaken keanan tapi dudu tembung aran! Titenana ukara ning esor.\r\na. Ning jero umah ana sumur jero.\r\nb. Tuti nganggo klambi logro.\r\nTembung sing dicetak miring kaya dene jero, logro, nakal, ayu lan mateng iku diarani tembung sifat/keanan.\r\nCiri-cirine tembung sifat:\r\n1. Tembung sing nerangaken keanan utawa sifate barang (tembung keanan).\r\nContoh:\r\nSing jero iku sumur.\r\nSing logro iku klambi.\r\n2. Tembung sifat bisa ditiburi tembung-tembung: pisan, banget, luwih, kurang, lan sejen-sejene.\r\nContoh \r\nJero 	ïƒ  jero pisan, jero banget, paling jero,  kurang jero, luwih jero.\r\nLogro	ïƒ  logro pisan, logro banget, paling logro, kurang logro, luwih logro.\r\n3. Tembung sifat bisa dijembaraken karo embohan se- + tembung sifat + akhiran â€“ne/-e.\r\nContoh:\r\nJero	ïƒ  Sajero-jerone laut masih jero atine wong.\r\nLogro	ïƒ  Selogroe-logrone klambi nira masih logro klambi reang.'),
(4, 'Titi Ukara lan Sandhangan ', '1. Ukara Nominal lan Ukara Verbal.\r\na. Ukara nominal\r\nTitenana kalimat ngesor!\r\n1. Bapane guru bahasa Indramayu.\r\n2. Klambine Suta masih teles.\r\n\r\nb. Ukara Verbal\r\nTitenana kalimat ngesor!\r\n1. Wong loro mlaku tuntun-tuntunan.\r\n2. Tuleg lan Gandhen mangkat nonton bebarengan.\r\n\r\nUkara-ukara mau sing nganggo gatra wasesane tembung kriya, yaiku mlaku, mangkat.\r\nUkara-ukara sing gatra wasesane nganggo tembung kriya diarani ukara verbal.\r\nTata Krama Kanggo Wangsalan.\r\n1. Wangsalan\r\nWangsalan yaiku unen-unen seamper badhekan sing wangsulane wis ana, sanajan mung nyremped-nyremped bae. \r\nCara wangsalan iku ana rong werna, yaiku:\r\na. Wangsalan sing wangsulane langsung\r\nContoh:\r\n1. Umah cilik pasolatan, sapira adhoe tek jujug mangsa wurung.\r\n    Umah cilik pasolatan = tajug ïƒ  olihe jujug.\r\n2. Creme alas mas, wong brayan kudu blaka.\r\n    Creme alas arane kemlaka ïƒ  olih blaka = juju, transparan.\r\nb. Wangsalan sing wangsulane kudu dibedharaken.\r\nContoh:\r\n1. Wangsalan ning obrolan.\r\n -  : Mangga mampir!\r\n+  : Emong, bokan beli diliwet mumbul.\r\n     Diliweti mumbul kudu ditajeni ïƒ  olihe diajeni.\r\n\r\nDadi bedhare wangsalan mau yaiku:\r\n:  Mangga mampir!\r\n +    : Emong, bokan beli diajeni.\r\n2. Wah, njanur gunung, gelem teka mrene.\r\n    Janur gunung = aren ïƒ  olihe ning kadingaren.\r\n    Lugune : Wah, kadingaren, gelem teka mrene.'),
(5, 'Julukan Tukang lan Ater ater', '1. Julukan Wong tukang Gegawean.\r\n1. Desa Karangasem arep Mapag Sri karo nanggap wayang dhalang Sarbini lan sindhene Nyi Dariyah.\r\n2. Ken Arok pesen keris ning Empu Gandhring.\r\n3. Wayang Sarbini rame pisan. Nayagane senggak ambal-ambalan.\r\n4. Mang Samin adol kebo ning blantik.\r\n\r\nTitenana tembung-tembung sing dicetak miring ning ukara mau!\r\nUkara no. 1 dhalang	= wong sing pinter nglakokaken wayang.\r\n	    Sindhen	= juru suwara/wong sing tukang nembang.\r\nUkara no. 2 empu		= wong sing pinter gawe keris.\r\nUkara no. 3 nayaga	= wong sing tukang nabuh gamelan.\r\nUkara no. 4 blantik 	= wong sing tukang adol tinuku raja kaya/kewan.\r\n\r\n\r\n2. Ater-ater lan Panambang â€“aken\r\nContoh:\r\na. Bibi lagi nganteraken piring ning tangga guri.\r\nb. Sapa sing arep nanduraken gedhang?\r\nc. Titi lagi mukokaken udud, dikongkon Pa Guru.\r\nd. Tuti lagi nyapokaken umahe Wa Basir.\r\ne. Nono melu nggalatekaken bukune Pa Guru.\r\nf. Siti dikongkon matakaken kompor kenang Wa Ijah.\r\ng. Dani nggawakaken bukune Pa Guru.\r\nh. Sing lagi mrenekaken ikuh bocah kelas loro.\r\nTitenana! Tembung-tembung sing dicetak miring yaiku: nganteraken, nanduraken, nukokaken, nyapokaken, \r\nngglatekaken, matekaken, nggawakaken lan mrenekaken iku tembung-tembung sing olih ater-ater anuswara+penambang â€“aken.\r\nNgemet dhasar sing contoh-contoh mau, bisa diklompokaken dadi:\r\na. Tembung-tembung sing aksara pungkasane aksara mati (konsonan) kapa olih penambang-aken wujud lan \r\nunen-unen beli robah.\r\nContoh:\r\nanter 	ïƒ  ng + aken ïƒ  nganteraken.\r\ntandur ïƒ  n + aken ïƒ  nanduraken.\r\nb. Tembung-tembung sing aksara pungkasane aksara urip (vokal) u lamon olih penambang-aken wujud lan \r\nunen-unen robah dadi o lan ditambah k.\r\nContoh:\r\ntuku ïƒ  n + aken ïƒ nukokaken.\r\nsapu ïƒ  ny + aken ïƒ  nyapokaken.\r\n\r\n\r\n\r\nc. Tembung-tembung sing aksara pungkasane aksara urip (vokal) i lamon olih penambang-aken wujud lan \r\nunen-unen robah dadi e lan ditambah k.\r\nglati ïƒ  ng + aken ïƒ  ngglatekaken.\r\nPlati ïƒ  m + aken ïƒ  matekaken.\r\nd. Tembung-tembung sing aksara pungkasane aksara urip (vokal) a utawa e. lamon olih penambang-aken wujud lan \r\nunen-unen beli robah mung ditambah k.\r\ngawe ïƒ  ng + aken ïƒ  nggawekaken.\r\nPrene ïƒ  m + aken ïƒ  mrenekaken.\r\n  3. Makna Panambang â€“aken.\r\n   Panambang â€“aken lamon ning tembung iku duwe makna, yaiku:\r\na. nglakoni pegawean.\r\nContoh : nganteraken; nukokaken.\r\nb. Digawe supaya....\r\nContoh : nempelaken; nggantungaken\r\nc. Dikongkon..\r\nContoh : nanduraken/ngongkon...\r\nd. Marani/arahe....\r\nContoh : ngidulaken; ngaloraken.\r\ne. Nggawa......\r\nContoh: nginggataken; mlayokaken.\r\nf. Sing ngupahi....\r\nContoh: nyilihaken; ngongkosaken.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi_sulit`
--

CREATE TABLE `materi_sulit` (
  `Id_materi` int(11) NOT NULL,
  `judul_materi` varchar(30) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materi_sulit`
--

INSERT INTO `materi_sulit` (`Id_materi`, `judul_materi`, `isi`) VALUES
(1, 'Titi Tembung', '1. Tembung Istilah Tetanen\r\na. Sawah cengkar regane murah.\r\nb. Waduk iku akeh gunane\r\nTitenana ! Tembung cengkar lan tembung waduk iku tembung istilah tetanen. <br>Cengkar yaiku lemah sing kurang hara (tandus = Bahasa Indonesia).\r\nWaduk yaiku wadhah banyu kanggo mbanyuni sawah.\r\n2. Makna Tembung\r\nTembung siji duwwe makna pirang â€“ pirang\r\nContoh : \r\na. Ari ngomong sing angger, aja mencla mencle.\r\nAngger = ajeg; beli roboh; cecek siji\r\nb. Wong urip iku kudu duwe angger -angger.\r\nAngger â€“ angger = pathokan; pekakem; wewaton\r\nc. Angger matane melek kudu ngemil.\r\nAngger = saben, kapa.'),
(2, 'TEMBUNG RANGKEP (REDUPLIKASI)', '1. Sing Tembung Linggane Tembung Aran\r\nContoh : 1. Bocah â€“ bocah padha mlayu â€“ mlayu ndeleng berokan.\r\n2. Bapa lagi masang sawen wong â€“ wongan.\r\n3. Ayip maknun dadi mata â€“ mata Welanda.\r\n\r\n2. Sing Tembung Linggane Tembung Sifat\r\nContoh : 1. Ayo dipangan, aja isin â€“ isinan !\r\n2. Klambine Pipit bagus â€“ bagus.\r\n3. Tandurane wis dhuwur â€“ dhuwur.'),
(3, 'Titi Sastra', 'Guritan Anyar lan Lagu â€“ lagu Tarling\r\nLagu â€“ lagu tarling awujud guritan (puisi) anyar. Sebab nulise beli nganggo pepakem sing wis baku kaya nulis guritan lawas.\r\nContoh :\r\na. Warung Pojok \r\nAkeh wong padha kelingan, masakan\r\nAkeh wong padha kedanan, pelayan\r\nOra lali kesopanan\r\nNing sekabeh langganan\r\nâ€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦ Karya : Abdul Ajid\r\n\r\nb. Piknik Ning Cibulan\r\nKelingan kula kelingan Plesiran jalan â€“ jalan \r\nLunga piknik ning Cibulan\r\nRame â€“ rame bebarengan \r\nâ€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦â€¦.. Karya : H. Dariyah\r\nTitenana !\r\nCukilan â€“ cukilan tembang tarling mau, keloro â€“ lorone awujud guritan (puisi) anyar, sing masih nempel yaiku pepakem guru lagu (purwakanta). Pepakem sewjene kaya guru gatra lan guru wilangan wis beli dienggo maning.'),
(4, 'Titi Tembung (Sifat Manusia)', '1. Tembung â€“ tembung sifat manusia\r\nSaben wong due watek lan sifat kang beda â€“ beda. Sifat â€“ sifat wong iku kaya dene :\r\na. Duratmaka iku ambek siya ning korbane\r\nAmbek siya = seneng nganiyaya (nyiksa)\r\nb. Sira, ari ngomong kasar pisan \r\nKasar = ora nganggo tata krama\r\nc. Pemimpin itu kudu bijaksana\r\nBijaksana = mbeneraken kang bener\r\nd. Asep iku bocah nakal \r\nNakal = bli nurut\r\n2. Tembang â€“ tembung Budaya Dermayu\r\nContoh :\r\na. Bu Narti ngairaken dhampit.\r\nDhampit = lairan kembar lanang wadon\r\nb. Ari lelungan, bagasse iu ngiringaken mayit, aja nggotong mayit.\r\nNgiringaken mayit = lelungan luwih sing wong papat\r\nNggotong mayit = lelungan akehe wong telu\r\nc. Anake sing ragil iku wis 12 tahun umure.\r\nRagil = anak bungsu / anak buncing'),
(5, 'Ukara Camboran (Majemuk)', 'Ukara lamba yaiku ukara sing due gagasan mung siji.\r\nUkara combaran yaiku ukara sing nduweni gagasan sing luwih sing siji.\r\n\r\nContoh :\r\n1. Bapa lagi ngopi.\r\n2. Bapa lagi maca buku.\r\n3. Bapa lagi ngopi bari maca buku.\r\n4. Tuti beli mangkat sekolah.\r\n5. Tuti lagi lari.\r\n6. Tuti beli mangkat sekolah lantaran lagi lara.\r\n7. Abu dolanan mobil â€“ mobilan.\r\n8. Banu dolanan mobil â€“ mobillan.\r\n9. Abu lan Banu dolanan mobil â€“ mobilan.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelajaran`
--

CREATE TABLE `pelajaran` (
  `Id_pelajaran` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelajaran`
--

INSERT INTO `pelajaran` (`Id_pelajaran`, `judul`, `isi`) VALUES
(1, 'Percakapan Ngongkon / Menyuruh', '<p>Mbak karomah : sissy, emakmu nang endi? \r\nSissy : niki mbak, emak kula isih nang wingking \r\nMbak karomah : ooo iyo wis engko, lek emakmu wis mari, \r\nmbak karomah celuk en yo! \r\nSissy : inggih mbak.</p>'),
(2, 'Percakapan nglakoni pegawean umah', '<p>Dila : Ran, PR Bahasa Jawi panjenengan sampun panjenengan nyambut damelaken dereng?</p>\r\n<p>&bull;Rani : Dereng. Panjenengan sampun?</p>\r\n<p>&bull;Dila : Dalem ugi dereng.&bull;Rani : Panjenengan kresa mboten mangke dalu gegulang kelompok? kita sedaya nyambut damelaken PR punika sesarengan.</p>\r\n<p>Sayangipun, teng dalem dalem kemawon nuwun inggih?</p>\r\n<p>&bull;Dila : Nuwun inggih. Mangke dalem datheng dalem panjenengan sekitar jam sepalih wolu.</p>\r\n<p>&bull;Rani : Dalem tengga panjenengan teng dalem adalem.</p>'),
(3, 'Percakapan Kenalan', 'Fafa : Sapa jenengmu?\r\nDwi  : Jenengku Dwi.\r\nFafa : Ono ing ngendi omahmu?\r\nDwi : Omahku ana ing Pringwulung nomer. 67.\r\nFafa : Seko ngendi asalmu?\r\nDwi : Aku seka Cilacap.\r\nFafa : Ono ing ngendi kowe sekolah ?\r\nDwi : Aku sekolah ana ing SD N siji (1) Kebumen .\r\nFafa : Kelas piro kowe?\r\nDwi : Aku kelas loro ( 2 ).\r\nFafa : Kapan kowe teko ana ing Kebumen?\r\nDwi : Aku teko ana ing Kebumen limang ( 5 ) taun kepungkur.\r\nFafa : Piro suwene kowe arep manggon ana ing Kebumen?\r\nDwi : Kurang luwih wolung ( 8 ) taun.\r\n'),
(4, 'Percakapan Ujian Nasional', '<p>Gisel : Ra, sekedhap malih ta wonten ujian nasional. Panjenengan sampun jagi dereng? \r\nTiara : Nuwun inggih jagi mboten jagi kedah jagi. Sedaya margeni kemawon. Gisel : Dalem ajrih menawi mangke dalem mboten saged wangsul. \r\nTiara : Milanipun kita sedaya jagikaken saking sakmenika. \r\nGisel : Menawi gegulang sih sampun. Dalem sampun kathah berlatih soal. \r\nTiara : Mboten namung gegulang kemawon, sayangipun ugi jagen mental. Panjenengan kedah pitados salira kagem maraki ujian nasonal. \r\nGisel : Nuwun inggih ugi sih. Sayangipun, kados pundi menawi soalnya redatos? \r\nTiara : Ingkang wigatos kita sedaya upados rumiyen. Kita sedaya berdoa kersanipun kita sedaya saged nyambut damelaken sedaya soal ujian nasional. \r\nGisel : Mugi-mugi kemawon mekaten.</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal_mudah`
--

CREATE TABLE `soal_mudah` (
  `no` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(1000) NOT NULL,
  `b` varchar(1000) NOT NULL,
  `c` varchar(1000) NOT NULL,
  `d` varchar(1000) NOT NULL,
  `kunci` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal_mudah`
--

INSERT INTO `soal_mudah` (`no`, `soal`, `a`, `b`, `c`, `d`, `kunci`) VALUES
(1, '<p>Nuni tuku buku. Ukara lemese (krama) yaiku ...</p>', 'Nuni tumbas buku', 'Nuni saweg buku', 'Nuni sawon buku', 'Nuni maos buku', 'Nuni tumbas buku'),
(2, '<p>Gelas, cangkir, pisin niku kelebet teng pekakas napa ?</p>', 'Pekakas pawon', 'Pekakas bengkel', 'Pekakas tamu', 'Pekakas tani', 'Pekakas tamu'),
(3, '<p>Ibu - peken - saweg - teng. Susunan ukara sing bener yaiku ...</p>', 'Ibu teng peken saweg', 'Ibu saweg teng peken', 'Ibu teng saweg peken', 'Saweg Ibu teng peken', 'Ibu saweg teng peken'),
(4, '<p>Priben akale manuk gagak supaya bisa minum ?</p>', 'Manuk gagak numplek kendi', 'Manuk gagak nganjing â€“ nganjingaken krikil', 'Manuk gagak meneng bae ', 'Manuk gagak mondar - mandir', 'Manuk gagak nganjing â€“ nganjingaken krikil'),
(5, '<p>Ana ning endi banyu sing dioleti manuk gagak ?</p>', 'Kendi', 'Gentong', 'Panci', 'Cotom', 'Kendi'),
(6, '<p>Teng lebet kelas mboten angsal ngangge rasukan angat, kaos utawi cotom. Ukara niki termasuk tata tertib ?</p>', 'Sekolah', 'Griya', 'Sabin', 'Peken ', 'Sekolah'),
(7, '<p>Panganan sing beli ngandung empat sehat lima sempurna yaiku ...</p>', 'Iwak', 'Woh â€“ wohan', 'Mie', 'Susu ', 'Mie'),
(8, '<p>Iwak iku ngandung ...</p>', 'Karbohidrat', 'Protein', 'Vitamin', 'Lemak', 'Protein'),
(9, '<p>Basa kramane (bebasane) angka 10, yaiku ...</p>', 'Setunggal', 'Kalidasa', 'Sedasa', 'Setunggal ', 'Sedasa'),
(10, '<p>Kesa - teng - Bapa - Bandung. Susunan ukara sing bener yaiku ...</p>', 'Teng Bapa kesa Bandung', 'Bapa kesa teng Bandung', 'Bapa teng kesa Bandung', 'Bandung kesa teng Bapa', 'Bapa kesa teng Bandung'),
(11, '<p>Sedurunge manjing, sira ketok - ketok lawang dingin, terus bari ngomong punten ...</p>\r\n<p>utawa uluk salam. Ukara niki termasuke tatacarane wong are apa ...</p>', 'Mertamu', 'Sekolah', 'Jajan', 'Dolan ', 'Mertamu'),
(12, '<p>Sedurunge mangkat sekolah kita bari wong tua kudu ...</p>', 'Ngambung tangan wong tuwae', 'Jaluk duwit', 'Lunga bae', 'Biasa bae', 'Ngambung tangan wong tuwae'),
(13, '<p>Pengen urip sehat mangan kudu ...</p>', 'Wareg', 'Ati â€“ ati', 'Diet', 'Puasa ', 'Ati â€“ ati'),
(14, '<p>Sing termasuk lagu karyae H.Abdulajid yaiku ...</p>', 'Sumpah suci', 'Lagu sintren', 'Lagu piknik ning cibulan', 'Lagu gentong â€“ gentong breng', 'Sumpah suci'),
(15, '<p>Umpami pacul, pedangan, arit niku kelebet pekakase tiyang napa ...</p>', 'Tukang kayu', 'Tukan batu', 'Tani', 'Tukang kebon', 'Tani'),
(16, '<p>Bapa sibuk kerja ning kantor.</p>\r\n<p>Sibuk artine ...</p>', 'Ora lancar', 'Akeh sing kudu dikerjakaken', 'Beli kiyeng', 'Getol menggawe', 'Akeh sing kudu dikerjakaken'),
(17, '<p>Timo bocah sing rajin.</p>\r\n<p>Rajin artine ...</p>', 'Akeh sing kudu dikerjakaken', 'Ora lancar', 'Getol menggawe', 'Beli kiyeng', 'Getol menggawe'),
(18, '<p>Ngko bengi ana pawai. Ukara lemese (krama) yaiku ...&nbsp;</p>', 'Mengkin daluh wonten pawai', 'Mengkin sonten wonten pawai', 'Mengkin enjing mboten wonten pawai ', 'Mengkin sonten mboten wonten pawai', 'Mengkin daluh wonten pawai'),
(19, '<p>Saweg - Bapa - majalah - maos. Susunan ukara sing bener yaiku ...</p>', 'Bapa saweg majalah maos', 'Maos Bapa saweg majalah', 'Majalah saweg maos Bapa', 'Bapa saweg maos majalah', 'Bapa saweg maos majalah'),
(20, '<p>Basa kramane (bebasane) angka 4, yaiku ...</p>', 'Setunggal', 'Kali', 'Gangsal', 'Sekawan', 'Sekawan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal_sedang`
--

CREATE TABLE `soal_sedang` (
  `no` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(1000) NOT NULL,
  `b` varchar(1000) NOT NULL,
  `c` varchar(1000) NOT NULL,
  `d` varchar(1000) NOT NULL,
  `kunci` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal_sedang`
--

INSERT INTO `soal_sedang` (`no`, `soal`, `a`, `b`, `c`, `d`, `kunci`) VALUES
(1, '<p>\"Raden Wiralodra nerusaken lelakone\". Ukara niki jenis ukara apa ...</p>', 'Unggal misah', 'Tanduk', 'Tanggap', 'Wilangan tingkat', 'Tanduk'),
(2, '<p>\"Kali gede ditabarangi kidang kencana\". Ukara niki jenis ukara apa ...</p>', 'Unggal misah', 'Tanduk', 'Tanggap', 'Tanduk transitif', 'Tanggap'),
(3, '<p>Sing termasuk tembung camboran wutuh yaiku ...</p>', 'Kaca mata', 'Kaca lan mata', 'Kursi sing males', 'Bapa lagi ngopi', 'Kaca mata'),
(4, '<p>\"Rupane entas lara awake lunglit pisan\". Ukara niki jenis tembung camboran apa ...</p>', 'Unggal misah', 'Tanduk', 'Wutuh', 'Tugel', 'Tugel'),
(5, '<p>Wong sing pinter nglakokaken wayang niku arane ...</p>', 'Sindhen', 'Empu', 'Dhalang', 'Nayaga', 'Dhalang'),
(6, '<p>Wong sing tukang nabuh gamelan niku arane ...</p>', 'Sindhen', 'Empu', 'Dhalang', 'Nayaga', 'Nayaga'),
(7, '<p>Wong sing pinter gawe keris niku arane ...</p>', 'Sindhen', 'Empu', 'Dhalang', 'Nayaga', 'Nayaga'),
(8, '<p>Juru suwara/wong sing tukang nembang niku arane ...</p>', 'Sindhen', 'Empu', 'Dhalang', 'Nayaga', 'Sindhen'),
(9, '<p>Bibi lagi&nbsp;<em>anter&nbsp;</em>piring ning tangga guri. Tembung ning jero kurung kudu disempurnakaken dadi ...</p>', 'Nganteraken', 'Nanteraken', 'Nganter', 'Nyanteraken', 'Nganteraken'),
(10, '<p>Bahasa ngokone \"mripat\" yaiku ...</p>', 'Endhas', 'Tangan', 'Mata', 'Sikil', 'Mata'),
(11, '<p>\"Muga - muga kita lulus kabeh\". Ukara niki termasuke ukara apa ...</p>', 'Tanduk', 'Sambawa', 'Tugel', 'Tanggap', 'Sambawa'),
(12, '<p>Rumbah semanggi (<em>kelapa)</em> supaya sedhep. Tembung ning jero kurung disempurnakan dadi ...</p>', 'Dikelapani', 'Dikelapa', 'Ngelapaaken', 'Nyelapaaken', 'Dikelapani'),
(13, '<p>Bahasa ngokoe \"ajeng\" yaiku ...</p>', 'Lagi', 'Arep', 'Teka', 'Lunga', 'Arep'),
(14, '<p>Sing kepanjing ukara tanduk yaiku ...</p>', 'Tuti ditukokaken sepatu kenang kakange.', 'Barang-barange uwis dikumpulaken.', 'Parmin nyrawati pelem', 'Pelem disrawati Parmin.', 'Pelem disrawati Parmin.'),
(15, '<p>Ukara sing beli nganggo tembung sifat, yaiku ...</p>', 'Bapa ngimbu gedhang', 'Sing durung tuwa, aja diemeti.', 'Bayine Bu Warsih lemu pisan.', 'Klambine bagus pisan.', 'Bapa ngimbu gedhang'),
(16, '<p>(1) Wong loro mlaku tuntun - tuntunan</p>\r\n<p>(2) Bapane guru Bahasa Indramayu</p>\r\n<p>(3) Klambine suta maca buku</p>\r\n<p>(4) Faqih lagi maca buku</p>\r\n<p>&nbsp;</p>\r\n<p>Ukara verbal yaiku ana ning ukara nomor ...</p>', '1', '2', '3', '4', '1'),
(17, '<p>Besakaken (Bahasa krama) sing bener yaiku ...</p>', 'Kula saweg dhahar', 'Embah saweg nedhi', 'Kula saweg nedhi', 'Bapa dereng rugi.', 'Kula saweg nedhi'),
(18, '<p>Tukang cukur wantun nyepeng ... Sang Prabu.</p>\r\n<p>Tembung sing pas kanggo nyempurnakaken ukara mau yaiku ...</p>', 'Sirah', 'Endhas', 'Patra', 'Mastaka', 'Mastaka'),
(19, '<p>Bebasan sing bener yaiku ...</p>', 'Kula sampun ngandhika supados milet kempalan.', 'Bapa sampun ngandhika supados milet kempalan.', 'Susi sampun ngandhika badhe milet kempalan.', 'Kula dhahar kaliyan ulam bethik', 'Bapa sampun ngandhika supados milet kempalan.'),
(20, '<p>Faqih lagi maca buku.</p>\r\n<p>Ukara mau lamon dikramakaken kudu ...</p>', 'Faqih saweg maos buku', 'Faqih lagi maos buku', 'Faqih saweg maos buku', 'Faqih ajeng maos buku', 'Faqih saweg maos buku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal_sulit`
--

CREATE TABLE `soal_sulit` (
  `no` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(1000) NOT NULL,
  `b` varchar(1000) NOT NULL,
  `c` varchar(1000) NOT NULL,
  `d` varchar(1000) NOT NULL,
  `kunci` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal_sulit`
--

INSERT INTO `soal_sulit` (`no`, `soal`, `a`, `b`, `c`, `d`, `kunci`) VALUES
(1, '<p>\"Wadah banyu kanggo mbayuni sawah\". Ukara niki termasuk tembung istilah ...</p>', 'Waduk', 'Galengan', 'Kalen', 'Selokan', 'Waduk'),
(2, '<p>\"Ari ngomong sing angger, aja mancla - mencle. Makna tembung ukara niki yaiku ...</p>', 'Saben', 'Wewaton', 'Kapa', 'Ajeg', 'Ajeg'),
(3, '<p>Sing dudu termasuk tembung linggane tembung sifat yaiku ...</p>', 'Ayo dipangan, aja isin â€“ isinan !', 'Bapa lagi masang sawen wong â€“ wongan ', 'Klambine pipit bagus â€“ bagus ', 'Tandurane wis dhuwur  dhuwur', 'Bapa lagi masang sawen wong â€“ wongan '),
(4, '<p>Bahasa kramane \"bener\" yaiku ...&nbsp;</p>', 'Kersa', 'Kinten', 'Leres', 'Ajeng', 'Leres'),
(5, '<p>Lagu warung pojok iki lagu tarling karyane sapa ...&nbsp;</p>', 'Abdul Ajid', 'H. Dariyah', 'Ibu sud', 'WR Supratman', 'Abdul Ajid'),
(6, '<p>Tembung budaya dermayune lairan kembar lanang wadon yaiku ...&nbsp;</p>', 'Ragil', 'Dhampit', 'Nggotong mayit', 'Ngiringaken mayit', 'Dhampit'),
(7, '<p>Pajenengan niki putrinipun sinten ? . bahasa ngokoe yaiku ...&nbsp;</p>', 'Sira iki anake sapa ?', 'Sira iki wong endi ?', 'Sira iki putue sapa ?', 'Sira iki ponakane sapa ?', 'Sira iki anake sapa ?'),
(8, '<p>Pa, dipun aturi ajat&nbsp;<em>ba</em><em>da&nbsp;</em>magrib teng Pa Karta. Tembung sing di cetak miring artine yaiku ...&nbsp;</p>', 'Gawe kebagusan', 'Sauwise', 'Matur nuwun', 'Kepengenan', 'Sauwise'),
(9, '<p>\"Amin lagi adus\". Ukara niki jenis tembung kriya apa ...</p>', 'Tanduk', 'Tanggap', 'Lingga', 'Rangkep', 'Lingga'),
(10, '<p>\"Surate lagi ditulis\". Ukara niki jenis tembung kriya apa ...</p>', 'Tanduk', 'Tanggap', 'Lingga', 'Rangkep', 'Tanggap'),
(11, '<p>\"Sira mlayu - mlayu bae\". Ukara niki jenis tembung kriya apa ...</p>', 'Tanduk', 'Tanggap', 'Lingga', 'Rangkep', 'Rangkep'),
(12, '<p>\"Bapa lagi nulis\". Ukara niki jenis tembung kriya apa ...</p>', 'Tanduk', 'Tanggap', 'Lingga', 'Rangkep', 'Tanduk'),
(13, '<p>Tembang pupuh ning ngesor wacanen !</p>\r\n<p>&nbsp;</p>\r\n<p>Sun angidung pan si jabang</p>\r\n<p>Kakidungan jabang bayi</p>\r\n<p>Sesinggah sakehing bala</p>\r\n<p>Gengseraken kehing rijki</p>\r\n<p>Kinasihan ingkang sejati</p>\r\n<p style=\"text-align: right;\">Berkasakan datan purun</p>\r\n<p style=\"text-align: right;\">Singgahna saking durbiksa</p>\r\n<p style=\"text-align: right;\">Den reksa rahmating Nabi</p>\r\n<p style=\"text-align: right;\">Si jabang bayi waras welagang</p>\r\n<p style=\"text-align: right;\">Welagang bregas raharja</p>\r\n<p style=\"text-align: right;\">&nbsp;</p>\r\n<p style=\"text-align: left;\">Ning duwur iku cuthikan sing tembung pupuh kanggo ngidung bayi entas cuplak utawa waktu ngayun. Artine tembung welagang yaiku ...</p>', 'Singkiraken', 'Gangsar', 'Ora', 'Weringkas', 'Weringkas'),
(14, '<p>Artine tembung ning duwur sesinggah yaiku ...</p>', 'Singkiraken', 'Gangsar', 'Ora', 'Weringkas', 'Singkiraken'),
(15, '<p>Artine tembung ning duwur durbiksa yaiku ...</p>', 'Singkiraken ', 'Gangsa', 'Dhedemit', 'Ora', 'Dhedemit'),
(16, '<p>Sing termasuk jenis tembung gandhengan sebabad yaiku ...</p>', 'Tuti lagi belajar bae, supaya ujiane lulus', 'Dudu kuwen ndheke sira mah, tapi kaen', 'Bocah nangis bae naur, jalaran dhurung gajian', 'Dheweke dhurung gajian', 'Tuti lagi belajar bae, supaya ujiane lulus'),
(17, '<p>Sing termasuk jenis tembung lelawanan yaiku ...</p>', 'Tuti lagi belajar bae, supaya ujiane lulus', 'Dudu kuwen ndheke sira mah, tapi kaen', 'Bocah nangis bae naur, jalaran dhurung gajian', 'Dheweke dhurung gajian', 'Dudu kuwen ndheke sira mah, tapi kaen'),
(18, '<p>Sing termasuk jenis tembung sebab - musebab yaiku ...</p>', 'Tuti lagi belajar bae, supaya ujiane lulus', 'Dudu kuwen ndheke sira mah, tapi kaen', 'Bocah nangis bae naur, jalaran dhurung gajian', 'Bapa lagi turu', 'Bocah nangis bae naur, jalaran dhurung gajian'),
(19, '<p>\"Rapor sing durung diemet masih pirang - pirang\". Ukara niki termasuke jenis tembung wilangan apa ...</p>', 'Wilangan tetep', 'Wilangan biasa', 'Wilangan beli tetep', 'Wilangan tingkat', 'Wilangan beli tetep'),
(20, '<p>Ukumana dikurangi, sebab olih grasi sing Presiden. Artine grasi yaiku ...</p>', 'Gegoreng karo lenga', 'Olih ampunan sing presiden', 'Njukuti cara paksa', 'Lapangan tempat perang', 'Olih ampunan sing presiden');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_soal`
--

CREATE TABLE `t_soal` (
  `no` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(1000) NOT NULL,
  `b` varchar(1000) NOT NULL,
  `c` varchar(1000) NOT NULL,
  `d` varchar(1000) NOT NULL,
  `kunci` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_soal`
--

INSERT INTO `t_soal` (`no`, `soal`, `a`, `b`, `c`, `d`, `kunci`) VALUES
(1, '<p>Lakune Slamet uwis tekang alas. Atine beli sabar pengen gage &ndash; gage tekang genah. Bocah mau, engko mlayu engko ngicrig. Kringete gemrobyos. Ambekane naur ngalap. Barang wis parek panggonan kaum gerilya, Slamet mlayu tambah santer bari njerit &ndash; njerit mbeluki mamange. Paomongan sing beli cocog karo paragraph ning dhuwur, yaiku &hellip;</p>', 'Slamet beli sabar pengen ketemu karo mamange', 'Kringete Slamet gemrobyos', 'Ambekane Slamet naur ngalap', 'Barang wis parek alas, Slamet mlaku kalem.', 'Slamet beli sabar pengen ketemu karo mamange'),
(2, 'Kabeh ukara ngesor iku ana tembung rangkep sing tembung linggane tembung aran, kajaba â€¦', 'Basir dolanan mobil â€“ mobilan', 'Winihe wis dawa â€“ dawa pisan', 'Murid â€“ murid wis pada bubar', 'Bocah â€“ bocah dolanan ning dhuwur meja', 'Basir dolanan mobil â€“ mobilan'),
(3, 'Tembung rangkep sing tembung linggane tembung sifat yaiku ana ning ukara â€¦', 'Tandurane wis dhuwur â€“ dhuwur', 'Naib ngumpulaken lebe â€“ lebe sekecamatan Sindan', 'Guru â€“ guru lagi padha rapat', 'Regane barang â€“ barang sekien munggah', 'Tandurane wis dhuwur â€“ dhuwur'),
(4, 'Lunga mrana nunggang apa, Pa ? Krama inggil nunggang yaiku â€¦', 'Nupak ', 'nitih ', 'ngasta ', 'tindak', 'nitih '),
(5, 'Slametan puputan sampe sekien masih ana. Mung pajanggaan wis meh langka. Lagi penulis masih bocah, siji loro masih ana nanggap. Sekien mah diganti karo marhabanan.\r\nPikiran pertama paragraph ning duwur yaiku â€¦\r\n', 'Slametan puputan masih ana', 'Pujanggaan wis meh langka', 'Siji loro masih ana sing nangap', 'Sakiyen diganti marhabanan', 'Slametan puputan masih ana'),
(6, 'Raden Parikesit stria kang â€¦â€¦â€¦â€¦â€¦ mbela negara.\r\nTembung kang trep kanggo nyampurnakaken ukara mau yaiku â€¦\r\n', 'Ambek siya ', 'Ambek pati ', 'adil paramarta', 'keked', 'Ambek pati '),
(7, 'Istilah sendhang kapit pancuran yaiku â€¦', 'Wong duwe anak telu. Pembarep karo pembuncing lanang, penengah wadon.', 'Wong duwe anak telu. Pembarep lan pembuncinge wadon, penengahe lanang.', 'Wong duwe anak loro wadon kabeh.', 'Wong duwe anak loro kembar, lanang kabeh. Sijine kulite ireng lan sijine kulite kuning.', 'Wong duwe anak telu. Pembarep karo pembuncing lanang, penengah wadon.'),
(8, 'Bocah cilik tapi duwe sifat ambek sura.\r\nAmbek sura artine â€¦\r\n', 'Males', 'legawa', 'koret', 'wani', 'wani'),
(9, 'Bapa kondhur sekedhap.\r\nLamon disalin karo Bahasa ngoko kudu â€¦\r\n', 'Bapa mndur sedhela. ', 'Bapa balik sedhela.	 ', 'Bapa teka sedhela.', 'Bapa rawuh sedhela.', 'Bapa balik sedhela.'),
(10, 'Tembung istilah sing langka pataline karo istilah watek lan sifat manusia yaiku â€¦', 'Ambek sura ', 'medhit', 'brangasan ', 'adus', 'adus'),
(11, 'Wong sing duwe anak lima lanang kabeh diarani â€¦', 'Pandhawa ', 'sumala', 'urut kacang ', 'margana', 'urut kacang '),
(12, 'Lelungan wong telu iku diaran lelungan â€¦', 'Nggendong mayit 	', 'Ngiringaken mayit ', 'nggotong mayit', 'urut kacang', 'nggotong mayit'),
(13, 'Sing manjing ukara camboran yaiku â€¦', 'Wingi Parmi beli sekolah.', 'Kapa beli sida, sira kudu ngupai weruh.', 'Pa Bedhor nganggo rasukan coklat.', 'Desa Karangasem arep Mapag Sri.', 'Kapa beli sida, sira kudu ngupai weruh.'),
(14, 'Embah	: â€œYa srog jukutana. Lamon wis pragat, siragawea wedang kanggo kakang \r\nira. Lan baro nggawa jaburane.â€ \r\nSiti 		: â€œInggih, Embah. Punapa Embah ugi dipundamelaken unjukan ? Unjukan \r\nnipun punapa, Mbah ?â€\r\nPaomongan ngeasor sing beli padha karo teks ning dhuwur, yaiku â€¦\r\n', 'Siti dikongkon njkuti endhog', 'Siti dikongkon gawe wedang', 'Siti lagi gawe jabur', 'Siti dikongkon gawe jabur', 'Siti dikongkon njkuti endhog'),
(15, 'Unjukan punapa, Mbah ?\r\nUnjukan artine padha karo â€¦\r\n', 'Panganan', 'Inuman ', 'Nginum', 'Mujuk', 'Nginum'),
(16, 'Tembung kriya tandhuk ana ning ukara â€¦', 'Lampune wis teksuledi', 'Bocah kuh nangis bae ', 'Kasri turu bae', 'Umahe arep diedol', 'Kasri turu bae'),
(17, 'Kosia lulus reang arep kaulan tawur ning prapatan.\r\nTembung serapan sing basa Arab ning ukara mau yaiku â€¦\r\n', 'Lulus', 'tawur ', 'kaulan ', 'prapatan', 'kaulan '),
(18, 'Ukara sing langka tembung serapan sing basa Arabe yaiku â€¦', 'Jumlah muride ana sangang atus.', 'Sing mati iku jasade.', 'Sira mah kualat.', 'Amir lagi adus â€“ adusan.', 'Sira mah kualat.'),
(19, 'Berkasan datan purun\r\nBerkasan artine â€¦\r\n', 'Dhedhemit', 'jin', 'kuntilanak', 'jangjitan', 'jangjitan'),
(20, 'Bocah -bocah pada mangkat plesir.\r\nMangkat kepanjingan â€¦\r\n', 'Tembung kriya lingga ', 'Tembung kriya tanduk', 'tembung kriya tanggap', 'tembung kriya rangkep', 'Tembung kriya lingga ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id_User` int(11) NOT NULL,
  `User_Name` varchar(20) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `umur` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Asal_Daerah` varchar(50) DEFAULT NULL,
  `Asal_Sekolah` varchar(50) DEFAULT NULL,
  `Pendidikan` varchar(30) DEFAULT NULL,
  `status` enum('on','off') NOT NULL,
  `score` varchar(10) DEFAULT NULL,
  `score_lat_mudah` varchar(10) NOT NULL,
  `score_lat_sedang` varchar(10) NOT NULL,
  `score_lat_sulit` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id_User`, `User_Name`, `Password`, `umur`, `Email`, `Asal_Daerah`, `Asal_Sekolah`, `Pendidikan`, `status`, `score`, `score_lat_mudah`, `score_lat_sedang`, `score_lat_sulit`) VALUES
(50, 'yoshie pangestu', 'polindra', '18', 'yoshietamvan@hotmail.com', 'indramayu', 'SMAN 1 INDRAMAYU', 'SMA', 'on', '45', '100', '100', '10'),
(51, 'test', '123', '32', 'test@yaa.comm', 'iyya', 'ada', 'qweqdwqka', 'on', '5', '', '', ''),
(53, 'ari', '123', '14', 'test@hotmail.com', 'indramayu', 'sman 1 indramayu', 'sma', 'on', '4', '', '', ''),
(54, 'user', '123', 'unknown', 'unknown@yahoo.com', 'unknown', 'unknown', 'unknown', 'on', '20', '5', '', ''),
(55, 'Karina Fitrisari', 'password', '19', 'karinafs@gmail.com', 'Lemah mekar, indramayu', 'SMAN 1 Indramayu', 'S1', 'on', NULL, '', '', ''),
(61, 'widayanti', 'wida', '19', 'yantiwida761@gmail.com', 'lobener lor', 'smk negeri 1 indramayu', 'polindra', 'on', '25', '', '', ''),
(62, 'asdf', '12345', 'asdasfadf', 'rezkynurpratama933@gmail.com', 'asdasdasd', 'asdafafa', 'asdasfsdvs', 'on', NULL, '', '', ''),
(63, 'syahrul*', 'srsrsr', '16thn*', 'syahrul@yahoo.com', 'dsasdasd*', 'asdasddsa*', 'SMA*', 'on', NULL, '', '', ''),
(64, 'robet', '123', '21', 'ss@ddd.com', 'us', 'mit', 's1', 'on', '30', '', '', ''),
(65, 'alipah', '123', '19', 'alipah@gmail.com', 'cirebon', 'polindra', 'D4', 'on', NULL, '', '', ''),
(66, 'koriah', '1234', '19', 'koriah11ag@gmail.com', 'indramayu', 'polindra', 'd3', 'on', NULL, '35', '', ''),
(67, 'dianti anjasari', 'dianti', '18', 'diantianjasari18@gmail.com', 'desa plumbon', 'politeknik negeri indramayu', 'd3', 'on', '30', '', '', ''),
(68, 'iskendang', '1', '20', 'iis@gmail.com', 'solo', 'polindra', 'd3', 'on', '25', '', '', ''),
(69, 'septian hardiansyah', 'admin123', '18', 'septianhardiansyah27@gmail.com', 'indramayu', 'jatibarang', 'smk pgri jatibarang', 'on', '10', '', '', ''),
(70, 'suhaidah', '12345', 'dg', 'ida@com', 'bekasi', 'hjkasjkdk', '3q1ff', 'on', NULL, '', '', ''),
(71, 'dudi', '123', '12', 'dudi@com', 'telukagung', 'polindra', 'polindra', 'on', '30', '', '', ''),
(72, 'wahidin', '1234', '20', 'wahidinhidayat567@gmail.com', 'indramayu', 'cirebon', 'sma', 'on', NULL, '30', '', ''),
(73, '<b>Kikis Maulana</b>', 'asd', '91', 'Kikis@asas', 'Bojongsari', 'Gatsu', 'Kuliah', 'on', NULL, '', '', ''),
(74, 'Karina fitri sari', 'polindra', '19', 'karinfs@hotmail.com', 'lemah mekar, indramayu', 'SMAN 1 Indramayu', 'SMA', 'on', '35', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_Admin`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `list_pertanyaan`
--
ALTER TABLE `list_pertanyaan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`Id_materi`);

--
-- Indexes for table `materi_sedang`
--
ALTER TABLE `materi_sedang`
  ADD PRIMARY KEY (`Id_materi`);

--
-- Indexes for table `materi_sulit`
--
ALTER TABLE `materi_sulit`
  ADD PRIMARY KEY (`Id_materi`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`Id_pelajaran`);

--
-- Indexes for table `soal_mudah`
--
ALTER TABLE `soal_mudah`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `soal_sedang`
--
ALTER TABLE `soal_sedang`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `soal_sulit`
--
ALTER TABLE `soal_sulit`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `t_soal`
--
ALTER TABLE `t_soal`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `list_pertanyaan`
--
ALTER TABLE `list_pertanyaan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
