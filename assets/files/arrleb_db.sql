-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: db744827846.db.1and1.com
-- Generation Time: Mar 06, 2019 at 10:07 PM
-- Server version: 5.5.60-0+deb7u1-log
-- PHP Version: 7.0.33-0+deb9u2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db744827846`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id_sessions` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `session_id` varchar(128) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(42) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `logged` tinyint(4) NOT NULL DEFAULT '0',
  `date_logged_in` int(11) NOT NULL DEFAULT '0',
  `date_logged_out` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_sessions`),
  KEY `id_user` (`id_user`),
  KEY `id_user_2` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id_sessions`, `id_user`, `session_id`, `ip_address`, `logged`, `date_logged_in`, `date_logged_out`) VALUES
(9, 4, 'nohod8v7dg34uma15r319e4ngqlds6t3', '::1', 0, 1538541046, 0),
(10, 4, 'nohod8v7dg34uma15r319e4ngqlds6t3', '::1', 0, 1538541113, 0),
(11, 4, 'nohod8v7dg34uma15r319e4ngqlds6t3', '::1', 0, 1538541180, 0),
(12, 4, '0ev6ptnq2i5g9aue3aktknh86f0piemm', '::1', 0, 1538541275, 0),
(13, 4, '0ev6ptnq2i5g9aue3aktknh86f0piemm', '::1', 0, 1538541565, 0),
(14, 4, 'hdcm6talej9su2b2cbmvldko8ch89rv2', '::1', 0, 1538541611, 0),
(15, 1, 'hdcm6talej9su2b2cbmvldko8ch89rv2', '::1', 0, 1538541846, 0),
(16, 1, 'hdcm6talej9su2b2cbmvldko8ch89rv2', '::1', 0, 1538541893, 0),
(17, 1, '94157q3od1j4a3570qcnj104an51jp42', '::1', 0, 1538542099, 0),
(18, 1, '5cq9s5iqo3clii19t4rk584bhen12u12', '::1', 0, 1538542707, 0),
(19, 1, '5cq9s5iqo3clii19t4rk584bhen12u12', '::1', 0, 1538542736, 0),
(20, 1, '5cq9s5iqo3clii19t4rk584bhen12u12', '::1', 0, 1538542811, 1538543660),
(21, 1, 'sgn4q4tduf5v7qtc2rch8e0t52s6v22k', '::1', 0, 1538543708, 1538543710),
(22, 1, 'k6mbu8ut25ihqbdlch1srrd1r2dpi9rm', '::1', 0, 1538543921, 0),
(23, 1, 'k6mbu8ut25ihqbdlch1srrd1r2dpi9rm', '::1', 0, 1538543956, 0),
(24, 1, 'k6mbu8ut25ihqbdlch1srrd1r2dpi9rm', '::1', 0, 1538543975, 0),
(25, 1, 'k6mbu8ut25ihqbdlch1srrd1r2dpi9rm', '::1', 0, 1538544034, 0),
(26, 1, 'k6mbu8ut25ihqbdlch1srrd1r2dpi9rm', '::1', 0, 1538544051, 1538544246),
(27, 1, 'p85orpj712rira6k4toi7acceltkib9f', '::1', 0, 1538544277, 1538544299),
(28, 1, 'i4m3kc8le755u76qi3askooqc8nk4j8c', '::1', 0, 1538547720, 1538547734),
(29, 1, 'ks989l6f9j9r8t5chl7eefe29vt79mcl', '::1', 0, 1538593618, 1538593669),
(30, 1, 'ghlan112bj0nm4ee4ljur2rmm682tdts', '::1', 0, 1538595518, 0),
(31, 1, 'ghlan112bj0nm4ee4ljur2rmm682tdts', '::1', 0, 1538595628, 1538595637),
(32, 1, 'is1jpv6bp3n9melmbt0rsns015rtemvq', '::1', 0, 1538595719, 1538595725),
(33, 1, '73j9v6uanlc4aj4lddjm2d6q5rai6h84', '::1', 0, 1538595744, 1538595748),
(34, 1, 'vjt34b81nlr0sfimrmgmop53gik5ghj6', '::1', 0, 1538595874, 1538595886),
(35, 1, 'cbal55da5oo6hj9fpqbug8hoc4834bev', '::1', 0, 1538596077, 1538596082),
(36, 1, '0k0lr1c3du8ov6odscq0tcal49l9l79n', '::1', 0, 1538596730, 1538596751),
(37, 1, 'go003r23tatl5v1r8u5gvop8k5qd6ogn', '::1', 0, 1538605957, 1538606529),
(38, 1, 'kthc4o85d6u0bn6e3h6av47tfdpbcpr4', '::1', 0, 1538606544, 1538609753),
(39, 1, 'kfvt34hb44eqboit25l4l1elt0ibltq5', '::1', 0, 1538609761, 1538609873),
(40, 1, '24qsrfkk4vg54ar9fov34k90tgui0blo', '::1', 0, 1538609884, 1538610435),
(41, 1, 'puc8thauoetqeo40cnhe637bgbebr1fd', '::1', 0, 1538610530, 1538610550),
(42, 1, 'cejp30otanhgsgirgbk7saamo7rmlhac', '::1', 0, 1538611122, 1538611211),
(43, 1, 'o73j339bvvj8994ebh4g1rdbifg05do6', '::1', 0, 1538631085, 1538631110),
(44, 1, 'b2964pbm828ca45i4sch1948lbhjurp3', '::1', 0, 1538631174, 1538631196),
(45, 1, 'aakp866pk1j5l171eni5837t8qhjoe1q', '::1', 0, 1538631236, 1538631760),
(46, 1, '518deo77nm7h90mia65ahvd75j5qkq21', '::1', 0, 1538632314, 1538632320),
(47, 1, 'eqg6f5fodmahqacktuubmdvtlvt98pfa', '::1', 0, 1538632643, 1538632768),
(48, 1, 'npdfhs4ni53fij68q6fbp4mg6pstv4mh', '::1', 0, 1538687250, 1538687293),
(49, 1, 'vrchgdvq6u67av57qk30823kn1fr1aan', '::1', 0, 1538687322, 1538692462),
(50, 1, 'd6chsqvq1c9l7l1ek9heqv3kkr37u0rr', '::1', 0, 1538692637, 1538692802),
(51, 1, 'aa6m98a4e69taei5o7vf6e1ph4clu47d', '::1', 0, 1538692817, 1538692840),
(52, 5, 'ib3l7hamrimbab3q5vq8l9cmctqd5n60', '::1', 0, 1538693117, 1538693337),
(53, 5, '6tfukfk3au1gbp2oo873ogotgtp7d983', '::1', 0, 1538693352, 1538693362),
(54, 5, 'ko03emi04ihosvvi02137dm79rcvglh8', '::1', 0, 1538693426, 0),
(55, 5, 'cnha263jl7kucpd8k1rigeq3qn106aes', '::1', 0, 1538693806, 0),
(56, 5, 'cnha263jl7kucpd8k1rigeq3qn106aes', '::1', 0, 1538693866, 0),
(57, 5, 'cnha263jl7kucpd8k1rigeq3qn106aes', '::1', 0, 1538693920, 0),
(58, 5, 'cnha263jl7kucpd8k1rigeq3qn106aes', '::1', 0, 1538694037, 0),
(59, 5, 'cnha263jl7kucpd8k1rigeq3qn106aes', '::1', 0, 1538694093, 0),
(60, 5, 'h890rgbpq81nice0v751tq6qq5p8ej28', '::1', 0, 1538694173, 0),
(61, 5, 'h890rgbpq81nice0v751tq6qq5p8ej28', '::1', 0, 1538694186, 0),
(62, 5, 'h890rgbpq81nice0v751tq6qq5p8ej28', '::1', 0, 1538694220, 0),
(63, 5, 'h890rgbpq81nice0v751tq6qq5p8ej28', '::1', 0, 1538694239, 0),
(64, 5, 'h890rgbpq81nice0v751tq6qq5p8ej28', '::1', 0, 1538694261, 0),
(65, 5, 'h890rgbpq81nice0v751tq6qq5p8ej28', '::1', 0, 1538694274, 0),
(66, 5, 'h58ebju54g195jfe6o7ca5saaon6gft5', '::1', 0, 1538694521, 0),
(67, 5, 'h58ebju54g195jfe6o7ca5saaon6gft5', '::1', 0, 1538694538, 0),
(68, 5, 'h58ebju54g195jfe6o7ca5saaon6gft5', '::1', 0, 1538694559, 1538694592),
(69, 5, 'ihnuqasl6pk4bmkoqj56oluvuojdne1q', '::1', 0, 1538694603, 0),
(70, 5, 'ihnuqasl6pk4bmkoqj56oluvuojdne1q', '::1', 0, 1538694629, 0),
(71, 5, 'ihnuqasl6pk4bmkoqj56oluvuojdne1q', '::1', 0, 1538694763, 0),
(72, 5, 'ihnuqasl6pk4bmkoqj56oluvuojdne1q', '::1', 0, 1538694782, 0),
(73, 5, 'ihnuqasl6pk4bmkoqj56oluvuojdne1q', '::1', 0, 1538694819, 0),
(74, 5, 'ihnuqasl6pk4bmkoqj56oluvuojdne1q', '::1', 0, 1538694840, 1538696995),
(75, 5, 'vfvtr0u35bb3v8f4n3mn4rpoin7a2ula', '::1', 0, 1538697009, 1538703571),
(76, 1, '1f2jm3hh0il41t7oks63rc2onqbte2gh', '::1', 0, 1538703643, 0),
(77, 1, 'j2q451kt6ksd1o0fp02i0m355veovqq8', '::1', 0, 1538714596, 0),
(78, 1, '2c70q4jcjtljank123snhaoggrb1enda', '::1', 0, 1538716894, 0),
(79, 1, '2i2uooiplv7heu1vk80vqmjh6je3lvhh', '::1', 0, 1538716960, 1538720161),
(80, 1, 'cbjo4bpe0gmbeh9amdtvueqs5fgifcrt', '::1', 0, 1538768436, 0),
(81, 1, 'eaa9d37c7693fcc2a8e4cd9c89b518b324fbb755', '76.14.106.9', 0, 1538773317, 1538775403),
(82, 1, 'cda91bbeb537c646e0596210b0e515356bb0e513', '76.14.106.9', 0, 1538780751, 1538780945),
(83, 1, 'c82153ed34cd468db8c58be3e9efe95bcf583a16', '76.14.106.9', 0, 1538781208, 1538781244),
(84, 1, '85edf01870a8f6d4499cf19eaaab5d38e25b244c', '76.14.106.9', 0, 1538781255, 1538781313),
(85, 1, '39a2389706745ede7b2ebd50c5535892211f6aa1', '76.14.106.9', 0, 1538804806, 0),
(86, 1, '25be90ce39857a1bdc51f03d7382c63288f79bd1', '76.14.106.9', 0, 1539024304, 1539024323),
(87, 1, '28bb75116ddb38a35201c208585094d3b5a08ac8', '76.14.106.9', 0, 1539025639, 1539027131),
(88, 1, '0bb5cc2f016d3e82a6e3f66a8577fe5f5c47a4a0', '76.14.106.9', 0, 1539054518, 1539054587),
(89, 1, '60e1ddbb178396402799ca8271e4a89c18166218', '172.56.39.34', 0, 1539137728, 1539137741),
(90, 1, '1143ff5fac030422a27f9441738252403e578177', '76.14.106.9', 0, 1539469395, 1539469437),
(91, 1, 'b2e1adc1804d13a464939fa46b5daa6de3300c02', '76.14.106.9', 0, 1539735281, 1539735361),
(92, 1, 'f36977708d5399728dc38d74e69cc57048a89651', '76.14.106.9', 0, 1539759390, 1539759481),
(93, 1, '753f757f76a38b2c0c1e9becfa23b9d41fec7aed', '76.14.106.9', 0, 1539840647, 1539840661),
(94, 5, 'd84069c14cd957c502cdc4ae3735548f74bbdfc8', '76.14.106.9', 0, 1539840669, 0),
(95, 5, '9ed7736256d203347e191b5d87c1cc2fb3b5477f', '76.14.106.9', 0, 1539841078, 1539843531),
(96, 5, '4c65c9ad45d3e2bf6ddac82c9f75e285329b008e', '76.14.106.9', 0, 1539844312, 1539844314),
(97, 1, '10d346c8caa44df61abc190f117bb8178ee05ad7', '76.14.106.9', 0, 1539844320, 1539844700),
(98, 1, 'e6b6246a9abc22f1c93b33410fd253c4b6534fea', '76.14.106.9', 0, 1539847257, 1539847594),
(99, 1, 'f328359ac5c07e72ee6f8b7a38b051026948f033', '172.56.39.218', 0, 1539966130, 1539972435),
(100, 1, '4b3061e7284e14e9159893aa28f6d65ff0f638ef', '172.56.39.218', 0, 1539972446, 0),
(101, 1, 'ccafdf6a5b946c054f7040b70f68262c6e7643d2', '76.14.106.9', 0, 1540101704, 1540101770),
(102, 1, '92a583bebacb00a602206353d5601d863316cf72', '172.58.35.78', 0, 1540144160, 1540144172),
(103, 1, '28af85aaddcb13e2c4c231b20712317ecbce12c9', '76.14.106.9', 0, 1540589880, 0),
(104, 1, '2dce308102b1a53007993c0a61539785be910382', '76.14.106.9', 0, 1540785764, 1540786770),
(105, 1, 'e4be5bbe9ccf41ca51e6590f9025daab7bc91650', '76.14.106.9', 0, 1540859477, 1540859549),
(106, 1, '09c91cdabf4282f6053d991079e96302376951bf', '76.14.106.9', 0, 1541009427, 1541009576),
(107, 1, 'b96005be787ecf819e15e3833844ef35920f0c54', '76.14.106.9', 0, 1541009996, 1541010207),
(108, 1, 'e07b1c7f211099b40d4abe0d827b713a2d7be6dd', '76.14.106.9', 0, 1541010439, 1541010481),
(109, 4, 'a4d07bfa406ac33af86ed9b1ff69ddcc1ce32bda', '76.14.106.9', 0, 1541010614, 1541010676),
(110, 9, 'b3cf2230cd1e2112a576a16173937d4024966f41', '76.14.106.9', 0, 1541010744, 1541010770),
(111, 9, '7fdff6b68efb31330bff7f16b4b97f81386562c2', '76.14.106.9', 0, 1541011216, 1541011219),
(112, 9, 'e35cecb29fc02376a11cbac54805322df1b37378', '76.14.106.9', 0, 1541011663, 1541011665),
(113, 9, '96aa644aecfa1fd3ba0a54b7d9d079c62d2bb481', '76.14.106.9', 0, 1541011778, 1541011783),
(114, 9, '70dc6e70589ec1abd4f5f919c2b33c558834c097', '76.14.106.9', 0, 1541011903, 1541011906),
(115, 9, 'f7a94b5d4489bc29b926b33199cbfb61f9a6201c', '76.14.106.9', 0, 1541012030, 1541012033),
(116, 1, 'e3e2ec85095057e6d402b45ae62fd956aebafc91', '76.14.106.9', 0, 1541012503, 1541012536),
(117, 4, 'c2e8e7c679f67802ce0f8aeb03ad21303b07cc44', '76.14.106.9', 0, 1541012581, 1541012986),
(118, 4, '27afb5b97dfdd3b242f84a97c9fd1bf247972a71', '76.14.106.9', 0, 1541013071, 1541013079),
(119, 9, '44f0aea3e5b5b82ed9ae317adb69172420375721', '76.14.106.9', 0, 1541013464, 1541013472),
(120, 5, '495d028e16c4981c18cf003bc51e7e75f515f545', '76.14.106.9', 0, 1541047462, 1541047624),
(121, 5, 'cc7a20b0a56d9ddeea64f7f64f3a68f6549eeb43', '76.14.106.9', 0, 1541047633, 1541047680),
(122, 1, 'e276ec984d0a89037287589695a545477db4e498', '76.14.106.9', 0, 1541047694, 1541047722),
(123, 1, 'e5243976f1c6f2935842e2be79b47a1807bd5964', '76.14.106.9', 0, 1541047729, 1541047741),
(124, 9, '8bd6807bb91837b110790822f7e0aa6085e48006', '76.14.106.9', 0, 1541047758, 1541047796),
(125, 1, 'f3359b447b2d85adaf47bc877c1ef353f13f78dc', '76.14.106.9', 0, 1541048756, 1541048783),
(126, 1, 'd421823c7a65767e99f065f3eafdebb7b813234e', '76.14.106.9', 0, 1541134542, 1541134665),
(127, 1, '2bc76e77e59c772dde85d6b23da98a75cab6803d', '76.14.106.9', 0, 1542432070, 0),
(128, 1, '2bc76e77e59c772dde85d6b23da98a75cab6803d', '76.14.106.9', 0, 1542432096, 1542432898),
(129, 1, 'e70b1dd544f4c6a3c33560456b4cca28c5a08652', '76.14.106.9', 0, 1542483467, 1542486504),
(130, 1, '4da09552c21b447d51b3f1ea406b07d70ccae47f', '76.14.106.9', 0, 1542501603, 1542504359),
(131, 1, 'be02d2c8284673266f0a429a5c89a610b1438d46', '76.14.106.9', 0, 1542507392, 1542507446),
(132, 1, '468bde16dca4847a76ec8d82ea182a17d586a25b', '76.14.106.9', 0, 1542507525, 1542507548),
(133, 1, 'a7fc5175f478d36690d2cd4380a491063a8bad94', '76.14.106.9', 0, 1542508433, 1542508447),
(134, 1, 'c7783132c2aa0d3987fd669f624cab3ec5bfdf92', '76.14.106.9', 0, 1542522475, 1542522853),
(135, 1, '1fee743251c1697f3813b2bf8f72aa31b79b4a1c', '76.14.106.9', 0, 1542523912, 1542523952),
(136, 1, '5d4fcf8d7f587c4485465283a1f070f1516112c5', '76.14.106.9', 0, 1542676811, 1542680965),
(137, 1, 'b522e49adb18d228c74ea1a10bfd71aca330031b', '76.14.106.9', 0, 1542681372, 1542681445),
(138, 1, 'd7ade5ea86eb1464226692f50df7a0aa9f067f17', '76.14.106.9', 0, 1542681463, 1542681470),
(139, 1, '7ba7cc1513fdf411259b58c6332dc25e90f46552', '76.14.106.9', 0, 1542681474, 1542681736),
(140, 1, '1353188c79fdb939a9a04ca6abaea9126f4f0f22', '76.14.106.9', 0, 1542682646, 1542683222),
(141, 1, 'a1aefb539d68166db65ec81d0c47f2a9cb249614', '76.14.106.9', 0, 1542683493, 0),
(142, 11, '0a0cad3dfb30354d01dfb70707e6d1027c448c53', '69.42.17.26', 1, 1542741506, 0),
(143, 1, '950d642ae872bbc206874af88d672aa9530cef83', '76.14.106.9', 0, 1542777125, 0),
(144, 1, '950d642ae872bbc206874af88d672aa9530cef83', '76.14.106.9', 0, 1542777278, 1542781699),
(145, 1, 'c65adb55e1918eb5d69c3c8292543507fd5ffcb4', '76.14.106.9', 0, 1542829332, 0),
(146, 1, '2ac44b8ce16568c3cd8daa93b071ef549f1f0761', '76.14.106.9', 0, 1543113925, 0),
(147, 1, 'cd615d500d999deda837912896f8166dc25c56cb', '76.14.106.9', 0, 1543121489, 1543125180),
(148, 1, 'dcf71249a09eebe28e15bb2fda8ab569cde10e84', '76.14.106.9', 0, 1543126335, 1543127289),
(149, 1, 'a0ab02043b67dee9430848cff32d01bd4b3346a2', '76.14.106.9', 0, 1543454857, 0),
(150, 1, 'a0ab02043b67dee9430848cff32d01bd4b3346a2', '76.14.106.9', 0, 1543454913, 1543454949),
(151, 12, '0487c33e6d02228edc6eb93fd64d8fd23db36b37', '76.14.106.9', 0, 1543454961, 1543455673),
(152, 1, 'e1ce9b1073829f927b976b65325f5fd0959a339b', '76.14.106.9', 0, 1543506441, 1543506729),
(153, 1, 'f83a645d236443e4dc81a72d5805fc4389688e71', '76.14.106.9', 0, 1543506845, 0),
(154, 1, '17435afcd95730b7b54227696b858260ef6a0dc1', '76.14.106.9', 0, 1543729444, 1543729467),
(155, 1, '0b6892118be44a75722fec291ec0539321a7cdc3', '76.14.106.9', 0, 1543987322, 1543987365),
(156, 1, '18e62a0c5990d2496ddc3ff34411b6e7320d2b41', '76.14.106.9', 0, 1544033955, 1544034111),
(157, 1, 'f738957447a5b93cb47c6651662526a3abde27a5', '76.14.106.9', 0, 1544400994, 0),
(158, 1, '6c3467a1eb69541a341488b21afc394dfb2a92ed', '76.14.106.9', 0, 1544423208, 1544424101),
(159, 1, 'bf689e761c0806053b56b6db5d8a7b27fbafb460', '76.14.106.9', 0, 1544424908, 1544425184),
(160, 1, '5a22434c94eca2f552345ebe437cd4bcf153cd32', '76.14.106.9', 0, 1544425192, 0),
(161, 14, '54a9bdd40491ea4c7acb443be20d31ea6f172f3f', '2605:e000:100d:4674:3dcc:df0e:d17d:7611', 0, 1544467050, 0),
(162, 14, '54a9bdd40491ea4c7acb443be20d31ea6f172f3f', '2605:e000:100d:4674:3dcc:df0e:d17d:7611', 0, 1544467253, 0),
(163, 1, 'd3545e8d6b3a7fd4352c1a213125bf464a3e92c9', '76.14.106.9', 0, 1544505928, 1544510268),
(164, 1, '629716cc4a369fef60ab06fedf9bee04ebb8a123', '76.14.106.9', 0, 1544510285, 1544515133),
(165, 1, 'c4ab93253223be59780a98f3a14e60e32997960f', '76.14.106.9', 0, 1544515294, 1544515438),
(166, 1, '02dadaa75d8845a060148b6509d74a63c7878748', '76.14.106.9', 0, 1544762945, 1544765731),
(167, 1, '966c6f858f64e50a8b76657d4d62c60cde3533a6', '76.14.106.9', 0, 1544906620, 0),
(168, 1, '8c7b12648aa1db758e18fc31a440106f347ece9d', '76.14.106.9', 0, 1545281602, 0),
(169, 1, '3090da153586d8ee05a9b6f274de25623f0076e3', '76.14.106.9', 0, 1545351907, 1545351929),
(170, 1, 'eea6667999667365a5297a08d86bd2bcf1154f29', '76.14.106.9', 0, 1545535453, 0),
(171, 1, '05038651dc732a3de7166f2d58a999299e8d6a68', '76.14.106.9', 0, 1546202101, 0),
(172, 1, '1c928c0b8df071c1e1b7303ed9ab53cc2040202d', '76.14.106.9', 0, 1546210227, 1546210252),
(173, 1, 'ee66a32c536c4b510cd71dab4bf47ee3dfc4cabe', '76.14.106.9', 0, 1546645045, 0),
(174, 1, '3027d698921ce4116f095fac946a2956d9161652', '76.14.106.9', 0, 1546737125, 1546739362),
(175, 1, 'ace18e662e7b0baccaca825aea6c16eb4d9d30d3', '76.14.106.9', 0, 1546750056, 0),
(176, 1, '6b57f331151f4d7a357096236d556c0c17d004d7', '76.14.106.9', 0, 1546750623, 0),
(177, 1, '618b3ef2ee2ee52760fb63620d40fbaac3db24cd', '76.14.106.9', 0, 1547495364, 1547496468),
(178, 1, '3cc13e80d7d84f1dee7358681b10dc7797b9b716', '76.14.106.9', 0, 1547496504, 1547499534),
(179, 1, 'ff22fe96834681c6d15e23b90c427d2bca730400', '76.14.106.9', 0, 1547776259, 0),
(180, 1, 'daa075fc4faba197d1a7cb490d26cf20205ca08c', '76.14.106.9', 0, 1548194813, 1548195190),
(181, 1, '4f4670920b32ea64f4255e58bcaa45d352f08395', '76.14.106.9', 0, 1548195193, 1548195350),
(182, 1, '0c73f5f378122f415569ad2ab828d16a51ffed2f', '76.14.106.9', 0, 1548195354, 1548196847),
(183, 1, '16c9caf503d666e0e172d0189e483f7ed679054d', '76.14.106.9', 0, 1548198312, 1548199504),
(184, 1, '8b100d035fa541685b6198fd737bcf2dcf602ec3', '76.14.106.9', 0, 1548202293, 1548207249),
(185, 1, '8d310b6324dd4411ac1e2117b3866d764960cdf8', '76.14.106.9', 0, 1549602626, 0),
(186, 1, '95bedd1bdcc495fee80edbba39b80d9d119141f6', '76.14.106.9', 0, 1549775330, 1549775766),
(187, 1, '6e585fc1af58982f1fce33a06d8167ae14b1f4c2', '76.14.106.9', 0, 1549924377, 1549924679),
(188, 1, 'f1d05e452203b1e140a2bf663f22e7f5091ccfe8', '76.14.106.9', 0, 1550195574, 1550195721),
(189, 1, 'a7c42945c9f8b9341b5320bfdcde095f84790cf2', '76.14.106.9', 0, 1550196086, 1550196088),
(190, 1, '328f3bb3299945145e91da1816f1c332c1f6d4ca', '76.14.106.9', 0, 1550196213, 1550196222),
(191, 1, '551be3a336882aa979b3688b53b571f2ab71205c', '76.14.106.9', 0, 1550198853, 1550198864),
(192, 33, 'fe54c0e4c16d3fa8fea913b2be8ab73eb46305b2', '76.14.106.9', 0, 1550198926, 0),
(193, 33, 'fe54c0e4c16d3fa8fea913b2be8ab73eb46305b2', '76.14.106.9', 0, 1550199005, 0),
(194, 33, 'fe54c0e4c16d3fa8fea913b2be8ab73eb46305b2', '76.14.106.9', 0, 1550199028, 1550199082),
(195, 1, 'a1c432dd41ae5c5afdc34cf9a498c4fce37d0341', '76.14.106.9', 0, 1550199086, 1550199089),
(196, 33, 'b01d3739e1d5f6e3d74c9400a0218444e50c8079', '76.14.106.9', 0, 1550199104, 1550199207),
(197, 33, '6cdb99777eb59f9d10c44f17640fc4da47187826', '76.14.106.9', 0, 1550199252, 1550199280),
(198, 1, '0c689c885497a4ee7358ed11815079a5ad926e7a', '76.14.106.9', 0, 1550199283, 1550199296),
(199, 33, 'fb28a4eba896ea47c3dde7f3897228bbfe00504c', '76.14.106.9', 0, 1550199306, 1550199365),
(200, 33, '07882bee10f9e573377e7124585ab1da3feea96f', '76.14.106.9', 0, 1550199375, 1550199663),
(201, 1, 'f4fc806ec667103cd6528553b2339e303061bb8f', '76.14.106.9', 0, 1550199667, 1550199672),
(202, 33, 'a2a65584e7b9886d2ca25b0be62ebb1cd934d6f0', '76.14.106.9', 0, 1550199684, 0),
(203, 33, 'a2a65584e7b9886d2ca25b0be62ebb1cd934d6f0', '76.14.106.9', 0, 1550199900, 1550199911),
(204, 1, '4314eeab81908d8adf4d770012e36bf0bfde6bb2', '76.14.106.9', 0, 1550199918, 1550199926),
(205, 33, '18a50d2f23f24e25c8c2878e01eaca07a7d7bf7d', '76.14.106.9', 0, 1550200258, 1550200326),
(206, 33, '2e08c25e7956eb13df4fd41967345bf7fe4bccb3', '76.14.106.9', 0, 1550200336, 1550200380),
(207, 1, '7f617f19207f2caac668754096042e1bae03c65f', '76.14.106.9', 0, 1550200383, 1550200394),
(208, 33, '7d91c51a21b783a8b3820ee7245001382f8afbb1', '76.14.106.9', 0, 1550200410, 1550200446),
(209, 33, '19adbd36135716075efed506afec64ebc343f1c2', '76.14.106.9', 0, 1550200458, 1550200498),
(210, 33, '50c3627f1d4309f66904d57ecee2a33d6be41a5e', '76.14.106.9', 0, 1550200507, 1550200677),
(211, 33, '3a14dc99d0508feb260fae4c3b7eb93671128475', '76.14.106.9', 0, 1550200686, 1550200973),
(212, 1, 'd8cd949a725fd60549081c062cf532fc3ae8f3a5', '76.14.106.9', 0, 1550201086, 1550201088),
(213, 33, '39b2293f52a2262da157ab3d42a715ed1e165332', '76.14.106.9', 0, 1550201112, 1550201181),
(214, 1, 'fe4477c43eeeef15e0e2c69383408ed8915dde50', '76.14.106.9', 0, 1550201186, 1550201458),
(215, 1, 'f6479f09b8a5c702a15f2997333c80a5709c63be', '76.14.106.9', 0, 1550201462, 1550201599),
(216, 1, 'd57d3c382c41605c2e59910e23d3a00245359e9f', '76.14.106.9', 0, 1550202021, 1550202033),
(217, 34, '4b78c98fa47e571167d6f45db303a04a93ddf479', '76.14.106.9', 0, 1550202077, 1550202118),
(218, 33, '338277e67348d34d60cfd57c528cebb091f6de48', '76.14.106.9', 0, 1550202128, 1550202142),
(219, 34, '4a404f1cddd1c3f3c67fc7f6ce1dcdc7aa47af60', '76.14.106.9', 0, 1550202204, 1550202253),
(220, 34, 'b84174cd045408628c38207505203b7fe1ec6f73', '76.14.106.9', 0, 1550202263, 1550202341),
(221, 33, '3f2a5abddfaea91e31b12e1c88e2c0ca23df2e8e', '76.14.106.9', 0, 1550214695, 1550214901),
(222, 34, 'b090e487c0fce0deeac4ce2eeaf8b5cdc739f7f2', '76.14.106.9', 0, 1550214927, 1550214974),
(223, 34, '7eb6c24ebbaf80bea17c2aa8557e930b8b469275', '76.14.106.9', 0, 1550215009, 1550215089),
(224, 33, '009751a7080f216bde86ed0431225faf52ae47d7', '76.14.106.9', 0, 1550215181, 1550216261),
(225, 12, '5084ca283512b22f378703e9e1d1306ffa7a263e', '76.14.106.9', 0, 1550216356, 1550216518),
(226, 34, '3d7a242f6360aeddcf95e0349ca46847fed81f86', '76.14.106.9', 0, 1550216536, 1550216677),
(227, 33, '4936639f51534ecb1e1ccbfe6e78454a71c42b75', '76.14.106.9', 0, 1550216693, 1550216833),
(228, 1, '9a5116822ad6813c1c3bd0478a7c442b7cde3ae7', '76.14.106.9', 0, 1550286137, 1550286515),
(229, 1, 'fd7cc2052f78c04ba611a987e4efa3ae8625a486', '76.14.106.9', 0, 1550730484, 1550730526),
(230, 1, 'dc03067255e6b4a71ed4d3cceaa4bc09db2ea92b', '76.14.106.9', 0, 1550731487, 1550731544),
(231, 14, '64ec6bb88e5e0a44dcd41b9a14cac1c87ca07406', '76.14.106.9', 0, 1550731612, 1550731807),
(232, 1, 'a237cb34448e85753bead59dd1289d799f1774db', '76.14.106.9', 0, 1550731844, 1550731868),
(233, 14, '6f7af015d7b63576b2f13b3cf419dbf6f17a9944', '76.14.106.9', 1, 1550731892, 0),
(234, 1, 'd9a4efd59f63c8bc5f67e20a7b6bff3792c2bf85', '76.14.106.9', 0, 1550820258, 1550820331),
(235, 1, '56857211f9d5641b021d13cd30a891566fbbe73d', '76.14.106.9', 0, 1551165921, 1551166266),
(236, 35, '15610a0e81c195dbaa80661a904f1f9bc69d5682', '76.14.106.9', 0, 1551166558, 1551166670),
(237, 1, '6f97270a67256cb8942d045227facd61a6bf8af6', '76.14.106.9', 0, 1551577884, 1551577912),
(238, 1, 'f6073bd7d9c011ef211a43dc020c000839191d9a', '76.14.106.9', 0, 1551901978, 1551903376);

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

