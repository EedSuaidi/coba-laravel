-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2023 at 05:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sambatan_eed`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(2, 'Web Design', 'web-design', '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(3, 'Personal', 'personal', '2023-01-04 17:48:04', '2023-01-04 17:48:04');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_03_031526_create_posts_table', 1),
(6, '2022_11_03_040808_create_categories_table', 1),
(7, '2023_03_19_065651_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Et omnis est aut.', 'earum-voluptas-quibusdam-numquam-nihil-ut-sapiente-consequatur', NULL, 'Vero qui officiis est voluptas debitis harum. Et voluptas nam voluptas quia. Velit inventore et occaecati et quos quia. Rem temporibus ipsa asperiores earum.', '<p>Iure itaque et totam animi est. Rerum accusamus velit ut enim occaecati. Vel aut atque aspernatur debitis incidunt unde nobis.</p><p>Ut cumque minus tenetur perspiciatis porro mollitia numquam. Ut quasi distinctio ab et quidem dolores facilis.</p><p>Similique consequatur eum ut corrupti atque officia et. A placeat omnis nulla odio officiis. Aut ut vel dignissimos eligendi iusto sapiente. Exercitationem distinctio ut autem.</p><p>Suscipit quo vitae unde cupiditate et mollitia dolorum. Illo delectus reiciendis dolorem architecto expedita unde in. Autem laudantium voluptatem animi recusandae. Cumque occaecati recusandae et.</p><p>Cum non ipsum hic facilis qui quas. Dolorem aut eum et qui quis qui odit excepturi. Maiores accusantium necessitatibus atque. Facere repellendus reiciendis rerum incidunt eum itaque id. Labore nulla autem quia provident vero eos culpa.</p><p>Neque qui facere magni adipisci. Ut hic asperiores cum accusantium laborum. Odit sit eaque et ut. Ducimus aliquam perferendis sed qui voluptatem unde. Reiciendis maxime alias omnis et qui.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(2, 1, 3, 'At libero molestiae.', 'velit-nihil-eligendi-vitae-non-voluptas-quis', NULL, 'Est ut ex rerum neque saepe. Omnis sed blanditiis aliquid consectetur aut. Odit blanditiis rem sequi iusto rerum iure. Optio quibusdam eum nemo omnis error. Ea dolor blanditiis est velit consequatur sunt possimus.', '<p>Quas et pariatur et veritatis et. Maxime quas fugiat ipsa ipsum. Quisquam dolore est esse et nemo sit voluptas fuga.</p><p>Incidunt earum ut cumque. Sunt ut rerum repudiandae aut eius in. Nostrum omnis qui ut voluptatem ab. Autem sapiente ea qui iusto occaecati architecto.</p><p>Incidunt nesciunt magni impedit perspiciatis ducimus. Ex molestiae et autem sequi tempora provident qui. Dolor nobis pariatur nemo consequatur quo repudiandae. Consectetur debitis in est ipsa sint a fuga.</p><p>Ut nulla placeat et tempora. Ut est iste ab deleniti nesciunt qui ut. Quis dolor ipsa eos velit est. Quo vel distinctio porro quidem qui sapiente.</p><p>Fuga qui nemo voluptatem eveniet. Quae quod praesentium aspernatur voluptas repudiandae fugit nihil. Dolor alias id fugit atque similique ipsum. Omnis consequatur quae quas quod voluptatum similique.</p><p>Nesciunt omnis hic consectetur soluta placeat ut. Quam et sunt suscipit dignissimos dolores quis. Optio nam voluptatem sint voluptatem culpa. Pariatur dolor dolores officiis labore quam fugit adipisci.</p><p>Ratione saepe qui voluptas fuga architecto excepturi dolorem consequatur. Aliquam rerum eaque est molestiae sint molestiae quod. Animi ea ut maxime tenetur harum. Et eius quia iure maxime ut itaque ea.</p><p>Magni laboriosam deleniti qui tenetur. Qui adipisci dolores possimus omnis ducimus omnis. Nesciunt qui at corrupti quasi.</p><p>Voluptates optio omnis voluptas voluptatum. Corrupti autem magni eveniet dicta omnis.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(3, 3, 3, 'Quo neque illo temporibus qui ut incidunt sit.', 'magnam-qui-debitis-nesciunt-qui-nisi-quia-autem', NULL, 'Totam consequatur repudiandae sed cumque qui nisi et voluptatibus. Reiciendis voluptas dolor enim iusto. Reprehenderit eum iure quia enim et cupiditate iste.', '<p>Illum assumenda et similique. Voluptates quae assumenda expedita est corporis ut rerum. Aut debitis dolores quam aut dolores possimus molestias. Unde porro vero adipisci.</p><p>Sit officia reprehenderit alias ut laborum. Aut odio qui repellendus modi deleniti deleniti consequatur. Maxime ut temporibus nesciunt aspernatur impedit nulla. Minima distinctio quasi et incidunt tempora quibusdam in.</p><p>Atque labore odit ratione quas. Aut quia harum et consequatur odit et. Omnis laudantium architecto voluptate modi dolores.</p><p>Est aut et voluptate ea pariatur. Expedita cumque quia odit et quaerat sed. Ut quibusdam est amet ut molestiae. Numquam veritatis voluptatem ipsum provident officia aut.</p><p>Delectus eligendi quaerat incidunt. Tempora molestiae qui consequatur. Ut consequatur dolore laborum dolor reiciendis dolore. Voluptatibus illum qui itaque est aliquid.</p><p>Rerum accusamus aspernatur error nobis voluptas doloribus consectetur. In fuga praesentium laborum minus magnam laborum et non. Culpa officia eos nulla quo ea esse.</p><p>In tenetur qui est velit neque et eaque. Laboriosam ab est dolores ea.</p><p>Neque et ullam doloremque sit sed. Non est aut asperiores laboriosam quia quis delectus. Voluptas repudiandae cupiditate nulla. At illum perspiciatis officiis enim. Perspiciatis ipsa cum voluptatem libero beatae at.</p><p>Et maiores numquam inventore corrupti ut aliquid. Et mollitia id velit dolor ea veniam sint non. Debitis blanditiis dolor qui earum quidem commodi dolores.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(4, 1, 1, 'Sapiente labore et ut ut quod.', 'dolorum-ipsum-nulla-quisquam-velit-esse-quam-voluptatum', NULL, 'A aspernatur id quia similique ut. Quos quia est dolore sapiente esse veritatis aut delectus. Et voluptatibus distinctio necessitatibus unde qui iste tempora. Sit ut sed aut eligendi voluptatem.', '<p>Magnam sint et dolor tempore quasi commodi sit. Voluptate nihil est ipsa repellat. Est natus sed et dolor ut.</p><p>Tempore at rerum maxime non iure. Quaerat enim culpa qui ipsam omnis sed. In provident velit occaecati laboriosam. Odio velit nobis nihil ab libero hic molestiae.</p><p>Fugit debitis tempora enim enim. Quia ut atque est veniam facilis quasi tenetur. Minima cupiditate recusandae non in enim incidunt.</p><p>Dicta et et fuga molestiae id ex. Quo sit consectetur officia et quibusdam dolores. Explicabo voluptas est id amet quia. Animi perspiciatis modi dolorem delectus. Dolor suscipit aliquid et.</p><p>Et sint dolorem unde ea ut. Et id modi corporis ut tempore impedit et quae. Voluptatem in rerum impedit dignissimos quia inventore laboriosam. Tempore quis consequatur aut.</p><p>Laborum repudiandae et repellat. Esse mollitia incidunt officia eius velit. Quo sint qui repudiandae reprehenderit unde.</p><p>Ea aut molestiae in sint. Nemo id natus porro nisi. Aut ad recusandae ut consectetur est. A sed qui voluptas.</p><p>Sapiente culpa libero dolor molestias. Sunt sit voluptatibus suscipit. Velit sequi et rem dolor quam autem illo recusandae.</p><p>Ipsa ad eum quia consequatur. Officia voluptatem magnam est magnam. Natus veritatis maiores quo et eum sunt quia.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(5, 3, 3, 'Quia sit nobis.', 'consequatur-qui-ipsam-modi-expedita-alias-amet-suscipit-consequatur', NULL, 'Aliquid dolorem dolorum quis saepe velit vero ad. Consectetur beatae provident et quia qui praesentium tenetur. Aperiam in laborum natus.', '<p>Dolor ut dolorem doloribus dolor occaecati aliquid. Est natus autem delectus qui aut consequatur voluptatem. Accusantium accusamus debitis omnis nihil nisi.</p><p>Quam aut culpa quos ut harum. Aut voluptatem voluptatum unde cum. Sequi id consectetur inventore provident consequuntur. Placeat aut mollitia quos consequatur. Temporibus animi illum esse eaque.</p><p>Ipsum et illo id esse quis veritatis repellat. Molestiae consequatur culpa eaque ut sed voluptas ab. Qui in beatae velit. Iure laboriosam officiis numquam. Placeat alias tempora et illum.</p><p>Rerum ratione minima autem qui itaque delectus at neque. Voluptatem deleniti voluptatem placeat cupiditate in. Earum ex et corrupti nisi. Sint aut quo iste consequatur et assumenda ratione.</p><p>Nisi est et sapiente consectetur et ratione. Et consequuntur fugit qui officiis eius odit vero.</p><p>Quod velit qui dolores consequatur magni autem corrupti. Iste doloremque commodi quasi aliquam numquam necessitatibus. Qui eos quo laudantium. Sapiente distinctio amet ab hic velit eveniet.</p><p>Atque recusandae qui dolores sint quae ipsa omnis dignissimos. Sint provident quia voluptatum quo repellendus. Ipsum sit voluptatem modi dolore provident quia. Fugiat repellendus vitae repellat sint est eius sit.</p><p>Nisi non doloremque eveniet omnis nemo veniam repudiandae. Et ipsum nihil sint perferendis et. Omnis nulla ut sit nesciunt doloremque. Quibusdam aut iusto qui commodi eum natus.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(6, 1, 1, 'Neque officia hic aut aperiam aut doloremque.', 'quasi-ducimus-nostrum-impedit-sint-cumque-error', NULL, 'Rerum commodi nisi impedit reiciendis. Ducimus aut quis est praesentium ea. Ut dicta provident est quo et perspiciatis perspiciatis. Optio in tempore quod porro sunt quis.', '<p>Recusandae sed odio quaerat consectetur. Dolore incidunt non itaque distinctio omnis beatae aspernatur.</p><p>Eos pariatur pariatur et architecto libero. Necessitatibus architecto error perferendis possimus non ut. Laborum voluptatum laboriosam qui neque.</p><p>Provident non aut perspiciatis quis. Similique quia itaque aut eius reiciendis.</p><p>Nulla eos sed consequatur nulla sit ut. Modi fuga placeat quae et ut. Quia et ut quis qui in ut.</p><p>Officiis dolor ipsa ut quasi. Recusandae velit eos nihil nam officia quas ipsam. Perferendis voluptatibus nam fugit natus.</p><p>Sed est expedita dolore nihil. Sit veritatis cumque porro non aliquam modi omnis. Molestiae porro cupiditate asperiores maiores. Rerum necessitatibus officia sed enim consequatur. Asperiores nostrum animi qui corrupti.</p><p>Molestiae molestias itaque error et. Molestias ut nostrum voluptatum qui sed qui. Eos tempore in accusantium earum doloremque commodi.</p><p>Quis et quidem consequatur inventore quasi sed quia. Omnis itaque illo et earum vero ut qui accusamus. Voluptatem magni suscipit deleniti vitae aut.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(7, 2, 2, 'Quis autem.', 'totam-vel-neque-placeat-impedit-ad', NULL, 'Voluptates incidunt neque quos. Maxime omnis rerum repellat animi sapiente. Dolores qui voluptas ut quia quasi sequi.', '<p>Voluptatem et quo ipsum autem. Architecto atque ipsam dolorum quibusdam quibusdam. Veritatis nam consequuntur magni sapiente nostrum sapiente expedita pariatur.</p><p>Adipisci enim consequatur sit consectetur nobis impedit. Vel perferendis ut nulla et a aperiam. Aut voluptas dolor necessitatibus.</p><p>Sed et eius earum in itaque labore. Aut rerum eius sunt et blanditiis. Quasi laboriosam voluptas magni sequi dolores consequatur occaecati.</p><p>Nemo sint aut vel aliquid. Vero et nostrum consectetur. Sed ut aut ipsam dolor esse nihil minima explicabo.</p><p>Explicabo ipsam ut facilis sunt iste. Quas laborum dicta repellendus dolorem id sed et. Voluptates possimus excepturi deserunt consequatur autem fuga. Dignissimos repellendus aut eum in consequatur qui quasi.</p><p>Minus quos tempora ad qui nihil totam. Et voluptatem expedita voluptatibus et ducimus dolore non necessitatibus. Facilis animi culpa autem suscipit. Et voluptate necessitatibus aspernatur libero.</p><p>Quisquam accusantium quibusdam quae aut aut. Consectetur quam in amet sequi. Deserunt vel sunt dolorem sint. Ut est sunt sit expedita explicabo vitae.</p><p>Numquam facere perferendis cupiditate a incidunt commodi dolores consequatur. Et iure totam vel dolores. Cum voluptatem voluptatibus ipsam voluptatem.</p><p>Ex quis aspernatur et omnis corporis. Non voluptate qui dolorem nihil dolores est. Labore vel molestias asperiores id laboriosam.</p><p>Voluptatem sequi vero voluptatem quod ullam delectus odio. Ut omnis ut ad aperiam. Voluptates dolores eaque voluptas nihil aut. Debitis quis quibusdam ipsum eveniet rerum voluptas.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(8, 1, 3, 'Sit sunt.', 'molestiae-ullam-dolores-vel-voluptatem', NULL, 'Eius placeat quasi quia quia ratione vel dolores. Non laudantium quibusdam numquam sint amet tempore. Incidunt quae ea quia debitis dolorum quae iste. Dolorem nostrum qui eum pariatur.', '<p>Nesciunt mollitia porro voluptas autem aspernatur et facere voluptas. Expedita iusto incidunt ea qui illum. Molestiae itaque sunt iste velit quasi magni.</p><p>Ab architecto explicabo amet officia. Officiis nobis quis et. Voluptas placeat nemo aut.</p><p>Sed tempora ut velit officia est aliquid ipsum quia. Qui consectetur eligendi corporis ipsa ducimus labore aliquid. Et quisquam iste nesciunt aperiam veritatis sunt.</p><p>Laborum quisquam dolorem et aut ab perspiciatis. Deleniti porro est provident. Quidem voluptatum aut et quas veniam veniam.</p><p>Dolorem eos voluptate aut debitis saepe minima est sit. Omnis doloribus voluptatem aut mollitia. Ex quasi in quasi similique voluptates suscipit.</p><p>Tempore perspiciatis unde ex optio. Quas necessitatibus aut eum consequatur sequi ut saepe impedit. Animi magni enim illum molestias quo tempore a.</p><p>Itaque pariatur inventore repudiandae totam. Et fugiat quis et neque aut accusamus. Neque ut labore sed.</p><p>Esse veritatis ut ipsa quia. Aut incidunt et quia voluptatem ea suscipit. Veniam aliquid iure ipsam consequatur.</p><p>Fugit pariatur excepturi non. Sunt quam assumenda fuga voluptatem repellat eligendi quos. Accusantium occaecati quisquam quam velit.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(9, 1, 2, 'Explicabo fugiat aut quae perferendis aut sequi maxime.', 'amet-provident-non-rerum-aut-debitis-maxime-atque-quam', NULL, 'Est nobis et nam atque eveniet sunt nemo. Nam hic nulla quo. Consectetur ea ut amet sed.', '<p>Mollitia et sunt iusto recusandae corrupti similique tenetur quia. Culpa est corporis perferendis est voluptatem excepturi qui incidunt. Mollitia amet ratione debitis tenetur est molestiae libero aperiam.</p><p>Ut omnis doloremque quaerat tempora minus nisi. Et qui autem temporibus laboriosam. Tempora vero incidunt occaecati est corporis corporis suscipit.</p><p>Sequi architecto ipsam laudantium. Esse sapiente veniam culpa rerum eius. Dolorem voluptatem dolores expedita adipisci provident atque et.</p><p>Accusantium voluptas officia delectus nemo temporibus qui asperiores. Laborum voluptate aspernatur eius dicta. Delectus odit eligendi iste ullam et culpa.</p><p>Quibusdam numquam id labore natus non. Perspiciatis asperiores ex rerum dolores labore. Deleniti similique dolorum explicabo explicabo repellat. Magnam cupiditate aut aliquam at facilis quae nemo.</p><p>Soluta repellendus nulla sapiente consectetur sint id nostrum a. Ipsam eaque nihil ea aliquam facilis sed officia. Aut aperiam consequuntur necessitatibus architecto. Omnis et sint doloremque harum ut.</p><p>Fuga occaecati impedit occaecati similique neque ex. Qui deserunt ea neque ea magnam est. Eum et ut facere eum fugit sed. Perferendis quos doloremque sit recusandae qui.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(10, 1, 1, 'Et distinctio quia.', 'ipsum-quia-et-voluptas-veritatis-accusamus-quas', NULL, 'Quo voluptas consequatur voluptate laborum officia nihil. Praesentium dolorem excepturi dolores non doloribus. Aliquid rem tempora ad quibusdam in dicta. Nisi numquam et voluptas.', '<p>Nemo nisi minus quia voluptates iste. Quia totam maxime neque eos. Odit at ducimus est veritatis.</p><p>Eligendi repellendus id libero. Voluptatem voluptate id velit. Nihil vitae consequatur ut qui corrupti nemo et.</p><p>Aperiam dolorum neque facere quidem unde iste. Doloremque hic quia animi blanditiis fugiat vero. Explicabo molestiae dolor praesentium iure.</p><p>Accusantium maiores praesentium ea veniam eaque et. Voluptas illo amet rerum quis vitae doloribus reiciendis. Atque enim quia pariatur quam expedita. Voluptatem qui perspiciatis culpa blanditiis eligendi. Nostrum sed praesentium est voluptas.</p><p>Molestias deleniti non corrupti aut. Rerum sapiente adipisci et laboriosam distinctio eaque. Consequuntur adipisci similique et consequuntur ea non facilis.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(11, 1, 2, 'Maxime saepe.', 'beatae-voluptatem-ea-ut-delectus-reiciendis-tempore', NULL, 'Perspiciatis commodi mollitia omnis. Soluta maxime consectetur est molestias dolores unde. Ut non aliquam ex minus maiores. Laboriosam ratione dolorem doloremque facilis iure iusto alias.', '<p>Consequatur et porro nihil quisquam at voluptatum quisquam. Minus laboriosam sit dolores veniam maxime velit. Et et quae quis.</p><p>Modi nulla nulla aut neque necessitatibus corrupti maxime aperiam. Qui consequuntur quasi quae sunt. Quis sapiente neque natus quia iure cupiditate eum. Saepe est et non aut.</p><p>Ab dicta ut blanditiis ea rerum ullam rem. Earum neque molestiae culpa placeat aspernatur assumenda nostrum rerum. Ea dolore ab in et atque numquam. Veritatis eaque atque id repellendus excepturi in.</p><p>Eos perferendis ad commodi velit. Ut blanditiis occaecati quasi in ex nulla. Explicabo sint minima vitae velit ipsa.</p><p>Voluptas aperiam sint dolorum praesentium voluptatum. Beatae corrupti ex cupiditate ipsam qui porro. Error voluptatem eligendi molestias in quisquam iusto.</p><p>Et est nemo molestiae quos et doloremque pariatur. Et rem sit dolores occaecati animi minima. In ex enim consequatur.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(12, 1, 3, 'Voluptatem qui dolorem ut magnam et magnam laborum nemo et quos.', 'similique-aliquid-nemo-omnis-magni', NULL, 'Quia beatae autem libero. Neque eum omnis perspiciatis debitis. Possimus maiores consequuntur dolorem illum. Ipsum est accusamus temporibus earum autem est rem. Reprehenderit velit facilis sapiente.', '<p>Eius similique similique ut ducimus laborum dolor quia. Provident ratione et reiciendis quia sint. Vero et nobis molestiae nulla excepturi. Fugit accusamus eum tempore libero aut doloremque.</p><p>Id nemo recusandae sed maiores earum. Tempore ea aperiam dicta deserunt quibusdam voluptatem. Repellat sequi nam a a expedita consectetur. Illum temporibus nisi itaque et ex minus. Aut voluptatem voluptatibus ut aperiam assumenda.</p><p>Laudantium quis veritatis repudiandae voluptatem ex commodi recusandae reiciendis. Minima saepe quidem ipsa aliquid. Vitae et quisquam voluptate voluptas sunt perferendis. Culpa repudiandae et dignissimos reprehenderit.</p><p>Quae odio a omnis temporibus consequatur. Ut occaecati numquam repellendus facere et molestiae quibusdam. Consequatur illum eveniet adipisci voluptate quia. Ea praesentium aspernatur possimus nemo rerum numquam explicabo.</p><p>Impedit temporibus illum excepturi sunt molestiae unde aut. Nostrum sit qui blanditiis sed natus dolorem. Fuga aut et neque amet minima laudantium.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(13, 2, 3, 'Unde quia ullam voluptatem nostrum doloremque facere repellendus quis.', 'explicabo-expedita-assumenda-est-corrupti', NULL, 'Alias officiis ut facilis. Inventore debitis quia nisi. Autem tempora perferendis officia nemo quia.', '<p>Labore voluptatem est recusandae qui corporis adipisci iste. Nemo quis dolor rem quas porro quas. Nobis fugit quis accusamus. Sit sed autem hic dolore unde illum enim.</p><p>Ut dolores corrupti reiciendis modi deleniti. Eum ea aspernatur quis pariatur. Modi dolorem qui omnis inventore. Explicabo labore dolorem vel sapiente voluptatem voluptatibus perspiciatis ea.</p><p>Et quas est nobis repellat beatae quaerat. Adipisci suscipit ex cupiditate et enim.</p><p>Et non nobis nulla ut cumque. Sit consequatur consequatur consequatur error laudantium non. Nostrum sint aut accusantium mollitia voluptatem error hic.</p><p>Omnis dolores molestiae ipsa quis at. Eum voluptas non illum ut. Commodi optio recusandae facilis non voluptas.</p><p>Nisi nemo nihil delectus neque minus eos a. Dolores nulla quo repudiandae id est earum fugit. A quo eveniet natus animi.</p><p>Amet aut praesentium nisi aspernatur nostrum. Omnis nostrum et velit quis amet occaecati. Laudantium sed numquam ullam unde. Quis molestiae hic mollitia tempora eligendi nobis dolorem qui.</p><p>Illo aut eaque ipsum dolore distinctio. Cum facilis exercitationem quos et at tenetur praesentium. Accusamus suscipit atque iure est quidem est. Est voluptate et nostrum sit qui tempore. Architecto ipsam quo aut sunt.</p><p>A at ut et aperiam libero hic. Consequatur iure velit et aut maiores. Qui illum ab quaerat possimus dicta. Recusandae minus saepe repellat dolorem ut magni.</p><p>Sunt tenetur non mollitia eum facere ab quibusdam. Doloribus voluptas non incidunt cupiditate rerum. Doloremque nihil ex dolorem sunt quis voluptatem. Sed dolores sint eos ut ab.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(14, 3, 1, 'Quis quo nihil eos commodi consectetur quia ipsum itaque omnis.', 'accusamus-blanditiis-libero-ut-odio-error-dolor-quasi', NULL, 'Culpa voluptatem quo ipsam sed deleniti aut. Quaerat deserunt quis voluptas ut. Occaecati blanditiis dolor fugit unde rerum. Minima omnis officia soluta dignissimos ut consequuntur.', '<p>Enim magnam sit eos aut omnis nemo perferendis. Laboriosam voluptatem iusto veritatis inventore deleniti eos.</p><p>Eos eum nemo et aperiam. Quia omnis officiis velit illo mollitia saepe. Non esse consectetur earum voluptatibus enim sed exercitationem. Nulla dolor porro eum earum illum quae ea.</p><p>Asperiores corrupti voluptas cumque qui. Sunt voluptatem harum suscipit est quia rerum consequatur. Omnis iste veritatis id nemo ut. Eum consequatur autem harum tempore error.</p><p>Dolores at dignissimos qui amet. Quas veritatis tenetur sapiente consequatur dolor vel. Occaecati nihil velit ea consequatur.</p><p>Cupiditate et voluptas nihil quidem quia soluta praesentium at. Error animi optio et nobis eum quis. Suscipit quidem consequatur iste at labore tenetur occaecati.</p><p>Eos ullam labore nemo laboriosam voluptas. Vero officiis facere est ut voluptatibus. Dolores expedita ducimus soluta. Repudiandae ut minus numquam a molestias est.</p><p>Sit rerum voluptatibus dolore nostrum quia. Voluptatem et cum sed. Illum sunt molestiae aut asperiores.</p><p>Illo deleniti at reprehenderit delectus nobis quasi. Rem mollitia officia illum. Quam in aut et eos velit ipsa. Architecto odit aperiam voluptate omnis. Inventore itaque quis earum modi recusandae.</p><p>Repellendus expedita in molestiae. Vel ut eos animi fugiat consectetur qui. Pariatur amet optio voluptatem maiores quos enim.</p><p>Vero nobis minima ducimus. Reprehenderit qui at sed nostrum. Eum molestias aut corrupti consequatur iure consectetur cum. Ipsum voluptatem mollitia distinctio iste velit et.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(15, 1, 2, 'Aliquid et ipsam fugiat ut facilis quia earum qui.', 'nostrum-assumenda-voluptas-soluta-quo-ducimus-quo', NULL, 'Doloribus blanditiis fuga autem modi rerum sed. Iusto beatae quod magnam inventore architecto aspernatur. Commodi nostrum illo sint nisi omnis cupiditate aut eos. Odio numquam id voluptas nisi.', '<p>Non provident pariatur et tempora et eligendi. Labore perferendis veniam autem beatae consequatur eveniet consequatur omnis. Assumenda reiciendis maiores deleniti culpa expedita. Omnis dignissimos harum illum veritatis autem eaque.</p><p>Possimus dolor deleniti aspernatur et quam asperiores. Recusandae similique perferendis voluptatem nulla accusamus quia.</p><p>Magni totam corporis nam cum ea. Voluptatem eum laudantium necessitatibus assumenda minus voluptas magni. Ipsa quia officiis voluptatem molestiae dolorem sed.</p><p>Doloremque voluptatem consequatur consequatur. Doloremque eum delectus eos atque. Eos sint sed ab illo voluptatem voluptatem et. Et aliquam accusantium consequuntur dolorem non.</p><p>Dolorem libero quasi corporis. Aut sit aperiam doloremque quaerat. Blanditiis illum maxime ex.</p><p>Omnis delectus odit ipsa sed repudiandae nulla nihil minus. Vel facilis voluptates minus eos ut dolor a. Illum et est temporibus. Sit ducimus ut enim sit ut est consequatur.</p><p>Voluptates vel aut molestias non rem. Ratione harum architecto deleniti accusamus. Magni expedita rem est. Sit sapiente rerum qui eligendi repellendus facilis.</p><p>Optio sint enim quas esse. Culpa non enim et doloremque. Enim quas ea autem. Quaerat cum numquam autem maiores.</p><p>Occaecati in molestiae et quod possimus voluptatem ab. Asperiores omnis sit distinctio consequatur et. Laborum itaque perspiciatis sit maxime non. Est distinctio provident iure ab repellendus a.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(16, 3, 2, 'Ad consequuntur quo libero rerum.', 'est-earum-et-aut-nostrum', NULL, 'Consequatur accusantium voluptatem et quo aspernatur dolorem. Iste laboriosam et omnis omnis quis.', '<p>Et ut voluptatem iusto aliquid et suscipit accusantium. Magni fugiat mollitia deleniti eum voluptatem aut. Sapiente libero ratione modi similique vel ut illo.</p><p>Aut iusto ipsam eius voluptatibus. Aliquam reprehenderit minima vel velit. Est est culpa eum tempora. Eveniet sit aut explicabo consequatur ipsam maxime. Quas est error asperiores ut exercitationem qui accusantium neque.</p><p>Id velit ducimus et ut. Voluptatem qui veritatis sapiente dicta culpa. Sit aut fuga sed id ea esse minima. Dolorum sed quia eius ut. Voluptates voluptates in rerum.</p><p>Sed voluptates accusamus dolore praesentium neque perferendis maxime. Ut quas voluptas harum impedit dolor dignissimos. Ut et excepturi dolores in excepturi animi.</p><p>Distinctio ipsum sint nobis nobis totam omnis. Nobis voluptatem nam exercitationem molestiae omnis velit. Exercitationem eos dolorum voluptas in. Sunt voluptatem vero ut dignissimos ipsa.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(17, 3, 1, 'Ut earum doloremque omnis unde autem enim.', 'voluptatem-et-voluptates-pariatur-nisi-autem', NULL, 'Aliquam sit aliquam voluptatem quia. Nobis ea itaque consectetur ea delectus. Et nihil sapiente maiores repudiandae fugit et accusantium. Maxime enim consequatur dolor aut.', '<p>Molestiae maxime soluta labore asperiores corrupti. Recusandae perspiciatis impedit nesciunt voluptates labore et perferendis. In enim aut architecto rerum rerum delectus dicta. Porro harum nobis possimus. Dolores rem voluptatem molestiae.</p><p>Aliquam omnis quia rem nostrum maiores et facere. Ullam omnis sed eos qui suscipit.</p><p>Molestiae sed sit consequatur eius et ex quasi. Dolores iste voluptatem fuga rerum perferendis quia maiores. Dolore et quis qui aspernatur sit. Ab assumenda minus non qui.</p><p>Quo qui facere harum aliquam voluptatibus temporibus eum sint. Officiis et soluta itaque quidem suscipit. Iure nulla suscipit iste fuga.</p><p>Aut facilis eos omnis alias. Sed minus accusamus et veritatis. Delectus quas iusto maxime ut dolor deleniti. Quis quam cum unde. Autem recusandae vitae nihil sunt placeat sequi ratione.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(18, 2, 2, 'Deleniti ad quaerat minima blanditiis soluta vel sit.', 'veritatis-ducimus-dolorum-voluptatum-soluta-et-alias-reiciendis', NULL, 'A veritatis qui quidem eligendi nisi. Expedita exercitationem ratione aut fugit quasi. Vel nesciunt quas mollitia consectetur dolores. Tempora deserunt voluptates accusantium molestiae inventore modi animi illum.', '<p>Quod maxime deleniti voluptatem inventore provident. Quo omnis aut nihil aut velit nam veritatis eum. Consequatur molestiae quidem fugit voluptatibus.</p><p>Aut qui ut autem quam. Saepe deleniti eos neque. Suscipit at vel unde. Molestiae eaque asperiores non saepe voluptate et sit.</p><p>Sed minus modi error eum possimus totam. Ducimus rem maxime expedita eum eveniet assumenda. Fuga voluptate iure recusandae magnam quod.</p><p>Quaerat ipsam consequatur fugit deleniti facilis aperiam fuga. Expedita ratione excepturi maiores voluptatem voluptas.</p><p>Numquam voluptatem similique sed ratione enim autem expedita quidem. Ut qui repellendus molestiae quia. Id eligendi expedita cumque consequuntur sed aliquid. Magni ratione quia omnis molestiae. Sit quibusdam iure voluptatum sit error quis quis.</p><p>Est hic a consequatur consequatur facilis consequuntur amet. Est et commodi labore modi. Pariatur ratione nemo eligendi. Eos officiis tenetur et sint.</p><p>Asperiores commodi ullam tempore inventore. Laborum voluptatem omnis quaerat dolores. Praesentium dolores sunt earum est odit.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(19, 1, 3, 'Voluptatibus optio aspernatur omnis ea ut corporis.', 'delectus-natus-voluptas-praesentium-ea', NULL, 'Cumque magni minus aut rem quae explicabo. Sed non et earum ipsum. Ipsam nobis voluptates architecto officia atque. Explicabo libero voluptates quo exercitationem quibusdam et quas.', '<p>Officiis similique nesciunt provident nostrum. Nulla quo eum qui commodi mollitia. Et voluptatem aliquam voluptas inventore.</p><p>Aut enim aut aut. Et aperiam voluptatum fugit consectetur id. Velit voluptatem nostrum quaerat molestias. Quidem natus quia ratione sed voluptates dolorum.</p><p>Id inventore voluptatem aut molestiae dignissimos ducimus. Sunt ut voluptas quis voluptas. Qui modi unde recusandae provident deserunt error.</p><p>Rerum consequatur maxime est. Et est id magnam officia. Doloribus quaerat voluptatum excepturi itaque consequatur.</p><p>Et voluptas eligendi dicta est consequatur unde voluptatem. Magni qui ipsum sunt maxime. Enim dolorem ipsam alias in.</p><p>Praesentium minus non odit ipsam voluptas. Et libero quo perferendis repudiandae. Quisquam quis eveniet veritatis cum. Enim molestiae sequi odit.</p><p>Et totam earum sunt iste reiciendis id eum. Ad aliquam cupiditate est earum dolor ut. Et delectus quia recusandae ipsam. Autem ad rerum illum nobis velit ad.</p><p>Consequatur nemo sunt consequatur qui quis. Placeat placeat quam voluptatem perferendis exercitationem enim. Vel unde vel odit nihil voluptates similique. Aut distinctio nihil consectetur numquam. Harum veritatis cumque nobis dignissimos.</p><p>Et est eligendi vitae non. Exercitationem assumenda corrupti illum incidunt. Rerum eius incidunt dolorem nesciunt velit. Ea consequatur veritatis esse quis cupiditate cum et.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(20, 2, 2, 'Tempora nisi.', 'voluptatem-dolorem-eligendi-cupiditate-distinctio-repellat', NULL, 'Recusandae animi culpa repudiandae similique et ex velit. Sit aut dolorem hic omnis eum neque. Labore est et molestias illum non vel. Dicta dolores qui id ut at facilis esse.', '<p>Mollitia illo non ducimus odio est quasi quia. Voluptatum aliquid ex expedita. Eum architecto dolores labore laudantium quidem.</p><p>Et non odit est dolor. Voluptatibus alias modi sit cum eos aut. Eos dolor consequuntur ab aut sit voluptatem et.</p><p>Magni vel sunt fuga ab minus id porro. Qui rem quis voluptatem velit perferendis debitis. Qui quis sunt corporis quae et nostrum.</p><p>Eos vel beatae suscipit iusto dolores ut id. Blanditiis rerum temporibus est ducimus veritatis unde quae. Quibusdam qui dolore debitis ut fugiat. Voluptatibus similique facere maxime autem.</p><p>Quis et odio excepturi assumenda nisi cumque hic deserunt. Nesciunt ea reiciendis repellendus reprehenderit officia. Unde soluta fugit magnam quia atque esse quasi.</p><p>Sit adipisci deleniti unde assumenda quod quia eum. Aliquid vel est est eveniet. Sit perspiciatis suscipit ullam porro voluptate quidem expedita. Tempora doloribus consequatur deleniti aperiam accusamus.</p>', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04'),
(24, 1, 1, 'Eed Gans', 'eed-gans', 'post-image/YH0BnriLpYCVYamwBcrndlPtnH47pkBEc8kTxrkT.png', 'EIGER Adventure merupakan produk asli Indonesia yang berkualitas, pertama kali berdiri pada tahun 1989 sebagai produk yang memenuhi berbagai kebutuhan perlengkapan dan peralatan bagi gaya hidup para p...', '<ul><li>EIGER Adventure merupakan produk asli Indonesia yang berkualitas, pertama kali berdiri pada tahun 1989 sebagai produk yang memenuhi berbagai kebutuhan perlengkapan dan peralatan bagi gaya hidup para penggiat alam terbuka di iklim tropis. EIGER menyediakan tiga kategori produk utama, yaitu Mountaineering yang berorientasi pada kegiatan pendakian gunung, Riding yang berfokus pada penjelajahan sepeda motor, serta Authentic 1989 yang diinspirasi dari gaya klasik para pencinta kegiatan petualangan alam terbuka yang diwujudkan dalam desain yang kasual dan stylish.<br><br>Awali petualangan luar ruang bersama EIGER. Lengkapi dengan berbagai koleksi produk EIGER favorit dan original. Dengan berbagai metode pembayaran mulai dari paylater, bank transfer, hingga COD. Dapatkan juga harga terbaik dan promo menarik untuk berbagai barang pilihan. Proses aman, nyaman, pasti fast response hanya di eigeradventure.com. EIGER bukan hanya memberikan kontribusi pada kegiatan luar ruang, namun turut memberikan perhatian yang besar terhadap kelestarian lingkungan. Berbagai produk EIGER mulai dari apparel hingga berbagai gear penunjang kegiatan luar ruangmu disini!<br><br></li></ul>', NULL, '2023-01-04 18:10:35', '2023-03-09 20:40:43'),
(27, 2, 5, 'www', 'www', 'post-image/v1D3zEDOw1ZVpPxpVnzea1SWuETIhOed5IjBXUsj.png', 'sadddddddddddddddddddddddddwedewfw', '<div>sadddddddddddddddddddddddddwedewfw</div>', NULL, '2023-03-09 20:43:05', '2023-03-09 20:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Eed Suaidi', 'eed', 'eed@gmail.com', NULL, '$2y$10$Y.oLBbRlnQ0q6Dv4cLcrGuPuImjIU/uqt6XEohlOnoH/zPX3dXMFW', NULL, '2023-01-04 17:48:04', '2023-01-04 17:48:04', 1),
(2, 'Emong Manullang', 'martani.yolanda', 'jagapati.padmasari@example.net', '2023-01-04 17:48:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aYBWbvAHOw', '2023-01-04 17:48:04', '2023-01-04 17:48:04', 0),
(3, 'Wani Puti Pratiwi', 'julia65', 'sabrina28@example.com', '2023-01-04 17:48:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QK0lQT8zR7', '2023-01-04 17:48:04', '2023-01-04 17:48:04', 0),
(4, 'Raden Hakim', 'qmansur', 'suryatmi.kawaca@example.net', '2023-01-04 17:48:04', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LIhvPvvzo8', '2023-01-04 17:48:04', '2023-01-04 17:48:04', 0),
(5, 'pro', 'pro11', 'pro11@gmail.com', NULL, '$2y$10$cIZlIGjMQ59ifU5pyh3Ptu659dO8IOJoYHUW7bYNaP2aDMIH9ByYm', NULL, '2023-03-09 20:42:28', '2023-03-09 20:42:28', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
