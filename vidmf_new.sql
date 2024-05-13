-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:8889
-- Thời gian đã tạo: Th5 13, 2024 lúc 01:50 AM
-- Phiên bản máy phục vụ: 5.7.39
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vidmf_new`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `b_tasks`
--

CREATE TABLE `b_tasks` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_IN_BBCODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PRIORITY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `STATUS` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSIBLE_ID` int(11) DEFAULT NULL,
  `DATE_START` datetime DEFAULT NULL,
  `DURATION_PLAN` int(11) DEFAULT NULL,
  `DURATION_FACT` int(11) DEFAULT NULL,
  `DURATION_TYPE` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `TIME_ESTIMATE` int(11) NOT NULL DEFAULT '0',
  `REPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEADLINE` datetime DEFAULT NULL,
  `START_DATE_PLAN` datetime DEFAULT NULL,
  `END_DATE_PLAN` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `CHANGED_BY` int(11) DEFAULT NULL,
  `CHANGED_DATE` datetime DEFAULT NULL,
  `STATUS_CHANGED_BY` int(11) DEFAULT NULL,
  `STATUS_CHANGED_DATE` datetime DEFAULT NULL,
  `CLOSED_BY` int(11) DEFAULT NULL,
  `CLOSED_DATE` datetime DEFAULT NULL,
  `ACTIVITY_DATE` datetime DEFAULT NULL,
  `GUID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXCHANGE_ID` varchar(196) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXCHANGE_MODIFIED` varchar(196) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OUTLOOK_VERSION` int(11) DEFAULT NULL,
  `MARK` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_CHANGE_DEADLINE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_CHANGE_DEADLINE_COUNT` tinyint(4) DEFAULT NULL,
  `ALLOW_CHANGE_DEADLINE_COUNT_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_CHANGE_DEADLINE_MAXTIME` datetime DEFAULT NULL,
  `ALLOW_CHANGE_DEADLINE_MAXTIME_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_TIME_TRACKING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MATCH_WORK_TIME` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TASK_CONTROL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ADD_IN_REPORT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `GROUP_ID` int(11) DEFAULT '0',
  `PARENT_ID` int(11) DEFAULT NULL,
  `FORUM_TOPIC_ID` bigint(20) DEFAULT NULL,
  `MULTITASK` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DECLINE_REASON` text COLLATE utf8_unicode_ci,
  `FORKED_BY_TEMPLATE_ID` int(11) DEFAULT NULL,
  `ZOMBIE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEADLINE_COUNTED` int(11) NOT NULL DEFAULT '0',
  `STAGE_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `b_tasks`
--

INSERT INTO `b_tasks` (`ID`, `TITLE`, `DESCRIPTION`, `DESCRIPTION_IN_BBCODE`, `PRIORITY`, `STATUS`, `RESPONSIBLE_ID`, `DATE_START`, `DURATION_PLAN`, `DURATION_FACT`, `DURATION_TYPE`, `TIME_ESTIMATE`, `REPLICATE`, `DEADLINE`, `START_DATE_PLAN`, `END_DATE_PLAN`, `CREATED_BY`, `CREATED_DATE`, `CHANGED_BY`, `CHANGED_DATE`, `STATUS_CHANGED_BY`, `STATUS_CHANGED_DATE`, `CLOSED_BY`, `CLOSED_DATE`, `ACTIVITY_DATE`, `GUID`, `XML_ID`, `EXCHANGE_ID`, `EXCHANGE_MODIFIED`, `OUTLOOK_VERSION`, `MARK`, `ALLOW_CHANGE_DEADLINE`, `ALLOW_CHANGE_DEADLINE_COUNT`, `ALLOW_CHANGE_DEADLINE_COUNT_VALUE`, `ALLOW_CHANGE_DEADLINE_MAXTIME`, `ALLOW_CHANGE_DEADLINE_MAXTIME_VALUE`, `ALLOW_TIME_TRACKING`, `MATCH_WORK_TIME`, `TASK_CONTROL`, `ADD_IN_REPORT`, `GROUP_ID`, `PARENT_ID`, `FORUM_TOPIC_ID`, `MULTITASK`, `SITE_ID`, `DECLINE_REASON`, `FORKED_BY_TEMPLATE_ID`, `ZOMBIE`, `DEADLINE_COUNTED`, `STAGE_ID`) VALUES
(1, 'Check Updates', 'Check if any new updates are available and install them if required.', 'N', '1', '2', 1, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 1, '2017-04-28 10:22:45', 1, '2017-04-28 10:22:45', 1, '2017-04-28 10:22:45', NULL, NULL, '2017-04-28 10:22:45', '{91faba5f-1ad5-4719-9c97-c5f5dff8aab2}', 'ba2054646390a0fc90f0622157e21626', NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, NULL, 'N', 's1', NULL, NULL, 'N', 0, 0),
(2, 'Check Global Settings', 'Verify that the current global settings are adequate. Fix the global settings if required.', 'N', '1', '2', 1, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 1, '2017-04-28 10:22:45', 1, '2017-04-28 10:22:45', 1, '2017-04-28 10:22:45', NULL, NULL, '2017-04-28 10:22:45', '{d426ae67-354e-4381-9c27-c6a4d039c800}', '3f0bdb14e068eb9b341d489b0cc1a0b9', NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, NULL, 'N', 's1', NULL, NULL, 'N', 0, 0),
(3, 'dfdfdfdfd', '', 'Y', '1', '3', 8, '2021-11-15 20:07:40', NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 8, '2021-11-01 15:26:37', 8, '2021-11-15 20:07:40', 8, '2021-11-15 20:07:40', NULL, NULL, '2021-11-15 20:07:36', '{40a77d80-2162-4055-ad74-440b346f106e}', NULL, NULL, NULL, 9, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 17, 'Y', 'co', NULL, NULL, 'N', 0, 0),
(4, 'dfdfdfdfd', '', 'Y', '1', '2', 11, NULL, 0, NULL, 'days', 0, 'N', NULL, NULL, NULL, 8, '2021-11-01 15:26:38', 8, '2021-11-09 14:22:01', 8, '2021-11-01 15:26:38', NULL, NULL, '2021-11-01 15:26:38', '{27843fb9-82ed-4631-bec2-1efd87940c50}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 15, 3, 1, 'N', 'co', NULL, NULL, 'N', 0, 0),
(5, 'dfdfdfdfd', '', 'Y', '1', '5', 14, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 8, '2021-11-01 15:26:38', 8, '2021-11-09 16:02:34', 8, '2021-11-09 16:02:34', 8, '2021-11-09 16:02:34', '2021-11-09 16:02:34', '{1f19e4ea-0c91-42d0-83d2-4c40ed9b0be5}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, 3, 2, 'N', 'co', NULL, NULL, 'N', 0, 0),
(6, 'dfdfdfdfd', '', 'Y', '1', '2', 15, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 8, '2021-11-01 15:26:38', 8, '2021-11-01 15:26:38', 8, '2021-11-01 15:26:38', NULL, NULL, '2021-11-01 15:26:38', '{f041444e-c493-4a59-bd4b-0935bf6fc754}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, 3, 3, 'N', 'co', NULL, NULL, 'N', 0, 0),
(7, 'dfdfdfdfd', '', 'Y', '1', '2', 10, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 8, '2021-11-01 15:26:38', 8, '2021-11-01 15:26:38', 8, '2021-11-01 15:26:38', NULL, NULL, '2021-11-01 15:26:38', '{5af25c11-db9d-49b7-a171-c1337922be9b}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, 3, 4, 'N', 'co', NULL, NULL, 'N', 0, 0),
(8, 'Test dòng hoạt động', 'Test chức năng dòng hoạt động', 'Y', '1', '5', 8, '2021-11-05 16:34:43', 0, NULL, 'days', 0, 'N', '2021-11-07 19:00:00', NULL, '2021-11-07 19:00:00', 8, '2021-11-05 15:54:34', 18, '2021-11-10 09:58:32', 18, '2021-11-10 09:58:32', 18, '2021-11-10 09:58:32', '2021-11-10 09:58:32', '{12944653-c547-4d25-bf8c-438d2db9e23e}', NULL, NULL, NULL, 9, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 17, NULL, 5, 'N', 'co', NULL, NULL, 'N', 0, 0),
(9, 'Test gửi thông báo trên dòng hoạt động', 'Test gửi thông báo trên dòng hoạt động', 'Y', '1', '5', 18, NULL, 0, NULL, 'days', 0, 'N', '2021-11-05 17:00:00', NULL, '2021-11-05 17:00:00', 18, '2021-11-05 16:36:26', 8, '2021-11-05 22:59:04', 8, '2021-11-05 22:59:04', 8, '2021-11-05 22:59:04', '2021-11-05 22:59:04', '{3a4c0d79-7384-43da-bb37-303ed4bd0b6f}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 17, 8, 7, 'N', 'co', NULL, NULL, 'N', 0, 0),
(10, 'Test Task', 'Test task', 'Y', '1', '5', 8, '2021-11-06 09:32:07', 1245600, NULL, 'hours', 0, 'N', '2021-11-20 19:00:00', '2021-11-06 09:00:00', '2021-11-20 19:00:00', 8, '2021-11-06 09:31:43', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', '2021-11-26 15:56:24', '{7c2ae5d9-31fb-442f-93a1-b598da6d2d34}', NULL, NULL, NULL, 5, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 17, NULL, 8, 'N', 'co', NULL, NULL, 'N', 0, 0),
(11, 'Test task 1', 'Test task 1', 'Y', '1', '5', 18, '2021-11-06 10:31:50', 295200, NULL, 'hours', 0, 'N', '2021-11-09 19:00:00', '2021-11-06 09:00:00', '2021-11-09 19:00:00', 8, '2021-11-06 09:48:33', 8, '2021-11-06 10:35:43', 8, '2021-11-06 10:35:43', 8, '2021-11-06 10:35:43', '2021-11-06 10:35:43', '{aead7f27-1ea7-4ff4-9417-4426ac88cd70}', NULL, NULL, NULL, 8, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'N', 17, 10, 9, 'N', 'co', NULL, NULL, 'N', 0, 0),
(12, 'Test task 2', 'Test task 2', 'Y', '1', '5', 18, NULL, 295200, NULL, 'hours', 28800, 'N', '2021-11-09 19:00:00', '2021-11-06 09:00:00', '2021-11-09 19:00:00', 8, '2021-11-06 09:52:12', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', '2021-11-26 15:56:24', '{a5e844a0-ddbc-49ee-afdf-e7ec53202bc0}', NULL, NULL, NULL, 7, NULL, 'Y', NULL, NULL, NULL, NULL, 'Y', 'N', 'Y', 'N', 17, 10, 10, 'N', 'co', NULL, NULL, 'N', 0, 0),
(13, 'Test task 3', 'Test task 3', 'Y', '1', '5', 8, NULL, 295200, NULL, 'hours', 0, 'N', '2021-11-26 19:00:00', '2021-11-09 09:00:00', '2021-11-12 19:00:00', 8, '2021-11-06 09:55:49', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', '2021-11-26 15:56:24', '{395be8c0-22a9-425b-a9fb-6420017ee65d}', NULL, NULL, NULL, 7, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 17, 10, 12, 'N', 'co', NULL, NULL, 'N', 0, 0),
(14, 'Test tạo nhiệm vụ', '', 'Y', '1', '2', 43, NULL, NULL, NULL, 'days', 0, 'N', '2021-11-09 23:00:00', NULL, NULL, 43, '2021-11-09 14:53:51', 43, '2021-11-09 17:44:34', 43, '2021-11-09 14:53:51', NULL, NULL, '2021-11-09 23:00:04', '{ef64f3ac-fe2a-4fdd-be40-25ae6f2acaec}', NULL, NULL, NULL, 3, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'N', 0, NULL, 13, 'N', 'co', NULL, NULL, 'N', 0, 0),
(15, 'NB.Viết tài liệu HDSD nhiệm vụ', 'Viết tài liệu HDSD nhiệm vụ:\r\n- Tạo nhiệm vụ\r\n- Chỉnh sửa nhiệm vụ\r\n\r\n', 'Y', '1', '2', 8, NULL, NULL, NULL, 'days', 0, 'N', '2021-11-30 19:00:00', NULL, NULL, 8, '2021-11-09 15:15:49', 8, '2021-11-09 15:15:49', 8, '2021-11-09 15:15:49', NULL, NULL, '2021-11-30 21:03:01', '{27dd481c-6813-4965-8dd3-1399c96fe808}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'N', 17, NULL, 11, 'N', 'co', NULL, NULL, 'N', 0, 0),
(16, 'Test tạo nhiệm vụ lần 2', 'da', 'Y', '1', '5', 43, NULL, 0, NULL, 'days', 0, 'N', '2021-11-10 19:00:00', NULL, NULL, 43, '2021-11-09 17:54:05', 1, '2021-11-11 11:26:45', 1, '2021-11-11 11:26:45', 1, '2021-11-11 11:26:45', '2021-11-11 11:26:46', '{d874e2bf-537a-4045-96a9-a2439369ffaa}', NULL, NULL, NULL, 4, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'N', 0, NULL, 14, 'N', 'co', NULL, NULL, 'N', 0, 0),
(17, 'Test subtask 1', '', 'Y', '1', '5', 43, '2021-11-09 17:58:17', NULL, NULL, 'days', 0, 'N', '2021-11-09 19:00:00', NULL, NULL, 8, '2021-11-09 17:57:35', 8, '2021-11-09 17:58:21', 8, '2021-11-09 17:58:21', 8, '2021-11-09 17:58:21', '2021-11-09 17:58:21', '{1c8a3e51-d66d-46ae-bd8d-8bf1891c4972}', NULL, NULL, NULL, 5, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'N', 0, 16, 15, 'N', 'co', NULL, NULL, 'N', 0, 0),
(18, 'tesst', '', 'Y', '1', '2', 42, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 42, '2021-11-11 11:43:21', 42, '2021-11-11 11:43:21', 42, '2021-11-11 11:43:21', NULL, NULL, '2021-11-11 11:43:21', '{92033ae2-b2c8-4090-a9e8-c260883a9131}', NULL, NULL, NULL, 1, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(19, 'tesst', '', 'Y', '1', '2', 42, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 42, '2021-11-11 17:00:42', 42, '2021-11-11 17:00:42', 42, '2021-11-11 17:00:42', NULL, NULL, '2021-11-11 17:00:42', '{9ab46b8b-6814-499a-b6fd-cb652f724fe9}', NULL, NULL, NULL, 1, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(20, 'New Event', '\n\nThe task was created based on a [URL=/extranet/contacts/personal/user/43/calendar/?EVENT_ID=24]calendar event[/URL][/bitrix/js/socialnetwork/commentaux/lang/en/config.php#SONET_EXT_COMMENTAUX_CREATE_TASK_CALENDAR_EVENT]', 'Y', '1', '2', 43, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 43, '2021-11-15 16:06:30', 43, '2021-11-15 16:06:30', 43, '2021-11-15 16:06:30', NULL, NULL, '2021-11-15 16:06:30', '{78ceb59b-296f-4f5e-a8bc-1e3c70513c6b}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(21, 'New Event', '\n\nThe task was created based on a [URL=/extranet/contacts/personal/user/8/calendar/?EVENT_ID=27]calendar event[/URL][/bitrix/js/socialnetwork/commentaux/lang/vi/config.php#SONET_EXT_COMMENTAUX_CREATE_TASK_CALENDAR_EVENT]', 'Y', '1', '2', 43, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 43, '2021-11-16 13:56:32', 43, '2021-11-16 13:56:32', 43, '2021-11-16 13:56:32', NULL, NULL, '2021-11-16 13:56:32', '{e8eeb8c5-545d-4647-a0a7-ae4b15de8dba}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(22, 'Làm tài liệu HDSD', '', 'Y', '1', '2', 8, NULL, 1332000, NULL, 'hours', 0, 'N', '2021-12-11 19:00:00', '2021-11-26 09:00:00', '2021-12-11 19:00:00', 8, '2021-11-26 16:00:03', 1, '2021-12-10 19:07:16', 8, '2021-11-26 16:00:03', NULL, NULL, '2021-12-11 21:29:11', '{19041b4b-5dc6-4965-bbb9-51dab64db340}', NULL, NULL, NULL, 2, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'N', 0, NULL, 39, 'N', 'co', NULL, NULL, 'N', 0, 0),
(23, 'HDSD_P1', '', 'Y', '1', '2', 8, NULL, 36000, NULL, 'hours', 0, 'N', '2021-11-26 19:00:00', '2021-11-26 09:00:00', '2021-11-26 19:00:00', 8, '2021-11-26 16:00:26', 1, '2021-11-27 08:42:26', 8, '2021-11-26 16:00:26', NULL, NULL, '2021-11-26 20:42:26', '{7af19dba-e4f3-4d26-8af8-45ea563de8be}', NULL, NULL, NULL, 2, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'N', 0, 22, 20, 'N', 'co', NULL, NULL, 'N', 0, 0),
(24, 'Test HT_P1', '', 'Y', '1', '2', 8, NULL, NULL, NULL, 'days', 0, 'N', '2021-11-26 23:00:00', NULL, NULL, 8, '2021-11-26 16:01:05', 1, '2021-11-27 11:00:52', 8, '2021-11-26 16:01:05', NULL, NULL, '2021-11-26 23:00:52', '{5522126d-8cdb-44eb-851c-f4a1cc7bf831}', NULL, NULL, NULL, 2, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'N', 0, NULL, 21, 'N', 'co', NULL, NULL, 'N', 0, 0),
(25, 'Biên tập bản thảo A', 'Hoàn thành vào ngày 5/1×', 'Y', '2', '2', 221, NULL, NULL, NULL, 'days', 0, 'N', '2021-12-05 19:00:00', NULL, NULL, 221, '2021-12-02 10:08:25', 218, '2021-12-04 20:19:17', 221, '2021-12-02 10:08:25', NULL, NULL, '2021-12-05 19:03:43', '{061ec66b-a7fe-4843-9dc5-4117afe5100e}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 29, 'Y', 'co', NULL, NULL, 'N', 0, 0),
(26, 'Biên tập bản thảo A', 'Hoàn thành vào ngày 5/1×', 'Y', '2', '2', 199, NULL, NULL, NULL, 'days', 0, 'N', '2021-12-05 19:00:00', NULL, NULL, 221, '2021-12-02 10:08:25', 221, '2021-12-02 10:08:26', 221, '2021-12-02 10:08:25', NULL, NULL, '2021-12-05 19:03:43', '{33ce597c-250d-4fe5-9c8e-8118b0cee60a}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, 25, 23, 'N', 'co', NULL, NULL, 'N', 0, 0),
(27, 'Học app nhận diện', '', 'Y', '2', '5', 229, '2021-12-02 10:09:01', NULL, NULL, 'days', 0, 'N', '2021-12-03 19:00:00', NULL, NULL, 229, '2021-12-02 10:08:49', 229, '2022-09-12 10:31:18', 229, '2022-09-12 10:31:18', 229, '2022-09-12 10:31:18', '2022-09-12 10:31:19', '{35f31595-a8c8-491c-9231-941406f128f9}', NULL, NULL, NULL, 4, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 27, 'N', 'co', NULL, NULL, 'N', 0, 0),
(28, 'Biên tập Hải Dương', '', 'Y', '1', '2', 199, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 199, '2021-12-02 10:09:19', 199, '2021-12-02 10:09:19', 199, '2021-12-02 10:09:19', NULL, NULL, '2021-12-02 10:09:19', '{0fb6f63c-99e5-442d-9eb5-8781a4f5c81f}', NULL, NULL, NULL, 1, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, NULL, 'Y', 'co', NULL, NULL, 'N', 0, 0),
(29, 'Biên tập Hải Dương', '', 'Y', '1', '5', 221, '2023-08-09 15:18:40', NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 199, '2021-12-02 10:09:19', 221, '2023-08-09 15:19:29', 221, '2023-08-09 15:19:29', 221, '2023-08-09 15:19:29', '2023-08-09 15:19:29', '{eb545076-1d50-4085-9136-00c3eec577ed}', NULL, NULL, NULL, 4, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, 28, 24, 'N', 'co', NULL, NULL, 'N', 0, 0),
(30, 'Thử hoci', 'Học trực tuyên', 'Y', '1', '5', 228, NULL, 172800, NULL, 'days', 0, 'N', '2021-12-02 09:00:00', '2021-12-02 09:00:00', '2021-12-04 09:00:00', 228, '2021-12-02 10:10:24', 228, '2021-12-09 22:52:36', 228, '2021-12-09 22:52:36', 228, '2021-12-09 22:52:36', '2021-12-09 22:52:36', '{e73f5d9b-0368-40b9-b614-ef09ba86923c}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 25, 'N', 'co', NULL, NULL, 'N', 0, 0),
(31, 'Kiểm tra HĐ', '', 'Y', '1', '2', 205, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 205, '2021-12-02 10:10:31', 205, '2021-12-02 10:10:31', 205, '2021-12-02 10:10:31', NULL, NULL, '2021-12-02 10:10:31', '{5d4936c4-4824-4597-a464-8ab24149ca31}', NULL, NULL, NULL, 1, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(32, '1234', 'Hhff', 'Y', '1', '3', 206, '2021-12-02 10:12:33', NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 206, '2021-12-02 10:12:13', 206, '2021-12-02 10:12:33', 206, '2021-12-02 10:12:33', NULL, NULL, '2021-12-02 10:12:13', '{a243169b-944a-4019-93f2-70095dd06d26}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(33, 'Chuẩn bị bài in', '', 'Y', '1', '2', 231, NULL, 0, NULL, 'days', 0, 'N', '2021-12-02 19:00:00', NULL, NULL, 207, '2021-12-02 10:13:12', 207, '2021-12-02 10:17:41', 207, '2021-12-02 10:13:12', NULL, NULL, '2021-12-02 19:12:22', '{ab6db972-e375-4515-b5a6-8c4c4ebdfb23}', NULL, NULL, NULL, 4, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 26, 'N', 'co', NULL, NULL, 'N', 0, 0),
(34, 'Đào tạo toàn nhân viên chấm công sử dụng app mobile', '\n\nThe task was created based on a [URL=/extranet/contacts/personal/user/8/calendar/?EVENT_ID=270]calendar event[/URL]', 'Y', '1', '2', 197, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 197, '2021-12-06 16:23:54', 1, '2022-12-15 12:02:56', 197, '2021-12-06 16:23:54', NULL, NULL, '2021-12-06 16:23:54', '{6d627ea2-03d9-4231-ab05-631ecfcf3341}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 12, NULL, NULL, 'N', 'co', NULL, NULL, 'Y', 0, 0),
(35, 'Biên tập bản thảo Vận dụng chủ nghĩa yêu nước', '', 'Y', '1', '2', 317, NULL, NULL, NULL, 'days', 0, 'N', '2021-12-10 19:00:00', NULL, NULL, 317, '2021-12-09 15:58:10', 1, '2021-12-09 19:04:25', 317, '2021-12-09 15:58:10', NULL, NULL, '2021-12-10 19:07:16', '{f3654d14-8bf5-4615-b758-ceef3b20fe67}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 38, 'Y', 'co', NULL, NULL, 'N', 0, 0),
(36, 'Biên tập bản thảo Vận dụng chủ nghĩa yêu nước', '', 'Y', '1', '5', 319, NULL, NULL, NULL, 'days', 0, 'N', '2021-12-10 19:00:00', NULL, NULL, 317, '2021-12-09 15:58:11', 319, '2022-12-07 09:36:44', 319, '2022-12-07 09:36:44', 319, '2022-12-07 09:36:44', '2022-12-07 09:36:45', '{fc693046-7203-435a-9bd0-a9d88c3cf5d0}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, 35, 37, 'N', 'co', NULL, NULL, 'N', 0, 0),
(37, 'Alo', '', 'Y', '1', '5', 233, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 233, '2021-12-14 14:55:09', 233, '2023-03-14 12:19:52', 233, '2023-03-14 12:19:52', 233, '2023-03-14 12:19:52', '2023-03-14 12:19:53', '{69d793b9-a585-4cb5-9110-87c852b76e93}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 62, 'Y', 'co', NULL, NULL, 'N', 0, 0),
(38, 'Alo', '', 'Y', '1', '5', 409, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 233, '2021-12-14 14:55:10', 233, '2023-03-14 12:21:26', 233, '2023-03-14 12:21:26', 233, '2023-03-14 12:21:26', '2023-03-14 12:21:27', '{510c22d0-c39f-434a-8568-25d7db286016}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, 37, 40, 'N', 'co', NULL, NULL, 'N', 0, 0),
(39, 'Lịch họp', 'Lịch họp \n\nThe task was created based on a [URL=/extranet/contacts/personal/user/231/blog/625/]Feed post[/URL]', 'Y', '1', '2', 373, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 373, '2021-12-15 14:23:31', 373, '2021-12-15 14:23:31', 373, '2021-12-15 14:23:31', NULL, NULL, '2021-12-15 14:23:31', '{37cd4712-6d5a-4cc5-8033-060a415cea91}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(40, 'Lịch đào tạo các chi nhánh của XNB', '\n\nThe task was created based on a [URL=/extranet/contacts/personal/user/84/calendar/?EVENT_ID=1892]calendar event[/URL]', 'Y', '1', '2', 210, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 210, '2021-12-16 15:16:43', 1, '2022-12-15 12:03:01', 210, '2021-12-16 15:16:43', NULL, NULL, '2021-12-16 15:16:43', '{65be784a-4a39-4665-be8c-5ae5a8e34783}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 12, NULL, NULL, 'N', 'co', NULL, NULL, 'Y', 0, 0),
(41, 'Lịch đào tạo các chi nhánh của XNB', '\n\nThe task was created based on a [URL=/extranet/contacts/personal/user/84/calendar/?EVENT_ID=1892]calendar event[/URL]', 'Y', '1', '2', 210, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 210, '2021-12-16 15:16:47', 1, '2022-12-15 12:03:05', 210, '2021-12-16 15:16:47', NULL, NULL, '2021-12-16 15:16:47', '{6e7bce1c-fa92-44a7-9456-92a837a5b16b}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 12, NULL, NULL, 'N', 'co', NULL, NULL, 'Y', 0, 0),
(42, 'Lịch đào tạo các chi nhánh của XNB', '\n\nThe task was created based on a [URL=/extranet/contacts/personal/user/84/calendar/?EVENT_ID=1892]calendar event[/URL]', 'Y', '1', '2', 210, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 210, '2021-12-16 15:16:55', 1, '2022-12-15 12:02:21', 210, '2021-12-16 15:16:55', NULL, NULL, '2021-12-16 15:16:55', '{0bc996ab-ee1f-48b8-b786-15c1f8bc78b4}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 12, NULL, NULL, 'N', 'co', NULL, NULL, 'Y', 0, 0),
(43, '- Nhập Bình Luận TT hình sự', '', 'Y', '2', '5', 457, NULL, NULL, NULL, 'days', 0, 'N', '2022-01-11 15:00:00', NULL, NULL, 457, '2022-01-11 08:54:13', 457, '2022-10-11 10:09:47', 457, '2022-10-11 10:09:47', 457, '2022-10-11 10:09:47', '2022-10-11 10:09:47', '{5b49af9c-4b84-4977-b62d-b6b6421f1f6f}', NULL, NULL, NULL, 4, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 49, 'N', 'co', NULL, NULL, 'N', 0, 0),
(44, 'Xuất 125 cuốn Bình luận tt hình sự cho LS Phan Trung Hoài', '', 'Y', '2', '5', 457, NULL, NULL, NULL, 'days', 0, 'N', '2022-01-11 15:00:00', NULL, NULL, 457, '2022-01-11 08:56:02', 457, '2022-10-11 10:09:48', 457, '2022-10-11 10:09:48', 457, '2022-10-11 10:09:48', '2022-10-11 10:09:48', '{45e2f375-1d94-4149-a7c1-f376656edb00}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 50, 'N', 'co', NULL, NULL, 'N', 0, 0),
(45, 'Nhiệm vụ 1', '- thu thập thông tin kahchs hàng', 'Y', '1', '2', 84, NULL, NULL, NULL, 'days', 0, 'N', '2022-01-14 19:00:00', NULL, NULL, 84, '2022-01-12 09:29:57', 84, '2022-01-12 09:29:57', 84, '2022-01-12 09:29:57', NULL, NULL, '2022-01-14 21:18:49', '{b44996c0-c9b3-4bda-949f-ca71a08afc98}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 51, 'N', 'co', NULL, NULL, 'N', 0, 0),
(46, 'Đề án Vị trí việc làm', '', 'Y', '1', '3', 196, '2022-02-16 17:12:23', NULL, NULL, 'days', 0, 'N', '2022-03-31 17:00:00', NULL, NULL, 263, '2022-02-16 16:55:12', 263, '2022-02-16 17:12:23', 263, '2022-02-16 17:12:23', NULL, NULL, '2022-03-31 17:00:12', '{f5ee2109-c6cd-4dab-8d2a-276ec71af3d0}', NULL, NULL, NULL, 6, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 52, 'N', 'co', NULL, NULL, 'N', 0, 0),
(47, 'Đề nghị in nối tái bản', 'Luật tổ chức tòa án\r\nLuật du lịch\r\nHiến pháp Việt Nam\r\nLuật thuế thu nhập cá nhân\r\n', 'Y', '1', '5', 457, NULL, 14400, NULL, 'hours', 0, 'N', '2022-10-11 15:00:00', '2022-10-11 11:00:00', '2022-10-11 15:00:00', 457, '2022-10-11 10:07:05', 457, '2022-11-02 12:14:26', 457, '2022-11-02 12:14:26', 457, '2022-11-02 12:14:26', '2022-11-02 12:14:27', '{aee800e7-ecd6-48a1-b97b-58cb0a275ae3}', NULL, NULL, NULL, 5, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 55, 'N', 'co', NULL, NULL, 'N', 0, 0),
(48, 'User Trần Quốc Thắng was added', '\n\nThe task was created based on a [URL=/company/personal/log/1290/]new user addition entry[/URL]', 'Y', '1', '2', 198, NULL, NULL, NULL, 'days', 0, 'N', '2023-03-13 19:00:00', NULL, NULL, 198, '2022-12-16 17:38:55', 198, '2023-03-14 12:02:11', 198, '2022-12-16 17:38:55', NULL, NULL, '2023-03-14 12:02:12', '{d7471149-44ee-4206-aa70-44827a84031d}', NULL, NULL, NULL, 3, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 61, 'N', 's1', NULL, NULL, 'N', 0, 0),
(49, 'Lịch công tác tuần Từ ngày 14/08/2023 đến ngày 20/08/2023', 'Lịch công tác tuần đã được phê duyệt và ban hành [url=/extranet/calendar/404/preview/34/]Xem chi tiết[/url]\r\nDownload: [url=/extranet/calendar/pdf/LCT34.pdf]Lịch.pdf[/url]\r\nCác thành viên liên quan vui lòng kiểm tra và thực hiện công việc theo đúng kế hoạch\n\nNhiệm vụ được tạo dựa trên [URL=/extranet/contacts/personal/user/514/blog/1679/]bài đăng Bản tin[/URL]', 'Y', '1', '2', 514, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 514, '2023-08-16 08:25:56', 514, '2023-08-16 08:25:56', 514, '2023-08-16 08:25:56', NULL, NULL, '2023-08-16 08:25:56', '{37ca781b-1277-47f5-9208-c2c8301f50bd}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 12, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(50, 'Lịch công tác tuần Từ ngày 14/08/2023 đến ngày 20/08/2023', 'Lịch công tác tuần đã được phê duyệt và ban hành [url=/extranet/calendar/404/preview/34/]Xem chi tiết[/url]\r\nDownload: [url=/extranet/calendar/pdf/LCT34.pdf]Lịch.pdf[/url]\r\nCác thành viên liên quan vui lòng kiểm tra và thực hiện công việc theo đúng kế hoạch\n\nNhiệm vụ được tạo dựa trên [URL=/extranet/contacts/personal/user/514/blog/1679/]bài đăng Bản tin[/URL]', 'Y', '1', '2', 514, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 514, '2023-08-16 08:26:03', 514, '2023-08-16 08:26:03', 514, '2023-08-16 08:26:03', NULL, NULL, '2023-08-16 08:26:03', '{b1a9a177-d846-43b5-88ab-cf6efb6fa8b8}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 12, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenmuc_tintuc`
--