DROP TABLE IF EXISTS `clubs`;
CREATE TABLE IF NOT EXISTS `clubs` (
  `id_clubs` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(28) COLLATE utf8_bin NOT NULL,
  `long_name` varchar(128) COLLATE utf8_bin NOT NULL,
  `link` varchar(128) COLLATE utf8_bin NOT NULL,
  `narrative` text COLLATE utf8_bin NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_clubs`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id_clubs`, `name`, `long_name`, `link`, `narrative`, `active`) VALUES
(1, 'ACSCT', 'Alameda County Sheriff’s Communications Team', 'https://www.alamedacountysheriff.org/cws_communications.php', '', 1),
(2, 'BARC', 'Benicia Amateur Radio Club', 'http://beniciaarc.com/wp/', 'partners with the Benicia Fire Department and the Solano County Sheriff’s Office.', 1),
(3, 'CCCC', 'Contra Costa Communications Club', '', 'Located at Denny’s the corner of San Pablo Ave and Potrero Ave (11344 San Pablo Ave) El Cerrito, CA. For membership information, email Barbara, KD6OKJ at robar19@napanet.net', 1),
(4, 'DARC', 'Delta Amateur Radio Club', 'http://www.darc.club/', 'meets at 1900 hours local on the last Thursday of each month. The location is Croskey Real Estate, 745 Railroad Ave., Pittsburg CA 94565.', 1),
(5, 'EBARC', 'East Bay Amateur Radio Club', '', 'meetings held on the 2nd Friday of the month at 1930 hours at the Community Room of the El Sobrante Library, 4191 Appian Way, El Sobrante, CA', 1),
(6, 'FCV', 'Fremont Communications Volunteers', 'http://www.fremontares.org/', 'meets on the third Thursday of each month, except December, at 1930 hours in the Administrative Training Room at the City of Fremont Fire Administration Building B, 3300 Capitol, Fremont, CA', 1),
(7, 'HRC', 'Hayward Radio Club', 'http://www.qsl.net/k6eag/index2.html', 'meets on the 3rd Friday of every month, 1930 hours local, at 1401 West Winton Ave, Hayward, CA, behind Hayward Fire Station #6', 1),
(8, 'KARO-ECHO', 'Kensington Amateur Radio Operators & El Cerrito Ham Operator', 'https://www.karoecho.net/', 'organization serving the El Cerrito and Kensington Community ', 1),
(9, 'LARIG', 'Lamorinda Amateur Radio Interest Group', 'https://www.facebook.com/K6ORI/', 'meets on the air Wednesdays at 1930 hours local, on 147.540 FM simplex, and in person 3rd Wednesday, 1900 hours, Sarge Littlehale Room, Orinda City building. LARIG holds a no-host coffee meeting at 0930 at Caffe Teatro, Orinda (downstairs from the library) on Tuesdays. ', 1),
(10, 'LARK', 'Livermore Amateur Radio Klub', 'http://www.livermoreark.org/', 'club meetings are normally held on the 3rd Saturday of the month at 0930 hours local at the Livermore City Council Chambers 3575 Pacific Ave, Livermore, CA', 1),
(11, 'MARC', 'Martinez Amateur Radio Club', 'http://www.mdarc.org/', 'meets on the second Saturday of the month, 0900-1100, at 604 Ferry St., Martinez, CA', 1),
(12, 'MDARC', 'Mt Diablo Amateur Radio Club', 'http://mdarc.org', 'meetings are held on the 3rd Friday of the month at 1930 hours local at Our Savior’s Lutheran Church 1035 Carol Lane Lafayette, CA (<a href=\"https://goo.gl/maps/hUZvWRrSYXC2\" target=\"_blank\">map</a>). License testing sessions are held before each month’s meeting at 1800 hours local', 1),
(13, 'NCV', 'Newark Communication Volunteers', '', 'meets the 2nd Thursday of the month, 1900-2000 local time, at Fire Station #1, Thornton and Ash, Newark, CA', 1),
(14, 'NALCO', 'Northern Alameda County', 'http://nalco-ares-races.org/', 'ARES/RACES meetings are the first Thursday of each month, 1930 local time, at Berkeley’s Training Center / Alternate Emergency Operations Center just west of Berkeley Fire Department’s Station #6, Cedar Street between 8th and 9th (enter on Cedar Street) \r\nFor NALCO web page', 1),
(15, 'NBARA', 'North Bay Amateur Radio Association', 'http://www.nbara.org/', 'meetings take place monthly on the fourth Monday of the month at 1900 hours (this varies during November and December). The meeting place is located at ACCERT Training Center, 225 James RD. American Canyon. Use the repeater on 145.310 PL 88.5 for directions to the meeting. The club also holds an informal Breakfast meeting at 0730 hours on the first Saturday of each Month at Denny’s located near the intersection of Highway 37 and Highway 29 (Sonoma Blvd), 4355 Sonoma Boulevard Vallejo, CA (map). All club members and their guests are encouraged to attend. ', 1),
(17, 'ROVARC', 'Red Oak Victory Amateur Radio Club', 'http://www.qsl.net/redoakarc', 'meets on the first Saturday of the month on board the SS Red Oak Victory. The location of the Museum Ship – SS Red Oak Victory is: At the south end of Canal Street, Berth 6A of the graving docks in Richmond, CA. Directions: Take Highway 580 to Point Richmond, exit at Canal St. and head south. In about 1/2 mile Canal, Street ends at a security checkpoint for a large parking area used for off loading newly imported cars from Japan. Just before this checkpoint you bear to the right and follow the road around the car lot, out toward the water to Berth 6A. ', 1),
(18, 'SLRC', 'San Leandro Radio Club', '', 'meets at Nick’s Family Restaurant, 14660 Washington Ave., San Leandro, on the 2nd Sunday of the month, 0700 local time.', 1),
(19, 'SARS', 'The Silverado Amateur Radio Society', 'http://napasars.net/', 'meets the second Tuesday each month (except for the month of December), 1900 hours local time, at 2383 Napa Vallejo Highway Just south of the Kennedy Park Golf Course. ', 1),
(20, 'SBARA', 'South Bay Amateur Radio Association', '', 'now meets on the second Friday of every month (with possible exceptions in June and December), 1930 hours local, at Hurricane Electric, 760 Mission Court, Fremont, CA 94539.', 1),
(21, 'TRC', 'Trilogy Radio Club', '', 'meetings are every Tuesday 1000-1100 local at the Trilogy’s Vista Club House in Rio Vista. Contact John Zwier, KG6RTZ, at (707) 374-5436 for more information.', 1),
(22, 'HARC', 'USS Hornet Amateur Radio Club', 'http://www.hornet-arc.us/index.html', 'meets the second Saturday of the month at 1300 local, on board the USS Hornet, 1301 Ferry Point, Alameda, CA. Visitors should come on board at the Security (Exit) gangway and ask at Security for the meeting location. Send inquiries to ko6no@comcast.net. ', 1),
(23, 'ORCA', 'Oakland Radio Communication Association', 'https://www.ww6or.com/', 'meets on the 1st Saturdays 0900 hours at Fire Station 1, 16th and MLK in Oakland.', 1),
(24, 'VVRC', 'Vaca Valley Radio Club', 'http://w6vvr.net/', 'meetings are at the Elmira Fire Station 6080 A St., Elmira on the Second Thursday of the month. General membership meeting at 1930. The June and December are special meetings and are usually held at a different time and/or place. See the club web site, w6vvr.net for more information. Radio nets are held every Tuesday at 2000 on the W6VVR repeater 145.470 MHz PL 127.3 Hz offset is minus 600 kHz. Club\'s e-mail: <a href = \"mailto: w6vvc@w6vvr.net\">w6vvc@w6vvr.net</a>', 1),
(25, 'W6BB ARC', 'W6BB Amateur Radio Club at the University of California', 'https://www.w6bb.org/', 'meetings are announced on the website. Normally monthly meetings are held during Fall and Spring semesters. We’re in the process of rebuilding. U.C. students, staff, faculty as well as alumni, retired and emeritus are invited to join. ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `id_education` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(128) COLLATE utf8_bin NOT NULL,
  `club` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `date_from` int(11) NOT NULL,
  `date_to` int(11) NOT NULL,
  `fee` decimal(10,0) DEFAULT '0',
  `status` varchar(32) COLLATE utf8_bin NOT NULL,
  `location` varchar(1024) COLLATE utf8_bin NOT NULL,
  `details_url` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `licensing` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id_education`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id_education`, `course`, `club`, `date_from`, `date_to`, `fee`, `status`, `location`, `details_url`, `licensing`) VALUES
