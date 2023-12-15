-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 10:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barrio`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(76, 'Account', 'Person created', 'App\\Models\\Person', 'created', 26, 'App\\Models\\User', 1, '{\"attributes\":{\"person_id\":26,\"salutation\":\"Mr.\",\"first_name\":\"Venjo\",\"middle_name\":\"Sicat\",\"last_name\":\"Lopez\",\"created_at\":\"2022-11-20T16:44:40.000000Z\",\"updated_at\":\"2022-11-20T16:44:40.000000Z\"}}', NULL, '2022-11-20 16:44:40', '2022-11-20 16:44:40'),
(463, 'Notice', 'Notice created', 'App\\Models\\Notice', 'created', 35, 'App\\Models\\User', 15, '{\"attributes\":{\"notice_id\":35,\"notified_by\":null,\"date_of_meeting\":\"2023-12-04 15:13:00\",\"case_no\":2024004,\"notice_type_id\":null,\"notified\":null,\"date_filed\":null,\"date_notified\":null,\"created_at\":\"2023-12-04T07:13:32.000000Z\",\"updated_at\":\"2023-12-04T07:13:32.000000Z\"}}', NULL, '2023-12-04 07:13:32', '2023-12-04 07:13:32'),
(464, 'Notice', 'Notice updated', 'App\\Models\\Notice', 'updated', 35, 'App\\Models\\User', 15, '{\"attributes\":{\"notice_type_id\":1,\"notified\":0,\"date_filed\":\"2023-12-04 15:13:41\",\"updated_at\":\"2023-12-04T07:13:41.000000Z\"},\"old\":{\"notice_type_id\":null,\"notified\":null,\"date_filed\":null,\"updated_at\":\"2023-12-04T07:13:32.000000Z\"}}', NULL, '2023-12-04 07:13:41', '2023-12-04 07:13:41'),
(465, 'Notice', 'Notice created', 'App\\Models\\Notice', 'created', 36, 'App\\Models\\User', 15, '{\"attributes\":{\"notice_id\":36,\"notified_by\":null,\"date_of_meeting\":\"2023-12-04 15:13:00\",\"case_no\":2024004,\"notice_type_id\":2,\"notified\":0,\"date_filed\":\"2023-12-04 15:14:26\",\"date_notified\":null,\"created_at\":\"2023-12-04T07:14:26.000000Z\",\"updated_at\":\"2023-12-04T07:14:26.000000Z\"}}', NULL, '2023-12-04 07:14:26', '2023-12-04 07:14:26'),
(466, 'Notice', 'Notice updated', 'App\\Models\\Notice', 'updated', 35, 'App\\Models\\User', 15, '{\"attributes\":{\"notified_by\":15,\"notified\":1,\"date_notified\":\"2023-12-04 15:14:29\",\"updated_at\":\"2023-12-04T07:14:29.000000Z\"},\"old\":{\"notified_by\":null,\"notified\":0,\"date_notified\":null,\"updated_at\":\"2023-12-04T07:13:41.000000Z\"}}', NULL, '2023-12-04 07:14:29', '2023-12-04 07:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `amicable_settlements`
--

CREATE TABLE `amicable_settlements` (
  `settlement_id` bigint(20) UNSIGNED NOT NULL,
  `date_agreed` datetime DEFAULT NULL,
  `agreement_desc` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amicable_settlements`
--