CREATE TABLE `chuyenmuc_tintuc` (
  `ID` int(20) UNSIGNED NOT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LOAI_TIN_TUC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `country`
--

CREATE TABLE `country` (
  `ID` int(20) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `QUOC_KHANH` date DEFAULT NULL,
  `CHAU_LUC` enum('Asia','Africa','Europe','America') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `display_data_type`
--

CREATE TABLE `display_data_type` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `display_data_type`
--

INSERT INTO `display_data_type` (`ID`, `NAME`, `TYPE`) VALUES
(1, 'Integer', 'Int'),
(2, 'Float', 'Float'),
(3, 'String', 'String'),
(4, 'Datetime', 'Datetime'),
(5, 'HTML/Text', 'HTML/Text'),
(6, 'File', 'File'),
(7, 'Enum', 'Enum'),
(8, 'CheckBox', 'CheckBox'),
(9, 'Password', 'Password'),
(10, 'Link to element', 'Link to element'),
(11, 'Money', 'Money');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `ID` int(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `MA_NHAN_VIEN` varchar(255) NOT NULL,
  `HE_SO_LUONG` double NOT NULL,
  `NAM_SINH` date NOT NULL,
  `MO_TA` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `AVATAR` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GIOI_TINH` enum('Nam','Nữ') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BAT_DONG_HO` tinyint(1) NOT NULL,
  `MAT_KHAU` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `QUE_QUAN` int(20) NOT NULL,
  `LUONG_CO_BAN` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`ID`, `NAME`, `MA_NHAN_VIEN`, `HE_SO_LUONG`, `NAM_SINH`, `MO_TA`, `AVATAR`, `GIOI_TINH`, `BAT_DONG_HO`, `MAT_KHAU`, `QUE_QUAN`, `LUONG_CO_BAN`) VALUES
(2, 'Nguyễn Thành Chung', 'NV001', 1.8, '1987-08-19', '12345678', 'uploads/employee/anh-avatar-supreme-dep-lam-dai-dien-facebook.jpeg', 'Nam', 1, '12345678', 1, 1500000),
(3, 'Lương Tiểu Nhi', 'NV001', 1.7, '2023-09-22', '123', 'uploads/employee/anh-avatar-supreme-dep-lam-dai-dien-facebook.jpeg', 'Nữ', 1, '123456', 1, 1800000),
(4, 'Nguyễn Văn A', 'NV003', 1.9, '2023-09-19', 'hghghgh', 'uploads/employee/anh-3d-thien-nhien-001.jpeg', 'Nam', 1, '123456789', 2, 3000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ID` int(20) UNSIGNED NOT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `COL_INT` int(11) DEFAULT NULL,
  `COL_ENUM` int(11) DEFAULT NULL,
  `COL_LINK_TO` int(11) DEFAULT NULL,
  `COL_FILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COL_STR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COL_TEST` int(11) DEFAULT NULL,
  `TEST1111` int(11) DEFAULT NULL,
  `TEST_ENUM_1111` int(11) DEFAULT NULL,
  `TESTENUM22222` int(11) DEFAULT NULL,
  `TEST_NEW_ENUM` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_INT` int(11) DEFAULT NULL,
  `TEST_FLOAT` double DEFAULT NULL,
  `TEST_STRING` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_DATETIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ID`, `CREATED_DATE`, `MODIFIED_DATE`, `COL_INT`, `COL_ENUM`, `COL_LINK_TO`, `COL_FILE`, `COL_STR`, `COL_TEST`, `TEST1111`, `TEST_ENUM_1111`, `TESTENUM22222`, `TEST_NEW_ENUM`, `TEST_INT`, `TEST_FLOAT`, `TEST_STRING`, `TEST_DATETIME`) VALUES
(1, '2023-10-23 08:30:51', '2023-10-23 08:30:51', 25, 5, 1, 'uploads/data-table-icon.png', 'Nguyễn Văn A', 123, 456, 3, 1, '12', NULL, NULL, NULL, NULL),
(2, '2023-10-06 03:03:44', '2023-10-06 03:03:44', 30, 2, 2, 'uploads/data-table-icon.png', 'Nguyễn Văn B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1698212105),
('m130524_201442_init', 1698212108),
('m140209_132017_init', 1702782108),
('m140403_174025_create_account_table', 1702782108),
('m140504_113157_update_tables', 1702782108),
('m140504_130429_create_token_table', 1702782109),
('m140830_171933_fix_ip_field', 1702782109),
('m140830_172703_change_account_table_name', 1702782109),
('m141222_110026_update_ip_field', 1702782109),
('m190124_110200_add_verification_token_column_to_user_table', 1698212109);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `ID` int(20) UNSIGNED NOT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TIEU_DE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHUYEN_MUC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOI_DUNG` longtext COLLATE utf8_unicode_ci,
  `ANH_DAI_DIEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GIOI_THIEU` longtext COLLATE utf8_unicode_ci,
  `TEST_USER1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_USER2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_USER3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_USER6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_LINK_TO_ELEMENT` int(11) DEFAULT NULL,
  `TEST_ELEMENT` int(11) DEFAULT NULL,
  `TEST_EL1` int(11) DEFAULT NULL,
  `TEST_EL2` int(11) DEFAULT NULL,
  `TEST_EL3` int(11) DEFAULT NULL,
  `TEST_MULTI` int(11) DEFAULT NULL,
  `TEST_MULTI1` int(11) DEFAULT NULL,
  `TEST_MULTI2` int(11) DEFAULT NULL,
  `TEST_MULTI3` double DEFAULT NULL,
  `TEST_MULTI4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_MULTI5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_MULTI6` datetime DEFAULT NULL,
  `TEST_MULTI7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_MULTI8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_MULTI_STRING` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEST_MULTI_S` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`ID`, `CREATED_DATE`, `MODIFIED_DATE`, `TIEU_DE`, `CHUYEN_MUC`, `NOI_DUNG`, `ANH_DAI_DIEN`, `GIOI_THIEU`, `TEST_USER1`, `TEST_USER2`, `TEST_USER3`, `TEST_USER6`, `TEST_LINK_TO_ELEMENT`, `TEST_ELEMENT`, `TEST_EL1`, `TEST_EL2`, `TEST_EL3`, `TEST_MULTI`, `TEST_MULTI1`, `TEST_MULTI2`, `TEST_MULTI3`, `TEST_MULTI4`, `TEST_MULTI5`, `TEST_MULTI6`, `TEST_MULTI7`, `TEST_MULTI8`, `TEST_MULTI_STRING`, `TEST_MULTI_S`) VALUES
(62, '2024-05-07 03:47:06', '2024-05-07 03:47:06', 'abc', '15', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(63, '2024-05-07 03:47:45', '2024-05-07 03:47:45', 'abc', '15', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(64, '2024-05-07 03:48:19', '2024-05-07 03:48:19', 'abc', '15', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_test_multi2`
--

CREATE TABLE `news_test_multi2` (
  `ID` int(20) DEFAULT NULL,
  `VALUE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_test_multi3`
--

CREATE TABLE `news_test_multi3` (
  `ID` int(20) DEFAULT NULL,
  `VALUE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_test_multi8`
--

CREATE TABLE `news_test_multi8` (
  `ID` int(20) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news_test_multi8`
--

INSERT INTO `news_test_multi8` (`ID`, `VALUE`) VALUES
(63, 'a'),
(63, 'b'),
(64, 'a'),
(64, 'b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_test_multi_s`
--

CREATE TABLE `news_test_multi_s` (
  `ID` int(20) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_su`
--

CREATE TABLE `nhan_su` (
  `ID` int(20) UNSIGNED NOT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAM_SINH` date DEFAULT NULL,
  `HE_SO_LUONG` double DEFAULT NULL,
  `THOI_HAN_HOP_DONG` datetime DEFAULT NULL,
  `MO_TA` longtext COLLATE utf8_unicode_ci,
  `ANH_DAI_DIEN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BAT_DONG_HO` tinyint(3) DEFAULT NULL,
  `MAT_KHAU` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QUE_QUAN` int(11) DEFAULT NULL,
  `LUONG_CO_BAN` double DEFAULT NULL,
  `COL_ENUM` enum('nam','nu') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_su`
--

INSERT INTO `nhan_su` (`ID`, `CREATED_DATE`, `MODIFIED_DATE`, `NAME`, `NAM_SINH`, `HE_SO_LUONG`, `THOI_HAN_HOP_DONG`, `MO_TA`, `ANH_DAI_DIEN`, `BAT_DONG_HO`, `MAT_KHAU`, `QUE_QUAN`, `LUONG_CO_BAN`, `COL_ENUM`) VALUES
(1, '2023-10-05 08:45:31', '2023-10-05 08:45:31', 'nguyễn thành chung', '2023-10-05', 2.8, '2023-10-28 11:46:00', 'abc 123456789 abc', 'uploads/data-table-icon.png', 1, '123456789', 1, 1500000, 'nam'),
(2, '2023-10-06 00:45:54', '2023-10-06 00:45:54', 'nguyễn thị b', '2023-10-01', 1.28, '2023-10-06 07:48:00', 'abc', 'uploads/data-table-icon.png', 1, '123456', 2, 1999999, 'nu'),
(3, '2023-10-06 01:53:25', '2023-10-06 01:53:25', 'abc', '2023-10-04', 1.47, '2023-10-06 08:58:00', '2113123', 'uploads/data-table-icon.png', 1, '123456', 2, 1200000, 'nu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` varchar(255) DEFAULT NULL,
  `gravatar_email` varchar(255) DEFAULT NULL,
  `gravatar_id` varchar(32) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`) VALUES
(1, '', '', 'admin@dmf.com', 'e1dfcad94e0a50a5ae222f50c816f868', '', '', ''),
(2, NULL, NULL, 'admin@dmf.com', 'e1dfcad94e0a50a5ae222f50c816f868', NULL, NULL, NULL),
(3, '', '', 'trungnghiait1106@gmail.com', '1ad69746e974f1fc33f2be54af73d889', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `ID` int(20) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`ID`, `NAME`, `CODE`) VALUES
(1, 'Hà Nội', 'HA_NOI'),
(2, 'TP. Hồ Chí Minh', 'TPHCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rbn_nxbst_hrm_kynangngoaingu`
--

CREATE TABLE `rbn_nxbst_hrm_kynangngoaingu` (
  `ID` int(11) NOT NULL,
  `ID_NHAN_SU` int(11) DEFAULT NULL,
  `HO_TEN` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rbn_nxbst_hrm_kynangngoaingu`
--

INSERT INTO `rbn_nxbst_hrm_kynangngoaingu` (`ID`, `ID_NHAN_SU`, `HO_TEN`) VALUES
(1, 1, 'Nguyễn Thành Chung');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rbn_nxbst_hrm_nguyenquantinhthanh`
--

CREATE TABLE `rbn_nxbst_hrm_nguyenquantinhthanh` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rbn_nxbst_hrm_nguyenquantinhthanh`
--

INSERT INTO `rbn_nxbst_hrm_nguyenquantinhthanh` (`ID`, `NAME`) VALUES
(1, 'Hà Nội'),
(2, 'TP. HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rbn_nxbst_hrm_nhansu`
--

CREATE TABLE `rbn_nxbst_hrm_nhansu` (
  `ID` int(20) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MA_NHAN_VIEN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rbn_nxbst_hrm_nhansu`
--

INSERT INTO `rbn_nxbst_hrm_nhansu` (`ID`, `NAME`, `MA_NHAN_VIEN`) VALUES
(1, 'Nguyễn thành chung', 1),
(2, 'Nguyễn thế nam', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_data_type`
--

CREATE TABLE `setting_data_type` (
  `ID` int(20) NOT NULL,
  `ENTRY_TABLE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ENTRY_COLUMN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DATA_TYPE` int(20) DEFAULT NULL,
  `LABEL` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SHOW_VIEW` tinyint(1) NOT NULL,
  `LINK_TO` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `setting_data_type`
--

INSERT INTO `setting_data_type` (`ID`, `ENTRY_TABLE`, `ENTRY_COLUMN`, `DATA_TYPE`, `LABEL`, `SHOW_VIEW`, `LINK_TO`) VALUES
(1, 'employee', 'ID', 1, 'ID', 1, ''),
(2, 'employee', 'NAME', 3, 'Họ tên', 1, ''),
(3, 'employee', 'MA_NHAN_VIEN', 3, 'Mã nhân viên', 1, ''),
(4, 'employee', 'HE_SO_LUONG', 2, 'Hệ số lương', 1, ''),
(5, 'employee', 'NAM_SINH', 4, 'Năm sinh', 1, ''),
(6, 'employee', 'MO_TA', 5, 'Mô tả', 0, ''),
(7, 'employee', 'AVATAR', 6, 'Ảnh đại diện', 1, ''),
(8, 'employee', 'GIOI_TINH', 7, 'Giới tính', 0, ''),
(9, 'employee', 'BAT_DONG_HO', 8, 'Có bật đồng hồ?', 0, ''),
(10, 'employee', 'MAT_KHAU', 9, 'Mật khẩu', 0, ''),
(11, 'employee', 'QUE_QUAN', 10, 'Quê quán', 1, ''),
(12, 'employee', 'LUONG_CO_BAN', 11, 'Lương cơ bản', 0, ''),
(13, 'setting_data_type', 'ID', 1, 'ID', 1, ''),
(14, 'setting_data_type', 'ENTRY_TABLE', 3, 'Bảng dữ liệu', 1, ''),
(15, 'setting_data_type', 'DATA_TYPE', 1, 'Kiểu dữ liệu', 1, ''),
(17, 'setting_data_type', 'LABEL', 3, 'Label', 1, ''),
(18, 'setting_data_type', 'SHOW_VIEW', 1, 'Hiển thị ở form view?', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `ID` int(20) UNSIGNED NOT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NAME` text COLLATE utf8_unicode_ci,
  `ABC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CCCD_TEST` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ANH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEXT_COL` longtext COLLATE utf8_unicode_ci,
  `SO_THUC` double DEFAULT NULL,
  `COL_DATETIME` datetime DEFAULT NULL,
  `COL_CHECKBOX` tinyint(3) DEFAULT NULL,
  `COL_PASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COL_MONEY` double DEFAULT NULL,
  `COL_LINK_TO_ELEMENT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `test`
--

INSERT INTO `test` (`ID`, `CREATED_DATE`, `MODIFIED_DATE`, `NAME`, `ABC`, `CCCD_TEST`, `ANH`, `TEXT_COL`, `SO_THUC`, `COL_DATETIME`, `COL_CHECKBOX`, `COL_PASS`, `COL_MONEY`, `COL_LINK_TO_ELEMENT`) VALUES
(1, '2023-10-26 04:27:08', '2023-10-28 04:27:08', 'sàdasdf', 'adfasdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2023-10-04 04:52:15', '2023-10-04 04:52:15', '11112erwerwe', 'werwer', 'werwerwer', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2023-10-04 05:00:02', '2023-10-04 05:00:02', 'ggggg', 'gggg', 'ddddd', 'uploads/data-table-icon.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2023-10-04 08:17:25', '2023-10-04 08:17:25', '123', '123123', '12312', 'uploads/neppy-logo-white-80x80.jpeg', '123123', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2023-10-04 08:23:20', '2023-10-04 08:23:20', '123', '123123', '12312', '', '123123', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2023-10-04 08:49:38', '2023-10-04 08:49:38', '123', '123123', '12312', '', 'fffff', 1.5, NULL, NULL, NULL, NULL, NULL),
(7, '2023-10-04 09:06:11', '2023-10-04 09:06:11', '43453', '35345', '345345', '', 'adfadfas', 5.92, '2023-10-04 16:06:00', NULL, NULL, NULL, NULL),
(8, '2023-10-05 01:08:06', '2023-10-05 01:08:06', 'gggg', 'gggg', 'gggg', '', 'ffff', 1.5, '2023-10-05 08:13:00', 1, NULL, NULL, NULL),
(9, '2023-10-05 01:26:13', '2023-10-05 01:26:13', '89', '89', '89', '', '898989', 98, '2023-10-05 08:35:00', 0, NULL, NULL, NULL),
(10, '2023-10-05 01:43:34', '2023-10-05 01:43:34', '10101010', 'cccccc', 'bbbbb', 'uploads/data-table-icon.png', 'ddd', 4.5, '2023-10-05 08:49:00', 1, '123456', NULL, NULL),
(11, '2023-10-05 04:15:52', '2023-10-05 04:15:52', 'âdsfasdf', 'adfasdf', 'àdfasdfsa', '', 'àdadfasdf', 1.53, '2023-10-05 11:12:00', 0, '123456', 1111111, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(2, 'OWKgHDw2xtPDZw6qeTYP49dRvB6pNyfL', 1702784766, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`) VALUES
(1, 'trungnt', 'nguyentrunglc@gmail.com', '$2y$10$SFOpyR.ip2DBAgBYPJhqUup9KZLwhemAlGdilsFuVs.ygwTNYGu8W', 'I2qB5Gkl--c95Ds_wdZCMSF1q3XYd_YF', 1702711379, '1', NULL, '192.168.194.1', 1702711379, 1702711379, 0),
(2, 'admin', 'admin@dmf.com', '$2y$10$01X3vKFmmK.W1yhpYYZj7OZuwjrjSpy0StOzSAScJXbFtRXREKA4i', 'tWeP2BZs5dYmEhsEk09qtRjsUk32FHz8', 1702711379, NULL, NULL, '14.226.10.27', 1702784766, 1702784766, 0),
(3, 'nghiant1234', 'trungnghiait1106@gmail.com', '$2y$10$0cKGtEklGvQTulC/eYQlcupmD1aEuqgLWSQD.E1H5gN3IP/WCkrNa', '_bnq9F36agysNStuItKy8ht_mE51cg54', 1709779314, NULL, NULL, '222.252.8.221', 1709779314, 1709779332, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_old`
--

CREATE TABLE `user_old` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `midname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `ethnic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT '10',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `user_old`
--

INSERT INTO `user_old` (`id`, `avatar`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `gender`, `birthday`, `firstname`, `midname`, `lastname`, `mobile`, `department_id`, `ethnic`, `religion`, `address`, `tax_code`, `status`, `created_at`, `updated_at`, `start_date`, `end_date`, `verification_token`) VALUES
(1, 'avatar2.png', 'admin', 'amyMA3HWC8JMz5s8KEF3WYVW6RtUKk3J', '$2y$13$LVQu87BeHWsxmVejHHUY6O9i0Qh0A1122sTaPvq1TXjvD2NXHEsCK', NULL, 'demo1@mail.com', '1', NULL, 'Admin', 'Văn', 'Nguyễn', NULL, NULL, '', '', '17 Hạ Hồi Hoàn Kiếm Hà Nội', '', 10, '0000-00-00', '2023-11-03', NULL, NULL, 'xdn_Pxf9dvJiyaB4LAn6u1H_82szm14v_1698922704'),
(2, 'img_avatar.png', 'demo', 'VvCjRMfGw1U3RWTjv2vS4CWsedJ3A7jY', '$2y$13$jsUX9EFB89BRw1qmb/oGuOStz9vvR6/kx9BeKfpCE9jp8wL8ANPA2', NULL, 'demo@mail.com', '1', NULL, 'Viên 1', '', 'Nhân', NULL, NULL, '', '', 'Nguyễn Trãi, Thanh Xuân Hà Nội', '', 10, '0000-00-00', '2023-11-02', NULL, NULL, 'fehDWBKlTiUKPGdi6ccx4HQ-7S7u8D5t_1698921356'),
(4, 'ngoclinh.jpeg', 'demo2', '', '$2y$13$XOPnkkJF46WIUiOrvmyuvePyWbTLG3.GKcZ1yp9DG.ck4o2D6r/dC', NULL, 'demo2@gmail.com', '2', NULL, 'Viên 2', '', 'Nhân ', NULL, NULL, 'kinh', 'không', 'Hà Nội', '312312', 10, '2023-11-02', '2023-11-02', NULL, NULL, NULL),
(5, 'a1.webp', 'demo1', '', '$2y$13$RovYKmwVWRFH4A/WVWXsPOGECriLTP8OO.LP7uZrqmdnMBomxL8ca', NULL, 'demo1@vivi.vn', '1', NULL, 'Khá', '', 'Lê Bá', NULL, NULL, '', '', '', '', 10, '2023-11-02', '2023-11-03', NULL, NULL, NULL),
(6, 'thanhdanh.jpeg', 'demo3', '', '$2y$13$EvjC6kze1YQ.cn7PlwfqYeJGifo5wa89TeUvuT7fDe.tR0btNF.mu', NULL, 'demo3@gmail.com', '1', NULL, 'Viên 3', '', 'Nhân', NULL, NULL, 'kinh', 'không', 'hà nội', '312', 10, '2023-11-02', '2023-11-02', NULL, NULL, NULL),
(7, 'TNAnh.jpeg', 'demo4', '', '$2y$13$O8.k29TirC7W46hJNMNpme8SaJHwfCUT27WxFeM7lH5kx0szuWr5K', NULL, 'demo4@gmail.com', '1', NULL, 'Ánh', 'Ngọc', 'Trương', NULL, NULL, 'kinh', 'không', 'Yên Bái', '312312', 10, '2023-11-02', '2023-11-02', NULL, NULL, NULL),
(8, NULL, 'chungnt', '', '$2y$13$HpJvGJ9GWiY8dvAewOR81uq6Cyx1vt/eHNJcLUlifLQa060YaYtxq', NULL, 'chungnt@gmail.com', '', NULL, '', '', '', NULL, NULL, '', '', '', '', 10, '2023-12-15', '2023-12-15', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vgroups`
--

CREATE TABLE `vgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vgroups`
--

INSERT INTO `vgroups` (`id`, `name`, `code`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'Nhóm quản trị hệ thống', 'Y', 12, 23),
(2, 'Quản trị bài viết', 'quan_tri_bai', 'Quản trị bài viết', 'Y', 12, 23),
(3, 'Nhân viên', 'employee', 'Nhóm nhân viên công ty', 'Y', 12, 23),
(4, 'Cộng Tác Viên', 'cong_tac_vien', 'Nhóm dành cho các cộng tác viên', 'Y', 23, 23);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vuser`
--

CREATE TABLE `vuser` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `midname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `ethnic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `checkpassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vusergroup`
--

CREATE TABLE `vusergroup` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `groupid` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vusergroup`
--

INSERT INTO `vusergroup` (`id`, `userid`, `groupid`, `sort`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, '2023-11-01', '2023-11-05', NULL, NULL),
(2, 1, 1, NULL, '2023-11-01', '2023-11-19', NULL, NULL),
(3, 4, 1, NULL, '2023-11-03', '2023-11-18', NULL, NULL),
(4, 6, 1, NULL, '2023-11-03', '2023-11-18', NULL, NULL),
(5, 7, 1, NULL, '2023-11-03', '2023-11-18', NULL, NULL),
(6, 8, 2, NULL, NULL, NULL, NULL, NULL),
(7, 8, 3, NULL, NULL, NULL, NULL, NULL),
(8, 8, 4, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_action`
--

CREATE TABLE `v_extendblock_action` (
  `ID` int(11) NOT NULL,
  `ACTION` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_action`
--

INSERT INTO `v_extendblock_action` (`ID`, `ACTION`, `DESCRIPTION`) VALUES
(1, 'index', 'Hiển thị danh sách record (Màn hình list)'),
(2, 'update', 'Chỉnh sửa một record (Màn hình update một record)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_block_type_section`
--

CREATE TABLE `v_extendblock_block_type_section` (
  `ID` int(11) UNSIGNED NOT NULL,
  `BLOCK_ID` int(11) UNSIGNED NOT NULL,
  `TYPE_ID` int(11) UNSIGNED NOT NULL,
  `SECTION_ID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_block_type_section`
--

INSERT INTO `v_extendblock_block_type_section` (`ID`, `BLOCK_ID`, `TYPE_ID`, `SECTION_ID`) VALUES
(34, 13, 1, 1),
(35, 13, 1, 2),
(36, 13, 2, 0),
(37, 14, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_element_rights`
--

CREATE TABLE `v_extendblock_element_rights` (
  `ID` int(11) UNSIGNED NOT NULL,
  `EB_ID` int(11) UNSIGNED NOT NULL,
  `ELEMENT_ID` int(11) UNSIGNED NOT NULL,
  `TASK_ID` int(11) UNSIGNED NOT NULL,
  `ACCESS_CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_element_rights`
--

INSERT INTO `v_extendblock_element_rights` (`ID`, `EB_ID`, `ELEMENT_ID`, `TASK_ID`, `ACCESS_CODE`) VALUES
(1, 13, 1, 135, 'U7'),
(2, 13, 1, 136, 'G2'),
(3, 13, 9, 136, 'G1'),
(4, 13, 9, 135, 'G2'),
(5, 13, 1, 137, 'G3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_entity`
--

CREATE TABLE `v_extendblock_entity` (
  `ID` int(11) UNSIGNED NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BIZPROC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) DEFAULT '500',
  `RIGHTS_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_MIGRATE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTEND_BLOCK_TYPE_ID` char(50) COLLATE utf8_unicode_ci DEFAULT '',
  `VERSION` int(11) DEFAULT '1',
  `LOCK_FEATURE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `LIST_NAMESPACE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_COMPONENT` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_TEMPLATE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAMESPACE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_COMPONENT` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_TEMPLATE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VIEW_NAMESPACE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VIEW_COMPONENT` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VIEW_TEMPLATE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENABLE_LOG` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_entity`
--

INSERT INTO `v_extendblock_entity` (`ID`, `NAME`, `TABLE_NAME`, `DESCRIPTION`, `PICTURE`, `BIZPROC`, `SORT`, `RIGHTS_MODE`, `IS_MIGRATE`, `EXTEND_BLOCK_TYPE_ID`, `VERSION`, `LOCK_FEATURE`, `CREATED_DATE`, `MODIFIED_DATE`, `CREATED_BY`, `MODIFIED_BY`, `SOCNET_GROUP_ID`, `LIST_NAMESPACE`, `LIST_COMPONENT`, `LIST_TEMPLATE`, `ELEMENT_NAMESPACE`, `ELEMENT_COMPONENT`, `ELEMENT_TEMPLATE`, `VIEW_NAMESPACE`, `VIEW_COMPONENT`, `VIEW_TEMPLATE`, `ACTIVE`, `ENABLE_LOG`) VALUES
(12, 'KHACH_HANG', 'khach_hang', 'abc', '', '1', NULL, NULL, NULL, '', 1, '1', '2023-12-19 03:28:30', '2023-12-19 03:28:30', NULL, NULL, NULL, 'list/view', 'list/controller', 'list/views', 'create/view', 'create/controller', 'create/views', 'view/view', 'view/controller', 'view/views', NULL, '1'),
(13, 'TINTUC_SUKIEN', 'news', 'Tin tức, sự kiện', '', '0', NULL, NULL, NULL, '', 1, '0', '2024-01-16 03:26:33', '2024-01-16 03:26:33', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '0'),
(14, 'WISELANDS', 'wiselands', 'Danh sách sản phẩm đồ uống quán cà phê wiselands', '/home/bitrix/ext_www/vidmf.vi24.site/uploads/data-table-icon.png', '0', NULL, NULL, NULL, '', 1, '0', '2024-03-11 03:27:04', '2024-03-11 03:27:04', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '0'),
(15, 'news', 'news', '', '', '0', NULL, NULL, NULL, '', 1, '0', '2024-03-12 14:19:27', '2024-03-12 14:19:27', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', NULL, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_entity_lang`
--

CREATE TABLE `v_extendblock_entity_lang` (
  `ID` int(11) UNSIGNED NOT NULL,
  `BLOCK_ID` int(20) NOT NULL,
  `LID` char(2) NOT NULL,
  `NAME` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_entity_lang`
--

INSERT INTO `v_extendblock_entity_lang` (`ID`, `BLOCK_ID`, `LID`, `NAME`) VALUES
(1, 1, 'vi', 'Nhân sự'),
(2, 1, 'en', 'HRM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_entity_messages`
--

CREATE TABLE `v_extendblock_entity_messages` (
  `EXTEND_BLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_entity_rights`
--

CREATE TABLE `v_extendblock_entity_rights` (
  `ID` int(11) UNSIGNED NOT NULL,
  `EB_ID` int(11) UNSIGNED NOT NULL,
  `TASK_ID` int(11) UNSIGNED NOT NULL,
  `ACCESS_CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_entity_rights`
--

INSERT INTO `v_extendblock_entity_rights` (`ID`, `EB_ID`, `TASK_ID`, `ACCESS_CODE`) VALUES
(1, 12, 136, 'G1'),
(2, 12, 137, 'G2'),
(3, 12, 137, 'G3'),
(4, 12, 135, 'G4'),
(7, 13, 134, 'U1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_entity_widgets`
--

CREATE TABLE `v_extendblock_entity_widgets` (
  `ID` int(20) NOT NULL,
  `VIEW_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `EXTENDBLOCK` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ENTITY_DATA` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ACTION` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `WIDGETS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TYPE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_entity_widgets`
--

INSERT INTO `v_extendblock_entity_widgets` (`ID`, `VIEW_ID`, `EXTENDBLOCK`, `ENTITY_DATA`, `ACTION`, `WIDGETS`, `TYPE`) VALUES
(2, 'default', 'EXTEND_BLOCK_44', 'TEST1111', 'index', 'dmf\\extendwidgets\\ExtendInteger', 'FIELD'),
(27, 'default', 'EXTEND_BLOCK_12', 'TESTENUM22222', 'update', 'dmf\\extendwidgets\\ExtendRadio', 'FIELD'),
(36, 'default', 'EXTEND_BLOCK_12', '', 'index', 'dmf\\extendwidgets\\ExtendGridView', 'BLOCK'),
(41, 'default', 'EXTEND_BLOCK_12', 'TEST_ENUM_1111', 'update', 'dmf\\extendwidgets\\ExtendEnum', 'FIELD'),
(42, 'default', 'EXTEND_BLOCK_12', 'COL_ENUM', 'update', 'dmf\\extendwidgets\\ExtendRadio', 'FIELD'),
(47, 'default', 'EXTEND_BLOCK_13', 'CHUYEN_MUC', 'index', 'dmf\\extendwidgets\\ExtendEnum', 'FIELD'),
(48, 'default', 'EXTEND_BLOCK_13', 'ANH_DAI_DIEN', 'create', 'dmf\\extendwidgets\\ExtendDate', 'FIELD'),
(49, 'tintucsukien', 'EXTEND_BLOCK_13', '', 'index', '\\dmf\\extendwidgets\\ExtendGridTwoColumn', 'BLOCK'),
(51, 'tintucsukien', 'EXTEND_BLOCK_13', '', 'view', 'dmf\\extendwidgets\\ExtendDate', 'BLOCK'),
(52, 'default', 'EXTEND_BLOCK_14', '', 'index', 'dmf\\extendwidgets\\ExtendGridView', 'BLOCK'),
(53, 'default', 'EXTEND_BLOCK_13', 'GIOI_THIEU', 'index', 'dmf\\extendwidgets\\ExtendEnum', 'FIELD'),
(54, 'default', 'EXTEND_BLOCK_14', 'CUA_HANG', 'view', 'dmf\\extendwidgets\\ExtendRadio', 'FIELD'),
(55, 'web', 'EXTEND_BLOCK_13', 'TEST_USER1', 'list', 'dmf\\extendwidgets\\ExtendLinkToUserSelector', 'FIELD'),
(56, 'web', 'EXTEND_BLOCK_13', 'TEST_USER1', 'detail', 'dmf\\extendwidgets\\ExtendLinkToUserSelector', 'FIELD'),
(57, 'web', 'EXTEND_BLOCK_13', 'TEST_USER1', 'view', 'dmf\\extendwidgets\\ExtendLinkToUserSelector', 'FIELD');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_event_log`
--

CREATE TABLE `v_extendblock_event_log` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ELEMENT_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `USER_ID` int(18) DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_filter`
--

CREATE TABLE `v_extendblock_filter` (
  `ID` int(20) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(20) DEFAULT NULL,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `EXTBLOCK_ID` int(11) DEFAULT NULL,
  `TABLE_NAME` varchar(255) DEFAULT NULL,
  `TYPE_FILTER` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `META_VALUE` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_filter`
--

INSERT INTO `v_extendblock_filter` (`ID`, `NAME`, `USER_ID`, `CODE`, `FIELD`, `EXTBLOCK_ID`, `TABLE_NAME`, `TYPE_FILTER`, `META_VALUE`) VALUES
(2, 'Filter 1', 1, '', 'ID,CUA_HANG,TITLE,', NULL, NULL, NULL, NULL),
(3, 'Filter 2', 1, '', 'GIA_TIEN,TITLE,', NULL, NULL, NULL, NULL),
(4, 'Bộ lọc 3', 1, '', 'ID,', NULL, NULL, NULL, NULL),
(5, 'Bộ lọc 4', 1, '', 'ID,CUA_HANG,GIA_TIEN_MOI,TEST_GIA_TIEN,TITLE,', NULL, NULL, NULL, NULL),
(6, '1111', 1, '', 'GIA_TIEN,', NULL, NULL, NULL, NULL),
(7, 'bộ lọc 5', 0, '', 'ID,CUA_HANG,GIA_TIEN,GIA_TIEN_MOI,TITLE,', NULL, NULL, NULL, NULL),
(8, 'bộ lọc 5', 0, '', 'ID,CUA_HANG,GIA_TIEN,GIA_TIEN_MOI,TITLE,', NULL, NULL, NULL, NULL),
(9, 'bộ lọc 5', 0, '', 'ID,CUA_HANG,GIA_TIEN,GIA_TIEN_MOI,TITLE,', NULL, NULL, NULL, NULL),
(10, 'testnew', 1, '', 'ID,CUA_HANG,TITLE,', NULL, '', NULL, NULL),
(11, 'A1', 0, '', 'CUA_HANG,TITLE,', NULL, '', NULL, NULL),
(12, 'Filter1', 1, '', 'TITLE,', 14, '', NULL, NULL),
(13, 'f1', 1, '', 'SORT,', NULL, '', 'v-extendblock-type', NULL),
(14, 'F1', 1, '', 'EXTBLOCK_TYPE_ID,', NULL, 'v_extendblock_entity', '', NULL),
(15, 'F2', 1, '', 'EXTBLOCK_TYPE_ID,', NULL, 'v_extendblock_entity', '', NULL),
(16, 'F3', 1, '', 'ID,NAME,EXTBLOCK_TYPE_ID,', NULL, 'v_extendblock_entity', '', NULL),
(17, 'F2', 1, '', 'ID,SORT,', NULL, '', 'v-extendblock-type', NULL),
(18, 'test1', 2, '', 'ID,NAME,', NULL, '', 'v-extendblock-type', NULL),
(19, 'F1', 2, '', 'EXTBLOCK_TYPE_ID,', NULL, 'v_extendblock_entity', '', NULL),
(20, 'F2', 2, '', 'EXTBLOCK_TYPE_ID,', NULL, 'v_extendblock_entity', '', NULL),
(21, 'test2', 2, '', 'ID,NAME,CODE,', NULL, '', 'v-extendblock-type', '{\"FULL_SEARCH\":\"\",\"ID\":\"\",\"NAME\":\"abc\",\"CODE\":\"\",\"SORT\":\"\",\"DESCRIPTION\":\"\",\"ROOT_FOLDER\":\"\",\"TOP_MENU_TYPE\":\"\",\"LIST_TEMPLATE\":\"\",\"VERSION\":\"\"}'),
(22, 'F3', 2, '', 'EXTBLOCK_TYPE_ID,', NULL, 'v_extendblock_entity', 'undefined', '{\"FULL_SEARCH\":\"\",\"ID\":\"\",\"NAME\":\"\",\"TABLE_NAME\":\"\",\"EXTBLOCK_TYPE_ID\":\"2\"}'),
(23, 'F4', 2, '', 'NAME,EXTBLOCK_TYPE_ID,', NULL, 'v_extendblock_entity', 'undefined', '{\"FULL_SEARCH\":\"\",\"ID\":\"\",\"NAME\":\"\",\"TABLE_NAME\":\"\",\"EXTBLOCK_TYPE_ID\":\"2\"}'),
(25, 'test', 2, '', 'ID,CHUYEN_MUC,', NULL, 'undefined', 'undefined', ''),
(26, 'test', 2, '', 'ID,CHUYEN_MUC,', NULL, '', '', ''),
(27, 'test', 2, '', 'ID,CHUYEN_MUC,', NULL, 'undefined', 'undefined', ''),
(28, 'test2', 2, '', 'CHUYEN_MUC,GIOI_THIEU,', NULL, 'undefined', 'undefined', ''),
(29, 'F5', 2, '', 'ID,EXTBLOCK_TYPE_ID,', NULL, 'v_extendblock_entity', 'undefined', '{\"FULL_SEARCH\":\"\",\"ID\":\"\",\"NAME\":\"\",\"TABLE_NAME\":\"\",\"EXTBLOCK_TYPE_ID\":\"\"}'),
(30, 'test', 2, '', 'ID,', NULL, 'undefined', 'undefined', ''),
(31, 'F2', 2, '', 'CHUYEN_MUC,', NULL, 'undefined', 'undefined', ''),
(32, 'F1', 2, '', 'CHUYEN_MUC,', NULL, '', '', ''),
(33, 'F2', 2, '', 'ID,', NULL, '', '', ''),
(34, 'F6', 2, '', 'ID,', NULL, 'v_extendblock_entity', 'undefined', '{\"FULL_SEARCH\":\"\",\"ID\":\"\",\"NAME\":\"\",\"TABLE_NAME\":\"\",\"EXTBLOCK_TYPE_ID\":\"1\"}'),
(35, 'F1', 0, '', 'CHUYEN_MUC,TIEU_DE,', 13, 'undefined', 'undefined', '{\"FULL_SEARCH\":\"\",\"ID\":\"\",\"CHUYEN_MUC\":\"15\",\"NOI_DUNG\":\"\",\"TIEU_DE\":\"\"}'),
(36, 'S1', 2, '', 'ID,', 13, 'undefined', 'undefined', '{\"FULL_SEARCH\":\"\",\"ID\":\"\",\"CHUYEN_MUC\":\"\",\"NOI_DUNG\":\"\",\"TIEU_DE\":\"\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_menus`
--

CREATE TABLE `v_extendblock_menus` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `PARENT_ID` int(11) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL,
  `PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` int(11) DEFAULT NULL,
  `MODIFIED_BY` int(11) DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `BLOCK_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_menus`
--

INSERT INTO `v_extendblock_menus` (`ID`, `NAME`, `URL`, `PARENT_ID`, `TYPE_ID`, `PICTURE`, `STATUS`, `CREATED_DATE`, `MODIFIED_DATE`, `CREATED_BY`, `MODIFIED_BY`, `SORT`, `DESCRIPTION`, `BLOCK_ID`) VALUES
(1, 'News', '/admin/index.php?r=extendblock/extend/index&blockid=12', NULL, 1, '', NULL, '2023-12-02 08:06:23', '2023-12-02 08:06:23', NULL, NULL, NULL, 'dfd', 13),
(2, 'Nghĩa - Test', '/admin/index.php?r=extendblock/extend/index&blockid=13', NULL, 1, '', NULL, '2023-12-02 08:12:40', '2023-12-02 08:12:40', NULL, NULL, NULL, 'fdfdf', 14),
(3, 'nghia - 3', '/admin/index.php?r=extendblock/extend/index&blockid=12', NULL, 1, '', NULL, '2023-12-25 08:53:44', '2023-12-25 08:53:44', NULL, NULL, NULL, 'fgfg', 13),
(4, 'Test', '/admin/index.php?r=extendblock/extend/index&blockid=12', NULL, NULL, '', NULL, '2023-12-25 10:04:39', '2023-12-25 10:04:39', NULL, NULL, NULL, 'dsds', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_type`
--

CREATE TABLE `v_extendblock_type` (
  `ID` int(11) UNSIGNED NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `PICTURE` int(18) DEFAULT NULL,
  `SORT` int(11) DEFAULT '500',
  `ROOT_FOLDER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TOP_MENU_TYPE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_TEMPLATE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) DEFAULT '1',
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_type`
--

INSERT INTO `v_extendblock_type` (`ID`, `NAME`, `CODE`, `DESCRIPTION`, `PICTURE`, `SORT`, `ROOT_FOLDER`, `TOP_MENU_TYPE`, `LIST_TEMPLATE`, `VERSION`, `CREATED_DATE`, `MODIFIED_DATE`, `CREATED_BY`, `MODIFIED_BY`) VALUES
(1, 'Project & Task Management', 'PROJECT', 'Project & Task Management', NULL, NULL, '/extend/lists/', 'blocks', 'default', 1, '2023-12-16 08:45:46', '2023-12-16 08:45:46', 1, NULL),
(2, 'Wiseland producs', 'WISELAND_PRODUCT', '', NULL, NULL, '/backend/web/', 'blocks', 'default', 1, '2023-12-21 04:26:43', '2023-12-21 04:26:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_type_custom_menu`
--

CREATE TABLE `v_extendblock_type_custom_menu` (
  `ID` int(11) UNSIGNED NOT NULL,
  `PARENT_ID` int(11) UNSIGNED DEFAULT NULL,
  `EB_TYPE_ID` int(11) UNSIGNED NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(11) DEFAULT '500',
  `PICTURE` int(18) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_type_custom_menu_lang`
--

CREATE TABLE `v_extendblock_type_custom_menu_lang` (
  `ID` int(11) UNSIGNED NOT NULL,
  `LID` char(2) NOT NULL,
  `NAME` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_type_custom_menu_rights`
--

CREATE TABLE `v_extendblock_type_custom_menu_rights` (
  `ID` int(11) UNSIGNED NOT NULL,
  `MENU_ID` int(11) UNSIGNED NOT NULL,
  `TASK_ID` int(11) UNSIGNED NOT NULL,
  `ACCESS_CODE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_type_lang`
--

CREATE TABLE `v_extendblock_type_lang` (
  `ID` int(11) UNSIGNED NOT NULL,
  `LID` char(2) NOT NULL,
  `NAME` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_type_lang`
--

INSERT INTO `v_extendblock_type_lang` (`ID`, `LID`, `NAME`) VALUES
(1, 'en', 'Các Nghiệp Vụ'),
(1, 'vi', 'Các Nghiệp Vụ'),
(2, 'en', ''),
(2, 'vi', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_type_rights`
--

CREATE TABLE `v_extendblock_type_rights` (
  `ID` int(11) UNSIGNED NOT NULL,
  `EB_TYPE_ID` int(11) UNSIGNED NOT NULL,
  `TASK_ID` int(11) UNSIGNED NOT NULL,
  `ACCESS_CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_type_rights`
--

INSERT INTO `v_extendblock_type_rights` (`ID`, `EB_TYPE_ID`, `TASK_ID`, `ACCESS_CODE`) VALUES
(1, 1, 135, 'G1'),
(5, 1, 134, 'G4'),
(6, 1, 140, 'G2'),
(7, 1, 137, 'G3'),
(11, 2, 134, 'U1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_type_sections`
--

CREATE TABLE `v_extendblock_type_sections` (
  `ID` int(11) UNSIGNED NOT NULL,
  `EB_TYPE_ID` int(11) UNSIGNED NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(11) DEFAULT '500',
  `PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_type_sections`
--

INSERT INTO `v_extendblock_type_sections` (`ID`, `EB_TYPE_ID`, `NAME`, `CODE`, `DESCRIPTION`, `SORT`, `PICTURE`, `CREATED_DATE`, `MODIFIED_DATE`, `CREATED_BY`, `MODIFIED_BY`) VALUES
(1, 1, 'Quy trình nghiệp vụ', 'BusinessProcess', 'Dự án & Quy trình nghiệp vụ', 10, NULL, '2023-12-12 08:22:00', '2023-12-12 08:22:00', 501, 501),
(2, 1, 'Dữ liệu & Cài đặt', 'DataSettings', 'Dữ liệu & Cài đặt', 50, '1', '2020-11-25 17:44:24', '2023-09-29 10:03:53', 501, 501),
(3, 1, 'HRM-HCNS', 'HRM', 'Quản lý thông tin nhân công ty', 500, NULL, '2020-11-30 08:21:38', '2023-09-29 10:03:53', 501, NULL),
(4, 2, 'Section Sản Phẩm', 'SECTION_PROSUCT', '', 500, NULL, '2023-12-21 03:08:53', '2023-12-21 03:08:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_type_section_lang`
--

CREATE TABLE `v_extendblock_type_section_lang` (
  `ID` int(11) UNSIGNED NOT NULL,
  `LID` char(2) NOT NULL,
  `NAME` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_type_section_lang`
--

INSERT INTO `v_extendblock_type_section_lang` (`ID`, `LID`, `NAME`) VALUES
(1, 'en', 'Nghiệp vụ'),
(1, 'vi', 'Nghiệp vụ'),
(2, 'en', 'Cài đặt'),
(2, 'vi', 'Cài đặt'),
(3, 'en', 'HRM'),
(3, 'vi', 'Quản lý nhân sự');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_user_field`
--

CREATE TABLE `v_extendblock_user_field` (
  `ID` int(11) NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `SHOW_ADD_FORM` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHOW_EDIT_FORM` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADD_READ_ONLY_FIELD` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_READ_ONLY_FIELD` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHOW_FIELD_PREVIEW` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_user_field`
--

INSERT INTO `v_extendblock_user_field` (`ID`, `ENTITY_ID`, `FIELD_NAME`, `USER_TYPE_ID`, `XML_ID`, `SORT`, `MULTIPLE`, `MANDATORY`, `SHOW_FILTER`, `SHOW_IN_LIST`, `EDIT_IN_LIST`, `IS_SEARCHABLE`, `SETTINGS`, `SHOW_ADD_FORM`, `SHOW_EDIT_FORM`, `ADD_READ_ONLY_FIELD`, `EDIT_READ_ONLY_FIELD`, `SHOW_FIELD_PREVIEW`) VALUES
(2, 'EXTEND_BLOCK_7', 'ID_NHAN_SU', 'Integer', NULL, NULL, 'N', 'N', 'N', 'Y', 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'EXTEND_BLOCK_7', 'HO_TEN', 'String', NULL, NULL, 'N', 'N', 'N', 'Y', 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'EXTEND_BLOCK_10', 'NAME', 'String', NULL, NULL, 'N', 'N', 'N', 'Y', 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'EXTEND_BLOCK_10', 'ABC', 'String', '', NULL, '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(7, 'EXTEND_BLOCK_10', 'CCCD_TEST', 'String', '', NULL, '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(8, 'EXTEND_BLOCK_10', 'ANH', 'File', '', NULL, '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(9, 'EXTEND_BLOCK_10', 'TEXT_COL', 'HTML/Text', '', NULL, '1', '1', '0', '0', '1', '0', NULL, '0', '0', '0', '0', '0'),
(10, 'EXTEND_BLOCK_10', 'SO_THUC', 'Float', '', 122, '1', '1', '2', '1', '1', '1', NULL, '1', '1', '1', '1', '1'),
(11, 'EXTEND_BLOCK_10', 'COL_DATETIME', 'Datetime', '', NULL, '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(12, 'EXTEND_BLOCK_10', 'COL_CHECKBOX', 'CheckBox', '', 497, '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(17, 'EXTEND_BLOCK_10', 'COL_PASS', 'Password', '', 1222, '1', '1', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(18, 'EXTEND_BLOCK_10', 'COL_MONEY', 'Money', '', NULL, '0', '0', '0', '0', '0', '0', 'USD', '0', '0', '0', '0', '0'),
(21, 'EXTEND_BLOCK_10', 'COL_LINK_TO_ELEMENT', 'Link to element', '', NULL, '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0'),
(22, 'EXTEND_BLOCK_11', 'NAME', 'String', 'NAME', 500, '0', '1', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1'),
(23, 'EXTEND_BLOCK_11', 'NAM_SINH', 'Date', 'NAM_SINH', 500, '0', '1', '0', '1', '1', '1', NULL, '1', '1', '1', '1', '1'),
(24, 'EXTEND_BLOCK_11', 'HE_SO_LUONG', 'Float', 'HE_SO_LUONG', 497, '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(25, 'EXTEND_BLOCK_11', 'THOI_HAN_HOP_DONG', 'Datetime', 'THOI_HAN_HOP_DONG', 500, '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(26, 'EXTEND_BLOCK_11', 'MO_TA', 'HTML/Text', 'MO_TA', 500, '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(27, 'EXTEND_BLOCK_11', 'ANH_DAI_DIEN', 'File', 'ANH_DAI_DIEN', NULL, '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(28, 'EXTEND_BLOCK_11', 'BAT_DONG_HO', 'CheckBox', 'BAT_DONG_HO', NULL, '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(29, 'EXTEND_BLOCK_11', 'MAT_KHAU', 'Password', 'MAT_KHAU', 497, '0', '0', '0', '0', '0', '0', NULL, '0', '0', '0', '0', '0'),
(30, 'EXTEND_BLOCK_11', 'QUE_QUAN', 'Link to element', 'QUE_QUAN', 500, '0', '0', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0'),
(31, 'EXTEND_BLOCK_11', 'LUONG_CO_BAN', 'Money', 'LUONG_CO_BAN', 500, '0', '0', '0', '0', '0', '0', 'VNĐ', '0', '0', '0', '0', '0'),
(33, 'EXTEND_BLOCK_11', 'COL_ENUM', 'Enum', 'COL_ENUM', NULL, '0', '0', '0', '0', '0', '0', '{\"nam\":\"Nam\",\"nu\":\"N\\u1eef\"}', '0', '0', '0', '0', '0'),
(37, 'EXTEND_BLOCK_12', 'COL_INT', 'Integer', 'COL_INT', NULL, '0', '0', '0', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(38, 'EXTEND_BLOCK_12', 'COL_ENUM', 'Enum', 'COL_ENUM', NULL, '0', '0', '0', '1', '0', '0', '{\"SHOW_COLUMN\":\"VALUE\"}', '1', '1', '0', '0', '0'),
(40, 'EXTEND_BLOCK_12', 'COL_FILE', 'File', 'COL_FILE', NULL, '1', '1', '0', '1', '0', '0', NULL, '0', '1', '0', '0', '0'),
(41, 'EXTEND_BLOCK_12', 'COL_STR', 'String', 'COL_STR', NULL, '1', '1', '0', '0', '0', '0', NULL, '1', '1', '0', '0', '0'),
(42, 'EXTEND_BLOCK_12', 'COL_TEST', 'Integer', 'COL_TEST', NULL, '0', '0', '0', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(44, 'EXTEND_BLOCK_12', 'TEST1111', 'Integer', 'TEST1111', NULL, '0', '0', '0', '0', '0', '0', NULL, '1', '1', '0', '0', '0'),
(45, 'EXTEND_BLOCK_12', 'TEST_ENUM_1111', 'Enum', 'TEST_ENUM_1111', NULL, '0', '0', '0', '1', '0', '0', '{\"SHOW_COLUMN\":\"VALUE\"}', '1', '1', '0', '0', '0'),
(46, 'EXTEND_BLOCK_12', 'TESTENUM22222', 'Enum', 'TESTENUM22222', NULL, '0', '0', '0', '1', '0', '0', '{\"SHOW_COLUMN\":\"VALUE\"}', '1', '1', '0', '0', '0'),
(55, 'EXTEND_BLOCK_12', 'TEST_NEW_ENUM', 'Enum', 'TEST_NEW_ENUM', NULL, '0', '0', '0', '1', '0', '0', '{\"SHOW_COLUMN\":\"VALUE\"}', '1', '1', '0', '0', '0'),
(56, 'EXTEND_BLOCK_13', 'TIEU_DE', 'String', 'TIEU_DE', NULL, '0', '0', 'N', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(57, 'EXTEND_BLOCK_13', 'CHUYEN_MUC', 'Enum', 'CHUYEN_MUC', NULL, '0', '0', '0', '1', '0', '0', '{\"SHOW_COLUMN\":\"VALUE\"}', '1', '1', '0', '0', '0'),
(58, 'EXTEND_BLOCK_13', 'NOI_DUNG', 'HTML/Text', 'NOI_DUNG', NULL, '0', '0', '0', '0', '0', '0', NULL, '1', '1', '0', '0', '0'),
(59, 'EXTEND_BLOCK_13', 'ANH_DAI_DIEN', 'File', 'ANH_DAI_DIEN', NULL, '0', '0', 'N', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(60, 'EXTEND_BLOCK_13', 'GIOI_THIEU', 'HTML/Text', 'GIOI_THIEU', NULL, '0', '0', '0', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(61, 'EXTEND_BLOCK_14', 'GIA_TIEN', 'Money', 'GIA_TIEN', NULL, '0', '0', '0', '1', '0', '0', '{\"UNIT\":\"\\bUSD\",\"FORMAT\":\"frformat\"}', '1', '1', '0', '0', '0'),
(62, 'EXTEND_BLOCK_14', 'PREVIEW_IMG', 'File', 'PREVIEW_IMG', NULL, '0', '0', '0', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(63, 'EXTEND_BLOCK_14', 'TITLE', 'String', 'TITLE', NULL, '0', '0', '0', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(65, 'EXTEND_BLOCK_14', 'CUA_HANG', 'Enum', 'CUA_HANG', NULL, '0', '0', '0', '1', '0', '0', '{\"SHOW_COLUMN\":\"VALUE\"}', '1', '1', '0', '0', '0'),
(66, 'EXTEND_BLOCK_14', 'ENUM_TESST', 'Enum', '', NULL, '0', '0', 'N', '1', '0', '0', '{\"SHOW_COLUMN\":\"ID\"}', '0', '0', '0', '0', '0'),
(67, 'EXTEND_BLOCK_14', 'FILE_TESST', 'File', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(68, 'EXTEND_BLOCK_12', 'TEST_INT', 'Integer', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(69, 'EXTEND_BLOCK_12', 'TEST_FLOAT', 'Float', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(70, 'EXTEND_BLOCK_12', 'TEST_STRING', 'String', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(71, 'EXTEND_BLOCK_12', 'TEST_DATETIME', 'Datetime', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(78, 'EXTEND_BLOCK_13', 'TEST_USER1', 'Link to user', '', NULL, '1', '0', 'I', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(79, 'EXTEND_BLOCK_13', 'TEST_USER2', 'Link to user', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(80, 'EXTEND_BLOCK_13', 'TEST_USER3', 'Link to user', '', NULL, '0', '0', 'N', '1', '1', '0', NULL, '1', '1', '0', '0', '0'),
(81, 'EXTEND_BLOCK_13', 'TEST_USER6', 'Link to user', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(82, 'EXTEND_BLOCK_13', '', 'Enum', '', NULL, '1', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(83, 'EXTEND_BLOCK_13', 'TEST_LINK_TO_ELEMENT', 'Link to block element selector', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(84, 'EXTEND_BLOCK_13', 'TEST_ELEMENT', 'Link to block element selector', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(85, 'EXTEND_BLOCK_13', 'TEST_EL1', 'Link to block element selector', '', NULL, '0', '0', 'N', '1', '0', '0', '{\"EXT_BLOCK\":\"TINTUC_SUKIEN\",\"EXT_BLOCK_FIELD\":\"TIEU_DE\"}', '1', '1', '0', '0', '0'),
(86, 'EXTEND_BLOCK_13', 'TEST_EL2', 'Link to block element selector', '', NULL, '0', '0', 'N', '1', '0', '0', '{\"EXT_BLOCK\":\"KHACH_HANG\",\"EXT_BLOCK_FIELD\":\"COL_STR\"}', '1', '1', '0', '0', '0'),
(87, 'EXTEND_BLOCK_13', 'TEST_EL3', 'Link to block element selector', '', NULL, '0', '0', 'N', '1', '0', '0', '{\"EXT_BLOCK\":\"TINTUC_SUKIEN\",\"EXT_BLOCK_FIELD\":\"TIEU_DE\"}', '1', '1', '0', '0', '0'),
(88, 'EXTEND_BLOCK_13', 'TEST_MULTI', 'Integer', '', NULL, '1', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(89, 'EXTEND_BLOCK_13', 'TEST_MULTI1', 'Integer', '', NULL, '1', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(90, 'EXTEND_BLOCK_13', 'TEST_MULTI2', 'Integer', '', NULL, '1', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(91, 'EXTEND_BLOCK_13', 'TEST_MULTI3', 'Float', '', NULL, '1', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(92, 'EXTEND_BLOCK_13', 'TEST_MULTI4', 'String', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(93, 'EXTEND_BLOCK_13', 'TEST_MULTI5', 'String', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(94, 'EXTEND_BLOCK_13', 'TEST_MULTI6', 'Datetime', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(95, 'EXTEND_BLOCK_13', 'TEST_MULTI7', 'String', '', NULL, '0', '0', 'N', '1', '0', '0', NULL, '0', '0', '0', '0', '0'),
(96, 'EXTEND_BLOCK_13', 'TEST_MULTI8', 'String', '', NULL, '1', '0', 'N', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(97, 'EXTEND_BLOCK_13', 'TEST_MULTI_STRING', 'String', '', NULL, '0', '1', 'N', '1', '0', '0', NULL, '1', '1', '0', '0', '0'),
(98, 'EXTEND_BLOCK_13', 'TEST_MULTI_S', 'String', '', NULL, '1', '0', 'N', '1', '0', '0', NULL, '1', '1', '0', '0', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_user_field_confirm`
--

CREATE TABLE `v_extendblock_user_field_confirm` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `DATE_CHANGE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FIELD` varchar(255) NOT NULL,
  `FIELD_VALUE` varchar(255) NOT NULL,
  `CONFIRM_CODE` varchar(32) NOT NULL,
  `ATTEMPTS` int(18) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_user_field_enum`
--

CREATE TABLE `v_extendblock_user_field_enum` (
  `ID` int(11) NOT NULL,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) NOT NULL,
  `DEF` bigint(1) NOT NULL DEFAULT '0',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_user_field_enum`
--

INSERT INTO `v_extendblock_user_field_enum` (`ID`, `USER_FIELD_ID`, `VALUE`, `DEF`, `SORT`, `XML_ID`) VALUES
(1, 46, 'Táo', 0, 100, 'TAO'),
(2, 46, 'Đào', 0, 300, 'DAO'),
(3, 45, 'Nam', 0, 100, 'NAM'),
(4, 45, 'Nữ', 0, 300, 'NU'),
(5, 38, 'Chuyên gia', 1, 100, 'CHUYEN_GIA'),
(6, 38, 'Chuyên Viên', 0, 300, 'CHUYEN_VIEN'),
(7, 46, 'Lê', 0, 300, 'LE'),
(8, 46, 'Thanh Long', 0, 300, 'THANH_LONG'),
(9, 38, 'enum 11', 0, 100, 'enum1'),
(10, 38, 'enum 2', 0, 200, 'enum2'),
(11, 55, 'Car', 0, 100, 'CAR'),
(12, 55, 'Motor', 0, 200, 'MOTOR'),
(13, 57, 'Tin mới nhất', 1, 100, 'TIN_MOI_NHAT'),
(14, 57, 'Tin book365', 0, 200, 'TIN_BOOK365'),
(15, 57, 'Sự kiện toạ đàm', 0, 300, 'SU_KIEN_TOA_DAM'),
(16, 65, 'Hà Nội', 0, 100, 'HN'),
(17, 65, 'TP. Hồ Chí Minh', 0, 200, 'TPHCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_user_field_lang`
--

CREATE TABLE `v_extendblock_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) NOT NULL,
  `EDIT_FORM_LABEL` varchar(255) DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_user_field_lang`
--

INSERT INTO `v_extendblock_user_field_lang` (`USER_FIELD_ID`, `LANGUAGE_ID`, `EDIT_FORM_LABEL`, `LIST_COLUMN_LABEL`, `LIST_FILTER_LABEL`, `ERROR_MESSAGE`, `HELP_MESSAGE`) VALUES
(27, 'en', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện'),
(27, 'vi', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện'),
(28, 'en', 'Bật đồng hồ', 'Bật đồng hồ', 'Bật đồng hồ', 'Bật đồng hồ', 'Bật đồng hồ'),
(28, 'vi', 'Bật đồng hồ', 'Bật đồng hồ', 'Bật đồng hồ', 'Bật đồng hồ', 'Bật đồng hồ'),
(33, 'en', 'Giới tính', 'Giới tính', 'Giới tính', 'Giới tính', 'Giới tính'),
(33, 'vi', 'Giới tính', 'Giới tính', 'Giới tính', 'Giới tính', 'Giới tính'),
(37, 'en', 'Cột interger', 'Cột interger', 'Cột interger', 'Cột interger', 'Cột interger'),
(37, 'vi', 'Cột interger', 'Cột interger', 'Cột interger', 'Cột interger', 'Cột interger'),
(38, 'en', 'Cột enum 1', 'Cột enum 1', 'Cột enum 1', 'Cột enum', 'Cột enum'),
(38, 'vi', 'Cột enum', 'Cột enum', 'Cột enum', 'Cột enum', 'Cột enum'),
(39, 'en', 'Kiểu link to element', 'Kiểu link to element', 'Kiểu link to element', 'Kiểu link to element', 'Kiểu link to element'),
(39, 'vi', 'Kiểu link to element', 'Kiểu link to element', 'Kiểu link to element', 'Kiểu link to element', 'Kiểu link to element'),
(40, 'en', 'Cột kiểu file', 'Cột kiểu file', 'Cột kiểu file', 'Cột kiểu file', 'Cột kiểu file'),
(40, 'vi', 'Cột kiểu file', 'Cột kiểu file', 'Cột kiểu file', 'Cột kiểu file', 'Cột kiểu file'),
(41, 'en', 'Cột string', 'Cột string', 'Cột string', 'Cột string', 'Cột string'),
(41, 'vi', 'Cột string', 'Cột string', 'Cột string', 'Cột string', 'Cột string'),
(42, 'en', 'Cột int 2', 'Cột int 2', 'Cột int 2', 'Cột int 2', 'Cột int 2'),
(42, 'vi', 'Cột int 2', 'Cột int 2', 'Cột int 2', 'Cột int 2', 'Cột int 2'),
(44, 'en', 'Cột Int 3', 'Cột Int 3', 'Cột Int 3', 'Cột Int 3', 'Cột Int 3'),
(44, 'vi', 'Cột Int 3', 'Cột Int 3', 'Cột Int 3', 'Cột Int 3', 'Cột Int 3'),
(45, 'en', 'Cột enum 2', 'Cột enum 2', 'Cột enum 2', 'Cột enum 2', 'Cột enum 2'),
(45, 'vi', 'Cột enum 2', 'Cột enum 2', 'Cột enum 2', 'Cột enum 2', 'Cột enum 2'),
(46, 'en', 'Kiểu enum 3', 'Kiểu enum 3', 'Kiểu enum 3', 'Kiểu enum 3', 'Kiểu enum 3'),
(46, 'vi', 'Kiểu enum 3', 'Kiểu enum 3', 'Kiểu enum 3', 'Kiểu enum 3', 'Kiểu enum 3'),
(49, 'en', 'Test new enum', 'Test new enum', 'Test new enum', 'Test new enum', 'Test new enum'),
(49, 'vi', 'Test new enum', 'Test new enum', 'Test new enum', 'Test new enum', 'Test new enum'),
(54, 'en', 'Test new enum', 'Test new enum', 'Test new enum', 'Test new enum', 'Test new enum'),
(54, 'vi', 'Test new enum', 'Test new enum', 'Test new enum', 'Test new enum', 'Test new enum'),
(55, 'en', 'abc', 'abc', 'abc', 'abc', 'abc'),
(55, 'vi', 'abc', 'abc', 'abc', 'abc', 'abc'),
(56, 'en', '', '', '', '', ''),
(56, 'vi', 'Tiêu đề', 'Tiêu đề', 'Tiêu đề', 'Tiêu đề', 'Tiêu đề'),
(57, 'en', 'Chuyên mục', 'Chuyên mục', 'Chuyên mục', 'Chuyên mục', 'Chuyên mục'),
(57, 'vi', 'Chuyên mục', 'Chuyên mục', 'Chuyên mục', 'Chuyên mục', 'Chuyên mục'),
(58, 'en', 'Nội dung', 'Nội dung', 'Nội dung', 'Nội dung', 'Nội dung'),
(58, 'vi', 'Nội dung', 'Nội dung', 'Nội dung', 'Nội dung', 'Nội dung'),
(59, 'en', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện'),
(59, 'vi', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện'),
(60, 'en', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu'),
(60, 'vi', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu', 'Giới thiệu'),
(61, 'en', 'Giá tiền', 'Giá tiền', 'Giá tiền', 'Giá tiền', 'Giá tiền'),
(61, 'vi', 'Giá tiền', 'Giá tiền', 'Giá tiền', 'Giá tiền', 'Giá tiền'),
(62, 'en', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện'),
(62, 'vi', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện', 'Ảnh đại diện'),
(63, 'en', 'Tiêu đề', 'Tiêu đề', 'Tiêu đề', 'Tiêu đề', 'Tiêu đề'),
(63, 'vi', 'Tiêu đề', 'Tiêu đề', 'Tiêu đề', 'Tiêu đề', 'Tiêu đề'),
(64, 'en', 'Cửa hàng', 'Cửa hàng', 'Cửa hàng', 'Cửa hàng', 'Cửa hàng'),
(64, 'vi', 'Cửa hàng', 'Cửa hàng', 'Cửa hàng', 'Cửa hàng', 'Cửa hàng'),
(65, 'en', '', '', '', '', ''),
(65, 'vi', '', '', '', '', ''),
(66, 'en', '', '', '', '', ''),
(66, 'vi', '', '', '', '', ''),
(67, 'en', '', '', '', '', ''),
(67, 'vi', '', '', '', '', ''),
(68, 'en', '', '', '', '', ''),
(68, 'vi', '', '', '', '', ''),
(69, 'en', '', '', '', '', ''),
(69, 'vi', '', '', '', '', ''),
(70, 'en', '', '', '', '', ''),
(70, 'vi', '', '', '', '', ''),
(71, 'en', '', '', '', '', ''),
(71, 'vi', '', '', '', '', ''),
(75, 'en', '', '', '', '', ''),
(78, 'en', '', '', '', '', ''),
(78, 'vi', '', '', '', '', ''),
(79, 'en', '', '', '', '', ''),
(80, 'en', 'nhân viên', 'nhân viên', 'nhân viên', 'nhân viên', 'nhân viên'),
(81, 'en', '', '', '', '', ''),
(82, 'en', '', '', '', '', ''),
(83, 'en', '', '', '', '', ''),
(84, 'en', '', '', '', '', ''),
(85, 'en', '', '', '', '', ''),
(86, 'en', '', '', '', '', ''),
(87, 'en', '', '', '', '', ''),
(88, 'en', '', '', '', '', ''),
(89, 'en', '', '', '', '', ''),
(90, 'en', '', '', '', '', ''),
(91, 'en', '', '', '', '', ''),
(92, 'en', '', '', '', '', ''),
(93, 'en', '', '', '', '', ''),
(94, 'en', '', '', '', '', ''),
(95, 'en', '', '', '', '', ''),
(96, 'en', '', '', '', '', ''),
(97, 'en', '', '', '', '', ''),
(98, 'en', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_extendblock_widgets`
--

CREATE TABLE `v_extendblock_widgets` (
  `ID` int(20) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `WIDGET` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DESCRIPTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `PHAM_VI_AP_DUNG` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_extendblock_widgets`
--

INSERT INTO `v_extendblock_widgets` (`ID`, `NAME`, `WIDGET`, `DESCRIPTION`, `PHAM_VI_AP_DUNG`) VALUES
(1, 'Userfield ngày tháng', 'dmf\\extendwidgets\\ExtendDate', 'Ngày tháng năm', 'Date'),
(2, 'UserFiel ngày tháng năm', 'dmf\\extendwidgets\\ExtendDateTime', 'Ngày tháng năm Giờ phút giây', ''),
(3, 'UserField HTML / TextArea', 'dmf\\extendwidgets\\ExtendHtml', 'Hiển thị kiểu html/text area', ''),
(4, 'Hiển thị giao diện grid', 'dmf\\extendwidgets\\ExtendGridView', '', ''),
(5, 'Widget kiểu enum', 'dmf\\extendwidgets\\ExtendEnum', '', ''),
(6, 'UserField Select', 'dmf\\extendwidgets\\ExtendSelect', '', ''),
(7, 'Enum màu', 'dmf\\extendwidgets\\ExtendLabel', '', ''),
(8, 'Enum radio', 'dmf\\extendwidgets\\ExtendRadio', '', ''),
(9, 'Kiểu list box', 'dmf\\extendwidgets\\ExtendListbox', 'Kiểu list box', ''),
(10, 'Kiểu radio', 'dmf\\extendwidgets\\ExtendRadio', '', ''),
(11, 'Danh sách trang tin tức sự kiện', '\\dmf\\extendwidgets\\ExtendNewsList', 'Danh sách trang tin tức sự kiện', ''),
(12, 'Hiển thị giao diện news detail', '\\dmf\\extendwidgets\\ExtendNewsDetail', 'Hiển thị giao diện news detail', ''),
(13, 'Hiển thị File', '\\dmf\\extendwidgets\\ExtendFile', 'Hiển thị File', ''),
(14, 'Hiển thị tin tức 1 cột', '\\dmf\\extendwidgets\\ExtendGridOneColumn', 'Hiển thị tin tức 1 cột', ''),
(15, 'Hiển thị tin tức 2 cột', '\\dmf\\extendwidgets\\ExtendGridTwoColumn', 'Hiển thị tin tức 2 cột', ''),
(16, 'Link to user (Selector)', 'dmf\\extendwidgets\\ExtendLinkToUserSelector', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_operation`
--

CREATE TABLE `v_operation` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `v_operation`
--

INSERT INTO `v_operation` (`ID`, `NAME`, `MODULE_ID`, `DESCRIPTION`, `BINDING`) VALUES
(1, 'edit_php', 'main', NULL, 'module'),
(2, 'view_own_profile', 'main', NULL, 'module'),
(3, 'edit_own_profile', 'main', NULL, 'module'),
(4, 'view_all_users', 'main', NULL, 'module'),
(5, 'view_groups', 'main', NULL, 'module'),
(6, 'view_tasks', 'main', NULL, 'module'),
(7, 'view_other_settings', 'main', NULL, 'module'),
(8, 'view_subordinate_users', 'main', NULL, 'module'),
(9, 'edit_subordinate_users', 'main', NULL, 'module'),
(10, 'edit_all_users', 'main', NULL, 'module'),
(11, 'edit_groups', 'main', NULL, 'module'),
(12, 'edit_tasks', 'main', NULL, 'module'),
(13, 'edit_other_settings', 'main', NULL, 'module'),
(14, 'cache_control', 'main', NULL, 'module'),
(15, 'lpa_template_edit', 'main', NULL, 'module'),
(16, 'view_event_log', 'main', NULL, 'module'),
(17, 'edit_ratings', 'main', NULL, 'module'),
(18, 'manage_short_uri', 'main', NULL, 'module'),
(19, 'fm_view_permission', 'main', NULL, 'file'),
(20, 'fm_view_file', 'main', NULL, 'file'),
(21, 'fm_view_listing', 'main', NULL, 'file'),
(22, 'fm_edit_existent_folder', 'main', NULL, 'file'),
(23, 'fm_create_new_file', 'main', NULL, 'file'),
(24, 'fm_edit_existent_file', 'main', NULL, 'file'),
(25, 'fm_create_new_folder', 'main', NULL, 'file'),
(26, 'fm_delete_file', 'main', NULL, 'file'),
(27, 'fm_delete_folder', 'main', NULL, 'file'),
(28, 'fm_edit_in_workflow', 'main', NULL, 'file'),
(29, 'fm_rename_file', 'main', NULL, 'file'),
(30, 'fm_rename_folder', 'main', NULL, 'file'),
(31, 'fm_upload_file', 'main', NULL, 'file'),
(32, 'fm_add_to_menu', 'main', NULL, 'file'),
(33, 'fm_download_file', 'main', NULL, 'file'),
(34, 'fm_lpa', 'main', NULL, 'file'),
(35, 'fm_edit_permission', 'main', NULL, 'file'),
(36, 'calendar_view_time', 'calendar', NULL, 'calendar_section'),
(37, 'calendar_view_title', 'calendar', NULL, 'calendar_section'),
(38, 'calendar_view_full', 'calendar', NULL, 'calendar_section'),
(39, 'calendar_add', 'calendar', NULL, 'calendar_section'),
(40, 'calendar_edit', 'calendar', NULL, 'calendar_section'),
(41, 'calendar_edit_section', 'calendar', NULL, 'calendar_section'),
(42, 'calendar_edit_access', 'calendar', NULL, 'calendar_section'),
(43, 'calendar_type_view', 'calendar', NULL, 'calendar_type'),
(44, 'calendar_type_add', 'calendar', NULL, 'calendar_type'),
(45, 'calendar_type_edit', 'calendar', NULL, 'calendar_type'),
(46, 'calendar_type_edit_section', 'calendar', NULL, 'calendar_type'),
(47, 'calendar_type_edit_access', 'calendar', NULL, 'calendar_type'),
(48, 'catalog_read', 'catalog', NULL, 'module'),
(49, 'catalog_price', 'catalog', NULL, 'module'),
(50, 'catalog_group', 'catalog', NULL, 'module'),
(51, 'catalog_discount', 'catalog', NULL, 'module'),
(52, 'catalog_vat', 'catalog', NULL, 'module'),
(53, 'catalog_store', 'catalog', NULL, 'module'),
(54, 'catalog_purchas_info', 'catalog', NULL, 'module'),
(55, 'catalog_export_edit', 'catalog', NULL, 'module'),
(56, 'catalog_export_exec', 'catalog', NULL, 'module'),
(57, 'catalog_import_edit', 'catalog', NULL, 'module'),
(58, 'catalog_import_exec', 'catalog', NULL, 'module'),
(59, 'catalog_measure', 'catalog', NULL, 'module'),
(60, 'catalog_settings', 'catalog', NULL, 'module'),
(61, 'clouds_browse', 'clouds', NULL, 'module'),
(62, 'clouds_upload', 'clouds', NULL, 'module'),
(63, 'clouds_config', 'clouds', NULL, 'module'),
(64, 'fileman_view_all_settings', 'fileman', '', 'module'),
(65, 'fileman_edit_menu_types', 'fileman', '', 'module'),
(66, 'fileman_add_element_to_menu', 'fileman', '', 'module'),
(67, 'fileman_edit_menu_elements', 'fileman', '', 'module'),
(68, 'fileman_edit_existent_files', 'fileman', '', 'module'),
(69, 'fileman_edit_existent_folders', 'fileman', '', 'module'),
(70, 'fileman_admin_files', 'fileman', '', 'module'),
(71, 'fileman_admin_folders', 'fileman', '', 'module'),
(72, 'fileman_view_permissions', 'fileman', '', 'module'),
(73, 'fileman_edit_all_settings', 'fileman', '', 'module'),
(74, 'fileman_upload_files', 'fileman', '', 'module'),
(75, 'fileman_view_file_structure', 'fileman', '', 'module'),
(76, 'fileman_install_control', 'fileman', '', 'module'),
(77, 'medialib_view_collection', 'fileman', '', 'medialib'),
(78, 'medialib_new_collection', 'fileman', '', 'medialib'),
(79, 'medialib_edit_collection', 'fileman', '', 'medialib'),
(80, 'medialib_del_collection', 'fileman', '', 'medialib'),
(81, 'medialib_access', 'fileman', '', 'medialib'),
(82, 'medialib_new_item', 'fileman', '', 'medialib'),
(83, 'medialib_edit_item', 'fileman', '', 'medialib'),
(84, 'medialib_del_item', 'fileman', '', 'medialib'),
(85, 'sticker_view', 'fileman', '', 'stickers'),
(86, 'sticker_edit', 'fileman', '', 'stickers'),
(87, 'sticker_new', 'fileman', '', 'stickers'),
(88, 'sticker_del', 'fileman', '', 'stickers'),
(89, 'section_read', 'iblock', NULL, 'iblock'),
(90, 'element_read', 'iblock', NULL, 'iblock'),
(91, 'section_element_bind', 'iblock', NULL, 'iblock'),
(92, 'iblock_admin_display', 'iblock', NULL, 'iblock'),
(93, 'element_edit', 'iblock', NULL, 'iblock'),
(94, 'element_edit_price', 'iblock', NULL, 'iblock'),
(95, 'element_delete', 'iblock', NULL, 'iblock'),
(96, 'element_bizproc_start', 'iblock', NULL, 'iblock'),
(97, 'section_edit', 'iblock', NULL, 'iblock'),
(98, 'section_delete', 'iblock', NULL, 'iblock'),
(99, 'section_section_bind', 'iblock', NULL, 'iblock'),
(100, 'element_edit_any_wf_status', 'iblock', NULL, 'iblock'),
(101, 'iblock_edit', 'iblock', NULL, 'iblock'),
(102, 'iblock_delete', 'iblock', NULL, 'iblock'),
(103, 'iblock_rights_edit', 'iblock', NULL, 'iblock'),
(104, 'iblock_export', 'iblock', NULL, 'iblock'),
(105, 'section_rights_edit', 'iblock', NULL, 'iblock'),
(106, 'element_rights_edit', 'iblock', NULL, 'iblock'),
(107, 'lesson_read', 'learning', NULL, 'lesson'),
(108, 'lesson_create', 'learning', NULL, 'lesson'),
(109, 'lesson_write', 'learning', NULL, 'lesson'),
(110, 'lesson_remove', 'learning', NULL, 'lesson'),
(111, 'lesson_link_to_parents', 'learning', NULL, 'lesson'),
(112, 'lesson_unlink_from_parents', 'learning', NULL, 'lesson'),
(113, 'lesson_link_descendants', 'learning', NULL, 'lesson'),
(114, 'lesson_unlink_descendants', 'learning', NULL, 'lesson'),
(115, 'lesson_manage_rights', 'learning', NULL, 'lesson'),
(116, 'security_filter_bypass', 'security', NULL, 'module'),
(117, 'security_edit_user_otp', 'security', NULL, 'module'),
(118, 'security_module_settings_read', 'security', NULL, 'module'),
(119, 'security_panel_view', 'security', NULL, 'module'),
(120, 'security_filter_settings_read', 'security', NULL, 'module'),
(121, 'security_otp_settings_read', 'security', NULL, 'module'),
(122, 'security_iprule_admin_settings_read', 'security', NULL, 'module'),
(123, 'security_session_settings_read', 'security', NULL, 'module'),
(124, 'security_redirect_settings_read', 'security', NULL, 'module'),
(125, 'security_stat_activity_settings_read', 'security', NULL, 'module'),
(126, 'security_iprule_settings_read', 'security', NULL, 'module'),
(127, 'security_antivirus_settings_read', 'security', NULL, 'module'),
(128, 'security_frame_settings_read', 'security', NULL, 'module'),
(129, 'security_module_settings_write', 'security', NULL, 'module'),
(130, 'security_filter_settings_write', 'security', NULL, 'module'),
(131, 'security_otp_settings_write', 'security', NULL, 'module'),
(132, 'security_iprule_admin_settings_write', 'security', NULL, 'module'),
(133, 'security_session_settings_write', 'security', NULL, 'module'),
(134, 'security_redirect_settings_write', 'security', NULL, 'module'),
(135, 'security_stat_activity_settings_write', 'security', NULL, 'module'),
(136, 'security_iprule_settings_write', 'security', NULL, 'module'),
(137, 'security_file_verifier_sign', 'security', NULL, 'module'),
(138, 'security_file_verifier_collect', 'security', NULL, 'module'),
(139, 'security_file_verifier_verify', 'security', NULL, 'module'),
(140, 'security_antivirus_settings_write', 'security', NULL, 'module'),
(141, 'security_frame_settings_write', 'security', NULL, 'module'),
(142, 'tm_manage', 'timeman', NULL, 'module'),
(143, 'tm_read_subordinate', 'timeman', NULL, 'module'),
(144, 'tm_write_subordinate', 'timeman', NULL, 'module'),
(145, 'tm_read', 'timeman', NULL, 'module'),
(146, 'tm_write', 'timeman', NULL, 'module'),
(147, 'tm_manage_all', 'timeman', NULL, 'module'),
(148, 'tm_settings', 'timeman', NULL, 'module'),
(149, 'webdav_change_settings', 'webdav', NULL, 'module'),
(150, 'catalog_extra', 'catalog', NULL, 'module'),
(151, 'disk_read', 'disk', NULL, 'module'),
(152, 'disk_edit', 'disk', NULL, 'module'),
(153, 'disk_delete', 'disk', NULL, 'module'),
(154, 'disk_start_bp', 'disk', NULL, 'module'),
(155, 'disk_sharing', 'disk', NULL, 'module'),
(156, 'disk_settings', 'disk', NULL, 'module'),
(157, 'disk_rights', 'disk', NULL, 'module'),
(158, 'disk_create_wf', 'disk', NULL, 'module'),
(159, 'disk_add', 'disk', NULL, 'module'),
(160, 'iptimeman_module_settings_read', 'iptimeman', NULL, 'module'),
(161, 'iptimeman_module_settings_write', 'iptimeman', NULL, 'module'),
(162, 'catalog_view', 'catalog', NULL, 'module'),
(163, 'sale_status_view', 'sale', NULL, 'status'),
(164, 'sale_status_cancel', 'sale', NULL, 'status'),
(165, 'sale_status_mark', 'sale', NULL, 'status'),
(166, 'sale_status_delivery', 'sale', NULL, 'status'),
(167, 'sale_status_deduction', 'sale', NULL, 'status'),
(168, 'sale_status_payment', 'sale', NULL, 'status'),
(169, 'sale_status_to', 'sale', NULL, 'status'),
(170, 'sale_status_update', 'sale', NULL, 'status'),
(171, 'sale_status_delete', 'sale', NULL, 'status'),
(172, 'sale_status_from', 'sale', NULL, 'status'),
(176, 'controller_member_auth', 'controller', NULL, 'module'),
(177, 'controller_settings_view', 'controller', NULL, 'module'),
(178, 'controller_member_add', 'controller', NULL, 'module'),
(179, 'controller_member_view', 'controller', NULL, 'module'),
(180, 'controller_member_auth_admin', 'controller', NULL, 'module'),
(181, 'controller_member_edit', 'controller', NULL, 'module'),
(182, 'controller_member_delete', 'controller', NULL, 'module'),
(183, 'controller_member_settings_update', 'controller', NULL, 'module'),
(184, 'controller_member_counters_update', 'controller', NULL, 'module'),
(185, 'controller_member_history_view', 'controller', NULL, 'module'),
(186, 'controller_task_view', 'controller', NULL, 'module'),
(187, 'controller_task_run', 'controller', NULL, 'module'),
(188, 'controller_task_delete', 'controller', NULL, 'module'),
(189, 'controller_log_view', 'controller', NULL, 'module'),
(190, 'controller_log_delete', 'controller', NULL, 'module'),
(191, 'controller_run_command', 'controller', NULL, 'module'),
(192, 'controller_upload_file', 'controller', NULL, 'module'),
(193, 'controller_settings_change', 'controller', NULL, 'module'),
(194, 'controller_member_grant_auth', 'controller', NULL, 'module'),
(195, 'controller_member_disconnect', 'controller', NULL, 'module'),
(196, 'controller_member_updates_run', 'controller', NULL, 'module'),
(197, 'controller_group_view', 'controller', NULL, 'module'),
(198, 'controller_group_manage', 'controller', NULL, 'module'),
(199, 'controller_counters_view', 'controller', NULL, 'module'),
(200, 'controller_counters_manage', 'controller', NULL, 'module'),
(201, 'controller_auth_view', 'controller', NULL, 'module'),
(202, 'controller_auth_manage', 'controller', NULL, 'module'),
(203, 'controller_auth_log_view', 'controller', NULL, 'module'),
(204, 'disk_destroy', 'disk', NULL, 'module'),
(205, 'disk_restore', 'disk', NULL, 'module'),
(206, 'hl_element_read', 'highloadblock', NULL, 'module'),
(207, 'hl_element_write', 'highloadblock', NULL, 'module'),
(208, 'hl_element_delete', 'highloadblock', NULL, 'module'),
(209, 'read', 'tasks', NULL, 'task_template'),
(210, 'update', 'tasks', NULL, 'task_template'),
(211, 'delete', 'tasks', NULL, 'task_template'),
(212, 'vvfixer_module_edit_base', 'vv.fixer', NULL, 'module'),
(214, 'landing_read', 'landing', NULL, 'module'),
(215, 'landing_edit', 'landing', NULL, 'module'),
(216, 'landing_sett', 'landing', NULL, 'module'),
(217, 'landing_public', 'landing', NULL, 'module'),
(218, 'landing_delete', 'landing', NULL, 'module'),
(219, 'vvcrmextra_module_edit_base', 'vv.crmextra', NULL, 'module'),
(220, 'vvcrmextra_module_full_access', 'vv.crmextra', NULL, 'module'),
(221, 'tm_read_schedules_all', 'timeman', NULL, 'module'),
(222, 'tm_read_shift_plans_all', 'timeman', NULL, 'module'),
(223, 'tm_update_schedules_all', 'timeman', NULL, 'module'),
(224, 'tm_update_shift_plans_all', 'timeman', NULL, 'module'),
(249, 'extend_block_section_read', 'extendblock', NULL, 'extend_block'),
(250, 'extend_block_element_read', 'extendblock', NULL, 'extend_block'),
(251, 'extend_block_element_export', 'extendblock', NULL, 'extend_block'),
(252, 'extend_block_section_element_bind', 'extendblock', NULL, 'extend_block'),
(253, 'extend_block_element_import', 'extendblock', NULL, 'extend_block'),
(254, 'extend_block_admin_display', 'extendblock', NULL, 'extend_block'),
(255, 'extend_block_element_edit', 'extendblock', NULL, 'extend_block'),
(256, 'extend_block_element_edit_price', 'extendblock', NULL, 'extend_block'),
(257, 'extend_block_element_delete', 'extendblock', NULL, 'extend_block'),
(258, 'extend_block_element_bizproc_start', 'extendblock', NULL, 'extend_block'),
(259, 'extend_block_section_edit', 'extendblock', NULL, 'extend_block'),
(260, 'extend_block_section_delete', 'extendblock', NULL, 'extend_block'),
(261, 'extend_block_section_section_bind', 'extendblock', NULL, 'extend_block'),
(262, 'extend_block_element_edit_any_wf_status', 'extendblock', NULL, 'extend_block'),
(263, 'extend_block_edit', 'extendblock', NULL, 'extend_block'),
(264, 'extend_block_delete', 'extendblock', NULL, 'extend_block'),
(265, 'extend_block_rights_edit', 'extendblock', NULL, 'extend_block'),
(266, 'extend_block_export', 'extendblock', NULL, 'extend_block'),
(267, 'extend_block_section_rights_edit', 'extendblock', NULL, 'extend_block'),
(268, 'extend_block_element_rights_edit', 'extendblock', NULL, 'extend_block');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_task`
--

CREATE TABLE `v_task` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `v_task`
--

INSERT INTO `v_task` (`ID`, `NAME`, `LETTER`, `MODULE_ID`, `SYS`, `DESCRIPTION`, `BINDING`) VALUES
(1, 'main_denied', 'D', 'main', 'Y', NULL, 'module'),
(2, 'main_change_profile', 'P', 'main', 'Y', NULL, 'module'),
(3, 'main_view_all_settings', 'R', 'main', 'Y', NULL, 'module'),
(4, 'main_view_all_settings_change_profile', 'T', 'main', 'Y', NULL, 'module'),
(5, 'main_edit_subordinate_users', 'V', 'main', 'Y', NULL, 'module'),
(6, 'main_full_access', 'W', 'main', 'Y', NULL, 'module'),
(7, 'fm_folder_access_denied', 'D', 'main', 'Y', NULL, 'file'),
(8, 'fm_folder_access_read', 'R', 'main', 'Y', NULL, 'file'),
(9, 'fm_folder_access_write', 'W', 'main', 'Y', NULL, 'file'),
(10, 'fm_folder_access_full', 'X', 'main', 'Y', NULL, 'file'),
(11, 'fm_folder_access_workflow', 'U', 'main', 'Y', NULL, 'file'),
(12, 'calendar_denied', 'D', 'calendar', 'Y', NULL, 'calendar_section'),
(13, 'calendar_view_time', 'O', 'calendar', 'Y', NULL, 'calendar_section'),
(14, 'calendar_view_title', 'P', 'calendar', 'Y', NULL, 'calendar_section'),
(15, 'calendar_view', 'R', 'calendar', 'Y', NULL, 'calendar_section'),
(16, 'calendar_edit', 'W', 'calendar', 'Y', NULL, 'calendar_section'),
(17, 'calendar_access', 'X', 'calendar', 'Y', NULL, 'calendar_section'),
(18, 'calendar_type_denied', 'D', 'calendar', 'Y', NULL, 'calendar_type'),
(19, 'calendar_type_view', 'R', 'calendar', 'Y', NULL, 'calendar_type'),
(20, 'calendar_type_edit', 'W', 'calendar', 'Y', NULL, 'calendar_type'),
(21, 'calendar_type_access', 'X', 'calendar', 'Y', NULL, 'calendar_type'),
(22, 'catalog_denied', 'D', 'catalog', 'Y', NULL, 'module'),
(23, 'catalog_read', 'R', 'catalog', 'Y', NULL, 'module'),
(24, 'catalog_price_edit', 'T', 'catalog', 'Y', NULL, 'module'),
(25, 'catalog_store_edit', 'S', 'catalog', 'Y', NULL, 'module'),
(26, 'catalog_export_import', 'U', 'catalog', 'Y', NULL, 'module'),
(27, 'catalog_full_access', 'W', 'catalog', 'Y', NULL, 'module'),
(28, 'clouds_denied', 'D', 'clouds', 'Y', NULL, 'module'),
(29, 'clouds_browse', 'F', 'clouds', 'Y', NULL, 'module'),
(30, 'clouds_upload', 'U', 'clouds', 'Y', NULL, 'module'),
(31, 'clouds_full_access', 'W', 'clouds', 'Y', NULL, 'module'),
(32, 'fileman_denied', 'D', 'fileman', 'Y', '', 'module'),
(33, 'fileman_allowed_folders', 'F', 'fileman', 'Y', '', 'module'),
(34, 'fileman_full_access', 'W', 'fileman', 'Y', '', 'module'),
(35, 'medialib_denied', 'D', 'fileman', 'Y', '', 'medialib'),
(36, 'medialib_view', 'F', 'fileman', 'Y', '', 'medialib'),
(37, 'medialib_only_new', 'R', 'fileman', 'Y', '', 'medialib'),
(38, 'medialib_edit_items', 'V', 'fileman', 'Y', '', 'medialib'),
(39, 'medialib_editor', 'W', 'fileman', 'Y', '', 'medialib'),
(40, 'medialib_full', 'X', 'fileman', 'Y', '', 'medialib'),
(41, 'stickers_denied', 'D', 'fileman', 'Y', '', 'stickers'),
(42, 'stickers_read', 'R', 'fileman', 'Y', '', 'stickers'),
(43, 'stickers_edit', 'W', 'fileman', 'Y', '', 'stickers'),
(44, 'iblock_deny', 'D', 'iblock', 'Y', NULL, 'iblock'),
(45, 'iblock_read', 'R', 'iblock', 'Y', NULL, 'iblock'),
(46, 'iblock_element_add', 'E', 'iblock', 'Y', NULL, 'iblock'),
(47, 'iblock_admin_read', 'S', 'iblock', 'Y', NULL, 'iblock'),
(48, 'iblock_admin_add', 'T', 'iblock', 'Y', NULL, 'iblock'),
(49, 'iblock_limited_edit', 'U', 'iblock', 'Y', NULL, 'iblock'),
(50, 'iblock_full_edit', 'W', 'iblock', 'Y', NULL, 'iblock'),
(51, 'iblock_full', 'X', 'iblock', 'Y', NULL, 'iblock'),
(52, 'learning_lesson_access_denied', NULL, 'learning', 'Y', NULL, 'lesson'),
(53, 'learning_lesson_access_read', NULL, 'learning', 'Y', NULL, 'lesson'),
(54, 'learning_lesson_access_manage_basic', NULL, 'learning', 'Y', NULL, 'lesson'),
(55, 'learning_lesson_access_linkage_as_child', NULL, 'learning', 'Y', NULL, 'lesson'),
(56, 'learning_lesson_access_linkage_as_parent', NULL, 'learning', 'Y', NULL, 'lesson'),
(57, 'learning_lesson_access_linkage_any', NULL, 'learning', 'Y', NULL, 'lesson'),
(58, 'learning_lesson_access_manage_as_child', NULL, 'learning', 'Y', NULL, 'lesson'),
(59, 'learning_lesson_access_manage_as_parent', NULL, 'learning', 'Y', NULL, 'lesson'),
(60, 'learning_lesson_access_manage_dual', NULL, 'learning', 'Y', NULL, 'lesson'),
(61, 'learning_lesson_access_manage_full', NULL, 'learning', 'Y', NULL, 'lesson'),
(62, 'security_denied', 'D', 'security', 'Y', NULL, 'module'),
(63, 'security_filter', 'F', 'security', 'Y', NULL, 'module'),
(64, 'security_otp', 'S', 'security', 'Y', NULL, 'module'),
(65, 'security_view_all_settings', 'T', 'security', 'Y', NULL, 'module'),
(66, 'security_full_access', 'W', 'security', 'Y', NULL, 'module'),
(67, 'timeman_denied', 'D', 'timeman', 'Y', NULL, 'module'),
(68, 'timeman_subordinate', 'N', 'timeman', 'Y', NULL, 'module'),
(69, 'timeman_read', 'R', 'timeman', 'Y', NULL, 'module'),
(70, 'timeman_write', 'T', 'timeman', 'Y', NULL, 'module'),
(71, 'timeman_full_access', 'W', 'timeman', 'Y', NULL, 'module'),
(72, 'webdav_full_access', 'X', 'webdav', 'Y', NULL, 'module'),
(73, 'All grant', 'Z', 'iblock', 'N', '', 'iblock'),
(74, 'disk_access_read', 'R', 'disk', 'Y', NULL, 'module'),
(75, 'disk_access_edit', 'W', 'disk', 'Y', NULL, 'module'),
(76, 'disk_access_sharing', 'S', 'disk', 'Y', NULL, 'module'),
(77, 'disk_access_full', 'X', 'disk', 'Y', NULL, 'module'),
(78, 'disk_access_add', 'T', 'disk', 'Y', NULL, 'module'),
(79, 'security_denied', 'D', 'iptimeman', 'Y', NULL, 'module'),
(80, 'iptimeman_view_all_settings', 'T', 'iptimeman', 'Y', NULL, 'module'),
(81, 'iptimeman_full_access', 'W', 'iptimeman', 'Y', NULL, 'module'),
(82, 'catalog_view', 'M', 'catalog', 'Y', NULL, 'module'),
(83, 'sale_status_none', 'D', 'sale', 'Y', NULL, 'status'),
(84, 'sale_status_all', 'X', 'sale', 'Y', NULL, 'status'),
(90, 'controller_deny', 'D', 'controller', 'Y', NULL, 'module'),
(91, 'controller_auth', 'L', 'controller', 'Y', NULL, 'module'),
(92, 'controller_read', 'R', 'controller', 'Y', NULL, 'module'),
(93, 'controller_add', 'T', 'controller', 'Y', NULL, 'module'),
(94, 'controller_site', 'V', 'controller', 'Y', NULL, 'module'),
(95, 'controller_full', 'W', 'controller', 'Y', NULL, 'module'),
(96, 'Employers', 'E', 'disk', 'N', 'Dùng cho nhân viên VIVI', 'module'),
(97, 'add file', 'P', 'disk', 'N', '', 'module'),
(98, 'hblock_denied', 'D', 'highloadblock', 'Y', NULL, 'module'),
(99, 'hblock_read', 'R', 'highloadblock', 'Y', NULL, 'module'),
(100, 'hblock_write', 'W', 'highloadblock', 'Y', NULL, 'module'),
(101, 'tasks_task_template_full', NULL, 'tasks', 'Y', NULL, 'task_template'),
(102, 'tasks_task_template_read', NULL, 'tasks', 'Y', NULL, 'task_template'),
(103, 'vvfixer_denied', 'D', 'vv.fixer', 'Y', NULL, 'module'),
(104, 'vvfixer_edit_base', 'E', 'vv.fixer', 'Y', NULL, 'module'),
(105, 'vvfixer_full_access', 'W', 'vv.fixer', 'Y', NULL, 'module'),
(109, 'landing_right_denied', 'D', 'landing', 'Y', NULL, 'module'),
(110, 'landing_right_read', 'R', 'landing', 'Y', NULL, 'module'),
(111, 'landing_right_edit', 'U', 'landing', 'Y', NULL, 'module'),
(112, 'landing_right_sett', 'V', 'landing', 'Y', NULL, 'module'),
(113, 'landing_right_public', 'W', 'landing', 'Y', NULL, 'module'),
(114, 'landing_right_delete', 'X', 'landing', 'Y', NULL, 'module'),
(115, 'vvcrmextra_denied', 'D', 'vv.crmextra', 'Y', NULL, 'module'),
(116, 'vvcrmextra_edit_base', 'E', 'vv.crmextra', 'Y', NULL, 'module'),
(117, 'vvcrmextra_full_access', 'W', 'vv.crmextra', 'Y', NULL, 'module'),
(118, 'timeman_read_converted_editable', '', 'timeman', 'N', NULL, 'module'),
(119, 'timeman_write_converted_editable', '', 'timeman', 'N', NULL, 'module'),
(120, 'timeman_subordinate_converted_editable', '', 'timeman', 'N', NULL, 'module'),
(121, 'Full access', '', 'timeman', 'N', NULL, 'module'),
(134, 'extend_block_deny', 'D', 'extendblock', 'Y', NULL, 'extend_block'),
(135, 'extend_block_read', 'R', 'extendblock', 'Y', NULL, 'extend_block'),
(136, 'extend_block_element_add', 'E', 'extendblock', 'Y', NULL, 'extend_block'),
(137, 'extend_block_admin_read', 'S', 'extendblock', 'Y', NULL, 'extend_block'),
(138, 'extend_block_admin_add', 'T', 'extendblock', 'Y', NULL, 'extend_block'),
(139, 'extend_block_limited_edit', 'U', 'extendblock', 'Y', NULL, 'extend_block'),
(140, 'extend_block_full_edit', 'W', 'extendblock', 'Y', NULL, 'extend_block'),
(141, 'extend_block_full', 'X', 'extendblock', 'Y', NULL, 'extend_block');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_tasks`
--

CREATE TABLE `v_tasks` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_IN_BBCODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PRIORITY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `STATUS` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSIBLE_ID` int(11) DEFAULT NULL,
  `DATE_START` datetime DEFAULT NULL,
  `DURATION_PLAN` int(11) DEFAULT NULL,
  `DURATION_FACT` int(11) DEFAULT NULL,
  `DURATION_TYPE` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `TIME_ESTIMATE` int(11) NOT NULL DEFAULT '0',
  `REPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEADLINE` datetime DEFAULT NULL,
  `START_DATE_PLAN` datetime DEFAULT NULL,
  `END_DATE_PLAN` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `CHANGED_BY` int(11) DEFAULT NULL,
  `CHANGED_DATE` datetime DEFAULT NULL,
  `STATUS_CHANGED_BY` int(11) DEFAULT NULL,
  `STATUS_CHANGED_DATE` datetime DEFAULT NULL,
  `CLOSED_BY` int(11) DEFAULT NULL,
  `CLOSED_DATE` datetime DEFAULT NULL,
  `ACTIVITY_DATE` datetime DEFAULT NULL,
  `GUID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXCHANGE_ID` varchar(196) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXCHANGE_MODIFIED` varchar(196) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OUTLOOK_VERSION` int(11) DEFAULT NULL,
  `MARK` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_CHANGE_DEADLINE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_CHANGE_DEADLINE_COUNT` tinyint(4) DEFAULT NULL,
  `ALLOW_CHANGE_DEADLINE_COUNT_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_CHANGE_DEADLINE_MAXTIME` datetime DEFAULT NULL,
  `ALLOW_CHANGE_DEADLINE_MAXTIME_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_TIME_TRACKING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MATCH_WORK_TIME` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TASK_CONTROL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ADD_IN_REPORT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `GROUP_ID` int(11) DEFAULT '0',
  `PARENT_ID` int(11) DEFAULT NULL,
  `FORUM_TOPIC_ID` bigint(20) DEFAULT NULL,
  `MULTITASK` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DECLINE_REASON` text COLLATE utf8_unicode_ci,
  `FORKED_BY_TEMPLATE_ID` int(11) DEFAULT NULL,
  `ZOMBIE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEADLINE_COUNTED` int(11) NOT NULL DEFAULT '0',
  `STAGE_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `v_tasks`
--

INSERT INTO `v_tasks` (`ID`, `TITLE`, `DESCRIPTION`, `DESCRIPTION_IN_BBCODE`, `PRIORITY`, `STATUS`, `RESPONSIBLE_ID`, `DATE_START`, `DURATION_PLAN`, `DURATION_FACT`, `DURATION_TYPE`, `TIME_ESTIMATE`, `REPLICATE`, `DEADLINE`, `START_DATE_PLAN`, `END_DATE_PLAN`, `CREATED_BY`, `CREATED_DATE`, `CHANGED_BY`, `CHANGED_DATE`, `STATUS_CHANGED_BY`, `STATUS_CHANGED_DATE`, `CLOSED_BY`, `CLOSED_DATE`, `ACTIVITY_DATE`, `GUID`, `XML_ID`, `EXCHANGE_ID`, `EXCHANGE_MODIFIED`, `OUTLOOK_VERSION`, `MARK`, `ALLOW_CHANGE_DEADLINE`, `ALLOW_CHANGE_DEADLINE_COUNT`, `ALLOW_CHANGE_DEADLINE_COUNT_VALUE`, `ALLOW_CHANGE_DEADLINE_MAXTIME`, `ALLOW_CHANGE_DEADLINE_MAXTIME_VALUE`, `ALLOW_TIME_TRACKING`, `MATCH_WORK_TIME`, `TASK_CONTROL`, `ADD_IN_REPORT`, `GROUP_ID`, `PARENT_ID`, `FORUM_TOPIC_ID`, `MULTITASK`, `SITE_ID`, `DECLINE_REASON`, `FORKED_BY_TEMPLATE_ID`, `ZOMBIE`, `DEADLINE_COUNTED`, `STAGE_ID`) VALUES
(1, 'Lập kế hoạch công việc tháng 11/2023', 'Check if any new updates are available and install them if required.', 'N', '1', '2', 1, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 1, '2017-04-28 10:22:45', 1, '2017-04-28 10:22:45', 1, '2017-04-28 10:22:45', NULL, NULL, '2017-04-28 10:22:45', '{91faba5f-1ad5-4719-9c97-c5f5dff8aab2}', 'ba2054646390a0fc90f0622157e21626', '', '', 1, '', 'N', NULL, '', NULL, '', 'N', 'N', 'N', 'N', 0, NULL, NULL, 'N', 's1', '', NULL, 'N', 0, 0),
(2, 'Cắt giao diện trang chủ demo giao diện Yii2', 'Verify that the current global settings are adequate. Fix the global settings if required.', 'N', '1', '2', 1, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 1, '2017-04-28 10:22:45', 1, '2017-04-28 10:22:45', 1, '2017-04-28 10:22:45', NULL, NULL, '2017-04-28 10:22:45', '{d426ae67-354e-4381-9c27-c6a4d039c800}', '3f0bdb14e068eb9b341d489b0cc1a0b9', NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, NULL, 'N', 's1', NULL, NULL, 'N', 0, 0),
(3, 'Lập trình chức năng module quản lý nhiệm vụ', '', 'Y', '1', '3', 8, '2021-11-15 20:07:40', NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 8, '2021-11-01 15:26:37', 8, '2021-11-15 20:07:40', 8, '2021-11-15 20:07:40', NULL, NULL, '2021-11-15 20:07:36', '{40a77d80-2162-4055-ad74-440b346f106e}', NULL, NULL, NULL, 9, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 17, 'Y', 'co', NULL, NULL, 'N', 0, 0),
(4, 'Thiết kế giao diện trang chủ Web Vivicorp.com', '', 'Y', '1', '2', 11, NULL, 0, NULL, 'days', 0, 'N', NULL, NULL, NULL, 8, '2021-11-01 15:26:38', 8, '2021-11-09 14:22:01', 8, '2021-11-01 15:26:38', NULL, NULL, '2021-11-01 15:26:38', '{27843fb9-82ed-4631-bec2-1efd87940c50}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 15, 3, 1, 'N', 'co', NULL, NULL, 'N', 0, 0),
(5, 'Lập kế hoạch tuyển dụng Quý 4.2023', '', 'Y', '1', '5', 14, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 8, '2021-11-01 15:26:38', 8, '2021-11-09 16:02:34', 8, '2021-11-09 16:02:34', 8, '2021-11-09 16:02:34', '2021-11-09 16:02:34', '{1f19e4ea-0c91-42d0-83d2-4c40ed9b0be5}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, 3, 2, 'N', 'co', NULL, NULL, 'N', 0, 0),
(6, 'Đào tạo hướng dẫn sử dụng hệ thống Vi24', '', 'Y', '1', '2', 15, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 8, '2021-11-01 15:26:38', 8, '2021-11-01 15:26:38', 8, '2021-11-01 15:26:38', NULL, NULL, '2021-11-01 15:26:38', '{f041444e-c493-4a59-bd4b-0935bf6fc754}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, 3, 3, 'N', 'co', NULL, NULL, 'N', 0, 0),
(7, 'Làm rõ yêu cầu dự án mới Matrix', '', 'Y', '1', '2', 10, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 8, '2021-11-01 15:26:38', 8, '2021-11-01 15:26:38', 8, '2021-11-01 15:26:38', NULL, NULL, '2021-11-01 15:26:38', '{5af25c11-db9d-49b7-a171-c1337922be9b}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, 3, 4, 'N', 'co', NULL, NULL, 'N', 0, 0),
(8, 'Test dòng hoạt động', 'Test chức năng dòng hoạt động', 'Y', '1', '5', 8, '2021-11-05 16:34:43', 0, NULL, 'days', 0, 'N', '2021-11-07 19:00:00', NULL, '2021-11-07 19:00:00', 8, '2021-11-05 15:54:34', 18, '2021-11-10 09:58:32', 18, '2021-11-10 09:58:32', 18, '2021-11-10 09:58:32', '2021-11-10 09:58:32', '{12944653-c547-4d25-bf8c-438d2db9e23e}', NULL, NULL, NULL, 9, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 17, NULL, 5, 'N', 'co', NULL, NULL, 'N', 0, 0),
(9, 'Test gửi thông báo trên dòng hoạt động', 'Test gửi thông báo trên dòng hoạt động', 'Y', '1', '5', 18, NULL, 0, NULL, 'days', 0, 'N', '2021-11-05 17:00:00', NULL, '2021-11-05 17:00:00', 18, '2021-11-05 16:36:26', 8, '2021-11-05 22:59:04', 8, '2021-11-05 22:59:04', 8, '2021-11-05 22:59:04', '2021-11-05 22:59:04', '{3a4c0d79-7384-43da-bb37-303ed4bd0b6f}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 17, 8, 7, 'N', 'co', NULL, NULL, 'N', 0, 0),
(10, 'Demo tính khả thi lập trình giao diện trên Yii2', 'Test task', 'Y', '1', '5', 8, '2021-11-06 09:32:07', 1245600, NULL, 'hours', 0, 'N', '2021-11-20 19:00:00', '2021-11-06 09:00:00', '2021-11-20 19:00:00', 8, '2021-11-06 09:31:43', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', '2021-11-26 15:56:24', '{7c2ae5d9-31fb-442f-93a1-b598da6d2d34}', NULL, NULL, NULL, 5, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 17, NULL, 8, 'N', 'co', NULL, NULL, 'N', 0, 0),
(11, 'Sửa lỗi gửi thông báo của module Chat App', 'Test task 1', 'Y', '1', '5', 18, '2021-11-06 10:31:50', 295200, NULL, 'hours', 0, 'N', '2021-11-09 19:00:00', '2021-11-06 09:00:00', '2021-11-09 19:00:00', 8, '2021-11-06 09:48:33', 8, '2021-11-06 10:35:43', 8, '2021-11-06 10:35:43', 8, '2021-11-06 10:35:43', '2021-11-06 10:35:43', '{aead7f27-1ea7-4ff4-9417-4426ac88cd70}', NULL, NULL, NULL, 8, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'N', 17, 10, 9, 'N', 'co', NULL, NULL, 'N', 0, 0),
(12, 'Lập trình chức năng Dòng Hoạt Động trên Mobile Vi24', 'Test task 2', 'Y', '1', '5', 18, NULL, 295200, NULL, 'hours', 28800, 'N', '2021-11-09 19:00:00', '2021-11-06 09:00:00', '2021-11-09 19:00:00', 8, '2021-11-06 09:52:12', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', '2021-11-26 15:56:24', '{a5e844a0-ddbc-49ee-afdf-e7ec53202bc0}', NULL, NULL, NULL, 7, NULL, 'Y', NULL, NULL, NULL, NULL, 'Y', 'N', 'Y', 'N', 17, 10, 10, 'N', 'co', NULL, NULL, 'N', 0, 0),
(13, 'Làm rõ yêu cầu dự án nhà xuất bản sự thật', 'Test task 3', 'Y', '1', '5', 8, NULL, 295200, NULL, 'hours', 0, 'N', '2021-11-26 19:00:00', '2021-11-09 09:00:00', '2021-11-12 19:00:00', 8, '2021-11-06 09:55:49', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', 8, '2021-11-26 15:56:24', '2021-11-26 15:56:24', '{395be8c0-22a9-425b-a9fb-6420017ee65d}', NULL, NULL, NULL, 7, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 17, 10, 12, 'N', 'co', NULL, NULL, 'N', 0, 0),
(14, 'Test tạo nhiệm vụ', '', 'Y', '1', '2', 43, NULL, NULL, NULL, 'days', 0, 'N', '2021-11-09 23:00:00', NULL, NULL, 43, '2021-11-09 14:53:51', 43, '2021-11-09 17:44:34', 43, '2021-11-09 14:53:51', NULL, NULL, '2021-11-09 23:00:04', '{ef64f3ac-fe2a-4fdd-be40-25ae6f2acaec}', NULL, NULL, NULL, 3, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'N', 0, NULL, 13, 'N', 'co', NULL, NULL, 'N', 0, 0),
(15, 'Đào tạo toàn nhân viên chấm công sử dụng app mobile', '\n\nThe task was created based on a [URL=/extranet/contacts/personal/user/8/calendar/?EVENT_ID=270]calendar event[/URL]', 'Y', '1', '2', 197, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 197, '2021-12-06 16:23:54', 197, '2021-12-06 16:23:54', 197, '2021-12-06 16:23:54', NULL, NULL, '2021-12-06 16:23:54', '{6d627ea2-03d9-4231-ab05-631ecfcf3341}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 12, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(16, 'Biên tập bản thảo Vận dụng chủ nghĩa yêu nước', '', 'Y', '1', '2', 317, NULL, NULL, NULL, 'days', 0, 'N', '2021-12-10 19:00:00', NULL, NULL, 317, '2021-12-09 15:58:10', 1, '2021-12-09 19:04:25', 317, '2021-12-09 15:58:10', NULL, NULL, '2021-12-10 19:07:16', '{f3654d14-8bf5-4615-b758-ceef3b20fe67}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 38, 'Y', 'co', NULL, NULL, 'N', 0, 0),
(17, 'Lịch đào tạo các chi nhánh của XNB (ngay1)', '\n\nThe task was created based on a [URL=/extranet/contacts/personal/user/84/calendar/?EVENT_ID=1892]calendar event[/URL]', 'Y', '1', '2', 210, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 210, '2021-12-16 15:16:43', 210, '2021-12-16 15:16:43', 210, '2021-12-16 15:16:43', NULL, NULL, '2021-12-16 15:16:43', '{65be784a-4a39-4665-be8c-5ae5a8e34783}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 12, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(18, 'Lịch đào tạo các chi nhánh của XNB (ngày 2)', '\n\nThe task was created based on a [URL=/extranet/contacts/personal/user/84/calendar/?EVENT_ID=1892]calendar event[/URL]', 'Y', '1', '2', 210, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 210, '2021-12-16 15:16:47', 210, '2021-12-16 15:16:47', 210, '2021-12-16 15:16:47', NULL, NULL, '2021-12-16 15:16:47', '{6e7bce1c-fa92-44a7-9456-92a837a5b16b}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 12, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(19, 'Lịch đào tạo các chi nhánh của XNB (ngày 3)', '\n\nThe task was created based on a [URL=/extranet/contacts/personal/user/84/calendar/?EVENT_ID=1892]calendar event[/URL]', 'Y', '1', '2', 210, NULL, NULL, NULL, 'days', 0, 'N', NULL, NULL, NULL, 210, '2021-12-16 15:16:55', 210, '2021-12-16 15:16:55', 210, '2021-12-16 15:16:55', NULL, NULL, '2021-12-16 15:16:55', '{0bc996ab-ee1f-48b8-b786-15c1f8bc78b4}', NULL, NULL, NULL, 1, NULL, 'N', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 12, NULL, NULL, 'N', 'co', NULL, NULL, 'N', 0, 0),
(20, 'Nhập Bình Luận TT hình sự', '', 'Y', '2', '5', 457, NULL, NULL, NULL, 'days', 0, 'N', '2022-01-11 15:00:00', NULL, NULL, 457, '2022-01-11 08:54:13', 457, '2022-10-11 10:09:47', 457, '2022-10-11 10:09:47', 457, '2022-10-11 10:09:47', '2022-10-11 10:09:47', '{5b49af9c-4b84-4977-b62d-b6b6421f1f6f}', NULL, NULL, NULL, 4, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 49, 'N', 'co', NULL, NULL, 'N', 0, 0),
(21, 'Xuất 125 cuốn Bình luận tt hình sự cho LS Phan Trung Hoài', '', 'Y', '2', '5', 457, NULL, NULL, NULL, 'days', 0, 'N', '2022-01-11 15:00:00', NULL, NULL, 457, '2022-01-11 08:56:02', 457, '2022-10-11 10:09:48', 457, '2022-10-11 10:09:48', 457, '2022-10-11 10:09:48', '2022-10-11 10:09:48', '{45e2f375-1d94-4149-a7c1-f376656edb00}', NULL, NULL, NULL, 3, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 50, 'N', 'co', NULL, NULL, 'N', 0, 0),
(22, 'Nhiệm vụ số 1 (tháng 12/2023)', '- thu thập thông tin kahchs hàng', 'Y', '1', '2', 84, NULL, NULL, NULL, 'days', 0, 'N', '2022-01-14 19:00:00', NULL, NULL, 84, '2022-01-12 09:29:57', 84, '2022-01-12 09:29:57', 84, '2022-01-12 09:29:57', NULL, NULL, '2022-01-14 21:18:49', '{b44996c0-c9b3-4bda-949f-ca71a08afc98}', NULL, NULL, NULL, 2, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 51, 'N', 'co', NULL, NULL, 'N', 0, 0),
(23, 'Triển khai đề án Vị trí việc làm', '', 'Y', '1', '3', 196, '2022-02-16 17:12:23', NULL, NULL, 'days', 0, 'N', '2022-03-31 17:00:00', NULL, NULL, 263, '2022-02-16 16:55:12', 263, '2022-02-16 17:12:23', 263, '2022-02-16 17:12:23', NULL, NULL, '2022-03-31 17:00:12', '{f5ee2109-c6cd-4dab-8d2a-276ec71af3d0}', NULL, NULL, NULL, 6, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 52, 'N', 'co', NULL, NULL, 'N', 0, 0),
(24, 'Lập đề nghị in nối tái bản', 'Luật tổ chức tòa án\r\nLuật du lịch\r\nHiến pháp Việt Nam\r\nLuật thuế thu nhập cá nhân\r\n', 'Y', '1', '5', 457, NULL, 14400, NULL, 'hours', 0, 'N', '2022-10-11 15:00:00', '2022-10-11 11:00:00', '2022-10-11 15:00:00', 457, '2022-10-11 10:07:05', 457, '2022-11-02 12:14:26', 457, '2022-11-02 12:14:26', 457, '2022-11-02 12:14:26', '2022-11-02 12:14:27', '{aee800e7-ecd6-48a1-b97b-58cb0a275ae3}', NULL, NULL, NULL, 5, NULL, 'Y', NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'N', 0, NULL, 55, 'N', 'co', NULL, NULL, 'N', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_task_operation`
--

CREATE TABLE `v_task_operation` (
  `TASK_ID` int(18) NOT NULL,
  `OPERATION_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `v_task_operation`
--

INSERT INTO `v_task_operation` (`TASK_ID`, `OPERATION_ID`) VALUES
(2, 2),
(2, 3),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(5, 2),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(8, 19),
(8, 20),
(8, 21),
(9, 19),
(9, 20),
(9, 21),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(9, 26),
(9, 27),
(9, 28),
(9, 29),
(9, 30),
(9, 31),
(9, 32),
(9, 33),
(9, 34),
(10, 19),
(10, 20),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(10, 25),
(10, 26),
(10, 27),
(10, 28),
(10, 29),
(10, 30),
(10, 31),
(10, 32),
(10, 33),
(10, 34),
(10, 35),
(11, 19),
(11, 20),
(11, 21),
(11, 24),
(11, 28),
(13, 36),
(14, 36),
(14, 37),
(15, 36),
(15, 37),
(15, 38),
(16, 36),
(16, 37),
(16, 38),
(16, 39),
(16, 40),
(16, 41),
(17, 36),
(17, 37),
(17, 38),
(17, 39),
(17, 40),
(17, 41),
(17, 42),
(19, 43),
(20, 43),
(20, 44),
(20, 45),
(20, 46),
(21, 43),
(21, 44),
(21, 45),
(21, 46),
(21, 47),
(23, 48),
(24, 48),
(24, 49),
(24, 50),
(24, 51),
(24, 52),
(24, 53),
(24, 150),
(25, 48),
(25, 49),
(25, 53),
(25, 54),
(25, 150),
(26, 48),
(26, 55),
(26, 56),
(26, 57),
(26, 58),
(27, 48),
(27, 49),
(27, 50),
(27, 51),
(27, 52),
(27, 53),
(27, 54),
(27, 55),
(27, 56),
(27, 57),
(27, 58),
(27, 59),
(27, 60),
(27, 150),
(29, 61),
(30, 61),
(30, 62),
(31, 61),
(31, 62),
(31, 63),
(33, 66),
(33, 67),
(33, 68),
(33, 69),
(33, 70),
(33, 71),
(33, 72),
(33, 74),
(33, 75),
(34, 64),
(34, 65),
(34, 66),
(34, 67),
(34, 68),
(34, 69),
(34, 70),
(34, 71),
(34, 72),
(34, 73),
(34, 74),
(34, 75),
(34, 76),
(36, 77),
(37, 77),
(37, 78),
(37, 82),
(38, 77),
(38, 82),
(38, 83),
(38, 84),
(39, 77),
(39, 78),
(39, 79),
(39, 80),
(39, 82),
(39, 83),
(39, 84),
(40, 77),
(40, 78),
(40, 79),
(40, 80),
(40, 81),
(40, 82),
(40, 83),
(40, 84),
(42, 85),
(43, 85),
(43, 86),
(43, 87),
(43, 88),
(45, 89),
(45, 90),
(46, 91),
(47, 89),
(47, 90),
(47, 92),
(48, 89),
(48, 90),
(48, 91),
(48, 92),
(49, 89),
(49, 90),
(49, 91),
(49, 92),
(49, 93),
(49, 94),
(49, 95),
(49, 96),
(50, 89),
(50, 90),
(50, 91),
(50, 92),
(50, 93),
(50, 94),
(50, 95),
(50, 96),
(50, 97),
(50, 98),
(50, 99),
(50, 100),
(51, 89),
(51, 90),
(51, 91),
(51, 92),
(51, 93),
(51, 94),
(51, 95),
(51, 96),
(51, 97),
(51, 98),
(51, 99),
(51, 100),
(51, 101),
(51, 102),
(51, 103),
(51, 104),
(51, 105),
(51, 106),
(53, 107),
(54, 107),
(54, 108),
(54, 109),
(54, 110),
(55, 107),
(55, 111),
(55, 112),
(56, 107),
(56, 113),
(56, 114),
(57, 107),
(57, 111),
(57, 112),
(57, 113),
(57, 114),
(58, 107),
(58, 108),
(58, 109),
(58, 110),
(58, 111),
(58, 112),
(59, 107),
(59, 108),
(59, 109),
(59, 110),
(59, 113),
(59, 114),
(60, 107),
(60, 108),
(60, 109),
(60, 110),
(60, 111),
(60, 112),
(60, 113),
(60, 114),
(61, 107),
(61, 108),
(61, 109),
(61, 110),
(61, 111),
(61, 112),
(61, 113),
(61, 114),
(61, 115),
(63, 116),
(64, 117),
(65, 118),
(65, 119),
(65, 120),
(65, 121),
(65, 122),
(65, 123),
(65, 124),
(65, 125),
(65, 126),
(65, 127),
(65, 128),
(66, 116),
(66, 117),
(66, 118),
(66, 119),
(66, 120),
(66, 121),
(66, 122),
(66, 123),
(66, 124),
(66, 125),
(66, 126),
(66, 127),
(66, 128),
(66, 129),
(66, 130),
(66, 131),
(66, 132),
(66, 133),
(66, 134),
(66, 135),
(66, 136),
(66, 137),
(66, 138),
(66, 139),
(66, 140),
(66, 141),
(67, 142),
(68, 142),
(68, 143),
(68, 144),
(68, 221),
(68, 222),
(69, 142),
(69, 144),
(69, 145),
(69, 221),
(69, 222),
(69, 223),
(69, 224),
(70, 142),
(70, 145),
(70, 146),
(71, 142),
(71, 145),
(71, 146),
(71, 147),
(71, 148),
(71, 221),
(71, 222),
(71, 223),
(71, 224),
(72, 149),
(73, 89),
(73, 90),
(73, 91),
(73, 92),
(73, 93),
(73, 94),
(73, 95),
(73, 96),
(73, 97),
(73, 98),
(73, 99),
(73, 100),
(73, 101),
(73, 102),
(73, 103),
(73, 104),
(73, 105),
(73, 106),
(74, 151),
(75, 151),
(75, 152),
(75, 153),
(75, 154),
(75, 159),
(76, 155),
(77, 151),
(77, 152),
(77, 153),
(77, 154),
(77, 155),
(77, 156),
(77, 157),
(77, 158),
(77, 159),
(77, 204),
(77, 205),
(78, 151),
(78, 159),
(80, 160),
(81, 160),
(81, 161),
(82, 162),
(84, 163),
(84, 164),
(84, 165),
(84, 166),
(84, 167),
(84, 168),
(84, 169),
(84, 170),
(84, 171),
(84, 172),
(91, 176),
(92, 177),
(93, 177),
(93, 178),
(94, 176),
(94, 177),
(94, 178),
(94, 179),
(94, 180),
(94, 181),
(94, 182),
(94, 183),
(94, 184),
(94, 185),
(94, 186),
(94, 187),
(94, 188),
(94, 189),
(94, 190),
(94, 191),
(94, 192),
(95, 176),
(95, 177),
(95, 178),
(95, 179),
(95, 180),
(95, 181),
(95, 182),
(95, 183),
(95, 184),
(95, 185),
(95, 186),
(95, 187),
(95, 188),
(95, 189),
(95, 190),
(95, 191),
(95, 192),
(95, 193),
(95, 194),
(95, 195),
(95, 196),
(95, 197),
(95, 198),
(95, 199),
(95, 200),
(95, 201),
(95, 202),
(95, 203),
(96, 151),
(96, 152),
(96, 154),
(96, 159),
(97, 151),
(97, 152),
(97, 154),
(97, 155),
(97, 156),
(97, 158),
(97, 159),
(99, 206),
(100, 207),
(100, 208),
(101, 209),
(101, 210),
(101, 211),
(102, 209),
(104, 212),
(105, 212),
(110, 214),
(111, 215),
(112, 216),
(113, 217),
(114, 218),
(116, 219),
(117, 220),
(118, 144),
(118, 145),
(118, 221),
(118, 222),
(118, 223),
(118, 224),
(119, 145),
(119, 146),
(120, 142),
(120, 143),
(120, 144),
(120, 221),
(120, 222),
(121, 142),
(121, 145),
(121, 146),
(121, 221),
(121, 223),
(135, 249),
(135, 250),
(135, 251),
(136, 252),
(136, 253),
(137, 249),
(137, 250),
(137, 251),
(137, 254),
(138, 249),
(138, 250),
(138, 252),
(138, 253),
(138, 254),
(139, 249),
(139, 250),
(139, 251),
(139, 252),
(139, 253),
(139, 254),
(139, 255),
(139, 256),
(139, 257),
(139, 258),
(140, 249),
(140, 250),
(140, 251),
(140, 252),
(140, 253),
(140, 254),
(140, 255),
(140, 256),
(140, 257),
(140, 258),
(140, 259),
(140, 260),
(140, 261),
(140, 262),
(141, 249),
(141, 250),
(141, 251),
(141, 252),
(141, 253),
(141, 254),
(141, 255),
(141, 256),
(141, 257),
(141, 258),
(141, 259),
(141, 260),
(141, 261),
(141, 262),
(141, 263),
(141, 264),
(141, 265),
(141, 266),
(141, 267),
(141, 268);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `v_user_access`
--

CREATE TABLE `v_user_access` (
  `USER_ID` int(11) NOT NULL,
  `PROVIDER_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ACCESS_CODE` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `v_user_access`
--

INSERT INTO `v_user_access` (`USER_ID`, `PROVIDER_ID`, `ACCESS_CODE`) VALUES
(7, 'user', 'U7'),
(7, 'group', 'G1'),
(8, 'user', 'U8'),
(1, 'group', 'G1'),
(4, 'group', 'G4'),
(2, 'group', 'G2'),
(3, 'group', 'G3'),
(1, 'user', 'U1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wiselands`
--

CREATE TABLE `wiselands` (
  `ID` int(20) UNSIGNED NOT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `GIA_TIEN` double DEFAULT NULL,
  `PREVIEW_IMG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CUA_HANG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENUM_TESST` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TESST` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wiselands`
--

INSERT INTO `wiselands` (`ID`, `CREATED_DATE`, `MODIFIED_DATE`, `GIA_TIEN`, `PREVIEW_IMG`, `TITLE`, `CUA_HANG`, `ENUM_TESST`, `FILE_TESST`) VALUES
(1, '2023-11-03 06:53:13', '2023-11-03 06:53:13', 53000, 'uploads/sinh-to-box206.4x204.8.jpeg', 'Sinh tố bơ', '16', NULL, NULL),
(2, '2023-11-03 06:53:36', '2023-11-03 06:53:36', 49000, 'uploads/CAN_62190-min-1x206.4x204.8.jpg', 'Cafe Coldbrew Cam Quế', '17', NULL, NULL),
(3, '2024-01-24 05:51:35', '2024-01-24 05:51:35', 77889, '', 'hjkkj', '16', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `_user`
--

CREATE TABLE `_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `_user`
--

INSERT INTO `_user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'ZaFs5YOxPGYhObJsQA6SG2b9LsbGWPG7', '$2y$13$CvkQoaLhrOF/0VSebbhsdOwKl4pSarxnwCs8SJggDFzDWuFwcWi/O', NULL, 'admin@vivi.vn', 10, 1698212185, 1698212185, '-_SxfMATawJodzPJXI65AHNb6vDuImpv_1698212185');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `__vgroups`
--

CREATE TABLE `__vgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `__vgroups`
--

INSERT INTO `__vgroups` (`id`, `name`, `code`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'group1', 'group1', 'rw', 'y', 12, 12),
(2, 'group2', 'group2', 'ew', 'y', 12, 12),
(3, 'group3', 'group3', 'rew', 'y', 12, 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `__vusergroup`
--

CREATE TABLE `__vusergroup` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `groupid` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `b_tasks`
--
ALTER TABLE `b_tasks`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `GUID` (`GUID`),
  ADD KEY `FORUM_TOPIC_ID` (`FORUM_TOPIC_ID`),
  ADD KEY `PARENT_ID` (`PARENT_ID`),
  ADD KEY `CREATED_BY` (`CREATED_BY`),
  ADD KEY `RESPONSIBLE_ID` (`RESPONSIBLE_ID`),
  ADD KEY `CHANGED_BY` (`CHANGED_BY`),
  ADD KEY `b_tasks_deadline_ibuk` (`DEADLINE`,`DEADLINE_COUNTED`),
  ADD KEY `ix_tasks_deadline_g` (`GROUP_ID`),
  ADD KEY `IDX_TASKS_STAGE_ID` (`STAGE_ID`),
  ADD KEY `ix_tasks_minimal_filter` (`DEADLINE`,`STATUS`,`ZOMBIE`,`GROUP_ID`),
  ADD KEY `b_tasks_acd_maxtime` (`ALLOW_CHANGE_DEADLINE_MAXTIME`),
  ADD KEY `b_tasks_acd_maxtime_value` (`ALLOW_CHANGE_DEADLINE_MAXTIME_VALUE`),
  ADD KEY `b_tasks_acd_count` (`ALLOW_CHANGE_DEADLINE_COUNT`),
  ADD KEY `b_tasks_acd_count_value` (`ALLOW_CHANGE_DEADLINE_COUNT_VALUE`);

--
-- Chỉ mục cho bảng `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `display_data_type`
--
ALTER TABLE `display_data_type`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `nhan_su`
--
ALTER TABLE `nhan_su`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `rbn_nxbst_hrm_kynangngoaingu`
--
ALTER TABLE `rbn_nxbst_hrm_kynangngoaingu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `rbn_nxbst_hrm_nguyenquantinhthanh`
--
ALTER TABLE `rbn_nxbst_hrm_nguyenquantinhthanh`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `rbn_nxbst_hrm_nhansu`
--
ALTER TABLE `rbn_nxbst_hrm_nhansu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `setting_data_type`
--
ALTER TABLE `setting_data_type`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- Chỉ mục cho bảng `user_old`
--
ALTER TABLE `user_old`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Chỉ mục cho bảng `vgroups`
--
ALTER TABLE `vgroups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vuser`
--
ALTER TABLE `vuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `vusergroup`
--
ALTER TABLE `vusergroup`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `v_extendblock_action`
--
ALTER TABLE `v_extendblock_action`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_block_type_section`
--
ALTER TABLE `v_extendblock_block_type_section`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_element_rights`
--
ALTER TABLE `v_extendblock_element_rights`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_entity`
--
ALTER TABLE `v_extendblock_entity`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_entity_lang`
--
ALTER TABLE `v_extendblock_entity_lang`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_entity_messages`
--
ALTER TABLE `v_extendblock_entity_messages`
  ADD PRIMARY KEY (`EXTEND_BLOCK_ID`,`MESSAGE_ID`);

--
-- Chỉ mục cho bảng `v_extendblock_entity_rights`
--
ALTER TABLE `v_extendblock_entity_rights`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_entity_widgets`
--
ALTER TABLE `v_extendblock_entity_widgets`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_event_log`
--
ALTER TABLE `v_extendblock_event_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_extendblock_event_log_time` (`TIMESTAMP_X`);

--
-- Chỉ mục cho bảng `v_extendblock_filter`
--
ALTER TABLE `v_extendblock_filter`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_menus`
--
ALTER TABLE `v_extendblock_menus`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_type`
--
ALTER TABLE `v_extendblock_type`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_type_custom_menu`
--
ALTER TABLE `v_extendblock_type_custom_menu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_type_custom_menu_rights`
--
ALTER TABLE `v_extendblock_type_custom_menu_rights`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_type_rights`
--
ALTER TABLE `v_extendblock_type_rights`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_type_sections`
--
ALTER TABLE `v_extendblock_type_sections`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_extendblock_user_field`
--
ALTER TABLE `v_extendblock_user_field`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`);

--
-- Chỉ mục cho bảng `v_extendblock_user_field_confirm`
--
ALTER TABLE `v_extendblock_user_field_confirm`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_v_extendblock_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`);

--
-- Chỉ mục cho bảng `v_extendblock_user_field_enum`
--
ALTER TABLE `v_extendblock_user_field_enum`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`);

--
-- Chỉ mục cho bảng `v_extendblock_user_field_lang`
--
ALTER TABLE `v_extendblock_user_field_lang`
  ADD PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`);

--
-- Chỉ mục cho bảng `v_extendblock_widgets`
--
ALTER TABLE `v_extendblock_widgets`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_operation`
--
ALTER TABLE `v_operation`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `v_task`
--
ALTER TABLE `v_task`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`);

--
-- Chỉ mục cho bảng `v_tasks`
--
ALTER TABLE `v_tasks`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `GUID` (`GUID`),
  ADD KEY `FORUM_TOPIC_ID` (`FORUM_TOPIC_ID`),
  ADD KEY `PARENT_ID` (`PARENT_ID`),
  ADD KEY `CREATED_BY` (`CREATED_BY`),
  ADD KEY `RESPONSIBLE_ID` (`RESPONSIBLE_ID`),
  ADD KEY `CHANGED_BY` (`CHANGED_BY`),
  ADD KEY `b_tasks_deadline_ibuk` (`DEADLINE`,`DEADLINE_COUNTED`),
  ADD KEY `ix_tasks_deadline_g` (`GROUP_ID`),
  ADD KEY `IDX_TASKS_STAGE_ID` (`STAGE_ID`),
  ADD KEY `ix_tasks_minimal_filter` (`DEADLINE`,`STATUS`,`ZOMBIE`,`GROUP_ID`),
  ADD KEY `b_tasks_acd_maxtime` (`ALLOW_CHANGE_DEADLINE_MAXTIME`),
  ADD KEY `b_tasks_acd_maxtime_value` (`ALLOW_CHANGE_DEADLINE_MAXTIME_VALUE`),
  ADD KEY `b_tasks_acd_count` (`ALLOW_CHANGE_DEADLINE_COUNT`),
  ADD KEY `b_tasks_acd_count_value` (`ALLOW_CHANGE_DEADLINE_COUNT_VALUE`);

--
-- Chỉ mục cho bảng `v_task_operation`
--
ALTER TABLE `v_task_operation`
  ADD PRIMARY KEY (`TASK_ID`,`OPERATION_ID`);

--
-- Chỉ mục cho bảng `wiselands`
--
ALTER TABLE `wiselands`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `_user`
--
ALTER TABLE `_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Chỉ mục cho bảng `__vgroups`
--
ALTER TABLE `__vgroups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `__vusergroup`
--
ALTER TABLE `__vusergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `b_tasks`
--
ALTER TABLE `b_tasks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `country`
--
ALTER TABLE `country`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `display_data_type`
--
ALTER TABLE `display_data_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ID` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `ID` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `nhan_su`
--
ALTER TABLE `nhan_su`
  MODIFY `ID` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `rbn_nxbst_hrm_kynangngoaingu`
--
ALTER TABLE `rbn_nxbst_hrm_kynangngoaingu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `rbn_nxbst_hrm_nguyenquantinhthanh`
--
ALTER TABLE `rbn_nxbst_hrm_nguyenquantinhthanh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `rbn_nxbst_hrm_nhansu`
--
ALTER TABLE `rbn_nxbst_hrm_nhansu`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `setting_data_type`
--
ALTER TABLE `setting_data_type`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `ID` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user_old`
--
ALTER TABLE `user_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `vgroups`
--
ALTER TABLE `vgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vuser`
--
ALTER TABLE `vuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vusergroup`
--
ALTER TABLE `vusergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_action`
--
ALTER TABLE `v_extendblock_action`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_block_type_section`
--
ALTER TABLE `v_extendblock_block_type_section`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_element_rights`
--
ALTER TABLE `v_extendblock_element_rights`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_entity`
--
ALTER TABLE `v_extendblock_entity`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_entity_lang`
--
ALTER TABLE `v_extendblock_entity_lang`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_entity_rights`
--
ALTER TABLE `v_extendblock_entity_rights`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_entity_widgets`
--
ALTER TABLE `v_extendblock_entity_widgets`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_event_log`
--
ALTER TABLE `v_extendblock_event_log`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_filter`
--
ALTER TABLE `v_extendblock_filter`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_menus`
--
ALTER TABLE `v_extendblock_menus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_type`
--
ALTER TABLE `v_extendblock_type`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_type_custom_menu`
--
ALTER TABLE `v_extendblock_type_custom_menu`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_type_custom_menu_rights`
--
ALTER TABLE `v_extendblock_type_custom_menu_rights`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_type_rights`
--
ALTER TABLE `v_extendblock_type_rights`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_type_sections`
--
ALTER TABLE `v_extendblock_type_sections`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_user_field`
--
ALTER TABLE `v_extendblock_user_field`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_user_field_confirm`
--
ALTER TABLE `v_extendblock_user_field_confirm`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_user_field_enum`
--
ALTER TABLE `v_extendblock_user_field_enum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `v_extendblock_widgets`
--
ALTER TABLE `v_extendblock_widgets`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `v_operation`
--
ALTER TABLE `v_operation`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT cho bảng `v_task`
--
ALTER TABLE `v_task`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT cho bảng `v_tasks`
--
ALTER TABLE `v_tasks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `wiselands`
--
ALTER TABLE `wiselands`
  MODIFY `ID` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `_user`
--
ALTER TABLE `_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `__vgroups`
--
ALTER TABLE `__vgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `__vusergroup`
--
ALTER TABLE `__vusergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