(10, '', NULL, 0, 0, '0', '', '', NULL, 0),
(14, 'Amateur Radio Extra License Class', NULL, 1533765600, 1539208800, '8', 'In Session', 'The Salvation Army, 950 Clayton Road (at West St.), Concord ', 'http://www.mdarc.org/activities/education', 0),
(18, '', NULL, 0, 0, '0', '', '', '', 0),
(19, 'License Testing', NULL, 1539122400, 1539122400, '15', 'Open', 'The Salvation Army, 950 Clayton Road (at West St.), Concord ', 'http://www.mdarc.org/activities/education', 0),
(20, 'One-Day Technician License Class + Testing', NULL, 1540051200, 1540051200, '15', 'Open', 'PACIFICON 2018:  San Ramon Marriott 2600 Bishop Drive San Ramon  CA  94583', 'Class: https://tinyurl.com/y9ybrm3z and Exams: https://tinyurl.com/ybctm9w8', 0),
(22, 'Ham Radio License Exam', NULL, 1542387605, 1542387605, '15', 'Open', 'MDARC Meeting Location at Our Savior\'s Lutheran Church  1035 Carol Lane  Lafayette CA', 'https://tinyurl.com/ybvm6ev8  More details: http://www.mdarc.org/activities/license-testing', 0),
(24, 'Class Name: Example Class', NULL, 1516024800, 1516111200, '15', 'Open', 'MDARC Meeting Location at Our Savior\'s Lutheran Church  1035 Carol Lane  Lafayette CA', 'https://tinyurl.com/ybvm6ev8 ; More details: http://www.mdarc.org/activities/license-testing', 0),
(26, 'Technician License Course ', 'MDARC http://mdarc.org', 1547128800, 1551967200, '10', 'In Progress', 'Trinity Lutheran Church, 2317 Buena Vista Ave.  Walnut Creek, CA 94597', 'Course flyer: https://tinyurl.com/y7xqu3ts -- Registration at: https://tinyurl.com/y9nxk9p5  -- Testing on the last day of the course -- Test fee: $15.00', 1),
(27, 'General License Course ', 'MDARC http://mdarc.org', 1553778000, 1559826000, '10', 'Open', 'Trinity Lutheran Church, 2317 Buena Vista Ave.  Walnut Creek, CA 94597', 'Course flyer: https://tinyurl.com/y7lkbhd8 -- Registration at: https://tinyurl.com/y9nxk9p5 -- Testing on the last day of the course -- Test fee: $15.00', 2),
(28, 'Technician License Course ', 'MDARC http://mdarc.org', 1565874000, 1570712400, '10', 'Open', 'Trinity Lutheran Church, 2317 Buena Vista Ave.  Walnut Creek, CA 94597', 'Registration at: https://tinyurl.com/y9nxk9p5 -- Testing on the last day of the course -- Test fee: $15.00', 1),
(29, 'Get On The Air - HT', NULL, 1552568400, 1553173200, '0', 'Open', 'Trinity Lutheran Church, 2317 Buena Vista Ave.  Walnut Creek, CA 94597', 'Course fee TBD. Two sessions on 03/14/2019 and 03/21/2019, registration and more info at: https://tinyurl.com/y9nxk9p5', 4),
(30, 'Get On The Air - HF Communications', NULL, 1560430800, 1560430800, '0', 'Open', 'Trinity Lutheran Church, 2317 Buena Vista Ave.  Walnut Creek, CA 94597', 'Registration at: https://tinyurl.com/y9nxk9p5 --- One course session on 06/18/2019 --- Course fee TBD', 4),
(31, 'Emergency Preparedness or Auxiliary Tng', 'MDARC http://mdarc.org', 1561035600, 1561035600, '0', 'Open', 'Trinity Lutheran Church, 2317 Buena Vista Ave.  Walnut Creek, CA 94597', 'Registration at: https://tinyurl.com/y9nxk9p5 -- No fee at this time', 6),
(32, 'Emergency Preparedness or Auxiliary Tng', '', 1564664400, 1564664400, '0', 'Open', 'Trinity Lutheran Church, 2317 Buena Vista Ave.  Walnut Creek, CA 94597', 'Registration at: https://tinyurl.com/y9nxk9p5 -- No fee at this time', 6),
(34, 'Get On The Air - HT', NULL, 1571317200, 1571922000, '0', 'Open', 'Trinity Lutheran Church, 2317 Buena Vista Ave.  Walnut Creek, CA 94597', 'Registration at: https://tinyurl.com/y9nxk9p5 --- Fee TBD --- Two sessions on 10/17/2019 and 10/24/2019', 4),
(35, 'Ham In-One-Day Course', 'Benicia ARC  http://www.beniciaarc.com', 1549116000, 1549116000, '30', 'Open', 'Benicia Senior Center, 1201 East 2nd Street, Benicia, CA', 'The course fee includes exam fee. For more information click on this URL: http://km6nfc-files.arrleb.org/ham-flyer.pdf', 7),
(36, 'Emergency Preparedness or Auxiliary Tng', 'MDARC http://mdarc.org', 1561640400, 1561640400, '0', 'Open', 'Trinity Lutheran Church, 2317 Buena Vista Ave.  Walnut Creek, CA 94597', 'Registration at: https://tinyurl.com/y9nxk9p5 -- No fee at this time', 6),
(37, 'Emergency Preparedness or Auxiliary Tng', 'MDARC http://mdarc.org', 1565269200, 1565269200, '0', 'Open', 'Trinity Lutheran Church, 2317 Buena Vista Ave.  Walnut Creek, CA 94597', 'Registration at: https://tinyurl.com/y9nxk9p5 -- No fee at this time', 6),
(38, 'Technician License Course ', 'East Bay Amateur Radio Club (EBARC)', 1554296400, 1560344400, '0', 'Open', 'Arlington Park Clubhouse, 1120 Arlington Blvd, El Cerrito', 'register at http://www.ko6no.com/ ;  FCC examinations and license applications will be administered at the final class session by the EBARC Volunteer Examiners for a fee of $15.00; more details: http://tinyurl.com/y4nzgzv3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id_events` int(11) NOT NULL AUTO_INCREMENT,
  `id_club` int(11) NOT NULL DEFAULT '0',
  `name` varchar(512) COLLATE utf8_bin NOT NULL,
  `date` int(11) NOT NULL DEFAULT '0',
  `day` varchar(4) COLLATE utf8_bin NOT NULL,
  `coordinator` varchar(512) COLLATE utf8_bin NOT NULL,
  `location` varchar(512) COLLATE utf8_bin NOT NULL,
  `web` varchar(512) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_events`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `new_user`
--

DROP TABLE IF EXISTS `new_user`;
CREATE TABLE IF NOT EXISTS `new_user` (
  `id_new_user` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `fname` varchar(64) COLLATE utf8_bin NOT NULL,
  `lname` varchar(64) COLLATE utf8_bin NOT NULL,
  `street` varchar(64) COLLATE utf8_bin NOT NULL,
  `city` varchar(64) COLLATE utf8_bin NOT NULL,
  `state_cd` varchar(6) COLLATE utf8_bin NOT NULL,
  `zip_cd` varchar(10) COLLATE utf8_bin NOT NULL,
  `phone` varchar(24) COLLATE utf8_bin NOT NULL,
  `email` varchar(128) COLLATE utf8_bin NOT NULL,
  `facebook` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `twitter` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `linkedin` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `googleplus` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `callsign` varchar(12) COLLATE utf8_bin DEFAULT 'none',
  `authorized` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_new_user`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `new_user`
--

INSERT INTO `new_user` (`id_new_user`, `id_user`, `fname`, `lname`, `street`, `city`, `state_cd`, `zip_cd`, `phone`, `email`, `facebook`, `twitter`, `linkedin`, `googleplus`, `callsign`, `authorized`) VALUES
(6, NULL, 'Joe', 'Madden', '123 street', 'City', 'CA', '99999', '123-323-2334', 'jkulisek.us@gmail.com', NULL, NULL, NULL, NULL, '', 0),
(7, NULL, 'John', 'Primus', '1307 Saddlehill Ln', 'Concord', 'CA', '94521-3515', '(925) 825-7670', 'af6rj@arrl.net', NULL, NULL, NULL, NULL, 'AF6RJ', 0),
(8, NULL, 'Jim', 'Siemons', '2308 Lomond Ln', 'Walnut Creek', 'CA', '94598-3705', '925-330-0049', 'w6lk@arrl.org', NULL, NULL, NULL, NULL, 'w6lk@arrl.or', 0),
(9, NULL, 'potucstrvt', 'potucstrvt', 'Springage\r\n', 'Sterlingville\r\n', 'OR', '153223', '84459281855', 'morlicafentich2010@outlook.com', NULL, NULL, NULL, NULL, 'brvntyrsfy', 0),
(10, NULL, 'John', 'Primus', '1307 Saddlehill Ln', 'Concord', 'CA', '94521-3515', '9258257670', 'primus@astound.net', NULL, NULL, NULL, NULL, 'AF6RJ', 0),
(11, NULL, 'Kristen', 'McIntyre', 'N/A', 'Fremont', 'CA', 'N/A', 'N/A', 'leho1@email.com', '', '', '', '', 'K6WX', 0),
(12, NULL, 'Misa', 'Siemons', '2308 Lomond Ln', 'Walnut Creek', 'CA', '94598', 'N/A', 'misa@siemons.com', '', '', '', '', 'W6LK', 0),
(13, NULL, 'Scott', 'Morse', '1728 Veneto Lane', 'Brentwood', 'CA', '94513', 'N/A', 'kc6skm@gmail.com', '', '', '', '', 'KC6SKM', 0),
(14, NULL, 'MISA', 'SIEMONS', '2308 LOMOND LANE', 'WALNUT CREEK', 'CA', '94598', '(925) 876-6611', 'MISA@SIEMONS.COM', '', '', '', '', 'KJ6BUE', 0),
(15, NULL, 'Steve', 'Hawes', '1255 Cornell Avenue', 'Berkeley', 'CA', '94706', 'N/A', 'jan@kulisek.org', '', '', '', '', '', 0),
(16, NULL, 'Gary', 'Gross', '111 Dryden Dr', 'Vallejo', 'CA', '94591', 'N/A', 'jan@kulisek.org', '', '', '', '', 'KE6QR', 0),
(17, NULL, 'Dave', 'Piersall', '2178 Westward Pl', 'Martinez', 'CA', '94553', 'N/A', 'jan@jlkconsulting.info', '', '', '', '', 'N6ORB', 0),
(18, NULL, 'Matt', 'Vurek', 'Box 617', 'Orinda', 'CA', '94563', 'N/A', 'jan@jlkconsulting.info', '', '', '', '', 'N4DLA', 0),
(19, NULL, 'Bart', 'Lee', '388 Market Street 900', 'San Francisco', 'CA', '94511', 'N/A', 'jan@jlkconsulting.info', '', '', '', '', 'K6VK', 0),
(20, NULL, 'Jim', 'Tittle', '178 Thomas Way', 'Pittsburg', 'CA', '94565', 'N/A', 'jan@jlkconsulting.info', '', '', '', '', 'K6SOE', 0),
(21, NULL, 'Michael', 'Warren', '1985 Oakridge Ln', 'Pittsburg', 'CA', '94565', '9254399553', 'mwarren260@comcast.net', 'https://www.facebook.com/Michael.and.Marilyn.Warren', 'https://twitter.com/mwarren2', 'https://www.linkedin.com/in/michaelwarren260/', '', 'W6MEW', 0),
(22, NULL, 'Gary', 'Benecke', '6856Balsam Way', 'Oakland', 'CA', '94611', '510-655-5808', 'garybenecke68@gmail.com', '', '', '', '', 'KM6MVV', 0),
(23, NULL, 'Nafomamed', 'Nafomamed', 'Живу в Москве', 'Живу в Москве', 'AZ', '151343', '89176754849', 'mosk.cross@gmailu.ru', '', '', '', '', 'Nafomamed', 0),
(24, NULL, 'cjxzsgotmde', 'cjxzsgotmde', 'doLwAFKBbu', 'New York', 'CA', '39989', '76248456124', 'fdvabu@vaaref.com', 'dLDthIIuXeinXek', 'ayYnnTZUpSLnErnFF', 'http://sgnpqzadgiqu.com/', 'AtNRRFZhkDFoQrHet', 'iLwnncVLlHUi', 0),
(25, NULL, 'Bill', 'Goldsby', '1241 Simmons St', 'Antioch', 'CA', '94509', '9253397812', 'bill.goldsby@outlook.com', 'https://www.facebook.com/bill.goldsby', 'https://twitter.com/GoldsbyBill', '', '', 'KI6HCA', 0),
(26, NULL, 'mtfyxss', 'mtfyxss', 'BlErHqDMWmmOUgn', 'New York', 'CA', '60742', '86532471976', 'jxtjgu@ydkwps.com', 'JehlTtsaIUmxXbNl', 'pbeDkohbENFe', 'http://gnfroukeksxl.com/', 'AzZHAcJPDnpnNQnWN', 'JvUBnmhzPyEQ', 0),
(27, NULL, 'David', 'Sneed', '957 Hunt St. #4', 'St. Helena', 'CA', '94574', '707-494-0809', 'ki6sze@arrl.org', '', '', '', '', 'KI6SZE', 0),
(28, NULL, 'David', 'Nelson', '342 N. West St.', 'Vacaville', 'CA', '95688', '7074709178', 'nellyis@sbcglobal.net', '', '', '', '', 'AD6EN', 0),
(29, NULL, 'Michelle', 'Paquette', '1315 Alma Ave, #234', 'Walnut Creek ', 'CA', '94596', '7075678118', 'paquette.mj@gmail.com', '', '', 'https://www.linkedin.com/in/michellejeanpaquette', '', 'AA6MP', 0),
(30, NULL, 'Bart', 'Lee', '388 Market St. c/o SLK Ste 1300,', 'Sn Francisco', 'CA', '94111', '415 902 7168', 'brt.lee.K6VK@gmail.com', '', '', 'https://www.linkedin.com/in/bartlee', '', 'K6VK', 0),
(31, NULL, 'Chris', 'Tate', '2463 Del Mar Ct', 'Discovery Bay', 'CA', '94505', '9252867331', 'jkulisek.us2@gmail.com', '', '', '', '', '', 0),
(32, NULL, 'Chris', 'Tate', '2463 Del Mar Ct', 'Discovery Bay', 'CA', '94505', '9252867331', 'jkulisek.us@gmail.com2', '', '', '', '', 'N6WM', 0),
(33, 34, 'Michelle', 'Paquette', '1315 Alma Ave Apt 234', 'Walnut Creek', 'CA', '94596', '(707)567-8118', 'bogus_email@garb.xxx', '', '', '', '', 'AA6MP', 0),
(34, 36, 'edwin', 'garcia', '22868 5th st', 'hayward', 'CA', '94541', '5103144725', 'eagarcia1701@gmail.com', 'https://www.facebook.com/profile.php?id=1574845140', '', '', '', 'kk6zly', 0);

-- --------------------------------------------------------

--
-- Table structure for table `repository`
--

DROP TABLE IF EXISTS `repository`;
CREATE TABLE IF NOT EXISTS `repository` (
  `id_repository` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `path` varchar(512) COLLATE utf8_bin NOT NULL,
  `description` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(512) COLLATE utf8_bin NOT NULL,
  `private_file` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_repository`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `repository`
--

INSERT INTO `repository` (`id_repository`, `id_user`, `path`, `description`, `name`, `private_file`) VALUES
(5, 1, '././assets/uploads/uploads_private/uploads_1', NULL, 'tech-flyer.pdf', 1),
(6, 1, '././assets/uploads/uploads_public', NULL, 'ham-flyer.pdf', 0),
(7, 1, '././assets/uploads/uploads_public', NULL, 'gen-flier.pdf', 0),
(8, 1, '././assets/uploads/uploads_private/uploads_1', NULL, 'Tech_License_Class_Apr_3rd.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `speaker_topics`
--

DROP TABLE IF EXISTS `speaker_topics`;
CREATE TABLE IF NOT EXISTS `speaker_topics` (
  `id_speaker_topics` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `topic_name` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `topic_text` text COLLATE utf8_bin,
  `topic_ref` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `location` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_speaker_topics`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `speaker_topics`
--

INSERT INTO `speaker_topics` (`id_speaker_topics`, `id_user`, `topic_name`, `topic_text`, `topic_ref`, `location`, `date`) VALUES
(1, 12, 'Why does Ham Radio work “when all else fails”?', 'Most other communication systems are built on the principle of centralized control and centralized infrastructure.  Amateur Radio, by comparison, lacks centralized control, organization, or structure and yet often outperforms commercial systems which are specifically designed to work during a disaster.  This talk will explore the notion that it is the lack of central organization which makes our radio service well suited to perform in circumstances where order has been replaced by chaos.  A new area of research has been gaining popularity recently that investigates the dynamics of decentralized complex systems.  This research when applied to Amateur Radio can help us to understand why our radios continue to work when other systems fail.', '', '', 32400),
(2, 12, 'A Wire In The Air – what matters most', 'The magic of radio happens when we couple RF into the fabric of spacetime.  We do that with an antenna.  These devices are simultaneously simple and complex.  It’s easy to get lost in the theory or fooled by the latest anecdote.  Let’s look at what’s important in antenna choice and design.  There are things that matter more than others, and it’s never perfect.  And a bit of theory will guide us.  Radiation resistance, loss, pattern gain, terrain, polarization, coupling, loading – they all play a role.  Join me to find out what happens and what matters when we put a wire in the air.', '', '', 32400),
(3, 12, 'Again, Again!  Why do some modes work better?', 'Ever wonder why CW works better than SSB, and SSB better than FM?  For that matter, why is PSK-31 pretty good, but modes like JT-65 and Olivia even better?  It turns out that there are reasons for this founded in Information Theory, which began with a study of Morse Code. We’ll look at spectral power densities, information theory, the Shannon-Harley theorem, noise cliffs, coding theory, maximum likelihood decoding, convolutional coding, self-synchronizing codes, and more.  We’ll even take a look at Fisher information and its relation to physics. Join me and explore why some modes work better, not just in how we experience them, but how they are impacted by their relationship to information theory.', '', '', 32400),
(4, 34, 'Care and Feeding of Ancient Electronics', 'Restoring old equipment to a usable state. The talk covers basic testing, replacement of too-old parts, mechanical and cabinet restoration.  A Heathkit SB-301 from 1967 is restored.', '', '', 32400),
(5, 34, 'Antenna Theory', 'Basics of what makes an antenna work, from simple dipoles to directional antennas.  A Yagi antenna is built and the effects of elements are demonstrated.', '', '', 32400),
(6, 34, 'Compact Antennas - Theory and Practice', 'Theory behind making a compact antenna, including examples and issues.  A couple of “magic” compact antennas are explained and their secrets revealed!', '', '', 32400),
(7, 34, 'More Compact Antennas - Ham Sticks', 'Theory behind making a compact antenna, including examples and issues, focusing on the popular and inexpensive ‘haystack’ style antennas.  Both a vertical with counterpoise and a dipole are examined.  Some tips and tricks for using the antennas are discussed.', '', '', 32400),
(8, 34, 'Small Loop Antennas', 'The theory behind compact loop antennas is examined.  Usage and quirks of a popular magnetic loop antenna are explored.', '', '', 32400),
(10, 33, 'Anything contest related including interantional travel for contesting.', '', '', '', 32400),
(11, 33, 'Anything DXCC related', '', '', '', 32400),
(12, 33, 'VP6D Dxpedition', '', '', '', 32400),
(13, 14, 'Range of Subjects', 'I would welcome a chance to talk to any group about our Section and ARES as well as the new ARES Connect program in use for volunteers involved in ARES activities.  I can also discuss my experiences during several events including a fiber optical cable cut that knocked out all phone, cell and Internet service to several cities in South Santa Clara County.  Super bowl 50 in Santa Clara, Training programs, Packet radio and more.', '', '', 50400),
(14, 35, 'The Camp Fire, Phones, Fires and Failures', 'Alan will cover communications failures during the Camp Fire, and offer suggestions on how residents can mitigate similar disasters in their communities.', '', '', 32400),
(15, 35, 'Community Radio Watch', 'Alan will detail how a Community Radio Watch program using simple FRS and GMRS radios can help enhance neighborhood safety and how Hams can help facilitate implementation of these programs.', '', '', 32400),
(16, 35, 'Completely Remote Radio Operations', 'Utilizing a computer, a satellite Internet connection and solar electrical power, Alan will demonstrate completely independent and remote operations of a base station from virtually anywhere in North America.', '', '', 32400),
(17, 35, 'Cross-band Repeater Mode', 'Utilizing a 50-watt Icom Mobile station and virtually any dual-band HT, Alan demonstrates the setup and operation of Cross-band Repeater Mode, enabling high-power, \"roaming\" operations from an HT. ', '', '', 32400);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `id_staff` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `position_name` varchar(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `id_user`, `position_name`) VALUES
(1, 9, 'Section Manager'),
(2, 1, 'Assistant Section Manager'),
(4, 15, 'Public Information Coordinator'),
(5, 14, 'Section Emergency Coordinator'),
(6, 16, 'Section Net Manager'),
(7, 17, 'Official Relay Station'),
(8, 18, 'Contra Costa County'),
(9, 19, 'Affiliated Club Coordinator'),
(10, 20, 'Local Government Liaison'),
(11, 21, 'Official Observer Coordinator'),
(12, 12, 'Technical Coordinator'),
(13, 11, 'Education Coordinator');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` tinyint(4) NOT NULL,
  `role` varchar(12) COLLATE latin1_general_ci DEFAULT NULL,
  `pass` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `facebook` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `twitter` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `linkedin` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `googleplus` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `callsign` varchar(12) COLLATE latin1_general_ci DEFAULT 'none',
  `phone` varchar(32) COLLATE latin1_general_ci DEFAULT NULL,
  `street` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `state_cd` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `zip_cd` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `authorized` tinyint(4) NOT NULL DEFAULT '0',
  `verifystr` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `email_key` varchar(128) COLLATE latin1_general_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `position` varchar(512) COLLATE latin1_general_ci DEFAULT NULL,
  `pos_code` tinyint(4) DEFAULT '0',
  `image_loc` varchar(512) COLLATE latin1_general_ci NOT NULL DEFAULT '/assets/img/team-member.gif',
  `profile` varchar(64) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_user_types` (`type_code`),
  KEY `id_user_types_2` (`type_code`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `type_code`, `role`, `pass`, `username`, `fname`, `lname`, `email`, `facebook`, `twitter`, `linkedin`, `googleplus`, `callsign`, `phone`, `street`, `city`, `state_cd`, `zip_cd`, `authorized`, `verifystr`, `email_key`, `active`, `position`, `pos_code`, `image_loc`, `profile`) VALUES
(1, 99, 'MST', '$2y$12$iKWvOgo6Te61E3MXlHUtB.RhthaSJe21xcHNcfBLLQHZJVCPBvN4q', 'hacq', 'Jan', 'Kulisek', 'jkulisek.us@gmail.com', 'https://www.facebook.com/jkulisek', 'https://twitter.com/JanKulisek', 'https://www.linkedin.com/in/jan-kul%C3%ADsek-13066b44/', 'https://plus.google.com/u/0/102144146559622259709', 'KM6NFC', '925-286-7331', '2930 Hilltop Rd', 'Concord', 'CA', '94520', 1, 'http://localhost/mdarc/index.php/public_ctl/confirm_reg/573f016b853c92b03f51adf9', '573f016b853c92b03f51adf9', 1, 'Assistant Section Manager', 2, 'assets/img/me.png', '99-'),
(17, 0, NULL, NULL, NULL, 'Gary', 'Gross', 'ke6qr@COMCAST.NET', '', '', '', '', 'KE6QR', 'N/A', '111 Dryden Dr', 'Vallejo', 'CA', '94591', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/97d0ec9263f7a987080a0706', '97d0ec9263f7a987080a0706', 1, 'Official Relay Station', 6, '/assets/img/team-member.gif', NULL),
(14, 3, NULL, '$2y$12$4ignCOkL8LRdnfnb8zwQDO2IihVyI.7gfGMYNQmlLs4QyepkPiPHq', 'kc6skm', 'Scott', 'Morse', 'kc6skm@gmail.com', '', '', '', '', 'KC6SKM', 'N/A', '1728 Veneto Lane', 'Brentwood', 'CA', '94513', 1, 'http://arrleb.org/index.php/public_ctl/confirm_reg/9c5584dfe7a6193f03fd0908', '9c5584dfe7a6193f03fd0908', 1, 'Section Emergency Coordinator', 4, '/assets/img/scott.jpg', '3-'),
(9, 1, 'EDU', '$2y$12$rHZYGSSMQ.o1FxXFt8lOdeepZiqbtP/5ko/7yM6NyTB1D/viwX1c6', 'w6lk', 'Jim', 'Siemons', 'w6lk@arrl.org', NULL, NULL, NULL, NULL, 'w6lk', '925-330-0049', '2308 Lomond Ln', 'Walnut Creek', 'CA', '94598-3705', 1, 'http://arrleb.org/index.php/public_ctl/confirm_reg/d4b345b7a44acf5b5057b1ba', 'd4b345b7a44acf5b5057b1ba', 1, 'Section Manager', 1, '\r\nassets/img/jim.jpg', '1-2-5-'),
(11, 1, 'EDU', '$2y$12$BlROAX6.ylZWcGadkzTg/uKZ.nvmibaYuA0x6WKoyJHovoqzAIaRW', 'af6rj', 'John', 'Primus', 'primus@astound.net', NULL, NULL, NULL, NULL, 'AF6RJ', '9258257670', '1307 Saddlehill Ln', 'Concord', 'CA', '94521-3515', 1, 'http://arrleb.org/index.php/public_ctl/confirm_reg/261426a4ed4e92a35bb591f4', '261426a4ed4e92a35bb591f4', 1, 'Education Coordinator', 12, '/assets/img/john.png', '1-'),
(12, 3, 'SPK', '$2y$12$isslCw.6Sz/eI.EuZhWwpO4vXopvWlKlFibwqzqG6j/4gMr2dDAp2', 'k6wx', 'Kristen', 'McIntyre', 'kristen@arrleb.org', '', '', '', '', 'K6WX', '(510) 703-4942', '40711 Witherspoon Ter', 'Fremont', 'CA', '94538-3513', 1, 'http://arrleb.org/index.php/public_ctl/confirm_reg/853b85059868c400224ee27a', '853b85059868c400224ee27a', 1, 'Technical Coordinator', 11, '/assets/img/team-member.gif', '3-'),
(16, 0, NULL, NULL, NULL, 'Steve', 'Hawes', 'shawes@arrleb.org', '', '', '', '', 'WB6UZX', 'N/A', '1255 Cornell Avenue', 'Berkeley', 'CA', '94706', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/cb312c13dcc6e31dce8abd00', 'cb312c13dcc6e31dce8abd00', 1, 'Section Net Manager', 5, '/assets/img/team-member.gif', NULL),
(15, 1, 'EDU', '$2y$12$7YfiZ6qtI9HAjfxlwGRQ/eKXcbWtaCOTZL.R0owWtBwrQiD9CbOI.', 'KJ6BUE2018EB', 'MISA', 'SIEMONS', 'MISA@SIEMONS.COM', '', '', '', '', 'KJ6BUE', '(925) 876-6611', '2308 LOMOND LANE', 'WALNUT CREEK', 'CA', '94598', 1, 'http://arrleb.org/index.php/public_ctl/confirm_reg/aa009f1474697ee061d0f4ad', 'aa009f1474697ee061d0f4ad', 1, 'Public Information Coordinator', 3, '/assets/img/misa.png', NULL),
(18, 0, NULL, NULL, NULL, 'Dave', 'Piersall', 'dfp@pacbell.net', '', '', '', '', 'N6ORB', 'N/A', '2178 Westward Pl', 'Martinez', 'CA', '94553', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/389ee49fef46ec85094c6878', '389ee49fef46ec85094c6878', 1, 'Contra Costa County', 7, '/assets/img/dave.png', NULL),
(19, 5, 'CLB', NULL, NULL, 'Matt', 'Vurek', 'n4dla_cs245@yahoo.com', '', '', '', '', 'N4DLA', 'N/A', 'Box 617', 'Orinda', 'CA', '94563', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/3f73fa2b7042501a7ce0912c', '3f73fa2b7042501a7ce0912c', 1, 'Affiliated Club Coordinator', 8, '/assets/img/team-member.gif', '5-'),
(20, 0, NULL, NULL, NULL, 'Bart', 'Lee', 'Bart.Lee.K6VK@gmail.com', '', '', '', '', 'K6VK', 'N/A', '388 Market Street 900', 'San Francisco', 'CA', '94511', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/c950538f1cc099ce605f428a', 'c950538f1cc099ce605f428a', 1, 'Local Govt Liaison', 9, '/assets/img/bart.png', NULL),
(21, 0, NULL, NULL, NULL, 'Jim', 'Tittle', 'K6SOE@ARRL.NET', '', '', '', '', 'K6SOE', 'N/A', '178 Thomas Way', 'Pittsburg', 'CA', '94565', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/9e838816edcb1a4e9fa061fd', '9e838816edcb1a4e9fa061fd', 1, 'Official Observer Coordinator', 10, '/assets/img/team-member.gif', NULL),
(22, 4, 'GEN', '$2y$12$CUiCW4dK7uen.Vt1xHMHsuO.AXtTD5DKAYgorm6WaiSviQodiLrgu', 'W6MEW', 'Michael', 'Warren', 'mwarren260@comcast.net', 'https://www.facebook.com/Michael.and.Marilyn.Warren', 'https://twitter.com/mwarren2', 'https://www.linkedin.com/in/michaelwarren260/', '', 'W6MEW', '9254399553', '1985 Oakridge Ln', 'Pittsburg', 'CA', '94565', 1, 'http://arrleb.org/index.php/public_ctl/confirm_reg/35e21c46c8011ae67bd67306', '35e21c46c8011ae67bd67306', 1, NULL, 0, '/assets/img/team-member.gif', NULL),
(23, 0, NULL, '$2y$12$Slxokj/JKZSsUITcIOiPXeoKM6oX9uk8UKbagJZciaanRGv/Ex1wG', 'brylla', 'Gary', 'Benecke', 'garybenecke68@gmail.com', '', '', '', '', 'KM6MVV', '510-655-5808', '6856Balsam Way', 'Oakland', 'CA', '94611', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/2d424699243d17d2cd30fb2f', '2d424699243d17d2cd30fb2f', 0, NULL, 0, '/assets/img/team-member.gif', NULL),
(28, 0, NULL, NULL, NULL, 'David', 'Sneed', 'ki6sze@arrl.org', '', '', '', '', 'KI6SZE', '707-494-0809', '957 Hunt St. #4', 'St. Helena', 'CA', '94574', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/68c07fbefa839426ebf4bcb4', '68c07fbefa839426ebf4bcb4', 1, NULL, 0, '/assets/img/team-member.gif', NULL),
(29, 0, NULL, '$2y$12$qxm6mFTY8qokTDT6RBJA/OHBc10ZSZ0r23lQjYMG6PtCl8lAkseES', 'AAD6EN', 'David', 'Nelson', 'nellyis@sbcglobal.net', '', '', '', '', 'AD6EN', '7074709178', '342 N. West St.', 'Vacaville', 'CA', '95688', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/640abfd15aa335bf07d527b7', '640abfd15aa335bf07d527b7', 0, NULL, 0, '/assets/img/team-member.gif', NULL),
(26, 0, NULL, NULL, NULL, 'Bill', 'Goldsby', 'bill.goldsby@outlook.com', 'https://www.facebook.com/bill.goldsby', 'https://twitter.com/GoldsbyBill', '', '', 'KI6HCA', '9253397812', '1241 Simmons St', 'Antioch', 'CA', '94509', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/3e0c83a411a85ae2ca83f4d0', '3e0c83a411a85ae2ca83f4d0', 1, NULL, 0, '/assets/img/team-member.gif', NULL),
(30, 0, NULL, '$2y$12$PpNRoVmUjhmxPOck8MhKGO39Z3IEq9zmG3xQLWJc.hKX5aWtmbMpS', 'AA6MP', 'Michelle', 'Paquette', 'paquette.mj@gmail.com', '', '', 'https://www.linkedin.com/in/michellejeanpaquette', '', 'AA6MP', '7075678118', '1315 Alma Ave, #234', 'Walnut Creek ', 'CA', '94596', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/7fd33096c70e46e3e6b64507', '7fd33096c70e46e3e6b64507', 0, NULL, 0, '/assets/img/team-member.gif', NULL),
(31, 0, NULL, NULL, NULL, 'Bart', 'Lee', 'brt.lee.K6VK@gmail.com', '', '', 'https://www.linkedin.com/in/bartlee', '', 'K6VK', '415 902 7168', '388 Market St. c/o SLK Ste 1300,', 'Sn Francisco', 'CA', '94111', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/5502e068013d1297bd1863ea', '5502e068013d1297bd1863ea', 1, NULL, 0, '/assets/img/team-member.gif', NULL),
(33, 3, 'SPK', '$2y$12$y3.SBs9P/p0r23dKTq5v7.GwZNcRIyrE3u9oyHyXYLzzFKy7WBFYK', 'n6wm', 'Chris', 'Tate', 'n6wm@largeradio.org', '', '', '', '', 'N6WM', '9252867331', '2463 Del Mar Ct', 'Discovery Bay', 'CA', '94505', 1, 'http://arrleb.org/index.php/public_ctl/confirm_reg/123bcbb5b8469b48f5593a5c', '123bcbb5b8469b48f5593a5c', 1, NULL, 0, '/assets/img/team-member.gif', '3-'),
(36, 0, NULL, '$2y$12$a7PI3QTzabY.yxGzHrofRewH455YJNJg4DEHQ56qxFV8P7x1XknwW', 'kk6zly', 'edwin', 'garcia', 'eagarcia1701@gmail.com', 'https://www.facebook.com/profile.php?id=1574845140', '', '', '', 'kk6zly', '5103144725', '22868 5th st', 'hayward', 'CA', '94541', 0, 'http://arrleb.org/index.php/public_ctl/confirm_reg/c8eadb03e1225692265a03d0', 'c8eadb03e1225692265a03d0', 0, NULL, 0, '/assets/img/team-member.gif', NULL),
(34, 3, 'SPK', '$2y$12$kPH2pyr0l1L23u7D7EZHx.klHHV92HJhlJ0DRVwtLALQ55RZOPpuS', 'aa6mp', 'Michelle', 'Paquette', 'paquette.mj@gmail.com', '', '', '', '', 'AA6MP', '(707)567-8118', '1315 Alma Ave Apt 234', 'Walnut Creek', 'CA', '94596', 1, 'http://arrleb.org/index.php/public_ctl/confirm_reg/0c3bdbd4cab30e2190fa00aa', '0c3bdbd4cab30e2190fa00aa', 1, NULL, 0, '/assets/img/team-member.gif', '3-'),
(35, 3, 'SPK', '$2y$12$re97Vp/Ea1l289A.87XymeNWjAWefkduCjc.ZXZEJLFEBY.CI3tBq', 'w6wn', 'Alan', 'Thompson', 'alan@w6wn.com', '', '', '', '', 'W6WN', '(530) 317 8430', '2711 Mosquito Road', 'Placerville', 'CA', '95667', 1, NULL, NULL, 1, NULL, 0, '/assets/img/team-member.gif', '3-');

-- --------------------------------------------------------

--
-- Table structure for table `user_0_tbl`
--

DROP TABLE IF EXISTS `user_0_tbl`;
CREATE TABLE IF NOT EXISTS `user_0_tbl` (
  `id_user_0_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_0_tbl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_1_tbl`
--

DROP TABLE IF EXISTS `user_1_tbl`;
CREATE TABLE IF NOT EXISTS `user_1_tbl` (
  `id_user_1_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `facebook` varchar(128) DEFAULT NULL,
  `twitter` varchar(128) DEFAULT NULL,
  `linkedin` varchar(128) DEFAULT NULL,
  `googleplus` varchar(128) DEFAULT NULL,
  `narrative` text,
  `narrative2` text,
  PRIMARY KEY (`id_user_1_tbl`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_1_tbl`
--

INSERT INTO `user_1_tbl` (`id_user_1_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `state_cd`, `zip_cd`, `facebook`, `twitter`, `linkedin`, `googleplus`, `narrative`, `narrative2`) VALUES
(1, 1, 'Jan', 'Kulisek', 'hacq', 'jkulisek.us@gmail.com', '925-286-7331', '2930 Hilltop Rd', 'Concord', 'CA', '94520', 'https://www.facebook.com/jkulisek', 'https://twitter.com/JanKulisek', 'https://www.linkedin.com/in/jan-kul%C3%ADsek-13066b44/', 'https://plus.google.com/u/0/102144146559622259709', 'Jan has been radio enthusiast since Cold War when a short wave radio was the only source of information in certain parts of the world.', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_4_tbl`
--

DROP TABLE IF EXISTS `user_4_tbl`;
CREATE TABLE IF NOT EXISTS `user_4_tbl` (
  `id_user_4_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `facebook` varchar(128) DEFAULT NULL,
  `twitter` varchar(128) DEFAULT NULL,
  `linkedin` varchar(128) DEFAULT NULL,
  `googleplus` varchar(128) DEFAULT NULL,
  `narrative` text,
  `narrative2` text,
  PRIMARY KEY (`id_user_4_tbl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_4_tbl`
--

INSERT INTO `user_4_tbl` (`id_user_4_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `state_cd`, `zip_cd`, `facebook`, `twitter`, `linkedin`, `googleplus`, `narrative`, `narrative2`) VALUES
(1, 4, 'John', 'Doe', 'hector', 'pig@piglets.com', '8889997777', '325 Street St.', 'San Francisco', 'CA', '94108', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_5_tbl`
--

DROP TABLE IF EXISTS `user_5_tbl`;
CREATE TABLE IF NOT EXISTS `user_5_tbl` (
  `id_user_5_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `facebook` varchar(128) DEFAULT NULL,
  `twitter` varchar(128) DEFAULT NULL,
  `linkedin` varchar(128) DEFAULT NULL,
  `googleplus` varchar(128) DEFAULT NULL,
  `narrative` text,
  `narrative2` text,
  PRIMARY KEY (`id_user_5_tbl`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_5_tbl`
--

INSERT INTO `user_5_tbl` (`id_user_5_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `state_cd`, `zip_cd`, `facebook`, `twitter`, `linkedin`, `googleplus`, `narrative`, `narrative2`) VALUES
(1, 5, 'Tad', 'Sammer', 'homer', 'sammer@sabers.com', '8889997777', '888 Sabre Street', 'Wichita', 'KS', '99447', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_9_tbl`
--

DROP TABLE IF EXISTS `user_9_tbl`;
CREATE TABLE IF NOT EXISTS `user_9_tbl` (
  `id_user_9_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `facebook` varchar(128) DEFAULT NULL,
  `twitter` varchar(128) DEFAULT NULL,
  `linkedin` varchar(128) DEFAULT NULL,
  `googleplus` varchar(128) DEFAULT NULL,
  `narrative` text,
  `narrative2` text,
  PRIMARY KEY (`id_user_9_tbl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_9_tbl`
--

INSERT INTO `user_9_tbl` (`id_user_9_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `state_cd`, `zip_cd`, `facebook`, `twitter`, `linkedin`, `googleplus`, `narrative`, `narrative2`) VALUES
(1, 9, 'Jim', 'Siemons', 'w6lk', 'w6lk@arrl.org', '925-330-0049', '2308 Lomond Ln', 'Walnut Creek', 'CA', '94598-3705', NULL, NULL, NULL, NULL, 'Jim provides awsome leadership to ARRL East Bay Section besides being extremely passionate about Ham Radio hobby as a whole.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_11_tbl`
--

DROP TABLE IF EXISTS `user_11_tbl`;
CREATE TABLE IF NOT EXISTS `user_11_tbl` (
  `id_user_11_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `facebook` varchar(128) DEFAULT NULL,
  `twitter` varchar(128) DEFAULT NULL,
  `linkedin` varchar(128) DEFAULT NULL,
  `googleplus` varchar(128) DEFAULT NULL,
  `narrative` text,
  `narrative2` text,
  PRIMARY KEY (`id_user_11_tbl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_11_tbl`
--

INSERT INTO `user_11_tbl` (`id_user_11_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `state_cd`, `zip_cd`, `facebook`, `twitter`, `linkedin`, `googleplus`, `narrative`, `narrative2`) VALUES
(1, 11, 'John', 'Primus', 'af6rj', 'primus@astound.net', '9258257670', '1307 Saddlehill Ln', 'Concord', 'CA', '94521-3515', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_12_tbl`
--

DROP TABLE IF EXISTS `user_12_tbl`;
CREATE TABLE IF NOT EXISTS `user_12_tbl` (
  `id_user_12_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_12_tbl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_12_tbl`
--

INSERT INTO `user_12_tbl` (`id_user_12_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `facebook`, `twitter`, `linkedin`, `googleplus`, `state_cd`, `zip_cd`, `narrative`, `narrative2`) VALUES
(1, 12, 'Kristen', 'McIntyre', 'k6wx', 'kristen@arrleb.org', '(510) 703-4942', '40711 Witherspoon Ter', 'Fremont', '', '', '', '', 'CA', '94538-3513', 'Kristen has been interested in radio since she was about 5 years old.  She started in Amateur Radio in 1979 getting her ticket while at MIT.  Kristen has worked in many diverse areas from analog circuit design to image processing to starting and running an ISP.', 'She is currently working at Apple in Core Networking, and spent many years at Sun Microsystems Laboratories where she was researching robustness and emergent properties of large distributed computer systems.  She is a long time denizen of Silicon Valley and has worked at or consulted for many of the usual suspects.  Kristen is an active ham and loves to chase DX on HF with her Elecraft K2 which she built while visiting her mother in Florida.  She is an ARRL Technical Coordinator for the East Bay Section, president of the Palo Alto Amateur Radio Assoc., the Q&A columnist for Nuts and Volts magazine, and is active in many local clubs.  Kristen was recently inducted into the CQ Amateur Radio Hall of Fame.  Here are various talks and abstracts.');

-- --------------------------------------------------------

--
-- Table structure for table `user_14_tbl`
--

DROP TABLE IF EXISTS `user_14_tbl`;
CREATE TABLE IF NOT EXISTS `user_14_tbl` (
  `id_user_14_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_14_tbl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_14_tbl`
--

INSERT INTO `user_14_tbl` (`id_user_14_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `facebook`, `twitter`, `linkedin`, `googleplus`, `state_cd`, `zip_cd`, `narrative`, `narrative2`) VALUES
(1, 14, 'Scott', 'Morse', 'kc6skm', 'kc6skm@gmail.com', 'N/A', '1728 Veneto Lane', 'Brentwood', '', '', '', '', 'CA', '94513', 'Scott Morse first became interested in HAM radio in the mid 60’s while in college and was president of the College of San Mateo Radio club where he assisted in setting up the club station just after the college had relocated to its present location.  Most of the equipment was handmade or was military surplus.  Years later I became licensed again and active in emergency communications.', 'I served about 10 years as either an assistant or later as the Chief Radio Officer, DEC, and ACS officer for Santa Clara County Office of Emergency services.  Some of the things accomplished in Santa Clara County were the development of an excellent training program as well as a method to type mutual aid responders.  Also, the development and deployment of a very robust Packet radio system serving the entire county and beyond.  I also served as the Section Emergency Coordinator (SEC) for the Santa Clara Valley section covering San Mateo, Santa Clara, Santa Crus, San Benito and Monterey counties.\r\n\r\nI am currently a member of the Contra Costa County Sheriff’s Communications Unit (COMU). I am the current East Bay section SEC serving Alameda, Contra Costa, Napa and Solano counties.');

-- --------------------------------------------------------

--
-- Table structure for table `user_15_tbl`
--

DROP TABLE IF EXISTS `user_15_tbl`;
CREATE TABLE IF NOT EXISTS `user_15_tbl` (
  `id_user_15_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_15_tbl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_15_tbl`
--

INSERT INTO `user_15_tbl` (`id_user_15_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `facebook`, `twitter`, `linkedin`, `googleplus`, `state_cd`, `zip_cd`, `narrative`, `narrative2`) VALUES
(1, 15, 'MISA', 'SIEMONS', 'KJ6BUE2018EB', 'MISA@SIEMONS.COM', '(925) 876-6611', '2308 LOMOND LANE', 'WALNUT CREEK', '', '', '', '', 'CA', '94598', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_16_tbl`
--

DROP TABLE IF EXISTS `user_16_tbl`;
CREATE TABLE IF NOT EXISTS `user_16_tbl` (
  `id_user_16_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_16_tbl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_17_tbl`
--

DROP TABLE IF EXISTS `user_17_tbl`;
CREATE TABLE IF NOT EXISTS `user_17_tbl` (
  `id_user_17_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_17_tbl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_18_tbl`
--

DROP TABLE IF EXISTS `user_18_tbl`;
CREATE TABLE IF NOT EXISTS `user_18_tbl` (
  `id_user_18_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_18_tbl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_19_tbl`
--

DROP TABLE IF EXISTS `user_19_tbl`;
CREATE TABLE IF NOT EXISTS `user_19_tbl` (
  `id_user_19_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_19_tbl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_20_tbl`
--

DROP TABLE IF EXISTS `user_20_tbl`;
CREATE TABLE IF NOT EXISTS `user_20_tbl` (
  `id_user_20_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_20_tbl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_21_tbl`
--

DROP TABLE IF EXISTS `user_21_tbl`;
CREATE TABLE IF NOT EXISTS `user_21_tbl` (
  `id_user_21_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_21_tbl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_22_tbl`
--

DROP TABLE IF EXISTS `user_22_tbl`;
CREATE TABLE IF NOT EXISTS `user_22_tbl` (
  `id_user_22_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_22_tbl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_22_tbl`
--

INSERT INTO `user_22_tbl` (`id_user_22_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `facebook`, `twitter`, `linkedin`, `googleplus`, `state_cd`, `zip_cd`, `narrative`, `narrative2`) VALUES
(1, 22, 'Michael', 'Warren', 'W6MEW', 'mwarren260@comcast.net', '9254399553', '1985 Oakridge Ln', 'Pittsburg', '', '', '', '', 'CA', '94565', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_33_tbl`
--

DROP TABLE IF EXISTS `user_33_tbl`;
CREATE TABLE IF NOT EXISTS `user_33_tbl` (
  `id_user_33_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_33_tbl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_33_tbl`
--

INSERT INTO `user_33_tbl` (`id_user_33_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `facebook`, `twitter`, `linkedin`, `googleplus`, `state_cd`, `zip_cd`, `narrative`, `narrative2`) VALUES
(1, 33, 'Chris', 'Tate', 'n6wm', 'jkulisek.us@gmail.com2', '9252867331', '2463 Del Mar Ct', 'Discovery Bay', '', '', '', '', 'CA', '94505', 'Chris Tate, N6WM is an avid and well known Contester, Dxpeditioneer and amateur radio author.  Chris has won or placed top 10 with numerous contest titles at the Division, National and International level. In addition to contesting, Chris is an enthusiastic operator and DXer and has earned DXCC on 8 bands, Challenge, 5Bwas +160m along with many other operating awards, including being awarded Top tester by Flex Radio systems in 2016 at the Dayton Hamvention. ', 'Chris has served in a number of leadership roles, including past Board member, Vice President/Contest Chair, and President of the Northern California Contest Club, Past Contest Chairman of the California QSO party, Past Contest manager for the NCJ NA Sprint SSB and is a current Assistant Section Manager for DX and contesting for the ARRL East Bay section.  Memberships include: the NCCC, NCDXC, PL-259 contest club (3 consecutive small club Sweepstakes gavels), CWOPS (#688) and is a regular contributor to the Northern California DX Foundation.  \r\n\r\nChris writes articles as a contributing author for QST, including the annual writeup for the ARRL DX SSB contest, and was recently profiled in National Contest Journal.\r\n\r\nIn addition, Chris is an experienced station manager and tower climber with extensive station building and computer experience.  He is a founding member of the winning K6LRG hilltop contest station and serves as the lead technical manager and is a regular team operator at Radio Oakley owned by CQ Contest Hall of fame operator N6RO.\r\n\r\nChris travels regularly and also holds the Call ZF2CT for operations in the Cayman Islands, most recently in July 2016 and Sept 2017.  He was a team member of the very successful VP6D ducie island 2018 dx-pedition that icluded travel to French Polynesia(FO), Pitcairn Island(VP6) and of course Ducie(VP6-D)');

-- --------------------------------------------------------

--
-- Table structure for table `user_34_tbl`
--

DROP TABLE IF EXISTS `user_34_tbl`;
CREATE TABLE IF NOT EXISTS `user_34_tbl` (
  `id_user_34_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_34_tbl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_34_tbl`
--

INSERT INTO `user_34_tbl` (`id_user_34_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `facebook`, `twitter`, `linkedin`, `googleplus`, `state_cd`, `zip_cd`, `narrative`, `narrative2`) VALUES
(1, 34, 'Michelle', 'Paquette', 'aa6mp', 'paquette.mj@gmail.com', '(707)567-8118', '1315 Alma Ave Apt 234', 'Walnut Creek', '', '', '', '', 'CA', '94596', 'Michelle Paquette, AA6MP has worked in fields from nuclear power plant operations to systems software and software engineering, as both an engineer and an instructor. As an engineer she holds 19 patents for inventions used by hundreds of millions of people every day, in Apple\'s Macs, iPads, and iPhones.', 'As an instructor she has trained people in such varied areas as nuclear power plant operations, programming of in-circuit test systems and factory robots.  Michelle is a past president of the Benicia Amateur Radio Club, and an instructor in Mt Diablo Amateur Radio Club’s license classes, as well as a speaker and trainer in a number of other programs in the region. When not teaching she is often found baking, restoring old vacuum tube equipment or tinkering with compact antennas.');

-- --------------------------------------------------------

--
-- Table structure for table `user_35_tbl`
--

DROP TABLE IF EXISTS `user_35_tbl`;
CREATE TABLE IF NOT EXISTS `user_35_tbl` (
  `id_user_35_tbl` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `lname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(128) NOT NULL DEFAULT '',
  `facebook` varchar(128) NOT NULL DEFAULT '',
  `twitter` varchar(128) NOT NULL DEFAULT '',
  `linkedin` varchar(128) NOT NULL DEFAULT '',
  `googleplus` varchar(128) NOT NULL DEFAULT '',
  `state_cd` varchar(2) NOT NULL DEFAULT '',
  `zip_cd` varchar(10) NOT NULL DEFAULT '',
  `narrative` text NOT NULL,
  `narrative2` text NOT NULL,
  PRIMARY KEY (`id_user_35_tbl`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_35_tbl`
--

INSERT INTO `user_35_tbl` (`id_user_35_tbl`, `id_user`, `fname`, `lname`, `username`, `email`, `phone`, `street`, `city`, `facebook`, `twitter`, `linkedin`, `googleplus`, `state_cd`, `zip_cd`, `narrative`, `narrative2`) VALUES
(1, 35, 'Alan', 'Thompson', 'w6wn', 'alan@w6wn.com', '(530) 317 8430', '2711 Mosquito Road', 'Placerville', '', '', '', '', 'CA', '95667', 'Alan first became a Ham at age 11. At the time, he was the 2nd youngest Ham Radio Operator in the US. But, like many of us, he let his license lapse as career and family interests intervened. He\'s had a varied professional career as a Field Technician, Manager and Entrepreneur in the satellite communications industry for over 35 years. He is also a member of Toast Masters International, and has given 100s of training presentations across the US throughout his career.', 'Alan is currently the Owner and Chief Field Engineer for El Dorado Networks in El Dorado County, and is responsible for installing and maintaining commercial satellite Internet and video systems in the Western US and Mexico. Recent projects include work for <strong>Facebook, Intelsat, Merrill Lynch</strong> and <strong>Bank of America</strong>. His satellite Internet skills were called upon as part of a four-person Disaster Recovery Team that helped restore cell phone services in Butte County just after the Camp Fire destroyed Paradise and Magalia.\r\n\r\nAlan regained his Amateur Radio license in 2017 after passing all three license exams at one sitting. His principle radio interest is in becoming a Volunteer Examiner, Trainer and Coach, supporting ARES and CERT efforts, and promoting Neighborhood Radio programs to help enhance Community Safety and save lives. He is currently engaged in giving several public presentations before local Amateur Radio Clubs and civic organizations on the communications failures that occurred during the 2018 Camp Fire, and offering practical solutions on how neighborhoods can help their families stay safer in the event of disasters.');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE IF NOT EXISTS `user_types` (
  `id_user_types` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` tinyint(4) NOT NULL,
  `description` varchar(32) COLLATE utf8_bin NOT NULL,
  `code_str` varchar(4) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_user_types`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id_user_types`, `type_code`, `description`, `code_str`) VALUES
(1, 99, 'master', 'MST'),
(2, 1, 'education', 'EDU'),
(3, 2, 'events', 'EVS'),
(4, 0, 'Not Set', 'NON'),
(5, 3, 'speaker', 'SPK'),
(6, 4, 'general', 'GEN'),
(7, 5, 'Club Admin', 'CLB'),
(8, 6, 'elmer', 'ELM');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