INSERT INTO `amicable_settlements` (`settlement_id`, `date_agreed`, `agreement_desc`, `created_at`, `updated_at`) VALUES
(1, '2022-11-28 18:51:23', 'Ms. Garcia will be released but given a sanction of public service after she completed her two weeks of quarantine.', '2022-11-26 10:51:23', '2022-11-26 10:51:23'),
(2, '2022-11-28 18:58:33', 'Rojero agreed to render a public service to Brgy. 385 for violating Article No. 177 and 179.', '2022-11-26 10:58:33', '2022-11-26 10:58:33'),
(3, '2023-11-29 21:40:54', '1', '2023-11-29 13:40:54', '2023-11-29 13:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `arbitration_agreements`
--

CREATE TABLE `arbitration_agreements` (
  `agreement_id` bigint(20) UNSIGNED NOT NULL,
  `hearing_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_made` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arbitration_agreements`
--

INSERT INTO `arbitration_agreements` (`agreement_id`, `hearing_id`, `date_made`, `created_at`, `updated_at`) VALUES
(1, 12, '2022-11-26 17:14:44', '2022-11-26 09:14:44', '2022-11-26 09:14:44'),
(2, 16, '2023-11-25 19:24:28', '2023-11-25 11:24:28', '2023-11-25 11:24:28'),
(3, 18, '2023-12-03 22:29:33', '2023-12-03 14:29:33', '2023-12-03 14:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `arbitration_awards`
--

CREATE TABLE `arbitration_awards` (
  `award_id` bigint(20) UNSIGNED NOT NULL,
  `date_agreed` datetime DEFAULT NULL,
  `award_desc` longtext DEFAULT NULL,
  `made_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arbitration_awards`
--

INSERT INTO `arbitration_awards` (`award_id`, `date_agreed`, `award_desc`, `made_by`, `created_at`, `updated_at`) VALUES
(1, '2023-12-03 22:29:57', 'Pumayag na po siya sa kasunduan', 15, '2023-12-03 14:29:57', '2023-12-03 14:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `blotter_report`
--

CREATE TABLE `blotter_report` (
  `case_no` bigint(20) UNSIGNED NOT NULL,
  `case_title` varchar(255) DEFAULT NULL,
  `complaint_desc` longtext DEFAULT NULL,
  `relief_desc` longtext DEFAULT NULL,
  `date_of_incident` datetime DEFAULT NULL,
  `date_reported` datetime DEFAULT NULL,
  `processed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `compliance` tinyint(1) NOT NULL,
  `date_of_execution` datetime DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blotter_report`
--

INSERT INTO `blotter_report` (`case_no`, `case_title`, `complaint_desc`, `relief_desc`, `date_of_incident`, `date_reported`, `processed_by`, `compliance`, `date_of_execution`, `remarks`, `created_at`, `updated_at`) VALUES
(2022001, '6ycuRvlc4lfu37OQnUD5Wi6Nl9A0rQx+ahMJiCV1YSo=', 'Lvg1c9BYSFQDTCrYb4bteJ2CYAkwsv9QntE5pV8RUw9M6TZhf/67zOrVoA4nJlTrRahGFmvIjog3li34jn440FgJF/7yeN09SYZzr0WYpJ2rii6qiOvE5tFt+OKz8wkK/8oMddqpOeGIR315xdyfm6wZqbkIxa+tF7wGUYwYiL+UQEu8JsP65gs5QC2EuR2n7EWSDqCtwVc5bPoOi47F360xqEj3whEhHJ842ftCMraXc/8IAbGIMRNmojho6SPJhZnm7z4dmVfVDnSRHUyaU7KkP8fMdKujZpMbBLHTSCY1m/X7pKQD9tOavxcUe9glg5xLeuDG0GTNX4Mwq2XWiDbzCEDWXckzM4NpO6lbS7+Q0Q5jlngiF3HiNd6tDvR9om4+W7wlSnnj2RtwvNUVbwWjRfqEu08PnG0HNSySx4I=', 'k8f5pLyiGMU/noOwKRw4UEqkbQX6gcwHiJS+bW+9cvKf2Uis+WFBFJJ09Hd3uVu5o9H/yb1DEI32QlQSYGp1qe37xu3nDtZXRuMnVXDnm0pZVCctr5UxLIWUpGWV2cFvt93HkpajMrM1IvrAm3IVmX5EbPw4cGJy51XYcIJhK/xWqG5mKrWaP04VjlnpyFhdpB5aCN8u4q76I5lbkgetxeheXZ/VPmCmTn6zUg3LBcZUOWGMhf0zYYRXTBOpXL41', '2020-06-18 00:00:00', '2022-11-21 00:18:00', 1, 1, '2022-11-28 00:00:00', 'None', '2022-11-20 16:18:00', '2022-11-26 11:01:08'),
(2022002, 'EaUp4MGEFVmVGQXzPAOHoFOs4zudLEGwq36QbdbuVF4=', 'JZpZEp2fwTsdqzPc8dTCP6l++d9lexR3yfnm7Z9mJ2+A1OsHcJmoXTGbxJpj50RX2EhnfyUGD3EU07j3MN6+iwAlaLrR0kMUQTx8qTmezgbCeYogQbqPnkW1nvPbdG0PyN3dcTQruLkVrNvha1L+OMOoqqkjApFO96Cwwz5Xw8aT1M0F/ewPBCRqySHjhETEPF0ZP6sfxgwRSLKIY5cqAjvazaKSkoDaUmd8NFVgTTTsMR0lSqmP6+YdqFvhp0zCn+TsDjGT0gzHh104rlJVZC211grw8yn6yRbnLNEHPb5XNtji8ka9jlCIJ362WkeELaQy7L/0WkKsoiZ9ERkkOeM85N+hAva3/L64y6EhSIqAqalDOaMmLisnOOlpK1u4QduwYVCtEk+yipgwfEh6Mdym/Z1lgck0NujMFlh6bmP6+2KW0xBSb8qLI0jG0N2m9baJiBWstRWSEGUnLpjo+eV2riGR8+kfhlFt3E39dTBKTXm7OgRCEBmNI2fuE+ABs4kCsS2uSW4ihnwO0CQLNfCMwFUVukqFHH0ABvPqE/3aa33xuRvmPURiLFFWdfRHoEuNZ4+A2hVd1Ex0vanKRArBB52hqO9MMJPy9n53UEuCpUiB7l9oqO2PVbL6Uj7PvZnPfse09mECYh8QqVovodIV3VKFdiu+ma1bU8MSWS/9tHtlke4pgdXPRvUHOWnMYk7V6jWSn8czXl+4l08H3w==', 'ophietjAup5l9IsUrJG0oViS2L8j4jq7XWEOqeqD9BqZ8xTAnxOxRDNUuBSMeyFH3uHk6DZGVK4A1zoILP+emuvYXFv5+dObMt/p/toqIr1zAAyPXouUAv6uo1dDBJAJwelBPdXL7dw9e0VSK57Czl3ogpwPfniY5sf8DpQi/wgmb+7hO0Bl6Rqt2/Pt9iBU4obdgS7mCPgbDn3csTnvxrd2bjP3c5vh+U4rzabyismlNyemzgRIpcSm7q5CCegAV+Kcxw/PPgBgdxjr/dV+Cu61C/MwrHEMx69uG8u+112I49tGO1s45iajyiPmoLvG', '2021-04-01 00:00:00', '2022-11-21 00:19:59', 1, 0, '2022-11-28 00:00:00', 'None', '2022-11-20 16:19:59', '2022-11-26 11:02:31'),
(2022003, 'VOFuL2P48lRKakK1awOUKvddGEiIq7Wv2taxEobzt7g=', 'OkZ4PAAiIMYrJxz5LFcKiMr0O/QvRVkn5h5Qe7WfZoflo9zycJiiKuq4DfST1+jhGQqh2t5+k+cw0nQW6Jz0YHb9s03J1Epz/+nM2aSQpLUAq5WydhaXR20eKqFI8AFgPA1GJw5fjy3NGil5hQ9juU9RSQpe2083OgvxGaw+xTm+/KFyXNNfHZLj5Jk75ohhIStxzG1TzP1CrEFPHdv++/LHL23bZQL2C0l64BwEYdV0AuXR2OhAm2Qq4Yi+od07ZdM+zll4ryU+7/VbwtA1Apl1cTBTZUlh2Gm0Yg3Z+YW9ZqoH/0ZjGD3uTnmmo6p53IzRaGmPLdHR0Iuh9zZJUQhSt7bo5zMY1+Ko8By45NAFmimv34upKXiFC3F62qXDU1uXarGTIDpGKnDkv9Va0s5WJVT4ZJnJVOk6ktt1TG9KGabaO2/kopeDdMgwYKYIOfVvkKAkEFcwvqNnMoEau67WthcFdT631vNifDcUTwrfuSmXSqP2kjS7lInnGkv0yics9IRGQh3/SXe8ZK8Xtw==', '/Q4qHGA1csMhDGwhs3c35pNgQWpCwJKbeZHXRU611GkIC/d5JsW6BF/EbtMXPF2hiZImh+d2QsK2lmv+vVNvxZtJ/KGSnjZwRXiB/NI4EIlIE3pjs/Q9RKNcPp69Og1uhxtq2UHyhw0iYxlIpcv7fy88Hu5m72mcV/yoLfp0d4rS7oI94aWI6FLaMb6MQZkLK5eC6H116RFPJj+NbqZOMs1dQKG407kzecooTckwewOsjJRBC0NQHWzvdvHoVmTI', '2022-10-26 00:00:00', '2022-11-21 00:21:03', 1, 0, NULL, '', '2022-11-20 16:21:03', '2022-11-20 16:21:03'),
(2022004, 'rhUoSuaAUahwiUnddLVV9TecPLzLyXAtxP7AIyWeTgU=', 'WGlwTC1koSLhAUKGuoP79K7JBPgky9YC1gXEBOtxRzIup4fEeDyTBhR8yxomuJQxnfvvF04dItM7Neq+7qKxHCRXzIl62fJm/d85RtFtWZsLV4Pwtgr4uYsYbDLR7cITKnRKciso6dKsniYMyVYLKWi9KBTHQpxIpPW78jSzIe2Jx5DG7dWyABkB+qvgWrHtVkfSbtPlRlWmrAmJVwuL7ylwAxZisomNHeKJy/pfgBBpYK13XlkLdnpWnup0WF2qclMFb3Y5GqcESNAfGORG4lPOg4U8BDRINwc2fhVYQ+YAMQUCbBFk4bmQLpBO981s8k8fYECHE6rLdExH12NNNDf3RhBUtV3jxXnZqGJXTn+e02MjPd32BCT7DbOnCRecnuw/GGaZKJpsVSgVvRuO7vvFMt96bT367/hIBtMRkYhiBfSCrBlW5Cl2kJI8jIrNI2Cb0WBkAPwcrB/uuF1mLwPpa7/jE+3H+uW0+nx1+QAglbsZlUyV6uch6SiI6COQux4EYdCIfXRycj+cOeRTWhelLs3w08cFSkyeig9ZAj0hP77BaUyhBqVQYI7HvOs9TWnpC1Dn+4EnBJj8o+wWvyQb9Y47OtBpbdXFSCZJzDgMsM8x6KMbUhoL1Rq55F6nMdi1CSi0BG7vpEppq3MgQiS16Gk8kCC9bV0/ALdkU+PK03ddmiCpeO2YoBmVABW9cUej9CABJ+23MrjCXtiri+BC7akXb1GDDcuwEXLRfRxX4JloxD1D3OdEiSOAdJVhmund8EGAWwGd+4bQf0g7cHbow01oxD4kMyp4uCfv0JII7mZM4M1N07PBpLZenjblO+tDSkOrIlUtFac0p3HZukVvGjMuXGYAWvqELt6Mu+TxhMP2f+yNw7nIKvuD/ubmYK8setbS3MNef1f0QvsdjKq0L+FNAhoZIlA64leEZ/mxiZ1ThzE+0drFV0mXh3rOu9iTVCkZuvop0S7KPLQ0EA==', 'WGlwTC1koSLhAUKGuoP79Hc9/rYkUa7z/CajyxmNNLQgn/n7cXEzuYenVbbkeYtttg0GwDGbHMS/gQVSAC3xWj9Xe0QJ8byoQ1PAN9twsgkQci2fe3BH5zFEd9ivWF6QeqgK8YI3D3fLovgOJfl5fZACd47rlsNKNzLWX9U+b++0Bpf1hr5NxHyfw9ZiooS5Be2AC18IyCTA713FcFa2ZJl9U3Ii7MC6C6k2pRXwxACeYRr+m0nTFtjK41Y+oYkIS1+k4EegOMtEIKDBQRMU5mzjIAsrW7a/xCiQmjRK9RPK7XfK139HJGqQyYIr5HgoLaS5aH8/zqVsyZ6XWq6FbQCeSuOcHq3QR0tRRhsDJ+aiSOoLzpVwLhEbf6ziQE6ePSzoh/vTCzDA4Z79oaCzdktav1ZoLQFikSpS8CldU+9TNgk4Bt6CaDcTaK6CvY8ULo21pXcHCGPqY7WTl4HS0ijriH/pMRSPKfRUiUb0Kxg=', '2019-01-19 00:00:00', '2022-11-21 00:34:20', 1, 0, NULL, '', '2022-11-20 16:34:20', '2022-11-20 16:34:20'),
(2022005, 'YThiEyxghnzsWNl/Ctj63sHbuEn+pFgsLQwUKfCZCps=', 'w1BEi4FcTnc/jVp3104Vy1C4aV0uimdPyIGX3oGI/iVr56TXV4ptj9u4g/qHPRPJSE1IMuKB6nYpoiD07Hjut+lCCgmNZFvaA5PSPSon73vBuGTl8PFk7Y8jtBIeLAdALf53/6930yxS9as44bvPx01fJgF5+Pzdy4Oth9QE108UQ30gI7GRVY/aNymCfoiJCO5GyVxFo73yOkFUcVT+HDxdGT+rH8YMEUiyiGOXKgKStYEcTtxvCdoIPn4YJ+TdlhXFKe9CUGC+Z9hkGQWNGKkBQ6h/AjxzTr0ILvk4Zapnke3v/mJ9KhlrnDQg78gCIv43oVubYGLGVjRVfAmY4mnFbA5UZPXX8gIwZsRH0IOhunX9pCMHvVs7haZ/TTkzj/S2T09GKp6R733DIbMECyKSERJPuFJI9A0wo3GpCEjjf2y7E5E/H1ZTbHgzO+O1UD0lmDBk53BxILInh6Q3Wnims0TvmLjzSTHgsqDFSCsm6LafT5IVDPsL9jnTJcmzP/10vFpb3lbB6Aj5Y5xr8teC5mwFly80J56ih2lf748qFw7/ntydnsaCrhjtWz2mX5Why+GuoBwPAUJgPkN1FFTmPkYeqRsva4xDsKs2TwT4t7Xy/hXfkVD2M/xoQjlvrULPVzUZ1w9uzfHd91p+tQa2zMluqDvbw/2OCuASngNq5eqZcv9v+pdIrlM+MB75crpmOl3hbT40TJTbfKnsBFhbkIm4znc7IljarsaIJVyz3mFyWgxpiRnMW6Wtl7E6vbRXo/8JihOcCR32DWgNoBLcBvaP5P70aN+oIcVim8sMLx47BqaMEqiSDRJS7H1MgOPHKfpnqL3CJBVcBXWZimC0ZwtB/Ru4c2HjocYFbel/aXZNelBV05MgAs4vmdoHSHzR19XUUmnzbfc8XtjLTcDP4MjDXSuzy8789YJlsYe72JNUKRm6+inRLso8tDQQ', 'WGlwTC1koSLhAUKGuoP79CAcSjQi/sR9z97oQE9bFroRGVIM4RSS1V3G+D9yYg8l1cmmp0yFaMA5ZIw5NZayoB1/fXZGrJ2JIoIRgY3kG402VVEGaJL2Echiyu5Ok+BGQtSO0C2fET7kq633N0SyWtFvri2+ZfrSDCte+Snwk0n3t5v2Cgnpqr74+BH2Q/6C/8liOx60hrVnbixkHwz4oQeDWusLEDzBw5cAgeNwYyq7ZtgB6dW4S+Wcg2z35SWRh7Sc2UO02HUIUcAQh53Go1YPcP3gPh+Mx96CBKvR5OjXopzHzJwB1RwEp7Bgr88LBqaTRqA6PKmfLE9VuWNacW9C38xBO/yy9AfGo7sUo/RstMfLJZwfKX4gFa8KXgecHFelamyYNylXnxEXDi/DIPxQJ0uVHh6UztPEA3HuOzy/zsiCTmh3jUJNhIem5mq/BginkvTtl8RYC6eKCVfRR/4BIVUnPOjtr8TZ/WsNh0QibeWWRQKTeKShePdH/6NN', '2018-10-31 00:00:00', '2022-11-21 00:35:22', 1, 0, NULL, '', '2022-11-20 16:35:22', '2022-11-20 16:35:22'),
(2022006, '+VILWtQxEYhVesOFaF7ES65UacrBnj3Fm4tcjAgWx/8=', 'pWGkoraj8ZpkH/yXMOR0XvWi4qzVv9jzcq/jhdKjJDnOvE6Bp6c9A/XGL4nfjZexwowaONKb/tDSb0AROPx2WHnjE+63TeLRKSvc9FJp36bMVyaZXIWpKM6TU8eakNhnx5WvukZPZ0lq5WiC4afIcWvrFK9WHe9f/xDw69UI9WKMGtzIRlmJCd7o7BY6rJ8AzlqKAAf0ENW4EUUZRdr3gx6cEJ/5xv5uIzaBNI/59+6X6Hc5WsntDL2XeUM2XOnzvXEEzBDe9g5C7X3l8nURXgaPP5TUOlUw5yqXdhpBz3sfV9lNa9yCeaZ7fUqZzRBcVRUSHx/JcUFkXTxn3SX7j3nacgqlC0e2Yh/8vnGsXfuTWRGOmnlkfOIr4SO4uM5v8JvedI6BAyktchQn4qWJV/pkwbIRoP5qfZfGxyMoTtGhv2G3kXxboFBr9nmKaq5Z34z1Bom3yZCtGwnPcsB+32eoaOErtHgK/xb68tl77J9eoyfgdaBzDhbrvRRpIwwNTSRl/TscGfnhFKID/U6K2xOLFaMy51A6xxkTebsFYVz08Y5bMB3tlviSto5+n4tq+oojnZxFN3jjGysn456hyrvMQcSc4QS9zURprYus7Yw=', 'dug9XuhvVLWM9ojnjc1aPGxJZ1UO+yVI/fddgLyy4yb1NkkSQ6t/sEICKo9sXgkMETRCAZcblwO9Wug/gLuCU5nbMPS1vXnMDKoavW5PjUbP30sFgGYV0gEvyoToal5nHNf08x8UUg1+nPyyLS8IrwhDD/U1KGKg4w5aor2L3Loyqd+Y8+zaPkicNJEQrothXY2wLTDFgTKlUZMGT4x+81lPIFiqX1BxjIUzViNrxS8A06xMVgMcvqoGa7qqmiuOfTe85NMaBBTIGTDsI6liccmYOlKyp1o12OjcfPx5Ap2EziYE8a+qpmu2sQMqT4Nk75v4miTEuE9uG8QxliTScqvkzNnvxLkgmu4Q/GcNsqFe7Dd0JCQWDolh5PNl/H9+RFm1ekizmRzZ0cWDSFJgjiQqayqRGyUwoeBuQPOZ6at86B+hK4C6d5OTb1cYygz7D8GanxqReA5mdFWt6ZHmlT9SwP36LHpg0CW1tRx5icTpSHphq5bJ5LoNeWl0LzsaDOZVxYpcRUbKqdnHYzHHEQCWEGJ+3LicOTN3XcDIn9o=', '2016-09-25 00:00:00', '2022-11-21 00:36:25', 1, 0, NULL, '', '2022-11-20 16:36:25', '2022-11-20 16:36:25'),
(2022007, 'jbECHYXM8dnuN4A67sB7eVXMYt3LHmkqo/h1A/Ch3Sc=', 'JZpZEp2fwTsdqzPc8dTCP5xEHZbDSv4TC43cNoRVMyTd9It0mgfCuXyoN/8u8KDw59/4QWjNAV0kQxY8A/wbiElDm+jdBKUXCB2KUuUdPBcHi6OaYluRZqhLab9JloqeOj2leQpEScUW4B/tIHNgj+sO1UuBUSM5lYu4cMRfj6kPsg1FhsqANOBkelniZSpcF3N5zgWSZaJWDbY6pwxP2LWkp5RC47IVXoQnHjtWLpQVWfH4f7h+y47TDct0gNoHMoYw8WJu4oQXLmSR2pyJlI9JX8C9kPjySeYQdzrznL7C2zww/ECpkw00nqM5R4hA+3FZajlTJZTgNmQqA8MHv/Ski1PLa0HZc3ZxRM7rWAj3bYqD+REUBsFFqfKadzNHpuzRO161/9VTE29o6OYOowFfgBJOhgSETL3rTcZa2+PPiVaNBaxirU2BNiWTcA5GqGnsiMBrNlp/CeEOW2pUuec9/VHKZUtpjLVsb//fxO18MaH88TW8/URo+ESrHhzf7kynov7yyCR32pmfh22mGbvYk1QpGbr6KdEuyjy0NBA=', 'JZpZEp2fwTsdqzPc8dTCP7wmM1IqZi5OPi5C+nJwDUT8dqncp5fQp1SWzAb2J2z5DOqaHAtqubQcQTeo1u4YZ3XucgJ5C+AqftJXgK0/XSvG9e5oFY0Po+ZlA476uwfkLv3DOWncgcw7G4iPjbhEAx6jQYvCXQ95lyyRHKbBtbilL6DMKhA6fmzQSChWPicGCgxMegeiZz6+AkGAxh8PAI1IbKbDSemy+c5J9XvHVeP/mGrdSn8ZKiOT4+hb6qe2uVatoPnOr6x3khCM3sypacqBcCBiG9nQu0V7SgrQSpabwoKiVnVirDI+CURO9pLGD66Fe2v+Gunyom/pLnH9kBnKfqyXzzuppeKgORTtgRs=', '2015-02-21 00:00:00', '2022-11-21 00:37:24', 1, 0, NULL, '', '2022-11-20 16:37:24', '2022-11-20 16:37:24'),
(2022008, '3rsoIsXqfpitki3IJu7r1UmtKBpm0d5WXVCJLQjeZlU=', 'k8f5pLyiGMU/noOwKRw4UGkQKAZ0wGCTeRiHD19nnFw8RGqWStBCI61M7RtgLb/VFRXcl5O+uAFfOO4GVwJZbcrMrm7EScL9iXchd6VKRKMPJ+cKkmh17kPBDn6PZnL8oJB+lwXDLgmHBVvW/IHQ3UlTGWt0bb4sI17WOwwyQY/daZCkvNCBpNxKHvwABgGpvkEZBUv74w6EdOTQc4YEn33Bc/diP0smDdpd3X9TTnNvakkQj50KscuJ0CoXDU4ZJ7MMTfIWOkR6zt7XuH/ZvpEpMDU98hY1pXBPkrqhrUDEb5HT4znVD1e2BEtn7EEyn14tZBt6TGqB3JzWoyUOWuPNFmQzvu3O4bfOhdlO+Hs5U3VsLrlQlFqne6kEdDugsJUrRJmushIkJVUgqU9KQwaPxMM5kvy20Or83VPy/gQ=', 'WGlwTC1koSLhAUKGuoP79IcdIQty0XsEtW/IyxpkO8vRLHZyONuTpuo7wQbE14aFbm8/IU0Y4nsfSF00HB2X5PQ+kfp5If3RE8J3q+Q31Xh4E2wtv6/pWgwdvRe6w5w2dNC0Lty6Xx0RftZ0vX+bwtTBQAjFBbnUIv4G4CvgBqKd5V6rJNBS4b9wxYoDtSfKnsAm4Cl4OIDDSm/SwYIg7A88HGzec799MObcV2YEeM10sUE6T4gPydqUGeNwibDMx0+sVSsVGCguDxcMMQvLW8eI3B8O1nkSBmeTlAmFEmcBtKaTOk/hLvJfzmUjs+52hI42qHHi5n70Gb+EhmCZ6k7/jG9lX9STGOV6Nvy8/7W3fClh8G7ToWl22C7I6feTk8xjasiBJCepVtcSs3NUR+7ssL96yexdub28aF2L/gPg9yUxQY91a6nu0wKBiMAK5abmojw+4S7y7CM+dJUjaY/EhYvmMOxMILWWsRxmwA3F3ZBKWgIYpxP48wzPWv7hD8dIxqRWoEla14nmQOGzvty9dTed2A3PSkJhC6gly0JfUpxCWkhJ/GRBr95XGVkQ', '2021-12-08 00:00:00', '2022-11-21 00:38:35', 1, 0, NULL, '', '2022-11-20 16:38:35', '2022-11-20 16:38:35'),
(2022009, 'zeozfBpcbO0JbbiIYQNs+EfNgsbwj6ErQGK5B64rN7I=', 'SHJ7hR18CO9/0hnB4DOyNJZ0xQ7wcZjs8AkuDauDjtpI+hcUcTqzfm70eqq46gI8djwZJ2gB/mLeZNAQvWffymw0sUToV0TP9uIrokoMIluUJ51R74YcxW64loAK2Vvi5Kkf/vIYGe9f5e7tpD2o9QiBsqsSlsCycTyI6sUVgiQKRUk339jGtzM5En/DOleSQzRJSL9X951G2yWWl7/gS9dcSAwZrH5jaMy5/ecQxk5PeTLy4hNvFZSRYRIc5EEpkpb7KPNrsKWbc2klMdyExTFg4TmvTY6OaFOdrpWIujWfbTpc77UrwRkqv1TGYYrblwvrT20vmm2bvoHEbbUQqf3Y+FRn2ZhETPDmyUkCM+3l13lXZZFl42/9sP8EKY3Jj7CN9phPII3MUVR5LsPGP9lvrC16GbFRQvcGaJ5m1KjNQFc3T2MNTdsSnIBBxw37J+3rbuFwoTf2/yuSo5IBMXraUn7JSK2OKLEIiknas3lk9/Ulc+YJ6FX0kuEB55UBMGIWQYBsQTOrNBpX0Vpq0UWjf8scztK1gRSYHuHdB2OXt43Nrww5MIYNacNG8jZ70F41H7AEsxWUJNxb9exZkGY0RQZzdA9pDSYON3y13sR3w0p2dledX8Z6NSmuGJbzDGIo7LO1bFrHz+uj00WzGKlxDdRmRl86k4+QvqbQneF9jSE5l6RWK6Mw6g/WB3XtarFIMdFUKJDBkz1Vfr+x63dR3sg+WrHbpy5D5SeR3tYy6dobeZblkLh6mIy19tfmHhQgLgKgePZE/y1hvvMNEQ==', 'WGlwTC1koSLhAUKGuoP79LXjbhviftf1S2ZLSuSfAtL5ffFJt6wz0fEQCImeryf642zIwDIIomjI6XCFaEOgzP7dhiWFjX1UQBSJ36XeNpGLbIF85AvyRmeb0E2HjuyYBWOPYa5wAs2D0uVxYTXft3CXFeMKR+qZXQ+tMlava0bJ4O8DhH6kCl5Fc8SJulxslrFao/NlRPe0ufwte4QyURuVUNb8ewRwXOqZF9jKpzKHn0U1b3ahlO7I96WDLFtWkgcICGVLs2mrEDGbqeiYgC94dGNhySaevaHjwnGlTJI4qUUho15iLo3uxkBEZunQI0XF0I877KB/9NuaOnU3ocwVBbgT83i13h6uIJgTd1Vkuwc6tXz0c1dhbT1uQRRPJSrPAb48kNp/6GBaoKu8j2D5en5mmX/k4EmvUofoXjdGmVNUQ/yvKLweFDer9bQ1zXWBimpUw+idy2zRR8iJ4MqYguE7PuioGSi9oqf8iQ/UtKo8EwY5/HgBcC6yvHWm', '2022-09-11 00:00:00', '2022-11-21 00:39:45', 1, 0, NULL, '', '2022-11-20 16:39:45', '2022-11-20 16:39:45'),
(2022031, 'Kb0dMdGOt8iOPn6UvnNdSu3emeH3j3BcnmeeH68Ym30=', 'SNOtCJtXwIvTZyKF2lEhpsfyxXPO4ajkyunFQJnpyH8yeWBWcOJKXE6diA1f9qmYoGcYkgckwBCEvZwtLKTfbNali2HF7gKryyMFLE3GvLayG6/tchnvJ4S1MpLqW5imc4N41UQxKJzmNFZLHj5z15CTIGHMxBirfcc414ALSvUdQXpv34ZL4BY19xAbvLvXRRrX1VUHlCK64y8ponT36g==', 'npwuEvVFCXedxeJiMGaRmvtNXXl4KWadpyFbaJ8mm3cVs0P53VEZKxbzX1puBZ9TU77n4GAv9JUVzTM3VAyQWA==', '2023-11-16 00:00:00', '2023-11-16 02:49:36', 1, 0, NULL, '', '2023-11-15 18:49:36', '2023-11-15 18:49:36'),
(2024003, '8TlUZH51fOkfmo+9LFtONyGFFRIx6S3yYTIsvM/jJXc=', 'AiZKmt4WHU2BIRoeP7d4Ew/VGfbLNWSpg+2MAxpPMRIpNghkPIO4GPMQbGkCC6FqnrHLZT/T1yi+vd1wv/r7vz43ukDeHBGBGqNr0qcnLyreVjG7tmejh4uuVB2VU9hs8K4AhEUpt1LiC6haz8en8VE175CRLFcDPCLvJ15aAWO4DM7xRD5fg0nmUdDyHc2Zg2OlTE5nue1mk3zNTdpQwNIwBf53+nLclrnYiHt50v7Dwlq5g2sY3UIcDVFUHubcrTC/B1ZvFb/uWQhAu7h+Z+9lzfZ5MoDC/5kKCfG9obFztCjFajtGyIGDN55B+tLH3vjNAyayCoPZC8AVOV7h/zEOXeg3VLBczZDox3AAzFVrJlwDU0jC5BoMyNSPU8EhzOtcOfmgl1IWtGi9ESwiQdU5gNgZ5r0JbgWvKJSyomk=', 'npwuEvVFCXedxeJiMGaRmrbWEV6o3pvrsBDrr2FIaDJqwfwNLOcWgL24OJ2Mk+t98l7jQhjAQhhlhZyoirRy3g==', '2023-12-03 00:00:00', '2023-12-03 15:16:03', 15, 0, NULL, '', '2023-12-03 07:16:03', '2023-12-03 07:16:03'),
(2024004, '7OoUlah3KsAbPAPYUCI6PGW0wjK2b/ua7blQbsL5hDm72JNUKRm6+inRLso8tDQQ', 'AiZKmt4WHU2BIRoeP7d4E3EH9UcjIukYKtYiH/bMxacnnbYDaMSSU7TDn4LWifgE0fLi01a9qxo6sYcOhXnT3gLIqd/MXaZSy+4Bdts1Q5DWahrvHIQuPo1FlICoiRGyvsQh+E7pGrDG4NL6j60rNbG8WM0fiXdy2txJYQatVtpCiwKhzGzNQ3u6VqQGFRW3vuoZhlXZXbQlOYIXCpGGoRrAMsCge2qBRZOjbgCl20dyEQuvxfxya4B9vDjNKKDX', 'npwuEvVFCXedxeJiMGaRmkFEOChSR/2rExcaEmxgHxDqQSKfndw4mq/UPvlYo3ibI3d62safBCOvcZ4hiVOmrMRSJyGq+DfS4vnu/lEdI8JZ1wK0lqirvY2ncRaZjom1', '2023-12-03 00:00:00', '2023-12-03 15:19:11', 15, 0, NULL, '', '2023-12-03 07:19:11', '2023-12-03 07:19:11'),
(2024005, 'C7ieDmcgWC0GkRAeXG7ffZD5EUmN2bIdBzVgS/Gri1672JNUKRm6+inRLso8tDQQ', '2sf1wxv+jpMIENCBPuKxgqa96R+n8Zjwn2wyYUhc4zshLSbscShuHgkUWr++2HrZw1ExdEHV1Ik2KjsNYPpRc2gZW3TmaafDmy89w0DDAFms6qmP8o37iEH/Cunzh1eOtkPNUM0wiGa7I2CmxAe1wJHXxW6ylYt6hspQ96EuniV8QD4BKpka9UL9lGety7S12+hx8FHmrNifmCZ/y26Haa5FqbGlPjpTDv1hUxp9bWGVFNG69Fxnnc38HCugXtPArAacZwA+0FPvXt/S9YFD1jDck/njR/ws+Kn2EYHj61E=', 'npwuEvVFCXedxeJiMGaRmkFEOChSR/2rExcaEmxgHxD+XIhzyVKHpY9wIj+SxNt30EsMrpnFmqkWrC29wAizYhdwGJYg6oGJrMK8LYPZroOvIvVLDVH56cYTuzY4XyZW', '2023-12-03 00:00:00', '2023-12-03 15:26:30', 15, 0, NULL, '', '2023-12-03 07:26:30', '2023-12-03 07:26:30'),
(2024006, 'idxGzPPaEsP2+PhNmInCFzSMS/D079b67X8n6EqAazy72JNUKRm6+inRLso8tDQQ', 'Y+t/KqahVWo00/6gkbIIXWRqTj5rbqG8eDtyd8qADYEF/wwHRs9PTk750SpjrOwetumrfK2+curIoWb5412jdBtqOhEG+X8Wt028vmFu4qJ+MSKJka3QJToNPARWxJG1RybS1vXtxPL+8Q0ZNjo1hLqR6TC29dkerHuEfggoaYMkjgo++0ERJstVZySlOhc0nK3kUzoc93/FNrnEE03OJdNDZfL9NRnrJd8qfO7upUBtTvxdMDjUyBaSPQ8GPLdF', 'npwuEvVFCXedxeJiMGaRmvtNXXl4KWadpyFbaJ8mm3fWR3FJofPdKkFdqAlCF+aksS9+wmAE9ZxJoF0Wa+yjUHDEVFt/41yeWbYRel/dEfiUOSts1UVoRE226s+eVBx+qK1L/DpuoWCC2tHTBPaLbA==', '2023-12-03 00:00:00', '2023-12-03 15:32:16', 15, 0, NULL, '', '2023-12-03 07:32:16', '2023-12-03 07:32:16'),
(2024007, 'ItWzyztEHdaSHxC3KXLFSRXLt3IRs406tCDSANFALcA=', 'PXtA69tzJjqzNtVluxLAcZqgdmHwPyv2UulMlosDivCrAM0h4LQm1Rxvnbk5PRyvoOXczv+9Zwq2XukgCQvWKqNGwVL/RYJUr5z8kTefTIREV7dWnyIjxRr92iRP/moyBCAe3uxNCyXL15/iHXY0qspvJfUS/LKxgHIQiZJGemVRCpL345w2192AcaO7seUjEfS1zx1xtHzNVrV6QvNAFp0imh/ZBgCfnUoUVcYBie8ntHjQTzUpAl2cY5SCQIfLDUIaSUb+YcR57urGCGzdkO81R2dlRfb5sCb89t52OSQVgfQA0dCasToYIoWpRtqGAHNnuE2h5Uxb65KVGv58u3wf6wXDLG4q6WJzRmNODG2f4G6MLRHMtgrqo3SY/F4RfgtwUTbqpG60S/Y461qO9f9RyjvpQ2wRNT9T+okZ0Q/rDAbDcTTAjlVmDTcC7053rWdiH/3Zc/8j1fUidJs7xQ==', 'npwuEvVFCXedxeJiMGaRmjV7LBk973Iza/+h+FJONNndtUJDVS6HWP5I6Xb+AeqU', '2023-12-03 00:00:00', '2023-12-03 15:38:11', 15, 0, NULL, '', '2023-12-03 07:38:11', '2023-12-03 07:38:11'),
(2024008, 'o5DtSRj2QUUlfkNejTjuL2g3f2GShS/wb9+Bd5RgrOY=', '9DbSGdkP3Dyf69Ff0bHT5ifutmJfFs/Vc558RdIucAK9ULkKspnPRo5LCErBFcif4zZhaAGYcuzNEklCLMXE+FfXPk4NfVE/jfpaz0IXpklNrHDvf/yU9eso7einRpJq1tRVvxMSbAVqxLaKwOvMa+jj5+m9zBg2Gctws9VRTbyHavOub8c3XNgUukw6XUqudDEyj1v9X1JXyPk99PmX9n+MxfZ5H/N5En7gxkFhZdnPzWvXc1orpqVKArsJdiCqqTR6vHFDWYsTlrQe8j3OHrvYk1QpGbr6KdEuyjy0NBA=', 'npwuEvVFCXedxeJiMGaRmsGz4Gv4d9rwxv2G12ZsfFjdtUJDVS6HWP5I6Xb+AeqU', '2023-12-03 00:00:00', '2023-12-03 15:41:50', 15, 0, NULL, '', '2023-12-03 07:41:50', '2023-12-03 07:41:50'),
(2024009, 'GA/RT7qcVBUQVOi17wMCrXPcJk/zHTAUrV/DX5GAJLk=', 'PXtA69tzJjqzNtVluxLAcRt59V5EafiDoMEJwAd135XqLXBrH2hmnfe9PuL+68493c5c5kathJzoL75tdJZo/dbsP4Emsbk4F/NU0zhPpMQ/cFWmK7rPWJQKiGKsvFg/QOszzip9F1pyt7sa8kDWKnA2L8mDnvRJIH+mVa1871I+zDT5srSd18P1a/mCL5BFwgiEFOcHMI7EWJmrX2awwGFfCCc7yjisWc5YQ+IlFtZ/woB9G2eYt4F0bniiJHK9PzaopO4o2Idr8llzZR5Hq52zKZegooiXhXFNbL4NwtrAHpBCBSZSwq1Uor7L8MC7G/FTJTYFYxf14afn5vwZCA==', 'npwuEvVFCXedxeJiMGaRmjV7LBk973Iza/+h+FJONNnlJoxDeLgxfvQxPOd098XwEZ9Z9sdHTfUe87Qp1qnmI7VazQ6Mv9lyM1F1ZtUH3KpnU6tlyvaQDsPBmVEYZR5u', '2023-12-03 00:00:00', '2023-12-03 15:47:46', 15, 0, NULL, '', '2023-12-03 07:47:46', '2023-12-03 07:47:46'),
(2024010, 'Z0xqt3o1fj4QL9LCHsp/AMs/mFls/qR6BwlN3cOZhAQ=', 'dlcfHStPKGCa8zyqRoItb9CU6DzYZNsYwy0WVoBVDZZQbRyVeuyNq1KibDEvxpSmdWtqaJngAz4jzkiDWbAInCOrE6NzA7QH1Jz5NVyGgKCHLHTSpKu9x97VqUE8dim8gcchINQek3SlTvvovx/1mDAdTe27CzTm4RcqNkStHt0TmmQnrlnyaLvvWWHB9kzCw2NK2xddrsZsUTDStqesJk9VBgUZvVeekMGgDGHCu07umpI5K2YXlQD6pVFsJiGIHQNAexc6T+tjNscH5gZ5Ld+OcYfCAzOe+bcvb24xZ36EQ8SEp7S8cp7PiLDtEmpvrbsnV38aZO+x8oX7OP+4ZBJSg7zc+u3vLv2ZdMOi2925YxbRCMBG6au9B7BlEXcIwoUlV3OKy/rWa4aYzpCzd7vYk1QpGbr6KdEuyjy0NBA=', 'npwuEvVFCXedxeJiMGaRmjV7LBk973Iza/+h+FJONNmFZgccIHP9gYjKRLPppqKgAX9PvM8RJ0rrp3spkPrVCw==', '2023-12-03 00:00:00', '2023-12-03 15:51:11', 15, 0, NULL, '', '2023-12-03 07:51:11', '2023-12-03 07:51:11'),
(2024011, 'ylzKRx51vADsHFsjyBzZU6g8VQ4so8b6d9HA+hI+TvU=', 'PXtA69tzJjqzNtVluxLAcZJhmj5E5Ned70fY/vOQH8DyHF601Q8yCV861zG5yEaNcqS3hlEprQR95f9Gl5z/voE+u38BGq4VG3sX6GA/ns32JZJtLQ0PGpi4uGbmR9ziUpbfzCy7bcWLBElZSP9DwjEh5/rYKFrGAVbLtxT1g0EzCD7RKyYw4DqwFQSANMa8Il2oDxb4jE3P799cPT+Z2dfVXuvKkRrh4IkHKzAZeyd0jUVW09onwlH7iNkzrcAU', 'Dn6pbhUhjy9OtgKO0z98M6E29T9DCBiernuCurQbq2h1MuD6OeZES2sUBj33EDaWip6U3OgOFtwnaydzsyS0CnCo52QILs4Q75ulGg9Ss+tQnJK2Ih27DZXGSfBFtmAe', '2023-12-03 00:00:00', '2023-12-03 15:55:38', 15, 0, NULL, '', '2023-12-03 07:55:38', '2023-12-03 07:55:38'),
(2024012, '0XADmRvrA2zCnTc6/rItydaTBbOM+lY70Uo0jaJesaIKOJEdIeZMNyZqJCypDi5Q', 'LYlpfqDhMrvr8huF3Rm2T9kgN6/xPkPp4fBItd/tzos42hfikA9Y8ZBFmBMhi4S9m0NIqTStz8pbD8blVWUDjRqvyslQRKUoZvsroOkPrTiiq5aj+9JjhHVUHU9lpD69eR3X8o5pI1Dsl4fKfZ0pzTCEhpHSEACDo0+P9mKj2sgS30/xNugN7IbNIXe85zj4cLhc9HGEvGm+hajryg0IeoDLeN94OdVCuPDaTTnrFtsAScey1nDPtd8nW9fBcFD4Kj50iSg3unY7ra5mBnpDR8DiihfIor8mC4/IfdXrgw+XaA/R7CmDc/1IXfoyAUCs5YI32j995h4huYQiMD9/xipReEU1f40GQhKvlHZmWk73ntqhgqff09ZH042QIz4zxMdBtGQLOoot0rJbQtge03BVCUE0VvT8XS9FahpK3MuO5H8KqMEhjor73OlPwgMIBczRPOSEjyTZeFk6npVxYJLhQ7Fpea8plbHwvFVjmmFYKV/2/yBhkbFAHCWa9pSrbPFfuqyNocRo4cfE/VUXznFKDQyo71Mr08FO0oxtjttUbVOrhZsvW2EqCW+c93U5FVRKmDETKEIi0pHlOMEPaQo4kR0h5kw3JmokLKkOLlA=', 'npwuEvVFCXedxeJiMGaRmjV7LBk973Iza/+h+FJONNndtUJDVS6HWP5I6Xb+AeqU', '2023-12-03 00:00:00', '2023-12-03 16:00:54', 15, 0, NULL, '', '2023-12-03 08:00:54', '2023-12-03 08:00:54'),
(2024013, 'LGrok1w9rf0OzTzP+5XSI7Nng3qQBFjVfe0ETZKdNvk=', 'Y+t/KqahVWo00/6gkbIIXQZG9KNsoiHqki6mI9FAKefFkVfQCmQMgI7L3sGCkXVwnwlJo+iAUPseg7G1GoGOvSWTQuUB9+m1a+lIIGVQ8f3wQNC7ekklObrt3uO8njPlvHTYC+buhbrKI9wQ49cNtc9BP/bLnKaz1uHdQ4x5I5D0JKrdfho5QD5CyS1ERV5HbuRveVntsYJsU5LAaRXMjg4MpY+vdrNCxnNvtmGIHE2kCTmUlhVTIDMOr/PmBSL91sDKJomYql6vmLuTPnXNgcyoMZZ8NL8qC8PsmA8tKKumJcoiolFbjFFQqlGZ8Izr', 'npwuEvVFCXedxeJiMGaRmjV7LBk973Iza/+h+FJONNmqYkjAcwj803qlMsY6wegx+FF2MGXaElrsng15kgAzVw==', '2023-12-03 00:00:00', '2023-12-03 16:04:02', 15, 0, NULL, '', '2023-12-03 08:04:02', '2023-12-03 08:04:02'),
(2024014, 'J5eZNH2Nq6QKePeEbXIAqzQR+4//JDzWYz/1zfNTeIo=', 'BlRxQ9Hk9IK4+HFAOdM52BiRw8VZJuP3io6Kcjgq3r55p3R8Lr922uW8BLo/l2WdmyfFILqZPMvOPUQAxwVzuc/OCp43k/Mld/lXEYTi/J/7aVbA9KEMZgILq1zHb7WtGuXikuPAdZlj0MsSwVH8RrphWq6WYcXf3riBonPPg82UahN4SiZyZA5EztOxjcRMYjlrNaMMV7HpCVgT1VPCDPAefbCp6b89ZJXZyI9xhB6NBqNuCIJpA5E3sPEi4tKHNbRJ2b7wT5pOiNffl6jUZw6z8AuzLZi7tuW243BrffZIH2hOFFiEBxIYWXpz6K+6uMrWOnmNf18lz3POIjVMag==', 'npwuEvVFCXedxeJiMGaRmn1WiGdS0pKTfonH3zTeUrg=', '2023-12-03 00:00:00', '2023-12-03 16:08:48', 15, 0, NULL, '', '2023-12-03 08:08:48', '2023-12-03 08:08:48'),
(2024015, 'wvakCFFRUwsdR83PKSzZ+7OpeS88cO8qLXC9jVeV7OE=', 'OkZM7nKKwT4GCf7niD+2gTDb6cy8Dedu6QpGVmca1TlOSOto/zSPge/Xc4/AvQrO+geleiYiSnG1/N/yGGbE+HPryoxGhckt4p6n4JeY3EBljVdIb1Fb8jE5VarbQoiLJg9MOYdhS5rR1uZBD4DCaZ+OUIAfoajEaACisBfyQZdR79xB49id4ZBXLCO/gquNGpH/3vsBE3/BldvlJaSsgEWbCKOcx0F2W/N7hR12vF8=', 'npwuEvVFCXedxeJiMGaRmjV7LBk973Iza/+h+FJONNndtUJDVS6HWP5I6Xb+AeqU', '2023-12-03 00:00:00', '2023-12-03 16:11:50', 15, 0, NULL, '', '2023-12-03 08:11:50', '2023-12-03 08:11:50'),
(2024016, 'wvakCFFRUwsdR83PKSzZ+7OpeS88cO8qLXC9jVeV7OE=', 'OkZM7nKKwT4GCf7niD+2gTDb6cy8Dedu6QpGVmca1TlOSOto/zSPge/Xc4/AvQrO+geleiYiSnG1/N/yGGbE+HPryoxGhckt4p6n4JeY3EBljVdIb1Fb8jE5VarbQoiLJg9MOYdhS5rR1uZBD4DCaZ+OUIAfoajEaACisBfyQZdR79xB49id4ZBXLCO/gquNGpH/3vsBE3/BldvlJaSsgEWbCKOcx0F2W/N7hR12vF8=', 'npwuEvVFCXedxeJiMGaRmjV7LBk973Iza/+h+FJONNndtUJDVS6HWP5I6Xb+AeqU', '2023-12-03 00:00:00', '2023-12-03 16:14:38', 15, 0, NULL, '', '2023-12-03 08:14:38', '2023-12-03 08:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `case_hearings`
--

CREATE TABLE `case_hearings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_no` bigint(20) UNSIGNED DEFAULT NULL,
  `hearing_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_hearings`
--

INSERT INTO `case_hearings` (`id`, `case_no`, `hearing_id`, `created_at`, `updated_at`) VALUES
(1, 2022001, 1, '2022-11-26 08:51:55', '2022-11-26 08:51:55'),
(2, 2022002, 2, '2022-11-26 08:52:25', '2022-11-26 08:52:25'),
(3, 2022003, 3, '2022-11-26 08:52:41', '2022-11-26 08:52:41'),
(4, 2022004, 4, '2022-11-26 08:53:01', '2022-11-26 08:53:01'),
(5, 2022005, 5, '2022-11-26 08:53:26', '2022-11-26 08:53:26'),
(6, 2022006, 6, '2022-11-26 08:53:42', '2022-11-26 08:53:42'),
(7, 2022007, 7, '2022-11-26 08:53:59', '2022-11-26 08:53:59'),
(8, 2022008, 8, '2022-11-26 08:55:43', '2022-11-26 08:55:43'),
(9, 2022009, 9, '2022-11-26 08:56:20', '2022-11-26 08:56:20'),
(10, 2022006, 10, '2022-11-26 09:00:23', '2022-11-26 09:00:23'),
(11, 2022007, 11, '2022-11-26 09:00:34', '2022-11-26 09:00:34'),
(12, 2022008, 12, '2022-11-26 09:00:49', '2022-11-26 09:00:49'),
(13, 2022009, 13, '2022-11-26 09:01:07', '2022-11-26 09:01:07'),
(15, 2022031, 15, '2023-11-15 18:51:43', '2023-11-15 18:51:43'),
(16, 2022031, 16, '2023-11-25 11:24:14', '2023-11-25 11:24:14'),
(17, 2024003, 17, '2023-12-03 14:16:30', '2023-12-03 14:16:30'),
(18, 2024003, 18, '2023-12-03 14:29:14', '2023-12-03 14:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `case_involved`
--

CREATE TABLE `case_involved` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_no` bigint(20) UNSIGNED DEFAULT NULL,
  `complainant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `respondent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_involved`
--

INSERT INTO `case_involved` (`id`, `case_no`, `complainant_id`, `respondent_id`, `created_at`, `updated_at`) VALUES
(1, 2022001, 1, 2, '2022-11-20 16:18:00', '2022-11-20 16:18:00'),
(2, 2022002, 3, 4, '2022-11-20 16:19:59', '2022-11-20 16:19:59'),
(3, 2022003, 5, 6, '2022-11-20 16:21:03', '2022-11-20 16:21:03'),
(4, 2022004, 7, 8, '2022-11-20 16:34:20', '2022-11-20 16:34:20'),
(5, 2022005, 9, 10, '2022-11-20 16:35:22', '2022-11-20 16:35:22'),
(6, 2022006, 11, 12, '2022-11-20 16:36:25', '2022-11-20 16:36:25'),
(7, 2022007, 13, 14, '2022-11-20 16:37:24', '2022-11-20 16:37:24'),
(8, 2022008, 15, 16, '2022-11-20 16:38:35', '2022-11-20 16:38:35'),
(9, 2022009, 17, 18, '2022-11-20 16:39:45', '2022-11-20 16:39:45'),
(31, 2022031, 68, 69, '2023-11-15 18:49:36', '2023-11-15 18:49:36'),
(35, 2024003, 76, 77, '2023-12-03 07:16:03', '2023-12-03 07:16:03'),
(36, 2024004, 78, 79, '2023-12-03 07:19:11', '2023-12-03 07:19:11'),
(37, 2024005, 80, 81, '2023-12-03 07:26:30', '2023-12-03 07:26:30'),
(38, 2024006, 82, 83, '2023-12-03 07:32:16', '2023-12-03 07:32:16'),
(39, 2024007, 84, 85, '2023-12-03 07:38:11', '2023-12-03 07:38:11'),
(40, 2024008, 86, 87, '2023-12-03 07:41:50', '2023-12-03 07:41:50'),
(41, 2024009, 88, 89, '2023-12-03 07:47:46', '2023-12-03 07:47:46'),
(42, 2024010, 90, 91, '2023-12-03 07:51:11', '2023-12-03 07:51:11'),
(43, 2024011, 92, 93, '2023-12-03 07:55:38', '2023-12-03 07:55:38'),
(44, 2024012, 94, 95, '2023-12-03 08:00:54', '2023-12-03 08:00:54'),
(45, 2024013, 96, 97, '2023-12-03 08:04:02', '2023-12-03 08:04:02'),
(46, 2024014, 98, 99, '2023-12-03 08:08:48', '2023-12-03 08:08:48'),
(47, 2024015, 100, 101, '2023-12-03 08:11:50', '2023-12-03 08:11:50'),
(48, 2024016, 102, 103, '2023-12-03 08:14:38', '2023-12-03 08:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Jema Espiritu', '09272956993', 'jemaespiritu@gmail.com', 'Thank you for easy reporting of incidents that barangay provided.', '2022-11-26 14:51:54', '2022-11-26 14:51:54'),
(2, 'Michael Galanza', '09762851606', 'michaelgalanza@gmail.com', 'I want to follow up my reported incident report', '2022-11-26 14:52:54', '2022-11-26 14:52:54'),
(4, 'Musrima Misomala', '09272956321', 'musrimamisomala@gmail.com', 'How can I report a blotter?', '2022-11-26 14:54:05', '2022-11-26 14:54:05'),
(5, 'Jasper Palmos', '09099814884', 'jpalmos69@gmail.com', 'my concern is your concern', '2023-11-16 03:37:27', '2023-11-16 03:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `court_actions`
--

CREATE TABLE `court_actions` (
  `court_action_id` bigint(20) UNSIGNED NOT NULL,
  `date_filed` datetime DEFAULT NULL,
  `case_no` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `court_actions`
--

INSERT INTO `court_actions` (`court_action_id`, `date_filed`, `case_no`, `created_at`, `updated_at`) VALUES
(1, '2023-11-16 02:45:27', 2022008, '2023-11-15 18:45:27', '2023-11-15 18:45:27'),
(2, '2023-11-16 11:39:01', 2022009, '2023-11-16 03:39:01', '2023-11-16 03:39:01'),
(3, '2023-11-25 19:24:40', 2022031, '2023-11-25 11:24:40', '2023-11-25 11:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hearings`
--

CREATE TABLE `hearings` (
  `hearing_id` bigint(20) UNSIGNED NOT NULL,
  `date_of_meeting` datetime DEFAULT NULL,
  `date_filed` datetime DEFAULT NULL,
  `settlement_id` bigint(20) UNSIGNED DEFAULT NULL,
  `award_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hearing_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hearings`
--

INSERT INTO `hearings` (`hearing_id`, `date_of_meeting`, `date_filed`, `settlement_id`, `award_id`, `hearing_type_id`, `created_at`, `updated_at`) VALUES
(1, '2022-11-28 08:00:00', '2022-11-26 16:51:55', 1, NULL, 1, '2022-11-26 08:51:55', '2022-11-26 10:51:23'),
(2, '2022-11-28 10:00:00', '2022-11-26 16:52:24', 2, NULL, 1, '2022-11-26 08:52:24', '2022-11-26 10:58:33'),
(3, '2022-11-28 13:00:00', '2022-11-26 16:52:41', 3, NULL, 1, '2022-11-26 08:52:41', '2023-11-29 13:40:54'),
(4, '2022-11-29 08:00:00', '2022-11-26 16:53:01', NULL, NULL, 1, '2022-11-26 08:53:01', '2022-11-26 08:53:01'),
(5, '2022-11-29 10:00:00', '2022-11-26 16:53:25', NULL, NULL, 1, '2022-11-26 08:53:25', '2022-11-26 08:53:25'),
(6, '2022-11-30 09:00:00', '2022-11-26 16:53:41', NULL, NULL, 1, '2022-11-26 08:53:41', '2022-11-26 08:53:41'),
(7, '2022-11-30 11:00:00', '2022-11-26 16:53:59', NULL, NULL, 1, '2022-11-26 08:53:59', '2022-11-26 08:53:59'),
(8, '2022-11-30 13:00:00', '2022-11-26 16:55:42', NULL, NULL, 1, '2022-11-26 08:55:42', '2022-11-26 08:55:42'),
(9, '2022-12-01 10:00:00', '2022-11-26 16:56:20', NULL, NULL, 1, '2022-11-26 08:56:20', '2022-11-26 08:56:20'),
(10, '2022-11-30 09:00:00', '2022-11-26 17:00:23', NULL, NULL, 2, '2022-11-26 09:00:23', '2022-11-26 09:00:23'),
(11, '2022-11-30 11:00:00', '2022-11-26 17:00:34', NULL, NULL, 2, '2022-11-26 09:00:34', '2022-11-26 09:00:34'),
(12, '2022-11-30 13:00:00', '2022-11-26 17:00:49', NULL, NULL, 3, '2022-11-26 09:00:49', '2022-11-26 09:00:49'),
(13, '2022-12-01 10:00:00', '2022-11-26 17:01:07', NULL, NULL, 3, '2022-11-26 09:01:07', '2022-11-26 09:01:07'),
(14, '2022-12-05 09:00:00', '2022-12-02 21:14:06', NULL, NULL, 1, '2022-12-02 13:14:06', '2022-12-02 13:14:06'),
(15, '2023-11-16 02:51:00', '2023-11-16 02:51:43', NULL, NULL, 1, '2023-11-15 18:51:43', '2023-11-15 18:51:43'),
(16, '2023-11-16 02:51:00', '2023-11-25 19:24:14', NULL, NULL, 3, '2023-11-25 11:24:14', '2023-11-25 11:24:14'),
(17, '2023-12-03 22:09:00', '2023-12-03 22:16:30', NULL, NULL, 1, '2023-12-03 14:16:30', '2023-12-03 14:16:30'),
(18, '2023-12-03 22:09:00', '2023-12-03 22:29:14', NULL, 1, 3, '2023-12-03 14:29:14', '2023-12-03 14:29:57');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_notices`
--

CREATE TABLE `hearing_notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hearing_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hearing_notices`
--

INSERT INTO `hearing_notices` (`id`, `notice_id`, `hearing_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-11-26 08:51:56', '2022-11-26 08:51:56'),
(2, 10, 1, '2022-11-26 08:51:56', '2022-11-26 08:51:56'),
(3, 2, 2, '2022-11-26 08:52:25', '2022-11-26 08:52:25'),
(4, 11, 2, '2022-11-26 08:52:25', '2022-11-26 08:52:25'),
(5, 3, 3, '2022-11-26 08:52:42', '2022-11-26 08:52:42'),
(6, 12, 3, '2022-11-26 08:52:42', '2022-11-26 08:52:42'),
(7, 4, 4, '2022-11-26 08:53:01', '2022-11-26 08:53:01'),
(8, 13, 4, '2022-11-26 08:53:01', '2022-11-26 08:53:01'),
(9, 5, 5, '2022-11-26 08:53:26', '2022-11-26 08:53:26'),
(10, 14, 5, '2022-11-26 08:53:26', '2022-11-26 08:53:26'),
(11, 6, 6, '2022-11-26 08:53:42', '2022-11-26 08:53:42'),
(12, 15, 6, '2022-11-26 08:53:42', '2022-11-26 08:53:42'),
(13, 7, 7, '2022-11-26 08:53:59', '2022-11-26 08:53:59'),
(14, 16, 7, '2022-11-26 08:53:59', '2022-11-26 08:53:59'),
(15, 8, 8, '2022-11-26 08:55:43', '2022-11-26 08:55:43'),
(16, 17, 8, '2022-11-26 08:55:43', '2022-11-26 08:55:43'),
(17, 9, 9, '2022-11-26 08:56:20', '2022-11-26 08:56:20'),
(18, 18, 9, '2022-11-26 08:56:20', '2022-11-26 08:56:20'),
(19, 22, 10, '2022-11-26 09:07:12', '2022-11-26 09:07:12'),
(22, 27, 15, '2023-11-15 18:51:43', '2023-11-15 18:51:43'),
(23, 28, 15, '2023-11-15 18:51:43', '2023-11-15 18:51:43'),
(24, 29, NULL, '2023-11-15 18:51:46', '2023-11-15 18:51:46'),
(25, 31, 17, '2023-12-03 14:16:30', '2023-12-03 14:16:30'),
(26, 32, 17, '2023-12-03 14:16:30', '2023-12-03 14:16:30'),
(27, 33, NULL, '2023-12-03 14:19:39', '2023-12-03 14:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_types`
--

CREATE TABLE `hearing_types` (
  `hearing_type_id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hearing_types`
--

INSERT INTO `hearing_types` (`hearing_type_id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Mediation', NULL, NULL),
(2, 'Conciliation', NULL, NULL),
(3, 'Arbitration', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incident_case`
--

CREATE TABLE `incident_case` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_no` bigint(20) UNSIGNED DEFAULT NULL,
  `case_no` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incident_case`
--

INSERT INTO `incident_case` (`id`, `article_no`, `case_no`, `created_at`, `updated_at`) VALUES
(1, 175, 2022001, '2022-11-20 16:18:00', '2022-11-20 16:18:00'),
(2, 179, 2022002, '2022-11-20 16:19:59', '2022-11-20 16:19:59'),
(3, 155, 2022003, '2022-11-20 16:21:03', '2022-11-20 16:21:03'),
(4, 269, 2022004, '2022-11-20 16:34:20', '2022-11-20 16:34:20'),
(5, 266, 2022005, '2022-11-20 16:35:22', '2022-11-20 16:35:22'),
(6, 315, 2022006, '2022-11-20 16:36:25', '2022-11-20 16:36:25'),
(7, 280, 2022007, '2022-11-20 16:37:24', '2022-11-20 16:37:24'),
(8, 269, 2022008, '2022-11-20 16:38:35', '2022-11-20 16:38:35'),
(9, 364, 2022009, '2022-11-20 16:39:45', '2022-11-20 16:39:45'),
(31, 155, 2022031, '2023-11-15 18:49:36', '2023-11-15 18:49:36'),
(35, 283, 2024003, '2023-12-03 07:16:03', '2023-12-03 07:16:03'),
(36, 175, 2024004, '2023-12-03 07:19:11', '2023-12-03 07:19:11'),
(37, 280, 2024005, '2023-12-03 07:26:30', '2023-12-03 07:26:30'),
(38, 339, 2024006, '2023-12-03 07:32:16', '2023-12-03 07:32:16'),
(39, 363, 2024007, '2023-12-03 07:38:11', '2023-12-03 07:38:11'),
(40, 265, 2024008, '2023-12-03 07:41:50', '2023-12-03 07:41:50'),
(41, 155, 2024009, '2023-12-03 07:47:46', '2023-12-03 07:47:46'),
(42, 266, 2024010, '2023-12-03 07:51:11', '2023-12-03 07:51:11'),
(43, 318, 2024011, '2023-12-03 07:55:38', '2023-12-03 07:55:38'),
(44, 179, 2024012, '2023-12-03 08:00:54', '2023-12-03 08:00:54'),
(45, 364, 2024013, '2023-12-03 08:04:02', '2023-12-03 08:04:02'),
(46, 356, 2024014, '2023-12-03 08:08:48', '2023-12-03 08:08:48'),
(47, 281, 2024015, '2023-12-03 08:11:50', '2023-12-03 08:11:50'),
(48, 281, 2024016, '2023-12-03 08:14:38', '2023-12-03 08:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `kp_cases`
--

CREATE TABLE `kp_cases` (
  `article_no` bigint(20) UNSIGNED NOT NULL,
  `case_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kp_cases`
--

INSERT INTO `kp_cases` (`article_no`, `case_name`, `created_at`, `updated_at`) VALUES
(154, 'Unlawful use of means of publication and unlawful utterances.', '2022-08-15 02:07:42', '2022-08-15 02:07:42'),
(155, 'Alarms and scandals.', '2022-08-15 02:09:12', '2022-08-14 16:00:00'),
(175, 'Using false certificates.', '2022-08-15 02:10:06', '2022-08-15 02:10:06'),
(178, 'Using fictitious names and concealing true names.', NULL, NULL),
(179, 'Illegal use of uniforms and insignias.', NULL, NULL),
(252, 'Physical injuries inflicted in a tumultuous affray.', '2022-11-03 13:31:16', '2022-11-03 13:31:16'),
(253, 'Giving assistance to consummated suicide.', '2022-11-20 16:23:19', '2022-11-20 16:23:19'),
(260, 'Responsibility of participants in a duel if only physical injuries are inflicted or  no physical injuries have been inflicted.', '2022-11-20 16:23:33', '2022-11-20 16:23:33'),
(265, 'Less serious physical injuries.', '2022-11-20 16:23:44', '2022-11-20 16:23:44'),
(266, 'Slight physical injuries and maltreatment.', '2022-11-20 16:23:56', '2022-11-20 16:23:56'),
(269, 'Unlawful arrest', '2022-11-20 16:24:09', '2022-11-20 16:24:09'),
(271, 'Inducing a minor to abandon his/her home.', '2022-11-20 16:24:20', '2022-11-20 16:24:20'),
(275, 'Abandonment of a person in danger and abandonment of one’s own victim.', '2022-11-20 16:24:32', '2022-11-20 16:24:32'),
(276, 'Abandoning a minor (A child under seven [7] years old)', '2022-11-20 16:24:43', '2022-11-20 16:24:43'),
(277, 'Abandonment of a minor by persons entrusted with his/her custody; indifference  of parents.', '2022-11-20 16:24:53', '2022-11-20 16:24:53'),
(280, 'Qualified trespass to dwelling (Without the use of violence and intimidation).', '2022-11-20 16:25:25', '2022-11-20 16:25:25'),
(281, 'Other forms of trespass.', '2022-11-20 16:25:35', '2022-11-20 16:25:35'),
(283, 'Light threats.', '2022-11-20 16:25:48', '2022-11-20 16:25:48'),
(285, 'Other light threats.', '2022-11-20 16:26:04', '2022-11-20 16:26:04'),
(286, 'Grave coercion.', '2022-11-20 16:26:46', '2022-11-20 16:26:46'),
(287, 'Light coercion.', '2022-11-20 16:27:03', '2022-11-20 16:27:03'),
(288, 'Other similar coercions (Compulsory purchase of merchandise and payment of  wages by means of tokens).', '2022-11-20 16:27:15', '2022-11-20 16:27:15'),
(289, 'Formation, maintenance, and prohibition of combination of capital or labor  through violence or threats.', '2022-11-20 16:27:37', '2022-11-20 16:27:37'),
(290, 'Discovering secrets through seizure and correspondence.', '2022-11-20 16:27:50', '2022-11-20 16:27:50'),
(291, 'Revealing secrets with abuse of authority.', '2022-11-20 16:28:03', '2022-11-20 16:28:03'),
(309, 'Theft (If the value of the property stolen does not exceed P50.00).', '2022-11-20 16:28:18', '2022-11-20 16:28:18'),
(310, 'Qualified Theft (If the amount does not exceed P500).', '2022-11-20 16:28:35', '2022-11-20 16:28:35'),
(312, 'Occupation of real property or usurpation of real rights in property.', '2022-11-20 16:28:46', '2022-11-20 16:28:46'),
(313, 'Altering boundaries or landmarks', '2022-11-20 16:28:57', '2022-11-20 16:28:57'),
(315, 'Swindling or estafa (If the amount does not exceed P200.00).', '2022-11-20 16:29:11', '2022-11-20 16:29:11'),
(316, 'Other forms of swindling.', '2022-11-20 16:29:21', '2022-11-20 16:29:21'),
(317, 'Swindling a minor.', '2022-11-20 16:29:32', '2022-11-20 16:29:32'),
(318, 'Other deceits.', '2022-11-20 16:29:42', '2022-11-20 16:29:42'),
(319, 'Removal, sale, or pledge of mortgaged property.', '2022-11-20 16:29:52', '2022-11-20 16:29:52'),
(328, 'Special cases of malicious mischief (If the value of the damaged property does  not exceed P1,000.00).', '2022-11-20 16:30:03', '2022-11-20 16:30:03'),
(329, 'Other mischiefs (If the value of the damaged property does not exceed  P1,000.00).', '2022-11-20 16:30:37', '2022-11-20 16:30:37'),
(338, 'Simple seduction.', '2022-11-20 16:30:49', '2022-11-20 16:30:49'),
(339, 'Acts of lasciviousness with the consent of the offended party.', '2022-11-20 16:30:59', '2022-11-20 16:30:59'),
(356, 'Threating to publish and offer to prevent such publication for compensation.', '2022-11-20 16:31:12', '2022-11-20 16:31:12'),
(357, 'Prohibiting publication of acts referred to in the course of official proceedings.', '2022-11-20 16:31:23', '2022-11-20 16:31:23'),
(363, 'Incriminating innocent persons.', '2022-11-20 16:31:36', '2022-11-20 16:31:36'),
(364, 'Intriguing against honor.', '2022-11-20 16:31:54', '2022-11-20 16:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_08_10_022413_create_user_type', 1),
(2, '2013_08_10_022430_create_personnel_position', 1),
(3, '2013_08_12_000439_create_storage', 1),
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2022_08_10_023008_create_sessions_table', 1),
(10, '2022_08_15_012049_create_kp_cases', 2),
(15, '2022_08_17_122428_create_person_signature', 4),
(17, '2022_08_14_040253_create_person', 6),
(18, '2022_08_15_012645_blotter_report', 7),
(19, '2022_08_15_014857_incident_case', 8),
(20, '2022_08_15_035824_create_case_involved', 9),
(21, '2022_08_17_123427_create_person_signature', 10),
(22, '2022_09_13_080406_create_notice_type', 11),
(23, '2022_09_13_080814_create_notices_table', 12),
(24, '2022_09_30_183721_create_witnesses', 13),
(25, '2022_09_31_232313_create_arbitration__awards_table', 14),
(26, '2022_10_03_222725_create_amicable_settlements_table', 14),
(27, '2022_10_03_223344_create_hearing_types_table', 14),
(28, '2022_10_03_223538_create_hearings_table', 14),
(29, '2022_10_03_230531_create_arbitration__agreements_table', 14),
(30, '2022_10_03_233020_create_hearing_notices_table', 14),
(31, '2022_10_03_233044_create_case_hearings_table', 14),
(32, '2022_10_16_212323_create_court_actions_table', 15),
(33, '2022_10_19_095417_add_status_to_users_table', 16),
(34, '2022_10_20_152259_create_activity_log_table', 17),
(35, '2022_10_20_152300_add_event_column_to_activity_log_table', 17),
(36, '2022_10_20_152301_add_batch_uuid_column_to_activity_log_table', 17),
(37, '2022_10_24_213215_create_reports_table', 18),
(38, '2022_10_26_230707_add_status_to_reports_table', 19),
(39, '2022_11_04_211713_add_test_to_reports_table', 20),
(40, '2022_11_09_122938_add_street_to_reports_table', 21),
(41, '2022_11_18_180454_create_contact_forms_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `notice_id` bigint(20) UNSIGNED NOT NULL,
  `notified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `date_of_meeting` datetime DEFAULT NULL,
  `case_no` bigint(20) UNSIGNED DEFAULT NULL,
  `notice_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notified` tinyint(1) DEFAULT NULL,
  `date_filed` datetime DEFAULT NULL,
  `date_notified` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`notice_id`, `notified_by`, `date_of_meeting`, `case_no`, `notice_type_id`, `notified`, `date_filed`, `date_notified`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-11-28 08:00:00', 2022001, 1, 1, '2022-11-26 16:51:47', '2022-11-26 16:51:52', '2022-11-26 05:43:26', '2022-11-26 08:51:52'),
(2, 1, '2022-11-28 10:00:00', 2022002, 1, 1, '2022-11-26 16:52:17', '2022-11-26 16:52:22', '2022-11-26 08:42:47', '2022-11-26 08:52:22'),
(3, 1, '2022-11-28 13:00:00', 2022003, 1, 1, '2022-11-26 16:52:34', '2022-11-26 16:52:39', '2022-11-26 08:43:20', '2022-11-26 08:52:39'),
(4, 1, '2022-11-29 08:00:00', 2022004, 1, 1, '2022-11-26 16:52:52', '2022-11-26 16:53:02', '2022-11-26 08:44:05', '2022-11-26 08:53:02'),
(5, 1, '2022-11-29 10:00:00', 2022005, 1, 1, '2022-11-26 16:53:19', '2022-11-26 16:53:23', '2022-11-26 08:44:36', '2022-11-26 08:53:23'),
(6, 1, '2022-11-30 09:00:00', 2022006, 1, 1, '2022-11-26 16:53:33', '2022-11-26 16:53:42', '2022-11-26 08:45:23', '2022-11-26 08:53:42'),
(7, 1, '2022-11-30 11:00:00', 2022007, 1, 1, '2022-11-26 16:53:50', '2022-11-26 16:53:56', '2022-11-26 08:47:07', '2022-11-26 08:53:56'),
(8, 1, '2022-11-30 13:00:00', 2022008, 1, 1, '2022-11-26 16:54:11', '2022-11-26 16:55:40', '2022-11-26 08:48:40', '2022-11-26 08:55:40'),
(9, 1, '2022-12-01 10:00:00', 2022009, 1, 1, '2022-11-26 16:56:12', '2022-11-26 16:56:18', '2022-11-26 08:48:57', '2022-11-26 08:56:18'),
(10, 1, '2022-11-28 08:00:00', 2022001, 2, 1, '2022-11-26 16:51:50', '2022-11-26 16:51:55', '2022-11-26 08:51:50', '2022-11-26 08:51:55'),
(11, 1, '2022-11-28 10:00:00', 2022002, 2, 1, '2022-11-26 16:52:19', '2022-11-26 16:52:24', '2022-11-26 08:52:19', '2022-11-26 08:52:24'),
(12, 1, '2022-11-28 13:00:00', 2022003, 2, 1, '2022-11-26 16:52:37', '2022-11-26 16:52:41', '2022-11-26 08:52:37', '2022-11-26 08:52:41'),
(13, 1, '2022-11-29 08:00:00', 2022004, 2, 1, '2022-11-26 16:52:56', '2022-11-26 16:52:58', '2022-11-26 08:52:56', '2022-11-26 08:52:58'),
(14, 1, '2022-11-29 10:00:00', 2022005, 2, 1, '2022-11-26 16:53:21', '2022-11-26 16:53:25', '2022-11-26 08:53:21', '2022-11-26 08:53:25'),
(15, 1, '2022-11-30 09:00:00', 2022006, 2, 1, '2022-11-26 16:53:36', '2022-11-26 16:53:39', '2022-11-26 08:53:36', '2022-11-26 08:53:39'),
(16, 1, '2022-11-30 11:00:00', 2022007, 2, 1, '2022-11-26 16:53:53', '2022-11-26 16:53:59', '2022-11-26 08:53:53', '2022-11-26 08:53:59'),
(17, 1, '2022-11-30 13:00:00', 2022008, 2, 1, '2022-11-26 16:55:38', '2022-11-26 16:55:42', '2022-11-26 08:55:38', '2022-11-26 08:55:42'),
(18, 1, '2022-12-01 10:00:00', 2022009, 2, 1, '2022-11-26 16:56:16', '2022-11-26 16:56:20', '2022-11-26 08:56:16', '2022-11-26 08:56:20'),
(19, NULL, '2022-11-28 08:00:00', 2022001, 3, 0, '2022-11-26 17:04:23', NULL, '2022-11-26 09:04:23', '2022-11-26 09:04:23'),
(20, NULL, '2022-11-28 10:00:00', 2022002, 3, 0, '2022-11-26 17:04:52', NULL, '2022-11-26 09:04:52', '2022-11-26 09:04:52'),
(21, NULL, '2022-11-28 13:00:00', 2022003, 3, 0, '2022-11-26 17:05:18', NULL, '2022-11-26 09:05:18', '2022-11-26 09:05:18'),
(22, 1, '2022-11-30 09:00:00', 2022006, 4, 1, '2022-11-26 17:07:02', '2022-11-26 17:07:12', '2022-11-26 09:07:02', '2022-11-26 09:07:12'),
(23, NULL, '2022-11-30 09:00:00', 2022006, 3, 0, '2022-11-26 17:07:30', NULL, '2022-11-26 09:07:30', '2022-11-26 09:07:30'),
(24, NULL, '2022-11-30 13:00:00', 2022008, 3, 0, '2022-11-26 17:09:41', NULL, '2022-11-26 09:09:41', '2022-11-26 09:09:41'),
(27, 1, '2023-11-16 02:51:00', 2022031, 1, 1, '2023-11-16 02:51:37', '2023-11-16 02:51:40', '2023-11-15 18:51:31', '2023-11-15 18:51:40'),
(28, 1, '2023-11-16 02:51:00', 2022031, 2, 1, '2023-11-16 02:51:41', '2023-11-16 02:51:43', '2023-11-15 18:51:41', '2023-11-15 18:51:43'),
(29, 1, '2023-11-16 02:51:00', 2022031, 4, 1, '2023-11-16 02:51:44', '2023-11-16 02:51:46', '2023-11-15 18:51:44', '2023-11-15 18:51:46'),
(31, 15, '2023-12-03 22:09:00', 2024003, 1, 1, '2023-12-03 22:09:15', '2023-12-03 22:09:17', '2023-12-03 14:09:07', '2023-12-03 14:09:17'),
(32, 15, '2023-12-03 22:09:00', 2024003, 2, 1, '2023-12-03 22:16:23', '2023-12-03 22:16:30', '2023-12-03 14:16:23', '2023-12-03 14:16:30'),
(33, 15, '2023-12-03 22:09:00', 2024003, 4, 1, '2023-12-03 22:19:36', '2023-12-03 22:19:39', '2023-12-03 14:19:36', '2023-12-03 14:19:39'),
(34, NULL, '2023-12-03 22:09:00', 2024003, 3, 0, '2023-12-03 22:21:18', NULL, '2023-12-03 14:21:18', '2023-12-03 14:21:18'),
(35, 15, '2023-12-04 15:13:00', 2024004, 1, 1, '2023-12-04 15:13:41', '2023-12-04 15:14:29', '2023-12-04 07:13:32', '2023-12-04 07:14:29'),
(36, NULL, '2023-12-04 15:13:00', 2024004, 2, 0, '2023-12-04 15:14:26', NULL, '2023-12-04 07:14:26', '2023-12-04 07:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `notice_type`
--

CREATE TABLE `notice_type` (
  `notice_type_id` bigint(20) UNSIGNED NOT NULL,
  `notice_type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_type`
--

INSERT INTO `notice_type` (`notice_type_id`, `notice_type_name`, `created_at`, `updated_at`) VALUES
(1, 'Hearing', '2022-09-13 08:46:39', '2022-09-13 08:46:39'),
(2, 'Summon', '2022-09-13 08:46:53', '2022-09-13 08:46:53'),
(3, 'Subpoena', '2022-09-13 08:47:06', '2022-09-13 08:47:06'),
(4, 'Pangkat Notice', '2022-09-13 08:47:33', '2022-09-13 08:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `salutation`, `first_name`, `middle_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'Mr.', 'OlY4sQuYMltuh1CoyNdwitBGAGs9Wawz5N9SXrY7cGk=', 'H7SeGDOb+sc0tIpmCz84bTYkG9/bbPgeAT/7m6DbY+M=', '6ycuRvlc4lfu37OQnUD5Wvvq3vRcGpthkEUh3Ivi6YI=', '2022-11-20 16:18:00', '2022-11-20 16:18:00'),
(2, 'Ms.', 'Qo+tQ71pFIv8cFV16G4M5rvYk1QpGbr6KdEuyjy0NBA=', 'b8hmMH2Ud1gfJL2g8OKLsRfVL6ZghCnALxV1TOUBXL8=', 'IqhburdG3pWie9Yyfpvl0r9uP8liVYbl0nsN5xfAQQU=', '2022-11-20 16:18:00', '2022-11-20 16:18:00'),
(3, 'Mr.', 'hZqfX0gjYl5nLLNdRPcamj90LYPv/9M0udWFggZC7b8=', 'YThiEyxghnzsWNl/Ctj63ptmpyPHuK/XGFGCuCcQu+M=', 'EaUp4MGEFVmVGQXzPAOHoHbzIyk69RI0GdXG/7ugTlY=', '2022-11-20 16:19:59', '2022-11-20 16:19:59'),
(4, 'Ms.', 'E4ZpnhkbkvGmDboGMOIAh2Oe7Jz/Pg4h8jvg2F/HFQg=', 'Vc+42Z5pR7PCSubJaNkYygogBseMQGp1cW1zH9UVgmQ=', 'ophietjAup5l9IsUrJG0oUuhb1YAi+cNsnVyqXvYrzE=', '2022-11-20 16:19:59', '2022-11-20 16:19:59'),
(5, 'Mr.', '/Q4qHGA1csMhDGwhs3c35rRweAmSUbgSlB0RnYumQXk=', 'mObjXCNcttLDtKdNWqA9owogBseMQGp1cW1zH9UVgmQ=', 'VOFuL2P48lRKakK1awOUKpxTV1C+ZbAq1uosL++SQUI=', '2022-11-20 16:21:03', '2022-11-20 16:21:03'),
(6, NULL, 'Ng5phIYX2K7PwHQAt+7frrvYk1QpGbr6KdEuyjy0NBA=', 'osu4TCmtPONFKgB7hVwQPehTjA4pCeU9yzOkDnmQLrw=', 'v9TMEG1zb8sx0XXZV8CQafiqt7GvVGJdnQNVKbjdmQE=', '2022-11-20 16:21:03', '2022-11-20 16:21:03'),
(7, 'Mr.', 'E4ZpnhkbkvGmDboGMOIAhyGBopBwvAf/ybx/Qq+xHMw=', 'yrWIJ1cv8lRbStl2Vr7lLwtPeMeLeWp3Vx3Q0CaHw1U=', 'rhUoSuaAUahwiUnddLVV9bvYk1QpGbr6KdEuyjy0NBA=', '2022-11-20 16:34:20', '2022-11-20 16:34:20'),
(8, 'Mr.', '+7bCv02gMKVByAUaIFIODL+x0uSklgsSQZXB7Nwx8SI=', '0xrIK3HaA8CUE5v5+2iFXkDgl3dtTc88V/6npf8OE7g=', '8TlUZH51fOkfmo+9LFtON3uWtZ4MiFt/jsvFeCQIEHE=', '2022-11-20 16:34:20', '2022-11-20 16:34:20'),
(9, 'Mr.', 'w1BEi4FcTnc/jVp3104Vy7G0hLYhXOeqxXhL9rQA7Jk=', '8TlUZH51fOkfmo+9LFtON3uWtZ4MiFt/jsvFeCQIEHE=', 'YThiEyxghnzsWNl/Ctj63ptmpyPHuK/XGFGCuCcQu+M=', '2022-11-20 16:35:22', '2022-11-20 16:35:22'),
(10, 'Mr.', 'C7ieDmcgWC0GkRAeXG7ffSziUn7Dq1nRB1tgA+5zUGc=', 'dXXD5rOOxNPDeENlmE30yVdAzfwQL6yFf96D1YKLUyc=', 'R7L/DcLj5bThR3N6t2U68xbZ30Q5sNCOz6ppl4/dr3Q=', '2022-11-20 16:35:22', '2022-11-20 16:35:22'),
(11, 'Ms.', '4ZITpyeFKQgXaG1DdZsR1P6P9aVnNbH9NxWq2A0hpb8=', 'cpJ3amh6a9T2u2FiiuyqKRJDKbfDjNqPpFtVGIcfcXY=', '+VILWtQxEYhVesOFaF7ES3Y7wZFWOeTXu30iEh99d2Q=', '2022-11-20 16:36:25', '2022-11-20 16:36:25'),
(12, 'Mr.', '+2u6x/iYW7FIwUwQLZJujZHxQQJvxJLgIdcde8fQ1EI=', '8TlUZH51fOkfmo+9LFtONz9wexAf6oNqSsoeKs4Epp0=', '6Q5fJtAfUrDeFA4cSLiADvn+MFZaT8SMo3HA3g9NzWo=', '2022-11-20 16:36:25', '2022-11-20 16:36:25'),
(13, 'Mr.', '7QViNWNOCfsC69vAMrlNRJlTW7LDQlzIflmGFBhRBvs=', 'gUlIumqO2qVfbROqdQW3mcqA613pgc3P5VB2qkmR2k0=', 'jbECHYXM8dnuN4A67sB7eRfnsA0p/BsMLt3u929bNDs=', '2022-11-20 16:37:24', '2022-11-20 16:37:24'),
(14, 'Ms.', '4RYqzkKifx2clJzRUYN/+oUvM9XKwdEp6QhXib8GPR8=', 'DONNs+/fTX/rfPuCt83FzTpvR5ItJXwLDRx2kReDKfw=', 'bC9t6y6nGdYG+Eq1pk8bFJyT6WO2Q5oUWhTTM2G+3d8=', '2022-11-20 16:37:24', '2022-11-20 16:37:24'),
(15, 'Mr.', 'SkPjIHi8fEX+srShGtBkUjqHH/VbUsXMc37qTFVJITc=', 'yk/R4nh5qOEOdWuHV7NfNDQdGT2HV9WlwsxiiDf54EA=', '3rsoIsXqfpitki3IJu7r1cv09cgyU0xMJDM0fi/RqU4=', '2022-11-20 16:38:35', '2022-11-20 16:38:35'),
(16, 'Mr.', '5FnpvM1p0EdlH2mIvM/jMvzvctloyXzmW4LhTkQiDM8=', 'IgiomyvQVA72JNjgRMTz/CEXj9GL7kC6XS21I5cTIes=', 'kRl7n7+TnHwezjaC8L8dcA2OebtPROw6s4cyux45XlQ=', '2022-11-20 16:38:35', '2022-11-20 16:38:35'),
(17, 'Mrs.', '9mtuRGZGBPHJsTm7Oy7j251azHPdTsHO0xDiInUsUVQ=', 'bbUsVa121lZcqOb8aRv/wEZGA7Eyk7iPTJ3/CqLfmAc=', 'zeozfBpcbO0JbbiIYQNs+NLlsKBuifq6ZACLbUyT/BQ=', '2022-11-20 16:39:45', '2022-11-20 16:39:45'),
(18, 'Mr.', 'Zwm66mc7ZzJMyNjwDnQ5vrMcm3qBtfbWE2YbtgV7lAU=', 'uxCqUGgq8ZlvR49K0th7p4xcMJ6YSFkZtMl9C1+TLrE=', '/dgNKU/39g8Twe6B5HgdrdfxkZhiSnFnCdLLqEZ1mOY=', '2022-11-20 16:39:45', '2022-11-20 16:39:45'),
(19, 'Mrs.', '/Q4qHGA1csMhDGwhs3c35iTkj6bRl4vj39tP0y38DpM=', 'EmViny8NutcNmTndvtb+zqxNzCs4JNz1fTYFxQ0pMI4=', 'SNOtCJtXwIvTZyKF2lEhpjAh07Rmdaomg5MS10+BkCw=', '2022-11-20 16:41:22', '2022-11-20 16:41:22'),
(20, 'Mr.', 'onnoC4PKeMAPukfkrp4Esr+x0uSklgsSQZXB7Nwx8SI=', 'T2HKEOmxtFu0W2xyeYc+R37tNnMIYjfzvAgrLO0/F+o=', 'eAuS8JmWsf3qWyab9rFWMHDbzw8b8ZE2eD1GpqhuGFc=', '2022-11-20 16:41:22', '2022-11-20 16:41:22'),
(21, 'Mr.', 'zYXFfOI3YcjESIvkWamvawyQ5EQUgYtSYiJWF+FceqM=', 'ol46Gg50V7+cempsRjRP2g==', 'T7cWVrxmdE1Dsmh1eZbLtZyT6WO2Q5oUWhTTM2G+3d8=', '2022-11-20 16:42:44', '2022-11-20 16:42:44'),
(22, 'Mrs.', 'r2Tf/aU/3lRIqIhkQZSSaUQjrNJ74zhh+IwIw5UQGaM=', 'yrWIJ1cv8lRbStl2Vr7lLwtPeMeLeWp3Vx3Q0CaHw1U=', '/dgNKU/39g8Twe6B5HgdrZ8DUaZz0LYB9PM7vxHDZ2A=', '2022-11-20 16:42:44', '2022-11-20 16:42:44'),
(23, 'Mr.', 'E4nPnFb5cT91k0RwfuOvqXx5qtYWX3t0vrmxLFN5Sl0=', 'RbY4DgyyfUo0vlMYpulenb+x0uSklgsSQZXB7Nwx8SI=', 'xEcPhy+s6tBtx+UJ21e/UpyT6WO2Q5oUWhTTM2G+3d8=', '2022-11-20 16:43:37', '2022-11-20 16:43:37'),
(24, 'Mr.', 'faqJTEYpeWX7dZ0m28PORjYn/Y6XjDcGng2xp+8OMrs=', 'gUlIumqO2qVfbROqdQW3mTYkG9/bbPgeAT/7m6DbY+M=', 'NagRP4CYrHxeXPaf77ODzvIcdMxWiajTTyc5Ryjy2w4=', '2022-11-20 16:43:37', '2022-11-20 16:43:37'),
(25, 'Mrs.', 'Iw0ZO24hbH8TuDjRIchuOM0LdYf2ZtrFLg3zHIIcfaA=', 'WKYwI683eqmydUph2KGrOQogBseMQGp1cW1zH9UVgmQ=', '3PPbrCboLBE4GuBXKOwfnhsm2AUgMGSJ/0/lIHa15jg=', '2022-11-20 16:44:40', '2022-11-20 16:44:40'),
(26, 'Mr.', 'rHhpvkPgOCBkKeCTH/0yNihQ2b8udSn68Nb37EjrdZw=', 'DKD8v9igYnd3ebLjPb6S8BO7Zn97iz28kgFREpQ4yKs=', '6ycuRvlc4lfu37OQnUD5Wvvq3vRcGpthkEUh3Ivi6YI=', '2022-11-20 16:44:40', '2022-11-20 16:44:40'),
(27, 'Mr.', 'r2Tf/aU/3lRIqIhkQZSSaUubEDy71QopRiFMu0AYeLc=', '8TlUZH51fOkfmo+9LFtON3uWtZ4MiFt/jsvFeCQIEHE=', 'CvqVjG5zd9ZouBuR0RCKBwHwTnvMixkTxWAlCGQoGvs=', '2022-11-20 16:45:45', '2022-11-20 16:45:45'),
(28, 'Mr.', 'faqJTEYpeWX7dZ0m28PORjYn/Y6XjDcGng2xp+8OMrs=', '8TlUZH51fOkfmo+9LFtON/tYml9I5r2F6AsBYp8ng2Q=', 'Fe/6WDiMBnFis+W1t9hdoHVc3cXuUHerkGNibcfLFgA=', '2022-11-20 16:45:45', '2022-11-20 16:45:45'),
(29, 'Mrs.', 'E4nPnFb5cT91k0RwfuOvqSd3mbR5cgmuS+VWjYddZ2Y=', 'gJaS9r+w5PhV8o/5N2L4TyaGQQ35f1smU6bA+F3OCdo=', 'E4ZpnhkbkvGmDboGMOIAh08pUGuwJ02YgpNxYnvdPjA=', '2022-11-20 16:47:03', '2022-11-20 16:47:03'),
(30, 'Mr.', 'sSNyPmKN3XIDtyRLp7RFkSIckIAesFVtN9syH6vatWw=', '4RPyPDLsS34sqC26HYD6G5dkIoWEWoOcCsnyR68FSFQ=', 't0rYmXi5cNhFkJuxV35PkTH0qsbKpKFbBzmSpKfDwwI=', '2022-11-20 16:47:03', '2022-11-20 16:47:03'),
(31, 'Mr.', 'E4ZpnhkbkvGmDboGMOIAh4r17RBhulm//reI6c5qycQ=', '2HO+UOHjroECQhstAbPcNsEWQ1iqwkNOHFy3UmlbkLw=', 'o5DtSRj2QUUlfkNejTjuL4lYD2WsAUjf8TMklt+b3E4=', '2022-11-20 16:48:23', '2022-11-20 16:48:23'),
(32, 'Mr.', 'wutuoi3y6WwnTPP6JWHF57UonBgChR0N/551PkI7JjA=', 'S9uKwnPIuiCPYmmz60iHq3Vc3cXuUHerkGNibcfLFgA=', 'y21cMJbM73wVmmgQYPJvXb+x0uSklgsSQZXB7Nwx8SI=', '2022-11-20 16:48:23', '2022-11-20 16:48:23'),
(33, 'Mrs.', 'RyxQ6GNo83I4wOFLlZk0CWe6JXVf1dYOHniDNC80U0E=', 'RM1ZSYcaSDsBbKK6Vy5oZzYkG9/bbPgeAT/7m6DbY+M=', 'AyVyBrekuLyLgx/WCS3Sf/2qIJ6oi7BceB1crFFwnwo=', '2022-11-20 16:49:30', '2022-11-20 16:49:30'),
(34, 'Mrs.', 'AFZtWbYRQQSTP2fM8TqbUkhC9zdjaTIFEee9bcYl6hY=', 'yrWIJ1cv8lRbStl2Vr7lLwtPeMeLeWp3Vx3Q0CaHw1U=', '0xrIK3HaA8CUE5v5+2iFXkDgl3dtTc88V/6npf8OE7g=', '2022-11-20 16:49:30', '2022-11-20 16:49:30'),
(35, 'Mr.', 'xuo27gijNAcS+51GknuqkatdftM2ZQ0Mei9QuzAOrhY=', 'wc5t0uV3F0rSreqeKPK5Qd62CdfWvS4iP5keFUB6IFk=', 'yTrm1RY0I2YF03wd88dfeCj2jijfozLVRYPygyT1qSU=', '2022-11-20 16:50:46', '2022-11-20 16:50:46'),
(36, 'Mr.', '8TlUZH51fOkfmo+9LFtON2irnSdHu50UDLx79q6cYjQ=', 'hX8Jmj7Gyv+piC5EHo/68/vq3vRcGpthkEUh3Ivi6YI=', 'PCnCyjS2ByzRFHsg8IColeQQZ9Ltu1j4K7RWXIwfuks=', '2022-11-20 16:50:46', '2022-11-20 16:50:46'),
(37, 'Mr.', 'vDU2TtpicG1zjDPa9j50jr+x0uSklgsSQZXB7Nwx8SI=', '6ycuRvlc4lfu37OQnUD5Wq9hol49E1W0/7x/Un5r4ek=', 'Pyi4oR/dIpjDRGWrCRpu1RO7Zn97iz28kgFREpQ4yKs=', '2022-11-20 16:51:48', '2022-11-20 16:51:48'),
(38, 'Mr.', '59gg+Y6BxcYSDqJ7yZRU42hVbMNQv8E9htOvhY3w9nM=', '8TlUZH51fOkfmo+9LFtON1CckrYiHbsNlcZJ8EW2YB4=', '3RHhGYceBnNx9zp8kg7WgTyomgSZqsaAttqo2FUCf+w=', '2022-11-20 16:51:48', '2022-11-20 16:51:48'),
(39, 'Mr.', 'Z1gUVlncQMT5tKFKUGlu3K9hol49E1W0/7x/Un5r4ek=', '+2u6x/iYW7FIwUwQLZJujd9ehap14rUs79gl8R5sqYY=', 'IF/pb1UpKyLB7WIqOXsYBVVsSKHw/fkokh62XJxK4Wg=', '2022-11-20 16:52:55', '2022-11-20 16:52:55'),
(40, 'Mr.', 'E4ZpnhkbkvGmDboGMOIAh/IcdMxWiajTTyc5Ryjy2w4=', 'KLXiHJuXhtyQt6OY38SdHvoyOYSK817LNviQKu4Diuo=', 'ZIF2SYlicsi2pzzIN8qjW0rdZ4feqyKzHtyjCkaAzB0=', '2022-11-20 16:52:55', '2022-11-20 16:52:55'),
(41, 'Mr.', 'OlY4sQuYMltuh1CoyNdwitBGAGs9Wawz5N9SXrY7cGk=', 'BusfXsUrX6hMIbqrHyY0eH0FtfiOwQIsrc3gjs7CSao=', '6ycuRvlc4lfu37OQnUD5Wvvq3vRcGpthkEUh3Ivi6YI=', '2022-11-20 16:54:27', '2022-11-20 16:54:27'),
(42, 'Ms.', 'vDU2TtpicG1zjDPa9j50jhLxsu9f3bqSH37G8PjaJNA=', 'H7SeGDOb+sc0tIpmCz84bYh3w8Ti/8Z0JI3z6qjEpJE=', 'BlRxQ9Hk9IK4+HFAOdM52LdeUVDQ9nVhnHbKldqnrRU=', '2022-11-20 16:54:27', '2022-11-20 16:54:27'),
(43, 'Ms.', 'xt4qwiYHYzqc+LT2I82WkG896SFRSzHiWCKC5BWDBas=', 'yDkcR7CBtXk0kN4msxotel75q4GqcueOYY7DpvcUyNI=', '261VdZfR18W8TASSh2eVAZjbP7VTS2koNT+vPBrc8PI=', '2022-11-20 16:55:39', '2022-11-20 16:55:39'),
(44, 'Mr.', '+7bCv02gMKVByAUaIFIODL+x0uSklgsSQZXB7Nwx8SI=', '7w2oCEYH24IZQJXHY6F/ebcEYmT4of+uiIQvmj7CTDw=', 'IqhburdG3pWie9Yyfpvl0r9uP8liVYbl0nsN5xfAQQU=', '2022-11-20 16:55:39', '2022-11-20 16:55:39'),
(45, 'Mr.', 'OlY4sQuYMltuh1CoyNdwitBGAGs9Wawz5N9SXrY7cGk=', 'RM1ZSYcaSDsBbKK6Vy5oZzYkG9/bbPgeAT/7m6DbY+M=', '6ycuRvlc4lfu37OQnUD5Wvvq3vRcGpthkEUh3Ivi6YI=', '2022-11-20 16:56:41', '2022-11-20 16:56:41'),
(46, 'Mrs.', 'Qo+tQ71pFIv8cFV16G4M5rvYk1QpGbr6KdEuyjy0NBA=', 'BhgpPv/I1DiscO+Ejeuv/Sk3LIW5zu12TBovGy4bFl8=', '21zZSYC1BlWvUFmDXuEpyEvGcKDlUpijxOlQkKzPsDQ=', '2022-11-20 16:56:41', '2022-11-20 16:56:41'),
(47, 'Ms.', 'fnyv5uryIme2IcBGvK+VnL+x0uSklgsSQZXB7Nwx8SI=', '1vp2q0xnx5RttltN+OZbIXVc3cXuUHerkGNibcfLFgA=', 'PRmBPw7+qyOxussfFjj/ozYkG9/bbPgeAT/7m6DbY+M=', '2022-11-20 16:57:41', '2022-11-20 16:57:41'),
(48, 'Mr.', 'ljsne4/vnEnfAmW7Hu78q52AGvk3sEFj1/+poQIGqrs=', 'uNP4STL5q8eXUJ2QG6odu4DIoIrsMp3vHL3Mn6snEs8=', 'G8JjrkToRvGlvwdyd9ziUVyFBGI37q6v2FNeLI/GICA=', '2022-11-20 16:57:41', '2022-11-20 16:57:41'),
(49, 'Mr.', 'C7ieDmcgWC0GkRAeXG7ffWDclL2VBeUpJ/7iO+ncUKw=', '0XADmRvrA2zCnTc6/rItyZW9y5ecKxFp6cq99l8Ase0=', 'p2kxKU5iqETc2Sz1OOywiTRZ5OPEulsTKiLasy/n1Gs=', '2022-11-20 16:59:01', '2022-11-20 16:59:01'),
(50, 'Mr.', 'JMwoV+ALt0iyW6IpitEOvr+x0uSklgsSQZXB7Nwx8SI=', 'hX8Jmj7Gyv+piC5EHo/68/vq3vRcGpthkEUh3Ivi6YI=', 'LocBISDUdJrU2HNZlM5eB5yT6WO2Q5oUWhTTM2G+3d8=', '2022-11-20 16:59:01', '2022-11-20 16:59:01'),
(51, 'Ms.', 'xTh5WU8WytPAIXLA2inss09okeFr8ZJE4vMbOXedVKI=', 'MdRW/YkvzDOOoxIdBmCQyldJxDpZGAaa2iLcL48OpAA=', 'wNMv5yLeocYBp8A8zTRfSGnGzuVgIJRcuxRtbfc4Hao=', '2022-11-20 17:00:32', '2022-11-20 17:00:32'),
(52, 'Mr.', 'T7cWVrxmdE1Dsmh1eZbLtQOkxtnC1hepw0kS05ikYe4=', 'T7cWVrxmdE1Dsmh1eZbLtQOkxtnC1hepw0kS05ikYe4=', 'T7cWVrxmdE1Dsmh1eZbLtQOkxtnC1hepw0kS05ikYe4=', '2022-11-20 17:00:32', '2022-11-20 17:00:32'),
(53, 'Ms.', 'BlRxQ9Hk9IK4+HFAOdM52NBGAGs9Wawz5N9SXrY7cGk=', 'RM1ZSYcaSDsBbKK6Vy5oZzYkG9/bbPgeAT/7m6DbY+M=', 'l/8m+aBF20rcJFBbLL6T5UwmTLe8YFentj719nH7Vy8=', '2022-11-20 17:01:38', '2022-11-20 17:01:38'),
(54, 'Mr.', 'A9QRKlTWuZl/5gT+BkeKI3ckhJ/iFW5zAXIaEeanhqA=', 'S9uKwnPIuiCPYmmz60iHq3Vc3cXuUHerkGNibcfLFgA=', 'PCnCyjS2ByzRFHsg8IColeQQZ9Ltu1j4K7RWXIwfuks=', '2022-11-20 17:01:38', '2022-11-20 17:01:38'),
(55, 'Mr.', 'i41/e/V31j63L3ywXR+6oBoMjPyxtfJF1DpJOrwRR54=', '1IVSWfWly63PvJ+2Tjqu2e6UlAteJ9Cl4LLTGJl+owE=', 'FUxexA9F+8eea72PeyCQ2DK0b9SmLrw0pBcSTZ9+lXo=', '2022-11-20 17:02:36', '2022-11-20 17:02:36'),
(56, 'Mr.', 'T7cWVrxmdE1Dsmh1eZbLtQOkxtnC1hepw0kS05ikYe4=', 'T7cWVrxmdE1Dsmh1eZbLtQOkxtnC1hepw0kS05ikYe4=', 'T7cWVrxmdE1Dsmh1eZbLtQOkxtnC1hepw0kS05ikYe4=', '2022-11-20 17:02:36', '2022-11-20 17:02:36'),
(57, 'Mr.', '+7bCv02gMKVByAUaIFIODL+x0uSklgsSQZXB7Nwx8SI=', 'WzOlJHMwK3vxc8K0gPTcvNwhr0P1Ji1OawcxTQA2Pps=', 'UrKW06RyHvSLp+0mBnwcMQTMeBvFO4jQP4zm+hKtiVE=', '2022-11-20 17:03:38', '2022-11-20 17:03:38'),
(58, 'Mr.', '/skQh9r0gXUH4gMSIokDetBGAGs9Wawz5N9SXrY7cGk=', 'XzLGVpOi2EoDFdlXi3RGXILrv/a5SWuH1dDrJ6ZVdU8=', 'HQBveaD/ydtnkoAkomHxD3bUKaWgfJ3j7J4yrZ5MxxQ=', '2022-11-20 17:03:38', '2022-11-20 17:03:38'),
(59, 'Ms.', 'vxVoYceieyVjQK6pdKkZotBGAGs9Wawz5N9SXrY7cGk=', '2FE1hzCCxUtcUdZkdA2tqWy4k35M/EWni6eUEh8r/hE=', '+JhFv3Ew2+xidG4LKLF/svfQwwQB9tc6mdlANn292sM=', '2022-11-20 17:04:46', '2022-11-20 17:04:46'),
(60, 'Ms.', 'AFZtWbYRQQSTP2fM8TqbUkhC9zdjaTIFEee9bcYl6hY=', 'KLXiHJuXhtyQt6OY38SdHvoyOYSK817LNviQKu4Diuo=', 'bC9t6y6nGdYG+Eq1pk8bFJyT6WO2Q5oUWhTTM2G+3d8=', '2022-11-20 17:04:46', '2022-11-20 17:04:46'),
(61, NULL, 'mo5bgTjxLu+8o7urHpFydzYkG9/bbPgeAT/7m6DbY+M=', '9x1gtaNcO5ZYqPlYXzp8TpJbud+Yli14DZTvdEZXDBU=', 'OH6q5bMSjRxRoUQBeEP2u3Wei59wjy+xhB/S73QVJUQ=', '2022-11-26 09:04:23', '2022-11-26 09:04:23'),
(62, NULL, '1IVSWfWly63PvJ+2Tjqu2WESGq0s0rPsyryshHkbIs0=', 'bfrZeZWU8ilEl90jkZxx/mZfEszcyXETcPUCnF6QVJI=', 'mo5bgTjxLu+8o7urHpFyd03k8JCF9UgLBTKKlUTgXL4=', '2022-11-26 09:04:23', '2022-11-26 09:04:23'),
(63, NULL, 'AzfIbBsmS1QcGBuSLfEvkzpvRGZ6FJ4IKzxleSRjubk=', 'c7flUpuxbuwQ/ztw87V3flwb3o6076snSd8rku3NDm8=', '261VdZfR18W8TASSh2eVASWt8Jd6gKXK68sS83X6hcY=', '2022-11-26 09:04:52', '2022-11-26 09:04:52'),
(64, NULL, 'FHFGQeziLBWBcWFRNwX670bq1iQpFKncTGQF30SlswU=', 'P8LMoxSSecm8crfsjGZE4rn/Xb3Mm1nJCYUZTkqRAZ8=', '+ABkBKZfE2b2Lxar4p0DcZXJ7oea0pf8Cf1s6CLT0rs=', '2022-11-26 09:05:18', '2022-11-26 09:05:18'),
(65, NULL, '2LQSM2+pwsc5n65zYIfRAUhC9zdjaTIFEee9bcYl6hY=', 'gUlIumqO2qVfbROqdQW3mZPzQ+xic2qC0b/Uq3L1XC8=', 'EQ4NH6yA9EiusuEcIT3auaZB9paXu72Dnd/0tjbyazs=', '2022-11-26 09:05:18', '2022-11-26 09:05:18'),
(66, NULL, 'MhpDwKlIcuNYyss6UaVflRIFb3nmnOPPRBc6XT49+E8=', 'BlRxQ9Hk9IK4+HFAOdM52GKiZ0Qvq05JU0CT+zybdPg=', '3PPbrCboLBE4GuBXKOwfnmZevaZrVPMnKXNMYTT091o=', '2022-11-26 09:07:29', '2022-11-26 09:07:29'),
(67, NULL, 'WqsW+ZQsSI6RtZ1IfHChJP5SGE/xWxuAGnchbvUeFLU=', 'AzfIbBsmS1QcGBuSLfEvkzpvRGZ6FJ4IKzxleSRjubk=', 'VcI70ybteXw1uKzHqiBavjvKLM1eIgt00eO3RE6nQ7U=', '2022-11-26 09:09:41', '2022-11-26 09:09:41'),
(68, 'Mr.', 'o07EOXJVAwB1Ak4Ie6Jn/C6B99OkIf3d64FlZn/jroY=', 'JMwoV+ALt0iyW6IpitEOvgxaqa1ckR+yLvmZrs6OLkI=', 'Kb0dMdGOt8iOPn6UvnNdSpJ++APX+qW1oNd74bcqlHA=', '2023-11-15 18:49:36', '2023-11-15 18:49:36'),
(69, 'Ms.', 'MhpDwKlIcuNYyss6UaVflRIFb3nmnOPPRBc6XT49+E8=', 'E4ZpnhkbkvGmDboGMOIAh+wL6ZuKsJiSePjJokiHTHQ=', 'vWEwbu8vCXHrNPCPtIUa2+UeIWoVvdu5L+IDiJLY5j8=', '2023-11-15 18:49:36', '2023-11-15 18:49:36'),
(70, 'Mr.', 'qVm0keSE1abolw7zIxxcd/d1gImts7FD86sre2BySTU=', 'BhgpPv/I1DiscO+Ejeuv/bF15IlxUpuOHp/bKcCmzR8=', 'qRrRnSFFaYCHa6zJkdPd99hsouuJEk7LKneKBfcquQk=', '2023-11-29 14:04:52', '2023-11-29 14:04:52'),
(71, 'Ms.', 'Qo+tQ71pFIv8cFV16G4M5nbUKaWgfJ3j7J4yrZ5MxxQ=', '6CCvnOQIUHPuUja7TDNd7quW/oLVLYVq/yUiWnu1gOo=', 'BhgpPv/I1DiscO+Ejeuv/cmon7/bDPdvs8ivE5lLJig=', '2023-11-29 14:04:52', '2023-11-29 14:04:52'),
(72, NULL, '2VojgzzfwLU29ZDvUpLFzHHMdysGn9h02UOahP9xh8s=', 'DHZBvz1meSsWfnEQrg4J0NlvG5UKnBU9z9L0SVHHhTA=', 'NQy1WZmq2M5V8WY9J433UiNGiKhhNY2Go1S6xD+HiFA=', '2023-12-02 14:54:07', '2023-12-02 14:54:07'),
(73, NULL, 'f4gozRuTB7BCTTVtJovDervYk1QpGbr6KdEuyjy0NBA=', 'f4gozRuTB7BCTTVtJovDervYk1QpGbr6KdEuyjy0NBA=', 'f4gozRuTB7BCTTVtJovDenC53IgJX58y0IzbJ8VV/Ks=', '2023-12-02 14:54:07', '2023-12-02 14:54:07'),
(74, NULL, '2VojgzzfwLU29ZDvUpLFzHHMdysGn9h02UOahP9xh8s=', 'WzOlJHMwK3vxc8K0gPTcvNA+2fEDxlt23ti246U71tQ=', 'w1ZCZE3GbrxcIjnzJgcpriNGiKhhNY2Go1S6xD+HiFA=', '2023-12-02 17:35:59', '2023-12-02 17:35:59'),
(75, 'Ms.', 'f4gozRuTB7BCTTVtJovDervYk1QpGbr6KdEuyjy0NBA=', 'f4gozRuTB7BCTTVtJovDervYk1QpGbr6KdEuyjy0NBA=', 'f4gozRuTB7BCTTVtJovDervYk1QpGbr6KdEuyjy0NBA=', '2023-12-02 17:35:59', '2023-12-02 17:35:59'),
(76, 'Mr.', 'K5bk3uraBXPCTqtAP0KfqhmRFbNSnMyYcFBnffZ3P1M=', 'YThiEyxghnzsWNl/Ctj63ptmpyPHuK/XGFGCuCcQu+M=', '8TlUZH51fOkfmo+9LFtONz9wexAf6oNqSsoeKs4Epp0=', '2023-12-03 07:16:03', '2023-12-03 07:16:03'),
(77, 'Mr.', 'E4nPnFb5cT91k0RwfuOvqRLCsh/LBV5g4SNvP2xfgAA=', 'SH0vVohsTqDwXjVKI8zXp7JvL+UIRi8M7hQJ3KwNGis=', 'b8hmMH2Ud1gfJL2g8OKLsRZ+eeC1IH5CumewKPB9r3I=', '2023-12-03 07:16:03', '2023-12-03 07:16:03'),
(78, 'Ms.', 'GqSd3PWijbtic+ruEH1GYR/v6936Hp8a77HcHeLgf84=', 'EmViny8NutcNmTndvtb+zqxNzCs4JNz1fTYFxQ0pMI4=', '7OoUlah3KsAbPAPYUCI6PCPljfsa2ZOpJdCsONTX1jo=', '2023-12-03 07:19:11', '2023-12-03 07:19:11'),
(79, 'Mrs.', 'Iu4mLIfg+X27YDNm5oukMfqUV8aySnWJGkvutlIIA9o=', 'VOFuL2P48lRKakK1awOUKhLCsh/LBV5g4SNvP2xfgAA=', 'AmS5JtY7FIpG8QFlv/ikuq4ILXhjjDxX4foK7ib2sgE=', '2023-12-03 07:19:11', '2023-12-03 07:19:11'),
(80, 'Mr.', 'Kb0dMdGOt8iOPn6UvnNdSpJ++APX+qW1oNd74bcqlHA=', '3v46s0RJmUWHo6LE6q6/SzYkG9/bbPgeAT/7m6DbY+M=', 'C7ieDmcgWC0GkRAeXG7ffcdrwhaNjUVPPRBry8tedzk=', '2023-12-03 07:26:30', '2023-12-03 07:26:30'),
(81, 'Mr.', 'EaUp4MGEFVmVGQXzPAOHoE/86oesuYYrTkw6XFVfkVI=', 'E4nPnFb5cT91k0RwfuOvqRLCsh/LBV5g4SNvP2xfgAA=', '3v46s0RJmUWHo6LE6q6/S+wL6ZuKsJiSePjJokiHTHQ=', '2023-12-03 07:26:30', '2023-12-03 07:26:30'),
(82, 'Mrs.', 'V5RuL+XS4SnsYn4/lZQ1N0bq1iQpFKncTGQF30SlswU=', 'YThiEyxghnzsWNl/Ctj63sv09cgyU0xMJDM0fi/RqU4=', 'idxGzPPaEsP2+PhNmInCFwwpYNWGRSDTgMQfJzpZF8k=', '2023-12-03 07:32:16', '2023-12-03 07:32:16'),
(83, 'Mr.', 'fJIQbJS8+xOHvzgdi5Jji5oR+hfN3AxTxmqmKk/PBzU=', '2RfX3Rh69n4JK+JmTX62ZnAQqepYwV/Vn+sFX5SoAP0=', 'SH0vVohsTqDwXjVKI8zXp7JvL+UIRi8M7hQJ3KwNGis=', '2023-12-03 07:32:16', '2023-12-03 07:32:16'),
(84, 'Ms.', 'hc9wkHvtoQK074BbHttFQrTgH+hnL3tdCchEx6dVfAI=', 'GpBDvz1VIyUeFrY8bAAJMYRSRrVsWoEMwKnm8schwGY=', 'ItWzyztEHdaSHxC3KXLFSQ14ZIS3mXkf7r3KgEp7hQY=', '2023-12-03 07:38:11', '2023-12-03 07:38:11'),
(85, 'Mr.', 'SH0vVohsTqDwXjVKI8zXp4PwWyv57pcIdeoGcoUg8lA=', '8TlUZH51fOkfmo+9LFtON4oy5wf4KYSnp5B3CR0v3wE=', 'z8MC+ifAjWLp7jKjIa82X5yT6WO2Q5oUWhTTM2G+3d8=', '2023-12-03 07:38:11', '2023-12-03 07:38:11'),
(86, 'Mrs.', 'zuWMTX9mQSF7FQc/Qk88dR9C7vK8qZ3kMHo6w8S0aN4=', 'LGrok1w9rf0OzTzP+5XSI9SQMQUIlDZuulo74SZeucg=', 'o5DtSRj2QUUlfkNejTjuL//qelolIi1z/FzdyC8sl1k=', '2023-12-03 07:41:50', '2023-12-03 07:41:50'),
(87, 'Mr.', 'ElIJEBJmkEjeIYVfxxIyb/eKvGsoZnA8sHTtWq2Ni1k=', 'GM/nbq++RyBlwS8NvhPbB0rdZ4feqyKzHtyjCkaAzB0=', 'KQxwDMdg5Ypa5E0zzTvIIPvq3vRcGpthkEUh3Ivi6YI=', '2023-12-03 07:41:50', '2023-12-03 07:41:50'),
(88, 'Mr.', '5QmHfTG2jjAeBVuYnRC0K8bFLsG70v5dn1JW7Js+Muo=', 'URg7UIYWj32enbXiLaqt9d0lZXPUOX04EQFF5KbTi9M=', 'GA/RT7qcVBUQVOi17wMCrbH7m8Xgbd620+YNenx0vu0=', '2023-12-03 07:47:46', '2023-12-03 07:47:46'),
(89, 'Mrs.', 'AeXcYb/XUNKH35bE8tNn1MRWKLUrmyyzOwfSZuSU7rQ=', 'RznVWVVABgjF7S9aQw1t2E84X7d2bcUxCKnMwRtmt8w=', 'xVeS2lWJ3EnKpwdNYeeCtveKvGsoZnA8sHTtWq2Ni1k=', '2023-12-03 07:47:46', '2023-12-03 07:47:46'),
(90, 'Ms.', 'A9QRKlTWuZl/5gT+BkeKI/bYvaFBObxyxvdWLU0IN24=', 'VWeZqjFz83OUWMqAWPsKs5yT6WO2Q5oUWhTTM2G+3d8=', 'Z0xqt3o1fj4QL9LCHsp/AFbx7+p4l+BA0bLAm2lv2AM=', '2023-12-03 07:51:11', '2023-12-03 07:51:11'),
(91, 'Mrs.', 'eDFvrEQP3XUUzk27KzcASTDX+BiHjzGHKvukas8wuBU=', 'fqWUVkr5+Ev8oOWy9ffi+0Dgl3dtTc88V/6npf8OE7g=', 'ylzKRx51vADsHFsjyBzZU11ggcdRMAV6Szwv7RP9yQw=', '2023-12-03 07:51:11', '2023-12-03 07:51:11'),
(92, 'Mr.', 'RyxQ6GNo83I4wOFLlZk0CWBdeR7Jj7WzhN/X59GJ6Ac=', '42ZEBlUtuggCtNBYgWTB0tb96u14Xi/IUD2yF9sV74w=', 'ylzKRx51vADsHFsjyBzZU+bdmiwkK4XMkjI6DFk0fzg=', '2023-12-03 07:55:38', '2023-12-03 07:55:38'),
(93, 'Mr.', 'A6Lo1P/u+bRcmDyjdhCcWvYJ463IhB5p5zwSPOR/YYo=', '/TUM6jJeICAIPl8jI8cf1VbM+Fj1CXZ7yqPtImWDKCk=', 'LH1PF0x72UXyd69pllqmKrvYk1QpGbr6KdEuyjy0NBA=', '2023-12-03 07:55:38', '2023-12-03 07:55:38'),
(94, 'Ms.', 't3I9IhEj+8iDzrf4Rt0tEmBHcm0aUW/CiNYNzPj3wUw=', 'wvakCFFRUwsdR83PKSzZ+z39G0v+oDY2U5ZXK9TMRBQ=', '0XADmRvrA2zCnTc6/rItyXbzIyk69RI0GdXG/7ugTlY=', '2023-12-03 08:00:54', '2023-12-03 08:00:54'),
(95, 'Ms.', 'IUX6TNOsVeACs605UGjf5+dRAP4VkpwvZcIQdNim/mE=', 'HQ1OJLxfPiPk85rANMFKUQ==', 'BusfXsUrX6hMIbqrHyY0eORY7dwYthSWTrG0OtcjNiI=', '2023-12-03 08:00:54', '2023-12-03 08:00:54'),
(96, 'Mrs.', 'P1mUhe8r+6EFVI7qG3fhp9OoncpbNLlF6a2tp/oNjT4=', '42ZEBlUtuggCtNBYgWTB0ulaRScRhpMJCRyv9dPt8CE=', 'LGrok1w9rf0OzTzP+5XSI5yT6WO2Q5oUWhTTM2G+3d8=', '2023-12-03 08:04:02', '2023-12-03 08:04:02'),
(97, 'Mr.', 'jL/6PE88HhlQeSshttauO4/K7dsjym1bQ1ZbdMpJPaA=', 'k9sQpUw8gpNmnUgZnGU6bZyT6WO2Q5oUWhTTM2G+3d8=', 'bBf8aD5kxqrh9WRSz/byyc02nMPadLPwfsb5YDQA10s=', '2023-12-03 08:04:02', '2023-12-03 08:04:02'),
(98, 'Ms.', 'ea6eYREsxyzIjC7qE42b0j0dQ4faZgnAVMRFvCZY5wA=', 'T2HKEOmxtFu0W2xyeYc+R37tNnMIYjfzvAgrLO0/F+o=', 'J5eZNH2Nq6QKePeEbXIAq+prp4P4BodbZJqoQcNlwP0=', '2023-12-03 08:08:48', '2023-12-03 08:08:48'),
(99, 'Mr.', 'IfbqEVotQ86aMrJDESwXHR7k4wSrmKRV2gZBN7/BKLg=', 'BusfXsUrX6hMIbqrHyY0eJBDadIEGu0/2eAZy/mQG6w=', 'Cxi+UkAnC0F+1cuOQdUSSIu3P9AwgsG71xMB84WAkpE=', '2023-12-03 08:08:48', '2023-12-03 08:08:48'),
(100, 'Mrs.', 'IKCAPegs7Og73exf8huKtzYkG9/bbPgeAT/7m6DbY+M=', 'WzOlJHMwK3vxc8K0gPTcvHi/zS0GTp/qZQfwlqfLVio=', 'wvakCFFRUwsdR83PKSzZ+z39G0v+oDY2U5ZXK9TMRBQ=', '2023-12-03 08:11:50', '2023-12-03 08:11:50'),
(101, 'Mr.', 'PFAnNO0eaTQ5VxvDmcNValZ4Vz5AzNhRXZEDXXHCz38=', 'hfYVG67G+TBR4+BTeiOJrs37q/kmYhZffXL4ZrBLPyw=', '21zZSYC1BlWvUFmDXuEpyIZWZ05R3Ihr6yt+BBP9+zA=', '2023-12-03 08:11:50', '2023-12-03 08:11:50'),
(102, 'Mrs.', 'IKCAPegs7Og73exf8huKtzYkG9/bbPgeAT/7m6DbY+M=', 'WzOlJHMwK3vxc8K0gPTcvHi/zS0GTp/qZQfwlqfLVio=', 'wvakCFFRUwsdR83PKSzZ+z39G0v+oDY2U5ZXK9TMRBQ=', '2023-12-03 08:14:38', '2023-12-03 08:14:38'),
(103, 'Mr.', 'PFAnNO0eaTQ5VxvDmcNValZ4Vz5AzNhRXZEDXXHCz38=', 'hfYVG67G+TBR4+BTeiOJrs37q/kmYhZffXL4ZrBLPyw=', '21zZSYC1BlWvUFmDXuEpyIZWZ05R3Ihr6yt+BBP9+zA=', '2023-12-03 08:14:38', '2023-12-03 08:14:38'),
(104, NULL, 'E4ZpnhkbkvGmDboGMOIAhwZfIQX+eZjK0ITdbbn7WjI=', '21zZSYC1BlWvUFmDXuEpyFSzMi1+bee39bR+xX0DRtc=', 'zB5XSqavyHakD1KxMzv9NOQQZ9Ltu1j4K7RWXIwfuks=', '2023-12-03 14:21:18', '2023-12-03 14:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_position`
--

CREATE TABLE `personnel_position` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personnel_position`
--

INSERT INTO `personnel_position` (`id`, `position_name`, `created_at`, `updated_at`) VALUES
(1, 'Punong Barangay', '2022-08-12 01:24:16', '2022-08-12 01:24:16'),
(2, 'Secretary', '2022-08-12 01:24:31', '2022-08-12 01:24:31'),
(3, 'Sangguniang Barangay Member', '2022-08-12 01:24:41', '2022-08-12 01:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `person_signature`
--

CREATE TABLE `person_signature` (
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `file_address` varchar(255) DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `person_signature`
--

INSERT INTO `person_signature` (`file_id`, `file_address`, `person_id`, `created_at`, `updated_at`) VALUES
(1, '1668961080.png', 1, '2022-11-20 16:18:00', '2022-11-20 16:18:00'),
(2, '1668961199.png', 3, '2022-11-20 16:19:59', '2022-11-20 16:19:59'),
(3, '1668961263.png', 5, '2022-11-20 16:21:03', '2022-11-20 16:21:03'),
(4, '1668962060.png', 7, '2022-11-20 16:34:20', '2022-11-20 16:34:20'),
(5, '1668962122.png', 9, '2022-11-20 16:35:22', '2022-11-20 16:35:22'),
(6, '1668962185.png', 11, '2022-11-20 16:36:25', '2022-11-20 16:36:25'),
(7, '1668962244.png', 13, '2022-11-20 16:37:24', '2022-11-20 16:37:24'),
(8, '1668962315.png', 15, '2022-11-20 16:38:35', '2022-11-20 16:38:35'),
(9, '1668962385.png', 17, '2022-11-20 16:39:45', '2022-11-20 16:39:45'),
(10, '1668962482.png', 19, '2022-11-20 16:41:22', '2022-11-20 16:41:22'),
(11, '1668962564.png', 21, '2022-11-20 16:42:44', '2022-11-20 16:42:44'),
(12, '1668962617.png', 23, '2022-11-20 16:43:37', '2022-11-20 16:43:37'),
(13, '1668962680.png', 25, '2022-11-20 16:44:40', '2022-11-20 16:44:40'),
(14, '1668962745.png', 27, '2022-11-20 16:45:45', '2022-11-20 16:45:45'),
(15, '1668962823.png', 29, '2022-11-20 16:47:03', '2022-11-20 16:47:03'),
(16, '1668962903.png', 31, '2022-11-20 16:48:23', '2022-11-20 16:48:23'),
(17, '1668962970.png', 33, '2022-11-20 16:49:30', '2022-11-20 16:49:30'),
(18, '1668963046.png', 35, '2022-11-20 16:50:46', '2022-11-20 16:50:46'),
(19, '1668963108.png', 37, '2022-11-20 16:51:48', '2022-11-20 16:51:48'),
(20, '1668963175.png', 39, '2022-11-20 16:52:55', '2022-11-20 16:52:55'),
(21, '1668963267.png', 41, '2022-11-20 16:54:27', '2022-11-20 16:54:27'),
(22, '1668963339.png', 43, '2022-11-20 16:55:39', '2022-11-20 16:55:39'),
(23, '1668963401.png', 45, '2022-11-20 16:56:41', '2022-11-20 16:56:41'),
(24, '1668963461.png', 47, '2022-11-20 16:57:41', '2022-11-20 16:57:41'),
(25, '1668963541.png', 49, '2022-11-20 16:59:01', '2022-11-20 16:59:01'),
(26, '1668963632.png', 51, '2022-11-20 17:00:32', '2022-11-20 17:00:32'),
(27, '1668963698.png', 53, '2022-11-20 17:01:38', '2022-11-20 17:01:38'),
(28, '1668963756.png', 55, '2022-11-20 17:02:36', '2022-11-20 17:02:36'),
(29, '1668963818.png', 57, '2022-11-20 17:03:38', '2022-11-20 17:03:38'),
(30, '1668963886.png', 59, '2022-11-20 17:04:46', '2022-11-20 17:04:46'),
(31, '1669454084.png', 16, '2022-11-26 09:14:44', '2022-11-26 09:14:44'),
(32, '1669459883.jpg', 2, '2022-11-26 10:51:23', '2022-11-26 10:51:23'),
(33, '1669460313.png', 4, '2022-11-26 10:58:33', '2022-11-26 10:58:33'),
(34, '1700074176.jpg', 68, '2023-11-15 18:49:36', '2023-11-15 18:49:36'),
(35, '1700911468.jpg', 69, '2023-11-25 11:24:28', '2023-11-25 11:24:28'),
(36, '1701265254.jpg', 6, '2023-11-29 13:40:54', '2023-11-29 13:40:54'),
(37, '1701266692.jpg', 70, '2023-11-29 14:04:52', '2023-11-29 14:04:52'),
(38, '1701528847.jpg', 72, '2023-12-02 14:54:07', '2023-12-02 14:54:07'),
(39, '1701538559.jpg', 74, '2023-12-02 17:35:59', '2023-12-02 17:35:59'),
(40, '1701587763.jpg', 76, '2023-12-03 07:16:03', '2023-12-03 07:16:03'),
(41, '1701587951.jpg', 78, '2023-12-03 07:19:11', '2023-12-03 07:19:11'),
(42, '1701588390.jpg', 80, '2023-12-03 07:26:30', '2023-12-03 07:26:30'),
(43, '1701588736.jpg', 82, '2023-12-03 07:32:16', '2023-12-03 07:32:16'),
(44, '1701589091.jpg', 84, '2023-12-03 07:38:11', '2023-12-03 07:38:11'),
(45, '1701589310.jpg', 86, '2023-12-03 07:41:50', '2023-12-03 07:41:50'),
(46, '1701589666.jpg', 88, '2023-12-03 07:47:46', '2023-12-03 07:47:46'),
(47, '1701589871.jpg', 90, '2023-12-03 07:51:11', '2023-12-03 07:51:11'),
(48, '1701590138.jpg', 92, '2023-12-03 07:55:38', '2023-12-03 07:55:38'),
(49, '1701590454.jpg', 94, '2023-12-03 08:00:54', '2023-12-03 08:00:54'),
(50, '1701590642.jpg', 96, '2023-12-03 08:04:02', '2023-12-03 08:04:02'),
(51, '1701590928.jpg', 98, '2023-12-03 08:08:48', '2023-12-03 08:08:48'),
(52, '1701591110.jpg', 100, '2023-12-03 08:11:50', '2023-12-03 08:11:50'),
(53, '1701591278.jpg', 102, '2023-12-03 08:14:39', '2023-12-03 08:14:39'),
(54, '1701613773.jpg', 77, '2023-12-03 14:29:33', '2023-12-03 14:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_of_incident` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `persons` varchar(255) DEFAULT NULL,
  `narrative` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `date_of_incident`, `type`, `street`, `location`, `persons`, `narrative`, `created_at`, `updated_at`, `remarks`, `status`) VALUES
(75, '2023-12-04 00:00:00', 'sG8mCwrJsZQ6nTOsjm8qBLy8KAvg/gL5cd4jOIN7YR0=', 'Purok 5', 'JA+VRyPCiZA2WZCUTj89A9OxfS4FgUfmWCbCHmhJQfY=', 'XvKY7dobkEN5EUskkwq0U7BHze3JJDh+cADY8JzYb3NsDPijJ1Yskf3swGsAgC5C', 'lQISJ/WL/zPFj2tb4/qChv/NG92vsTNMKNVfVz/DeaCGOObFHQrFaH5yVv5iSp6HTyPcPH+fWK6CIZLyrr45XnHTaySSSNKqbs3/Xo4qv09C5VBBQaiU6hc29arkBdRQ4K+rNqkN7PYthLYixcYxKNZMfaZrrpCtU2lPhesZy3JJjWW9ioSRJYsOIM5/nvhpLYzTWxcjc9pQ7r2haUd4bQO+FwnJOW2fk2Wm6gePsG1FBfz5BiVU2WsI7Ks6xGqYzODIIrn6SbIo6sO5C8YDQt21QkNVLodY/kjpdv4B6pQ=', '2023-12-03 16:00:00', '2023-12-03 17:09:58', NULL, 'PENDING'),
(76, '2023-12-04 00:00:00', '0EH9jnUl+ireL45KQpSzNs/XKFJOsnv5b+DTLnzC5BY=', 'Purok 5', 'JA+VRyPCiZA2WZCUTj89Az33QK8XQKAuUPed9tc+trU=', 'KCOiFImkKMERhdLFiBgkZu1r22X8AEyWEzL4P96dIMfufCf59jSvB0D4mAqnqOJ3', 'RSZRtTV5u7axtXmCslvzHwTrUyBeAdDKzZR/d2T/pQ6fxoVk9HMzrQQu5UgH8wdXlVt44x3v1IgwaYdEJ8MDiawtFMw7XtPdGd7o2C57iWAFlSFEOHio9bs2Jtt+vuXn3iF//1/BXxdUvXOn2HuyGnmExhJvySHAYgYGnGiB+l8=', '2023-12-03 16:00:00', '2023-12-03 17:12:30', NULL, 'PENDING'),
(77, '2023-12-04 00:00:00', 'IexTBamxYFXOMbc3B1tOUabv/zeOMJ5qVE9DN6M0454=', 'Purok 5', '7R1g+Hy+Jk0tuZacXszgtGy3yawUBY7S21x9vJAsZTg=', 'PXtA69tzJjqzNtVluxLAcaT8G57rjs26HhqjCgWTcLU=', '1mddIsT2aAA7vp0VLCnUb41LHKvdHB+X+GPxt3guhwYQ+XA/4BjNguT67GvjVqaoZTIEgfOJamknhUnn2O32aYW+a29zZulxd2zhkQ6TxkmMnovhjuHeFp5CNXMMB4f+ctIw4wJVTTFVceLvzgwo36AxNbd7NpcjyzUJAtd1azg0z0Uj5ZRYjVCfiuCJ5Cst45KfieK+7tFZXYaT1td8i3VRUbDJJnQ932XQOzXRN2d1LkcjjCGVJiyEgZn8DdvD', '2023-12-03 16:00:00', '2023-12-03 17:14:42', NULL, 'PENDING'),
(78, '2023-12-04 00:00:00', 'E6wj7xp9/2rzjveXSlcv0eIEbOH8AjHVbVGsv6kGB9yXB4zb4faiWrFEGuz3c1TE', 'Purok 5', '1ZouhuidnkFlR4JydOOsXlkdepNjHBWpFy5k1zFD3oA=', 'PXtA69tzJjqzNtVluxLAcbXRH3HeekAiEjRziivM4J0MlyQ6dXvPGl2pdTzQwaWev7HS5KSWCxJBlcHs3DHxIg==', 'IBxiUaegPKQ/fsJGsHK59bGEuKPtbE8cVkF2VnoukfC5B2xaFGVUqQEt32t6r8Y/scrYbIzCLwWwADwKijnvL47/nit00/RgE9UnsIjCTT71FaR8bO4kCP8lgFeu0bAIPYc/VCs3cQIsQiwiuE8iJE004Z6L+mQdZMhg+gmHDJ0=', '2023-12-03 16:00:00', '2023-12-03 17:16:25', NULL, 'PENDING'),
(79, '2023-12-04 00:00:00', 'PhhAfmIrt1z5IgM66uuiOxg32f7uvuvIvO4wPsoIe+E=', 'Purok 5', '1ZouhuidnkFlR4JydOOsXrSWNuTI2WmTTDgVB8rJMCw=', 'HLKsnxC5CECB6NBvrxYgqLobGmeh77YZOo4LyDLzB31CDXWYCAbXRa0S1TJEbwCbwP4dV5O565aDgxPCfmpnUA==', 'XZq2eubxyIgmgk+1sL8qlQM+CkfBV4xW5l6SQm7s+ZkWhoBSEscD9pHB9yac1U/tJKT2Ji6cHXVjVqJoAMe3EOSWjoGsQpd+63WYGRfdl1aUZnt5yZyJU9nLtwQd2XxY4Bbx5KxZNDB0gU9G7RoF3Y3K7uKU8a7wmg9uwRKtT9Q=', '2023-12-03 16:00:00', '2023-12-03 17:17:48', NULL, 'PENDING'),
(80, '2023-12-04 00:00:00', 'AmAKrHMRv5bRGhbXfJl2JgeZPKIPb7C5ce62+jnexGc=', 'Purok 5', '1ZouhuidnkFlR4JydOOsXihjqG01hMEIrJ8ncy2Hebo=', 'xKL9xzmqTstqoVnbjhmEtKFUZDDUziajYEpdKq1mhshZXBkQR7Qe4u+VYNVxKseD', 'XZq2eubxyIgmgk+1sL8qlc1Jm1s/0I6JbHN0Gc3EAtwNJwq+YGzsA8iWLNEaoklDhe/7TFZh2Js+DVMTvy1Jm2KNAysy4ExMiM/0JeK7MRE+w7QFlToR1zdvBo5gNqn0iX3eKkqVfXxKNousrKEdY0W/Ixx7y8CqeMMF9E2iyD8nbjHM5/6dTj4eC4LRFUJQ', '2023-12-03 16:00:00', '2023-12-03 17:19:21', NULL, 'PENDING'),
(81, '2023-12-04 00:00:00', 'sxoUOOvOMFuZclWvR7GhpqubVi1PmO+1hQNvokuZ9fE=', 'Purok 5', '1ZouhuidnkFlR4JydOOsXrlh1LejrRUu1dfqyqacv+o=', 'j9IOulFvLQ1x8GA5gFg5ZxBjXFn4IKn9fDc3mgWrrHGtUOzaVqJIrlRtHv/lyOph', 'nbx9hInBokm2w9r9erxtNaIBf5X8vm9Iab1f0I1HXL/7PiYA84Oltl7ahMoP/GA9XPze1dygJsEo1DvV19wkjXG/e7037ys6mARSKBv1O+qS4WrYbDy7+1U6vshffQ3dbDWZXXgGRU3aQaxmxrNKfnIVJwH63HLAoDPTlKbx+Kk=', '2023-12-03 16:00:00', '2023-12-03 17:20:44', NULL, 'PENDING'),
(82, '2023-12-04 00:00:00', 'BxgdxXUDWUnilgL6lSVhFvrJiu1qfDjzS30nuv6xKGM=', 'Purok 5', '1ZouhuidnkFlR4JydOOsXrSWNuTI2WmTTDgVB8rJMCw=', 'pn6LvIRdkSQWMGp+e2Z6wl+AG8PyWBF3QRFiR0Gu2+gMlyQ6dXvPGl2pdTzQwaWeOlpuZ98OLL7dkOYwx7PBpQ==', 'BjvtYbaSLlizRY/TzaiXep0NzxyfXNkRUlmPOOcZGedpCbzrE0Xgx6MDcwaOFdxBRrq7FMPjYiV8fZ+O/xKiZAD2+WvRheYd55nRh3XUKKkbg9wNfAybtePgNzV8/vwiN4ygz8P3P769kg+5k3hJMjyjErvJ3DA+Hwn967q6qP8=', '2023-12-03 16:00:00', '2023-12-03 17:23:58', NULL, 'PENDING'),
(83, '2023-12-04 00:00:00', 'PlPRZVmq1lFi9x1N3ZZjSNW3Lckg3kWaN0i7c0peySGFLzPVysHRKekIV4m/Bj0f', 'Purok 1', 's0K1PndO35cW2skvRQuXalCGlml+AW3+0SLSuYi1BSs=', 'pn6LvIRdkSQWMGp+e2Z6wi6F9gNZoynPXKUusGy5gmPTb5jTk0+I4nJK+qf4DfRs', 'iXPTcwCZhQ7z4VzPXCLnpG2D9LVNoXErD+ZRrL7GK3pzCoQGpqOEw4TUF8fGPkl98ThgUp81RDvQcgzTUsxAum7dtOzIwrS6E+hwCLcuFM/m2F+mUL4j5noecM70FYerPYCa+pBJwbZMNQG/G8WP1pucw78L0P2Pu/2wLZN3K0Mw2O9hYwJlWasuAwhCbAx4nyPB37E7kHYGGyedxiaaXFpWZ5H1dcorRFeoo89SVOF9OxtfrNdsGvRRq9HolnB+ZrbP8P1E0/n6tkq+Jhfmrm4NiPOjc3zce/aCnNzCJ8qB38DiBZhFedR+sdH0p6jdniZ05SONO9TSPAHuWRiYkpXO7rg9k8pLKGVI45OCLzZiOSfPIySz3eTkX0IWazws03lcHoYuDcR+mzc6R9A7xw==', '2023-12-03 16:00:00', '2023-12-03 17:26:24', NULL, 'PENDING'),
(84, '2023-12-04 00:00:00', 'U3kPNCy5Ahpx9oydblqs4sXcKqR4/yar1xuzeRtoRgg=', 'Purok 2', 's0K1PndO35cW2skvRQuXamdjW3hlx/DG3stFvDA7wWU=', 'PXtA69tzJjqzNtVluxLAcZzNpTsF87HH9tPvQ5VK7lrTb5jTk0+I4nJK+qf4DfRs', 'BjvtYbaSLlizRY/TzaiXekVobesQH9j+7xp8lnI4fPFyqupuJfIlkn2A6GBsh8aHEHuIVLPkKVu48EMoPfPtuYWq7deLI5t/Hh/Cduxv6FXImU4ZqCfQXO6AqTyGO3F75airLv/TqqP1F9+zb99P/ZN1mr580e9TKiFqlvcP10Fu/PpkRV0a4+qhfHrvkzPGlcYP+a/bQT67FVHwJp9Qn8MXP89bdccvUT9aU85q52u4qvml+0eOu+WaXghNjiTLb02oY9tKm6gTyyrg0Hpa3w==', '2023-12-03 16:00:00', '2023-12-03 17:28:46', NULL, 'PENDING'),
(85, '2023-12-04 00:00:00', 'ddBiIfSo8Dg5hnScmGaCsOhuoEt5bh4keu9MrxPCc6s=', 'Purok 4', 's0K1PndO35cW2skvRQuXapYw9eFMNruOoxY+XpyYhBc=', '2vVM/S0mJ0bbQaJbCIDgx/xwaD/wt0xPqAo3FKtbyd/nu4LPAgvH5JwzXqhW0Qoh', 'XZq2eubxyIgmgk+1sL8qlT/L8PCtYwVI6OQ5OHxCYiFPyTG1NuU0FSqpSFrzDNz/O/h4SAMLV0k5fPxUaXqi4QPK7FAxaDwZ8mkxadz+AInNb+I+vZ+O4K/5M7YvZm2BoXCDsHmuniWhfqECsV7Gt6ykUc+SWQj/8OBzYhAQmzK6vdqek2IGO494BsfT0H3oCUKCVN6PPq7xR6xX2H5ibg==', '2023-12-03 16:00:00', '2023-12-03 17:31:47', NULL, 'PENDING'),
(86, '2023-12-04 00:00:00', 'AmAKrHMRv5bRGhbXfJl2JgeZPKIPb7C5ce62+jnexGc=', 'Purok 4', 's0K1PndO35cW2skvRQuXal3bpBF6jysVFGrVZ/3fQtQ=', 'zB5XSqavyHakD1KxMzv9NCowVVZZHp9fKGxmg73Jq/o=', '03d/cuJ05wfsPdsMIDQjmF4dhTTdVleUEudwYMC6SQVj78f5/sW15AbV4SAT2+F4OAU20RSzRn2zwrJUbXCABtQb+A8ZfKj8gjlxsQfCfnZjrtpWzaE6TgI/Ruv2cwX99+ajSDhwiy2vvnJNQZNcH4QfZFp+voihW7tODceeanE=', '2023-12-03 16:00:00', '2023-12-03 17:33:36', NULL, 'PENDING'),
(87, '2023-12-04 00:00:00', 'IexTBamxYFXOMbc3B1tOUWqjvmsBGhRg6FwWm27zAAI=', 'Dimson Compound', 's0K1PndO35cW2skvRQuXaimAwCZPAw6N3i+f7WZ4zlM=', 'JsdByGU3zrvRUgA3/q4T62gtGugSg9GvPZ0GiCjF1K9ZXBkQR7Qe4u+VYNVxKseD', 'Z0DPRIdFVOMkyOLhkW/ggKEaDc+qDgtmaX9oNrDuqRUEaGXt37nHZgedTmJ1eaoNG8GUgQ21eUNdwiXn07FGkvEGcNLc7v8gsIaRzy8RZTI=', '2023-12-03 16:00:00', '2023-12-03 17:34:55', NULL, 'PENDING'),
(88, '2023-12-04 00:00:00', 'IexTBamxYFXOMbc3B1tOUWqjvmsBGhRg6FwWm27zAAI=', 'Purok 7', '1ZouhuidnkFlR4JydOOsXpZ775LobA1auuKFSU4aD24=', 'Np4NymLIQsrBOv6uUJpoCH+YeG1bgaBiouB6lITGbgPA/h1Xk7nrloODE8J+amdQ', 'Z0DPRIdFVOMkyOLhkW/ggB4gVm/biNiqF20QM9tXR4IaL6clnrqRux0GEQefaNE5WJn4ZKEYsLV27/LgApm2MJzo8E3rViGR/L6gHiCaYQcxoMCO7C7AxtPc6B2orPPB', '2023-12-03 16:00:00', '2023-12-03 17:36:00', NULL, 'PENDING'),
(89, '2023-12-04 00:00:00', 'uyngXFPNew3J0OCMehESZBCG6ydaMGuFmXmKnOdbX8A=', 'Purok 8', 'XjFokkhHJEw8OiIE49Rk+bd4CMqVbfEK5LYE6vJu0TY=', 'ipCcHIOawSppV76w9Oys2f69jU8dMDiDCFzW2U24c+oMlyQ6dXvPGl2pdTzQwaWeOlpuZ98OLL7dkOYwx7PBpQ==', 'SrZUZU0UlHQ/Jhy2YBJ6I03XglEMHcNJlGbWiAH4xourhW5R4LJMljRN5aK/5jkkmO4zjaExgupjssbLqfyTkjVfs61Xx3MnjQfqkaRzlOtjmHxoYl/wIZffR/iESJxLmVVxrxvsQCgwjrYT6dFfmObbmkRiL/13CVnsGsTw5ao=', '2023-12-03 16:00:00', '2023-12-03 17:38:23', NULL, 'PENDING'),
(90, '2023-12-04 00:00:00', 'IexTBamxYFXOMbc3B1tOUWqjvmsBGhRg6FwWm27zAAI=', 'Purok 9', 's0K1PndO35cW2skvRQuXalhZXPm0Xh4AgrNemxtF8gM=', 'NcTQVoYyHn/+XJ9eFK2tkqhba73kAYaXMI59ApxIL4R8XPvPulTL1GLgUDG4vpPiwP4dV5O565aDgxPCfmpnUA==', 'Z0DPRIdFVOMkyOLhkW/ggKbjyaaJrX1xk+HJHkWkAWUmNJ/XnC5wycSxh6Mzw8uRI1Gs/Gs2hoxmPYS1ORqMG/Kb6pyvnToyusq2gUv9r0d2fjGqxV/c6NQIqo0pRYzoaTU55hpn++jYh+cmM3hrbg==', '2023-12-03 16:00:00', '2023-12-03 17:40:01', NULL, 'PENDING'),
(91, '2023-12-04 00:00:00', 'BxgdxXUDWUnilgL6lSVhFvrJiu1qfDjzS30nuv6xKGM=', 'Sta Teresa', 's0K1PndO35cW2skvRQuXapO4XAoH5gWejil0lX4eNMU=', 'PXtA69tzJjqzNtVluxLAcZhSujy+y/GOda2JyYoOzqNKJ9pvGVHf8dOFUOyiwo1w', 'LUDTtO7L6hYwFJaArd7+fzg3mnoy2ky+aLSZ2JLUcStPRNRN+CroR2yNEwuXRHy1HdpEoAfqibEHeTEIGPqDz3d1dOM8KXTtL3qbi4/XSUjnmj9pMybwGRXNy1SFB2/g', '2023-12-03 16:00:00', '2023-12-03 17:41:56', NULL, 'PENDING'),
(92, '2023-12-04 00:00:00', 'ddBiIfSo8Dg5hnScmGaCsOhuoEt5bh4keu9MrxPCc6s=', 'Caldozo Compound', 's0K1PndO35cW2skvRQuXah59DuMrTbqjvPkYyFmyo4s=', 'o5DtSRj2QUUlfkNejTjuLwduLLKWj6jniYA8WrECtPoZXducSba+GKn9jQs9F5Pz', 'dQkRt3rE0TW30uDfkDQyMwvKu07DrqUq8jyWrtgo/xac8v7YZRRs2UFyq7xi5m8BmE3xmBVM3Qi+bpVoAtXmyHfit/+NdeacarDqSOPwgRNWOXuh4j6U5RAIo9gQ2slJRbgB3VbZvhIJx+0lMPbl9g==', '2023-12-03 16:00:00', '2023-12-03 17:43:14', NULL, 'PENDING'),
(93, '2023-12-04 00:00:00', 'BxgdxXUDWUnilgL6lSVhFvrJiu1qfDjzS30nuv6xKGM=', 'Perpetual Village', 'kH7QiJv4J2KxyAK94thicICavNu6r1hB1N0yTybIp8URpy04ImbMZUIs3tsEBNZIZZLQHsIcImKILEZ7fZbCSA==', '/efUbl9cF+ciiEewSYOMrIEoBLSLfpTJ2gU5ZnIiWpNNKU4NOBWS192iyi0ZTIrb', 'LUDTtO7L6hYwFJaArd7+f3Gb98DvsZQSQS+l0RQp68PJuZV1+uJvVw9t8t1xnXJhwjAZmncxDRL8DQr7OiCQx7Z6UMMENHk+IKHUNM3YMPedHF2kJReWe352kO9mZbEPp6SHWeRwred4pJToLFdYOg==', '2023-12-03 16:00:00', '2023-12-03 17:45:07', NULL, 'PENDING'),
(94, '2023-12-04 00:00:00', 'IexTBamxYFXOMbc3B1tOUWqjvmsBGhRg6FwWm27zAAI=', 'Purok 3', 's0K1PndO35cW2skvRQuXaqD0K3XQO/qwJ8SvLx9tVNo=', 'wGfTuFCjLlRofObO5ewJbPeVqmHXE7w9Jom/T77/ip0=', 'KQxwDMdg5Ypa5E0zzTvIIBX3wxhE4iKC5GOvxlFnnl3gUgaNDO0VJTkTsRqRxx3DmrEPqlhdAQ+//41b170+jhsMGJmm/fvk6bsvMq3iLjdkHPyI2BIMPvOG9Q7C2TyDpR982+J2FxHOOmA3RhVUig6Z+str1R1FuRDEAgyJ6DoOvBbS04MKfbJScjlf0LSUteSexroUwuzq6OafiZjkSg==', '2023-12-03 16:00:00', '2023-12-03 17:53:25', NULL, 'PENDING'),
(95, '2023-12-04 00:00:00', 'BxgdxXUDWUnilgL6lSVhFvrJiu1qfDjzS30nuv6xKGM=', 'Purok 5', 'JA+VRyPCiZA2WZCUTj89AzaRFQreE+ziBPXHvaSXAuE=', 'fjhp47pTS4YhuRmLT9JdqXvTF6BZMfmjXSutvuVp3vQXwqo+dooHc8vuuA5TJhhKbAz4oydWLJH97MBrAIAuQg==', 'JMwoV+ALt0iyW6IpitEOvpdQLOklLZnTBFuDPQEiw+AcE4oQiXxKZr/1G2/H3SH/lO7bHnQOoL7SlAL6Y5CFS9QW43/gonk77qzoT3joGyjjFouqKXdoEEcHVKcsboea+wI5qgsO+vdKIXmEN+dz+rm6XAhHV0q9qKTFBGoMuS/4YBWfXCJcX1zNLBT4d9IOCVpZRwO81Cs2x7rSTO+0Qw==', '2023-12-03 16:00:00', '2023-12-03 17:55:05', NULL, 'PENDING'),
(96, '2023-12-04 00:00:00', 'uyngXFPNew3J0OCMehESZBCG6ydaMGuFmXmKnOdbX8A=', 'Purok 5', 's0K1PndO35cW2skvRQuXag3HQhV9QU2QAw/XgbQWu78=', '8ptbu8g6bazIgK9cy3vfDylquCSK8dcV8Nw99So6P1x9t1Ao+4haEbErHUIruTUL', 'XZq2eubxyIgmgk+1sL8qlXVdBQq0o5eHY1m6/ZV9eTQWl/3OTcFm19e/LhnxsJPw3p/aKt8VD/cJXxQzQosftmirtXA7l9hsCljm1ovrVZtEW6HmCH/2GEUIU+SNelZl5fAMCQ9VC7tcwjUAh9HyQSCm58bstmQJXCNklqSX0K5QD2Y11/2gkCIjFLD+rFWk', '2023-12-03 16:00:00', '2023-12-03 18:04:10', NULL, 'PENDING'),
(97, '2023-12-04 00:00:00', 'sG8mCwrJsZQ6nTOsjm8qBLy8KAvg/gL5cd4jOIN7YR0=', 'Purok 5', 'JA+VRyPCiZA2WZCUTj89Ax+FCnh8OKKQi5W2b6Qe1jI=', 'a1uPDAU2RZJVhOhN0fz39yLvKWq/7QMg7iOTLPya8uwTj+ow1qPrf24MsNbFw8a9u8J3q1X2fonppwsmeYEguGwM+KMnViyR/ezAawCALkI=', 'ReO4ij0shyVAY9WFdxa1IIKjoh65dL+wZFChIB61xXC/1v0r9834nf/lhFAnqie1ZfhXPAjIByJA2tW38jjfdo62sBAPo5wimJ+/iMkjj9P2Afp25A00uEXQhkBPylIP7++GwnQBWSdzICRncdL6rFHntvd57BvU2cU85XhOIQqpAccogyYmE/cvGWaRZtEgTgoSZ25f1SbYzDgF5Z5sTVR2rz9OyR60dXL+kbw+bQg39lydcXLoIVLzMTIzuIz6a9CO/RWwaCysOylLb5vSFTaTFARG4oV/qQNWcoTTb6Y=', '2023-12-03 16:00:00', '2023-12-03 18:21:06', NULL, 'PENDING'),
(98, '2023-12-04 00:00:00', 'AmAKrHMRv5bRGhbXfJl2JgeZPKIPb7C5ce62+jnexGc=', 'Purok 5', '2NNMd3gjZVxxQVajMjFBC/QRa32RlU6assMOVtqnRqLPkwqe1id8EPH3VMzvYplv', 'C7ieDmcgWC0GkRAeXG7ffd5mdmZUEvGk/lH6XlqtkHg=', 'f4gozRuTB7BCTTVtJovDetsMzKNCvfPGNRw60/xhKx4=', '2023-12-03 16:00:00', '2023-12-04 07:11:16', NULL, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8fCdPX0lj3v5r6zmLmYxoB9BJHQhHptyHm9chqWu', 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV2dTa3NNZWRpak5iRnlCVGdqbUEzaVpnTm1VZktaZzA1Q0txbUphRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTU7fQ==', 1701674208),
('bjA1T73P8spaRG8qTFEx0d8K9zCa9pFv6jxhtl8e', 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTkpjUVZRNHNtUm84b2s2NzJ3eW9oWjJyRDRBMWFFNUlQcmtZOW9vWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTU7fQ==', 1701789637),
('v213H2jKLWiD4zbXnPoDhL5cpFVoyoHsquaK0ESb', 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUmw3QUV1OXVwaU9qNTJxOHlycGRPQlp3enNsSkE2eWNGdFRjSWM2TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTU7fQ==', 1701879326);

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `registered_by` bigint(20) UNSIGNED DEFAULT NULL,
  `user_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `position_id` bigint(20) UNSIGNED DEFAULT NULL,
  `signature` bigint(20) UNSIGNED DEFAULT NULL,
  `year_of_office` varchar(255) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `registered_by`, `user_type_id`, `position_id`, `signature`, `year_of_office`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Edgen Lumutan', 'mharmicu@gmail.com', '2022-08-11 16:27:05', '$2y$10$aDaZTZlWIRHf0/NAGEKxuOQa3roJznOdLYK0d7lWM/rb94auSRsSu', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2022-08-11 16:26:19', '2022-11-04 11:56:27', 1),
(15, 'Cecillia  Teodoro', 'lumutan.edgenpaul@gmail.com', '2023-12-03 07:05:01', '$2y$10$Rq.gSmLK3v8MtxrKGJqobO4A3Mw3AFXZUs.uVb4Py4QUY713Bsb1O', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, '2023-12-02 15:46:24', '2023-12-03 07:05:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `user_type_name`, `created_at`, `updated_at`) VALUES
(1, 'Lupon', '2022-08-12 01:23:31', '2022-08-12 01:23:31'),
(2, 'Sangguniang Barangay', '2022-08-12 01:23:52', '2022-08-12 01:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `witnesses`
--

CREATE TABLE `witnesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_no` bigint(20) UNSIGNED DEFAULT NULL,
  `witness_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `witnesses`
--

INSERT INTO `witnesses` (`id`, `case_no`, `witness_id`, `created_at`, `updated_at`) VALUES
(1, 2022001, 61, '2022-11-26 09:04:23', '2022-11-26 09:04:23'),
(2, 2022001, 62, '2022-11-26 09:04:23', '2022-11-26 09:04:23'),
(3, 2022002, 63, '2022-11-26 09:04:52', '2022-11-26 09:04:52'),
(4, 2022003, 64, '2022-11-26 09:05:18', '2022-11-26 09:05:18'),
(5, 2022003, 65, '2022-11-26 09:05:18', '2022-11-26 09:05:18'),
(6, 2022006, 66, '2022-11-26 09:07:30', '2022-11-26 09:07:30'),
(7, 2022008, 67, '2022-11-26 09:09:41', '2022-11-26 09:09:41'),
(8, 2024003, 104, '2023-12-03 14:21:18', '2023-12-03 14:21:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `amicable_settlements`
--
ALTER TABLE `amicable_settlements`
  ADD PRIMARY KEY (`settlement_id`);

--
-- Indexes for table `arbitration_agreements`
--
ALTER TABLE `arbitration_agreements`
  ADD PRIMARY KEY (`agreement_id`),
  ADD KEY `arbitration_agreements_hearing_id_foreign` (`hearing_id`);

--
-- Indexes for table `arbitration_awards`
--
ALTER TABLE `arbitration_awards`
  ADD PRIMARY KEY (`award_id`),
  ADD KEY `arbitration_awards_made_by_foreign` (`made_by`);

--
-- Indexes for table `blotter_report`
--
ALTER TABLE `blotter_report`
  ADD PRIMARY KEY (`case_no`),
  ADD KEY `blotter_report_processed_by_foreign` (`processed_by`);

--
-- Indexes for table `case_hearings`
--
ALTER TABLE `case_hearings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_hearings_case_no_foreign` (`case_no`),
  ADD KEY `case_hearings_hearing_id_foreign` (`hearing_id`);

--
-- Indexes for table `case_involved`
--
ALTER TABLE `case_involved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_involved_case_no_foreign` (`case_no`),
  ADD KEY `case_involved_complainant_id_foreign` (`complainant_id`),
  ADD KEY `case_involved_respondent_id_foreign` (`respondent_id`);

--
-- Indexes for table `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `court_actions`
--
ALTER TABLE `court_actions`
  ADD PRIMARY KEY (`court_action_id`),
  ADD KEY `court_actions_case_no_foreign` (`case_no`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hearings`
--
ALTER TABLE `hearings`
  ADD PRIMARY KEY (`hearing_id`),
  ADD KEY `hearings_settlement_id_foreign` (`settlement_id`),
  ADD KEY `hearings_award_id_foreign` (`award_id`),
  ADD KEY `hearings_hearing_type_id_foreign` (`hearing_type_id`);

--
-- Indexes for table `hearing_notices`
--
ALTER TABLE `hearing_notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hearing_notices_notice_id_foreign` (`notice_id`),
  ADD KEY `hearing_notices_hearing_id_foreign` (`hearing_id`);

--
-- Indexes for table `hearing_types`
--
ALTER TABLE `hearing_types`
  ADD PRIMARY KEY (`hearing_type_id`);

--
-- Indexes for table `incident_case`
--
ALTER TABLE `incident_case`
  ADD PRIMARY KEY (`id`),
  ADD KEY `incident_case_article_no_foreign` (`article_no`),
  ADD KEY `incident_case_case_no_foreign` (`case_no`);

--
-- Indexes for table `kp_cases`
--
ALTER TABLE `kp_cases`
  ADD PRIMARY KEY (`article_no`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`notice_id`),
  ADD KEY `notices_notified_by_foreign` (`notified_by`),
  ADD KEY `notices_case_no_foreign` (`case_no`),
  ADD KEY `notices_notice_type_id_foreign` (`notice_type_id`);

--
-- Indexes for table `notice_type`
--
ALTER TABLE `notice_type`
  ADD PRIMARY KEY (`notice_type_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `personnel_position`
--
ALTER TABLE `personnel_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_signature`
--
ALTER TABLE `person_signature`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `person_signature_person_id_foreign` (`person_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_user_type_id_foreign` (`user_type_id`),
  ADD KEY `users_position_id_foreign` (`position_id`),
  ADD KEY `users_signature_foreign` (`signature`),
  ADD KEY `registered_by` (`registered_by`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `witnesses`
--
ALTER TABLE `witnesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `witnesses_case_no_foreign` (`case_no`),
  ADD KEY `witnesses_witness_id_foreign` (`witness_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `amicable_settlements`
--
ALTER TABLE `amicable_settlements`
  MODIFY `settlement_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `arbitration_agreements`
--
ALTER TABLE `arbitration_agreements`
  MODIFY `agreement_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `arbitration_awards`
--
ALTER TABLE `arbitration_awards`
  MODIFY `award_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blotter_report`
--
ALTER TABLE `blotter_report`
  MODIFY `case_no` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2024017;

--
-- AUTO_INCREMENT for table `case_hearings`
--
ALTER TABLE `case_hearings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `case_involved`
--
ALTER TABLE `case_involved`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `court_actions`
--
ALTER TABLE `court_actions`
  MODIFY `court_action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hearings`
--
ALTER TABLE `hearings`
  MODIFY `hearing_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hearing_notices`
--
ALTER TABLE `hearing_notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `hearing_types`
--
ALTER TABLE `hearing_types`
  MODIFY `hearing_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `incident_case`
--
ALTER TABLE `incident_case`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `kp_cases`
--
ALTER TABLE `kp_cases`
  MODIFY `article_no` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `notice_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `notice_type`
--
ALTER TABLE `notice_type`
  MODIFY `notice_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personnel_position`
--
ALTER TABLE `personnel_position`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `person_signature`
--
ALTER TABLE `person_signature`
  MODIFY `file_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `witnesses`
--
ALTER TABLE `witnesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arbitration_agreements`
--
ALTER TABLE `arbitration_agreements`
  ADD CONSTRAINT `arbitration_agreements_hearing_id_foreign` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`hearing_id`) ON DELETE CASCADE;

--
-- Constraints for table `arbitration_awards`
--
ALTER TABLE `arbitration_awards`
  ADD CONSTRAINT `arbitration_awards_made_by_foreign` FOREIGN KEY (`made_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blotter_report`
--
ALTER TABLE `blotter_report`
  ADD CONSTRAINT `blotter_report_processed_by_foreign` FOREIGN KEY (`processed_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `case_hearings`
--
ALTER TABLE `case_hearings`
  ADD CONSTRAINT `case_hearings_case_no_foreign` FOREIGN KEY (`case_no`) REFERENCES `blotter_report` (`case_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `case_hearings_hearing_id_foreign` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`hearing_id`) ON DELETE CASCADE;

--
-- Constraints for table `case_involved`
--
ALTER TABLE `case_involved`
  ADD CONSTRAINT `case_involved_case_no_foreign` FOREIGN KEY (`case_no`) REFERENCES `blotter_report` (`case_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `case_involved_complainant_id_foreign` FOREIGN KEY (`complainant_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `case_involved_respondent_id_foreign` FOREIGN KEY (`respondent_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `court_actions`
--
ALTER TABLE `court_actions`
  ADD CONSTRAINT `court_actions_case_no_foreign` FOREIGN KEY (`case_no`) REFERENCES `blotter_report` (`case_no`) ON DELETE CASCADE;

--
-- Constraints for table `hearings`
--
ALTER TABLE `hearings`
  ADD CONSTRAINT `hearings_award_id_foreign` FOREIGN KEY (`award_id`) REFERENCES `arbitration_awards` (`award_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hearings_hearing_type_id_foreign` FOREIGN KEY (`hearing_type_id`) REFERENCES `hearing_types` (`hearing_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hearings_settlement_id_foreign` FOREIGN KEY (`settlement_id`) REFERENCES `amicable_settlements` (`settlement_id`) ON DELETE CASCADE;

--
-- Constraints for table `hearing_notices`
--
ALTER TABLE `hearing_notices`
  ADD CONSTRAINT `hearing_notices_hearing_id_foreign` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`hearing_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hearing_notices_notice_id_foreign` FOREIGN KEY (`notice_id`) REFERENCES `notices` (`notice_id`) ON DELETE CASCADE;

--
-- Constraints for table `incident_case`
--
ALTER TABLE `incident_case`
  ADD CONSTRAINT `incident_case_article_no_foreign` FOREIGN KEY (`article_no`) REFERENCES `kp_cases` (`article_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `incident_case_case_no_foreign` FOREIGN KEY (`case_no`) REFERENCES `blotter_report` (`case_no`) ON DELETE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_case_no_foreign` FOREIGN KEY (`case_no`) REFERENCES `blotter_report` (`case_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `notices_notice_type_id_foreign` FOREIGN KEY (`notice_type_id`) REFERENCES `notice_type` (`notice_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notices_notified_by_foreign` FOREIGN KEY (`notified_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `person_signature`
--
ALTER TABLE `person_signature`
  ADD CONSTRAINT `person_signature_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `registered_by` FOREIGN KEY (`registered_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `personnel_position` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_signature_foreign` FOREIGN KEY (`signature`) REFERENCES `storage` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_user_type_id_foreign` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `witnesses`
--
ALTER TABLE `witnesses`
  ADD CONSTRAINT `witnesses_case_no_foreign` FOREIGN KEY (`case_no`) REFERENCES `blotter_report` (`case_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `witnesses_witness_id_foreign` FOREIGN KEY (`witness_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
