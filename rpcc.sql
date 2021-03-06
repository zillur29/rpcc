-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2020 at 07:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpcc`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_head`
--

CREATE TABLE `acc_head` (
  `id` int(4) NOT NULL,
  `activity_id` int(4) DEFAULT NULL,
  `acc_code` varchar(8) DEFAULT NULL,
  `acc_head` varchar(269) DEFAULT NULL,
  `unit` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc_head`
--

INSERT INTO `acc_head` (`id`, `activity_id`, `acc_code`, `acc_head`, `unit`) VALUES
(1, 1, '1.1.1', 'Training and Material cost on Case Management and Referral Pathway (8 Supervisor+30 New Social Workers)  (detailed annex)', 'NOS'),
(2, 1, '1.1.2', 'Training and Material cost on National  Case Management tools  ( 92  Social Workers +8 Supervisor ) (detailed annex)', 'Nos.'),
(3, 1, '1.1.3', 'Travel and referral cost for identify unaccompanied & separated children, OVC and case management Existing)', 'Nos.'),
(4, 1, '1.1.4', 'Travel and referral cost for identify unaccompanied & separated children, OVC and case management (New)', 'sai'),
(5, 1, '1.1.5', 'Emergency response/referral support for children at risk with emergency response services 34 camps and 9 union at host community (as per need)', 'Nos.'),
(6, 1, '1.1.6', 'Salary (15 month+2 Month as Festival bonus) of Senior Program Manager (Child Protection) (New post)', 'Person-month'),
(7, 1, '1.1.7', 'Salary (15 month+2 Month as Festival bonus) of Case Management Expert (New post)', 'Person-month'),
(8, 1, '1.1.8', 'Salary (15month+2 Month as Festival bonus) of Case Supervisor  for Case Management (New post))', 'Person-month'),
(9, 1, '1.1.9', 'Salary (15 month+2 Month as Festival bonus) of Social  Workers (New post)', 'Person-month'),
(10, 1, '1.1.10', 'Salary (18 month+3 Month as Festival bonus) of Social  Workers (Existing post)', 'Person-month'),
(11, 1, '1.1.11', 'Logistics   for SWs workers  (ex: note book pen ,  backpacks,  T-shirt, raincoat, Umbrella, Clip Folder, Stapler, Stamp Pad, Snicker)', 'Person-month'),
(12, 1, '1.1.12', 'Print of the Case Management forms 6500  (child protection subsector case management task force form+ National Case Management tools ) + Cash Assisstance Forms 15000 (21500 pcs@30 )', 'no.'),
(13, 1, '1.1.13', 'File for Case Management', 'No.'),
(14, 1, '1.1.14', 'ID card for New recruited workers', 'no.'),
(15, 1, '1.1.15', 'Forthnightly meeting (per month 2 meeting * 18 month=36 meeting ) (cost for per person @500 *106Person) ', 'No. of Meeting'),
(16, 2, '1.2.1', 'Meeting on Cash Assistance SoP in between UNICEF and DSS', 'No. of Meeting'),
(17, 2, '1.2.2', 'Orientation on Cash Assistance programme tools for the social worker (8 Supervisor and 29 New Social Workers) ', 'no.'),
(18, 2, '1.2.3', 'Meeting with Stakeholders ( UNOs, UP Chair, UP Members ,  USSO,  Union SWs , Community representative    in  5 Union of Teknaf and Ukhoya Upz in host community ( Quarterly 1) on Cash Assisstance', 'no.'),
(19, 2, '1.2.4', 'Coordination Meeting with Case Management stakeholders in camp (32 camps and 9 host coumunity Quarterly 3 meeting )  ', 'no.'),
(20, 2, '1.2.5', 'Orientation of care givers/parents fostering UASC, Orphan, CHH,  caregivers / parents with cronoc illness ,  caregivers / parents of CWD on child care/protection ( Camp 5462 and Host 2941 )', 'no.'),
(21, 2, '1.2.6', 'Salary (15 month+2 Month as Festival bonus) of  Training Officer ( new post )', 'Person-month'),
(22, 2, '1.2.7', 'Salary (15 month+2 Month as Festival bonus) of Cash Expert ( new post )', 'Person-month'),
(23, 2, '1.2.8', 'Distribution of cash grant ( Note: 14,946 children i)  4,491 benefitting from Cash ; ii)  new children 10,455 for cash assisstance ;  ) Note:  11,658 care givers recepeintof cash assisstance i)  3255  caregivers recipient of cash insttament  ;ii) 8403 new care givers )', 'no.'),
(24, 2, '1.2.9', 'Cost for facilitating the distribution of cash grants  (2% service charge for bank)', ''),
(25, 2, '1.2.10', 'Meeting to review and respond to feedback received from Help Desk on  cash distribution  by cash recipient and PDM findings and reccomendations (meeting between DSS and UNICEF) ', 'no.'),
(26, 2, '1.2.11', 'Refreshment and distribution programme arrangement cost ( 32 camps and 9 host comunity )', ''),
(27, 3, '1.3.1', 'Training on  CPIMS+ (8 Supervisor+26 Old and 29 New Social Workers) ', 'Nos.'),
(28, 3, '1.3.2', 'Salary (15 month+2 Month as Festival bonus) of Manager (Monitoring and Evaluation)(New post)', 'Person-month'),
(29, 3, '1.3.3', 'Salary (15 month+2 Month as Festival bonus) of Monitoring and Documentation Officer(New post)', 'Person-month'),
(30, 3, '1.3.4', 'Salary (15 month+2 Month as Festival bonus) of MIS and IT Officer(New post)', 'Person-month'),
(31, 3, '1.3.5', 'Salary (18 month+3 Month as Festival bonus) of Data Entry Assistant (existing post)', 'Person-month'),
(32, 3, '1.3.6', 'Salary (15 month+2 Month as Festival bonus) of Data Entry Assistant (New post)', 'Person-month'),
(33, 3, '1.3.7', 'Printer/cctv for programme office', 'no.'),
(34, 4, '2.1.1', 'Formation of community-based child protection committees and material cost ( 3 in camps and 45 in host community)  ', 'no.'),
(35, 4, '2.1.2', ' Capacity building of  community-based child protection committees  on child rights and their roles and responsibilities- child protection  ( new 48  CBCPC, 3 in camps and 45 in host community) ', 'no.'),
(36, 4, '2.1.3', 'CBCP meetings  ( in Camp -3 in camps and 45 in host comunity) )', 'no.'),
(37, 4, '2.1.4', 'Material  cost for the formation meeting of the Parents and Caregivers groups (Lump sum cost for per meeting), 4 groups in 1 camps and Union ( 32*4 = 136 groups in camps and 5*4=20 groups in host comunity) ', 'no.'),
(38, 4, '2.1.5', 'Orientation and awareness among parents and care givers groups, religious leaders, women, and other key community leaders with improved knowledge on delivering child protection messages,   child & adolescent protection needs and GBV response as well as prevention.', 'no.'),
(39, 4, '2.1.6', 'Salary (15 month+2 Month as Festival bonus) of Finance and Admin Manager(New post)', 'Person-month'),
(40, 4, '2.1.7', 'Salary (18 month+3 Month as Festival bonus) of Accounts Officer(Existing post)', 'Person-month'),
(41, 4, '2.1.8', 'Salary (15 month+2 Month as Festival bonus) of Accounts Assistant (New post)', 'Person-month'),
(42, 4, '2.1.9', 'Salary (15 month+2 Month as Festival bonus) of Admin Officer (New post)', 'Person-month'),
(43, 4, '2.1.10', 'Salary (15 month+2 Month as Festival bonus) of Office  Assistant (existing post)', 'Person-month'),
(44, 4, '2.1.11', 'Salary (15 month+2 Month as Festival bonus) of Store Keeper(New post)', 'Person-month'),
(45, 4, '2.1.12', 'Salary (15 month+2 Month as Festival bonus) of  Messenger(existing post)', 'Person-month'),
(46, 4, '2.1.13', 'Salary (15 month+2 Month as Festival bonus) of Cleaner for Office (New post)', 'Person-month'),
(47, 4, '2.1.14', 'Salary (15 month + 2 Month as Festival bonus) of Guard for Office (New post)', 'Person-month'),
(48, 4, '2.1.15', 'Salary (18 month+3 Month as Festival bonus) of Cleaner-1  and  Guard -1 for Office  (Existing post)', 'Person-month'),
(49, 4, '2.1.16', 'Recruitment Cost of  new  staff ( detailed annex)', 'lump sum'),
(50, 4, '2.1.17', 'Mobile  & Internet Bill for 53 existing 18 months & 49 new project\'s staffs  15 months (Annex -Staff salary sheet)', 'Person-month'),
(51, 4, '2.1.18', 'Furniture (Detailed enclosed)', 'Lump sum'),
(52, 4, '2.1.19', 'Digital SLR Camera for capturing programmatic events and activities', 'Nos.'),
(53, 4, '2.1.20', 'Communication and Visibility Materials Staff ( poster,leaflet, brochure, etc) (detaild annex)', 'Nos.'),
(54, 4, '2.1.21', 'Fire Extinguisher ', 'Nos.'),
(55, 4, '2.1.22', 'Making  signboard with stand for visibility of Child Protection programme).', 'Nos.'),
(56, 5, '3.1.1', 'Training and Material cost on Child Protection in Emergency  to staff  ', 'no. '),
(57, 5, '3.1.2', 'Training  for Program staff on Protection from Sexual Exploitation and Abuse (PSEA)  respond on SEA situation (detailed annex)', 'no'),
(58, 5, '3.1.3', 'Training  for Program staff on child safe-guarding policies to prevent (detailed annex)', 'no'),
(59, 5, '3.1.4', 'Training  for Program staff on child rights , child protection Policy and code of Conduct (detailed annex)', 'no'),
(60, 6, '4.1.1', 'Case Management support and referral service cost for vulnerable children and adolescent during emergency ', 'Lump sum'),
(61, 7, '5.1.1', 'Office Rent ', 'Monthly'),
(62, 7, '5.1.2', 'Utilities & Maintenance', 'Monthly'),
(63, 7, '5.1.3', 'Mobile & internet bill for Coordinator and focal persons ( 10 project staff )', 'Person-month'),
(64, 7, '5.1.4', 'Stationary/ consumable supplies (Lumsum)', 'Monthly'),
(65, 7, '5.1.5', 'Internet facilities, laptop maintenance/repair for project office', 'monthly'),
(66, 8, '5.2.1', 'Staff travelling  & transport cost for monitoring and quality assurance (Annex -Staff salary sheet)', 'Person-month'),
(67, 8, '5.2.2', 'Travelling and Transportation-HO (6trips@2 personnel, and 36 trips@1 persons per month )', 'Nos'),
(68, 8, '5.2.3', 'Travelling and Transportation-( Air fare for Ministry and DSS and related monitoring team such as DG 4 times, Minister 4 times, Secretary 4 times, Additional Secretary 2 times, Joint Secretary, 2 times, Deputy Secretary/DPD or others 4 times Estimated)', 'no.'),
(69, 8, '5.2.4', 'Daily Allowances Minister, State Minister, Secretary, DG DSS and other High Officials above Joint Secretary or Equivalent , Alternative Focal point(Estimated 6 types officials 20 times 40 man day Details in Annex)', 'No. DSA'),
(70, 8, '5.2.5', 'Daily Allowances (DA)  Focal Persons,  Coordinator and other designated Officer for this program (Estimated 3 types officials 80 times man day Details in Annex)', 'No. DSA'),
(71, 8, '5.2.6', 'Renting transportation for monitoring and supervision and for other office use ', 'Month'),
(72, 8, '5.2.7', 'Local Conveyance for Project Office based staff', 'Month'),
(73, 8, '5.2.8', 'Office Maintenance (refreshment, bank charge, and other petty expenses)', 'no.'),
(74, 2, '1.1.1', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(4) NOT NULL,
  `output_id` int(1) DEFAULT NULL,
  `activity_code` varchar(8) DEFAULT NULL,
  `activity_name` varchar(164) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `output_id`, `activity_code`, `activity_name`) VALUES
(1, 1, '1.1', 'Identify unaccompanied, separated, other vulnerable children, adolescent and case management & referral activities'),
(2, 1, '1.2', 'Cash assistance to care givers/parents fostering UASC, Orphan, CHH,  caregivers / parents with cronoc illness ,  caregivers / parents of CWD '),
(3, 1, '1.3', 'Information Management System'),
(4, 2, '2.1', 'Formation of Community based Child Protection committee (CBCPC) and community awareness on CP including Case Management and DRR.'),
(5, 3, '3.1', 'Training and Capacity building '),
(6, 4, '4.1', 'In  case of emergency due to natural disaster (heavy rains, cyclone etc.) the  risk of family separation is reduced and separated children receive appropriate care.'),
(7, 5, '5.1', 'Operational costs for the programme (office space, office supplies, maintenance)'),
(8, 5, '5.2', 'Planning , Monitoring and Communication  of the programme (DSA and Travel Cost for MOSW -DSS HQ Officials )');

-- --------------------------------------------------------

--
-- Table structure for table `budget_details`
--

CREATE TABLE `budget_details` (
  `id` int(8) NOT NULL,
  `acc_id` int(4) NOT NULL,
  `acc_code` varchar(6) DEFAULT NULL,
  `budget_id` int(4) DEFAULT NULL,
  `qty` int(8) DEFAULT NULL,
  `no_of_month` int(2) DEFAULT NULL,
  `unit_cost` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `budget_details`
--

INSERT INTO `budget_details` (`id`, `acc_id`, `acc_code`, `budget_id`, `qty`, `no_of_month`, `unit_cost`) VALUES
(439, 1, '1.1.1', 14, 50, 20, 100),
(440, 2, '1.1.2', 14, 500, 100, 100),
(441, 3, '1.1.3', 14, 100, 100, 120),
(442, 4, '1.1.4', 14, 12, 15, 150),
(443, 5, '1.1.5', 14, 0, 0, 0),
(444, 6, '1.1.6', 14, 0, 0, 0),
(445, 7, '1.1.7', 14, 0, 0, 0),
(446, 8, '1.1.8', 14, 0, 0, 0),
(447, 9, '1.1.9', 14, 0, 0, 0),
(448, 10, '1.1.10', 14, 0, 0, 0),
(449, 11, '1.1.11', 14, 0, 0, 0),
(450, 12, '1.1.12', 14, 0, 0, 0),
(451, 13, '1.1.13', 14, 0, 0, 0),
(452, 14, '1.1.14', 14, 0, 0, 0),
(453, 15, '1.1.15', 14, 0, 0, 0),
(454, 16, '1.2.1', 14, 0, 0, 0),
(455, 17, '1.2.2', 14, 0, 0, 0),
(456, 18, '1.2.3', 14, 0, 0, 0),
(457, 19, '1.2.4', 14, 0, 0, 0),
(458, 20, '1.2.5', 14, 0, 0, 0),
(459, 21, '1.2.6', 14, 0, 0, 0),
(460, 22, '1.2.7', 14, 0, 0, 0),
(461, 23, '1.2.8', 14, 0, 0, 0),
(462, 24, '1.2.9', 14, 0, 0, 0),
(463, 25, '1.2.10', 14, 0, 0, 0),
(464, 26, '1.2.11', 14, 0, 0, 0),
(465, 27, '1.3.1', 14, 0, 0, 0),
(466, 28, '1.3.2', 14, 0, 0, 0),
(467, 29, '1.3.3', 14, 0, 0, 0),
(468, 30, '1.3.4', 14, 0, 0, 0),
(469, 31, '1.3.5', 14, 0, 0, 0),
(470, 32, '1.3.6', 14, 0, 0, 0),
(471, 33, '1.3.7', 14, 0, 0, 0),
(472, 34, '2.1.1', 14, 0, 0, 0),
(473, 35, '2.1.2', 14, 10, 20, 20000),
(474, 36, '2.1.3', 14, 0, 0, 0),
(475, 37, '2.1.4', 14, 0, 0, 0),
(476, 38, '2.1.5', 14, 0, 0, 0),
(477, 39, '2.1.6', 14, 0, 0, 0),
(478, 40, '2.1.7', 14, 0, 0, 0),
(479, 41, '2.1.8', 14, 0, 0, 0),
(480, 42, '2.1.9', 14, 0, 0, 0),
(481, 43, '2.1.10', 14, 0, 0, 0),
(482, 44, '2.1.11', 14, 0, 0, 0),
(483, 45, '2.1.12', 14, 0, 0, 0),
(484, 46, '2.1.13', 14, 0, 0, 0),
(485, 47, '2.1.14', 14, 0, 0, 0),
(486, 48, '2.1.15', 14, 0, 0, 0),
(487, 49, '2.1.16', 14, 0, 0, 0),
(488, 50, '2.1.17', 14, 0, 0, 0),
(489, 51, '2.1.18', 14, 0, 0, 0),
(490, 52, '2.1.19', 14, 0, 0, 0),
(491, 53, '2.1.20', 14, 0, 0, 0),
(492, 54, '2.1.21', 14, 0, 0, 0),
(493, 55, '2.1.22', 14, 0, 0, 0),
(494, 56, '3.1.1', 14, 0, 0, 0),
(495, 57, '3.1.2', 14, 0, 0, 0),
(496, 58, '3.1.3', 14, 0, 0, 0),
(497, 59, '3.1.4', 14, 0, 0, 0),
(498, 60, '4.1.1', 14, 0, 0, 0),
(499, 61, '5.1.1', 14, 0, 0, 0),
(500, 62, '5.1.2', 14, 0, 0, 0),
(501, 63, '5.1.3', 14, 0, 0, 0),
(502, 64, '5.1.4', 14, 0, 0, 0),
(503, 65, '5.1.5', 14, 0, 0, 0),
(504, 66, '5.2.1', 14, 0, 0, 0),
(505, 67, '5.2.2', 14, 0, 0, 0),
(506, 68, '5.2.3', 14, 0, 0, 0),
(507, 69, '5.2.4', 14, 0, 0, 0),
(508, 70, '5.2.5', 14, 0, 0, 0),
(509, 71, '5.2.6', 14, 0, 0, 0),
(510, 72, '5.2.7', 14, 0, 0, 0),
(511, 73, '5.2.8', 14, 2, 2, 2000),
(512, 74, '1.1.1', 14, 0, 0, 0),
(587, 1, '1.1.1', 12, 2, 2, 90500),
(588, 2, '1.1.2', 12, 1, 1, 560900),
(589, 3, '1.1.3', 12, 50, 18, 500),
(590, 4, '1.1.4', 12, 30, 15, 500),
(591, 5, '1.1.5', 12, 25, 18, 500),
(592, 6, '1.1.6', 12, 1, 17, 90000),
(593, 7, '1.1.7', 12, 1, 17, 70000),
(594, 8, '1.1.8', 12, 8, 17, 45000),
(595, 9, '1.1.9', 12, 30, 17, 35000),
(596, 10, '1.1.10', 12, 50, 21, 35000),
(597, 11, '1.1.11', 12, 111, 1, 7520),
(598, 12, '1.1.12', 12, 21500, 1, 30),
(599, 13, '1.1.13', 12, 15000, 1, 15),
(600, 14, '1.1.14', 12, 54, 1, 300),
(601, 15, '1.1.15', 12, 2, 15, 55500),
(602, 16, '1.2.1', 12, 2, 1, 10000),
(603, 17, '1.2.2', 12, 1, 1, 33500),
(604, 18, '1.2.3', 12, 30, 1, 5000),
(605, 19, '1.2.4', 12, 41, 6, 5000),
(606, 20, '1.2.5', 12, 8403, 1, 50),
(607, 21, '1.2.6', 12, 1, 17, 50000),
(608, 22, '1.2.7', 12, 1, 17, 70000),
(609, 23, '1.2.8', 12, 9327, 18, 2000),
(610, 24, '1.2.9', 12, 10, 10, 10),
(611, 25, '1.2.10', 12, 1, 3, 5000),
(612, 26, '1.2.11', 12, 41, 18, 3000),
(613, 27, '1.3.1', 12, 1, 1, 135200),
(614, 28, '1.3.2', 12, 1, 17, 70000),
(615, 29, '1.3.3', 12, 1, 17, 50000),
(616, 30, '1.3.4', 12, 1, 17, 50000),
(617, 31, '1.3.5', 12, 2, 21, 35000),
(618, 32, '1.3.6', 12, 1, 17, 35000),
(619, 33, '1.3.7', 12, 1, 1, 123850),
(620, 34, '2.1.1', 12, 48, 1, 6000),
(621, 35, '2.1.2', 12, 48, 1, 10000),
(622, 36, '2.1.3', 12, 48, 18, 3000),
(623, 37, '2.1.4', 12, 158, 1, 2500),
(624, 38, '2.1.5', 12, 158, 1, 5000),
(625, 39, '2.1.6', 12, 1, 17, 70000),
(626, 40, '2.1.7', 12, 1, 21, 50000),
(627, 41, '2.1.8', 12, 1, 17, 40000),
(628, 42, '2.1.9', 12, 1, 17, 45000),
(629, 43, '2.1.10', 12, 1, 21, 25000),
(630, 44, '2.1.11', 12, 1, 17, 27000),
(631, 45, '2.1.12', 12, 1, 21, 17000),
(632, 46, '2.1.13', 12, 1, 17, 14450),
(633, 47, '2.1.14', 12, 1, 17, 14450),
(634, 48, '2.1.15', 12, 2, 21, 14450),
(635, 49, '2.1.16', 12, 1, 1, 600000),
(636, 50, '2.1.17', 12, 102, 0, 0),
(637, 51, '2.1.18', 12, 0, 0, 0),
(638, 52, '2.1.19', 12, 1, 1, 400000),
(639, 53, '2.1.20', 12, 0, 0, 0),
(640, 54, '2.1.21', 12, 4, 1, 3000),
(641, 55, '2.1.22', 12, 1, 1, 30000),
(642, 56, '3.1.1', 12, 4, 1, 25000),
(643, 57, '3.1.2', 12, 2, 1, 25000),
(644, 58, '3.1.3', 12, 2, 1, 25000),
(645, 59, '3.1.4', 12, 4, 1, 40000),
(646, 60, '4.1.1', 12, 300, 2, 2500),
(647, 61, '5.1.1', 12, 1, 18, 90000),
(648, 62, '5.1.2', 12, 1, 18, 20000),
(649, 63, '5.1.3', 12, 5, 18, 2000),
(650, 64, '5.1.4', 12, 1, 18, 120000),
(651, 65, '5.1.5', 12, 1, 18, 10000),
(652, 66, '5.2.1', 12, 109, 0, 0),
(653, 67, '5.2.2', 12, 48, 0, 10000),
(654, 68, '5.2.3', 12, 24, 1, 12000),
(655, 69, '5.2.4', 12, 472, 1, 3000),
(656, 70, '5.2.5', 12, 80, 1, 1500),
(657, 71, '5.2.6', 12, 1, 18, 180000),
(658, 72, '5.2.7', 12, 1, 18, 5000),
(659, 73, '5.2.8', 12, 1, 18, 10000),
(660, 74, '1.1.1', 12, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `budget_master`
--

CREATE TABLE `budget_master` (
  `budget_id` int(11) NOT NULL,
  `budget_desc` varchar(256) NOT NULL,
  `start_month` date NOT NULL,
  `end_month` date NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT 'Status=0 active budget'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget_master`
--

INSERT INTO `budget_master` (`budget_id`, `budget_desc`, `start_month`, `end_month`, `status`) VALUES
(12, 'RCPP Budget Proposal for 2020-21', '2020-07-01', '2021-06-30', 0),
(14, 'RPCC Budget', '2020-07-01', '2021-06-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `camp_info`
--

CREATE TABLE `camp_info` (
  `id` int(2) NOT NULL,
  `camp_id` varchar(6) DEFAULT NULL,
  `upailla` varchar(16) DEFAULT NULL,
  `carea` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `camp_info`
--

INSERT INTO `camp_info` (`id`, `camp_id`, `upailla`, `carea`) VALUES
(1, '1 E', 'Ukhia', 'Kutupalang'),
(2, '1 W', 'Ukhia', 'Kutupalang'),
(3, '2 E', 'Ukhia', 'Kutupalang'),
(4, '2 W', 'Ukhia', 'Kutupalang'),
(5, '3', 'Ukhia', 'Kutupalang'),
(6, '4', 'Ukhia', 'Kutupalang'),
(7, '4 Ext', 'Ukhia', 'Kutupalang'),
(8, '5', 'Ukhia', 'Kutupalang'),
(9, '6', 'Ukhia', 'Ghumdhum'),
(10, '7', 'Ukhia', 'Ghumdhum'),
(11, '8E', 'Ukhia', 'Balukhali'),
(12, '8W', 'Ukhia', 'Balukhali'),
(13, '9', 'Ukhia', 'Balukhali'),
(14, '10', 'Ukhia', 'Balukhali'),
(15, '11', 'Ukhia', 'Balukhali'),
(16, '12', 'Ukhia', 'Balukhali'),
(17, '13', 'Ukhia', 'Thankhali'),
(18, '14', 'Ukhia', 'Hakimpara'),
(19, '15', 'Ukhia', 'Jamtola'),
(20, '16', 'Ukhia', 'Moynarghona'),
(21, '17', 'Ukhia', 'Balukhali'),
(22, '18', 'Ukhia', 'Balukhali'),
(23, '19', 'Ukhia', 'Thankhali'),
(24, '20', 'Ukhia', 'Balukhali'),
(25, '20 Ext', 'Ukhia', 'Balukhali'),
(26, '21', 'Teknaf', 'Chakmarkul'),
(27, '22', 'Teknaf', 'Unchiprang'),
(28, '23', 'Teknaf', 'Shamlapur'),
(29, '24', 'Teknaf', 'Leda'),
(30, '25', 'Teknaf', 'Alikhali'),
(31, '26', 'Teknaf', 'Noyapara'),
(32, '27', 'Teknaf', 'Jadimura');

-- --------------------------------------------------------

--
-- Table structure for table `cg_details`
--

CREATE TABLE `cg_details` (
  `id` int(4) NOT NULL,
  `cg_id` int(4) NOT NULL,
  `camp_id` int(11) NOT NULL,
  `no_of_child` int(11) NOT NULL,
  `no_of_care` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cg_details`
--

INSERT INTO `cg_details` (`id`, `cg_id`, `camp_id`, `no_of_child`, `no_of_care`, `amount`) VALUES
(1, 1, 1, 22, 16, 0),
(2, 1, 1, 36, 26, 0),
(3, 1, 3, 24, 20, 0),
(4, 1, 6, 8, 7, 0),
(5, 1, 7, 23, 15, 0),
(6, 1, 9, 9, 8, 0),
(7, 1, 13, 31, 29, 0),
(8, 1, 14, 16, 14, 0),
(9, 1, 15, 34, 28, 0),
(10, 1, 16, 12, 5, 0),
(11, 1, 17, 23, 18, 0),
(12, 1, 18, 15, 10, 0),
(13, 1, 19, 26, 25, 0),
(14, 1, 20, 11, 9, 0),
(15, 1, 21, 4, 3, 0),
(16, 1, 22, 9, 7, 0),
(17, 1, 24, 7, 5, 0),
(18, 1, 25, 7, 5, 0),
(19, 1, 26, 43, 33, 0),
(20, 1, 27, 13, 8, 0),
(21, 3, 32, 11, 10, 20000),
(22, 3, 30, 15, 14, 28000),
(23, 4, 32, 10, 10, 20000),
(24, 4, 31, 10, 2, 4000),
(25, 4, 28, 10, 4, 8000),
(29, 6, 32, 11, 10, 20000),
(30, 6, 31, 11, 10, 20000),
(120, 8, 32, 10, 10, 20000),
(121, 8, 30, 10, 10, 20000),
(122, 8, 26, 10, 10, 20000),
(123, 7, 32, 11, 10, 20000),
(124, 7, 31, 12, 10, 20000),
(125, 7, 27, 10, 10, 20000),
(130, 5, 31, 11, 10, 20000),
(131, 5, 32, 11, 10, 20000),
(132, 5, 28, 11, 10, 20000),
(133, 5, 30, 10, 10, 20000),
(134, 5, 13, 10, 10, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `cg_master`
--

CREATE TABLE `cg_master` (
  `id` int(4) NOT NULL,
  `month_name` varchar(250) NOT NULL,
  `cg_desc` varchar(250) NOT NULL,
  `total_amout` float NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cg_master`
--

INSERT INTO `cg_master` (`id`, `month_name`, `cg_desc`, `total_amout`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '2020-04-01', 'test data', 0, 1, '2020-08-10 12:33:03', '0000-00-00 00:00:00', 1, NULL),
(3, 'August', 'test', 48000, 1, '2020-08-11 16:14:22', '0000-00-00 00:00:00', 1, NULL),
(4, 'August', 'For the mon', 32000, 1, '2020-08-11 17:04:52', '0000-00-00 00:00:00', 1, NULL),
(5, 'August', 'For the mon', 100000, 1, '2020-08-11 17:07:14', '0000-00-00 00:00:00', 1, 1),
(6, 'August', 'For the month of August', 40000, 1, '2020-08-11 17:15:04', '0000-00-00 00:00:00', 1, NULL),
(7, 'August', 'Test data for August', 60000, 1, '2020-08-11 17:24:05', '0000-00-00 00:00:00', 1, 1),
(8, 'July', 'test cash allowance', 60000, 1, '2020-08-11 19:06:39', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'RPCC', '13', '10', '19 Monipuripara, Farmgate, Tejgoan, Dhaka-1215.', '01750975175', 'Bangladesh', 'Sample message<br>', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:15:\"createCashgrant\";i:9;s:15:\"updateCashgrant\";i:10;s:13:\"viewCashgrant\";i:11;s:15:\"deleteCashgrant\";i:12;s:12:\"createBudget\";i:13;s:12:\"updateBudget\";i:14;s:10:\"viewBudget\";i:15;s:12:\"deleteBudget\";i:16;s:16:\"createOfficeFund\";i:17;s:16:\"updateOfficeFund\";i:18;s:14:\"viewOfficeFund\";i:19;s:16:\"deleteOfficeFund\";i:20;s:16:\"createUnicefFund\";i:21;s:16:\"updateUnicefFund\";i:22;s:14:\"viewUnicefFund\";i:23;s:16:\"deleteUnicefFund\";i:24;s:17:\"createAccountHead\";i:25;s:17:\"updateAccountHead\";i:26;s:15:\"viewAccountHead\";i:27;s:17:\"deleteAccountHead\";i:28;s:12:\"createOutput\";i:29;s:12:\"updateOutput\";i:30;s:10:\"viewOutput\";i:31;s:12:\"deleteOutput\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(4, 'Owners', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}');

-- --------------------------------------------------------

--
-- Table structure for table `of_details`
--

CREATE TABLE `of_details` (
  `id` int(4) NOT NULL,
  `of_id` int(4) NOT NULL,
  `acc_h_id` int(11) NOT NULL,
  `bill_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `of_details`
--

INSERT INTO `of_details` (`id`, `of_id`, `acc_h_id`, `bill_no`, `qty`, `amount`) VALUES
(649, 1, 1, '3636', 10, 905000),
(650, 1, 2, '22', 10, 5609000),
(651, 1, 3, '2222', 14, 7000),
(652, 1, 4, '5000', 500, 250000),
(653, 1, 5, '2323', 3, 1000),
(654, 1, 6, '8', 7, 0),
(655, 1, 7, '23', 15, 0),
(656, 1, 9, '9', 8, 0),
(657, 1, 13, '31', 29, 0),
(658, 1, 14, '16', 14, 0),
(659, 1, 15, '34', 28, 0),
(660, 1, 16, '12', 5, 0),
(661, 1, 17, '23', 18, 0),
(662, 1, 18, '15', 10, 0),
(663, 1, 19, '26', 25, 0),
(664, 1, 20, '11', 9, 0),
(665, 1, 21, '4', 3, 0),
(666, 1, 22, '9', 7, 0),
(667, 1, 24, '7', 5, 0),
(668, 1, 25, '7', 5, 0),
(669, 1, 26, '43', 33, 0),
(670, 1, 27, '13', 8, 0),
(671, 1, 29, '0', 10, 500000),
(672, 1, 39, '0', 2, 140000),
(673, 1, 70, '4444', 44, 66000),
(674, 1, 71, '0', 4, 720000),
(675, 1, 72, '0', 2, 10000),
(676, 1, 73, '0', 2, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `of_master`
--

CREATE TABLE `of_master` (
  `id` int(4) NOT NULL,
  `month_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `of_desc` varchar(250) CHARACTER SET utf8 NOT NULL,
  `total_amout` float NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `of_master`
--

INSERT INTO `of_master` (`id`, `month_name`, `of_desc`, `total_amout`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'February,2020', 'রোহিঙ্গা শিশু সুরক্ষা কার্যক্রমের আওতায় বরাদ্দকৃত অর্থ ছাড় করা প্রসংগে।', 8228000, 1, '2020-08-21 23:29:29', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `output`
--

CREATE TABLE `output` (
  `id` int(4) NOT NULL,
  `output_name` varchar(216) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `output`
--

INSERT INTO `output` (`id`, `output_name`) VALUES
(2, ' Strengthen Capacity of Community based Child Protection mechanism through engaging parents, community leaders  and religious leaders  and other community members '),
(4, 'In case of emergency due to natural disaster (heavy rains, cyclone etc.) risk of family separation is reduced and separated children receive appropriate care and facilities are renovated (Emergency Contingency Plan).'),
(1, 'Number of children and adolescent boys and girls supported with trained case worker.'),
(5, 'Programme management '),
(3, 'Programme staff enhanced capacity of program to ensure quality and standard programme delivery for the children , adolescents and community.'),
(6, 'Saidul Islam Sheik');

-- --------------------------------------------------------

--
-- Table structure for table `uncef_fund_details`
--

CREATE TABLE `uncef_fund_details` (
  `id` int(8) NOT NULL,
  `acc_id` int(4) NOT NULL,
  `acc_code` varchar(6) DEFAULT NULL,
  `unicef_fund_id` int(4) DEFAULT NULL,
  `qty` int(8) DEFAULT NULL,
  `no_of_month` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uncef_fund_details`
--

INSERT INTO `uncef_fund_details` (`id`, `acc_id`, `acc_code`, `unicef_fund_id`, `qty`, `no_of_month`) VALUES
(1, 1, '1.1.1', 1, 1, 1),
(2, 2, '1.1.2', 1, 0, 0),
(3, 3, '1.1.3', 1, 0, 0),
(4, 4, '1.1.4', 1, 0, 0),
(5, 5, '1.1.5', 1, 0, 0),
(6, 6, '1.1.6', 1, 0, 0),
(7, 7, '1.1.7', 1, 0, 0),
(8, 8, '1.1.8', 1, 0, 0),
(9, 9, '1.1.9', 1, 0, 0),
(10, 10, '1.1.10', 1, 0, 0),
(11, 11, '1.1.11', 1, 0, 0),
(12, 12, '1.1.12', 1, 0, 0),
(13, 13, '1.1.13', 1, 0, 0),
(14, 14, '1.1.14', 1, 0, 0),
(15, 15, '1.1.15', 1, 0, 0),
(16, 16, '1.2.1', 1, 0, 0),
(17, 17, '1.2.2', 1, 0, 0),
(18, 18, '1.2.3', 1, 0, 0),
(19, 19, '1.2.4', 1, 0, 0),
(20, 20, '1.2.5', 1, 0, 0),
(21, 21, '1.2.6', 1, 0, 0),
(22, 22, '1.2.7', 1, 0, 0),
(23, 23, '1.2.8', 1, 0, 0),
(24, 24, '1.2.9', 1, 0, 0),
(25, 25, '1.2.10', 1, 0, 0),
(26, 26, '1.2.11', 1, 0, 0),
(27, 27, '1.3.1', 1, 0, 0),
(28, 28, '1.3.2', 1, 0, 0),
(29, 29, '1.3.3', 1, 0, 0),
(30, 30, '1.3.4', 1, 0, 0),
(31, 31, '1.3.5', 1, 0, 0),
(32, 32, '1.3.6', 1, 0, 0),
(33, 33, '1.3.7', 1, 0, 0),
(34, 34, '2.1.1', 1, 0, 0),
(35, 35, '2.1.2', 1, 0, 0),
(36, 36, '2.1.3', 1, 0, 0),
(37, 37, '2.1.4', 1, 0, 0),
(38, 38, '2.1.5', 1, 0, 0),
(39, 39, '2.1.6', 1, 0, 0),
(40, 40, '2.1.7', 1, 0, 0),
(41, 41, '2.1.8', 1, 0, 0),
(42, 42, '2.1.9', 1, 0, 0),
(43, 43, '2.1.10', 1, 0, 0),
(44, 44, '2.1.11', 1, 0, 0),
(45, 45, '2.1.12', 1, 0, 0),
(46, 46, '2.1.13', 1, 0, 0),
(47, 47, '2.1.14', 1, 0, 0),
(48, 48, '2.1.15', 1, 0, 0),
(49, 49, '2.1.16', 1, 0, 0),
(50, 50, '2.1.17', 1, 0, 0),
(51, 51, '2.1.18', 1, 0, 0),
(52, 52, '2.1.19', 1, 0, 0),
(53, 53, '2.1.20', 1, 0, 0),
(54, 54, '2.1.21', 1, 0, 0),
(55, 55, '2.1.22', 1, 0, 0),
(56, 56, '3.1.1', 1, 0, 0),
(57, 57, '3.1.2', 1, 0, 0),
(58, 58, '3.1.3', 1, 0, 0),
(59, 59, '3.1.4', 1, 0, 0),
(60, 60, '4.1.1', 1, 0, 0),
(61, 61, '5.1.1', 1, 0, 0),
(62, 62, '5.1.2', 1, 0, 0),
(63, 63, '5.1.3', 1, 0, 0),
(64, 64, '5.1.4', 1, 0, 0),
(65, 65, '5.1.5', 1, 0, 0),
(66, 66, '5.2.1', 1, 0, 0),
(67, 67, '5.2.2', 1, 0, 0),
(68, 68, '5.2.3', 1, 0, 0),
(69, 69, '5.2.4', 1, 0, 0),
(70, 70, '5.2.5', 1, 0, 0),
(71, 71, '5.2.6', 1, 0, 0),
(72, 72, '5.2.7', 1, 0, 0),
(73, 73, '5.2.8', 1, 0, 0),
(74, 74, '1.1.1', 1, 0, 0),
(149, 1, '1.1.1', 2, 10, 2),
(150, 2, '1.1.2', 2, 20, 5),
(151, 3, '1.1.3', 2, 0, 0),
(152, 4, '1.1.4', 2, 0, 0),
(153, 5, '1.1.5', 2, 0, 0),
(154, 6, '1.1.6', 2, 0, 0),
(155, 7, '1.1.7', 2, 0, 0),
(156, 8, '1.1.8', 2, 0, 0),
(157, 9, '1.1.9', 2, 0, 0),
(158, 10, '1.1.10', 2, 0, 0),
(159, 11, '1.1.11', 2, 0, 0),
(160, 12, '1.1.12', 2, 0, 0),
(161, 13, '1.1.13', 2, 0, 0),
(162, 14, '1.1.14', 2, 0, 0),
(163, 15, '1.1.15', 2, 0, 0),
(164, 16, '1.2.1', 2, 0, 0),
(165, 17, '1.2.2', 2, 0, 0),
(166, 18, '1.2.3', 2, 0, 0),
(167, 19, '1.2.4', 2, 0, 0),
(168, 20, '1.2.5', 2, 0, 0),
(169, 21, '1.2.6', 2, 0, 0),
(170, 22, '1.2.7', 2, 0, 0),
(171, 23, '1.2.8', 2, 0, 0),
(172, 24, '1.2.9', 2, 0, 0),
(173, 25, '1.2.10', 2, 0, 0),
(174, 26, '1.2.11', 2, 0, 0),
(175, 27, '1.3.1', 2, 0, 0),
(176, 28, '1.3.2', 2, 0, 0),
(177, 29, '1.3.3', 2, 0, 0),
(178, 30, '1.3.4', 2, 0, 0),
(179, 31, '1.3.5', 2, 0, 0),
(180, 32, '1.3.6', 2, 0, 0),
(181, 33, '1.3.7', 2, 0, 0),
(182, 34, '2.1.1', 2, 0, 0),
(183, 35, '2.1.2', 2, 0, 0),
(184, 36, '2.1.3', 2, 0, 0),
(185, 37, '2.1.4', 2, 0, 0),
(186, 38, '2.1.5', 2, 0, 0),
(187, 39, '2.1.6', 2, 0, 0),
(188, 40, '2.1.7', 2, 0, 0),
(189, 41, '2.1.8', 2, 0, 0),
(190, 42, '2.1.9', 2, 0, 0),
(191, 43, '2.1.10', 2, 0, 0),
(192, 44, '2.1.11', 2, 0, 0),
(193, 45, '2.1.12', 2, 0, 0),
(194, 46, '2.1.13', 2, 0, 0),
(195, 47, '2.1.14', 2, 0, 0),
(196, 48, '2.1.15', 2, 0, 0),
(197, 49, '2.1.16', 2, 0, 0),
(198, 50, '2.1.17', 2, 0, 0),
(199, 51, '2.1.18', 2, 0, 0),
(200, 52, '2.1.19', 2, 0, 0),
(201, 53, '2.1.20', 2, 0, 0),
(202, 54, '2.1.21', 2, 0, 0),
(203, 55, '2.1.22', 2, 0, 0),
(204, 56, '3.1.1', 2, 0, 0),
(205, 57, '3.1.2', 2, 0, 0),
(206, 58, '3.1.3', 2, 0, 0),
(207, 59, '3.1.4', 2, 0, 0),
(208, 60, '4.1.1', 2, 0, 0),
(209, 61, '5.1.1', 2, 0, 0),
(210, 62, '5.1.2', 2, 0, 0),
(211, 63, '5.1.3', 2, 0, 0),
(212, 64, '5.1.4', 2, 0, 0),
(213, 65, '5.1.5', 2, 0, 0),
(214, 66, '5.2.1', 2, 0, 0),
(215, 67, '5.2.2', 2, 0, 0),
(216, 68, '5.2.3', 2, 0, 0),
(217, 69, '5.2.4', 2, 0, 0),
(218, 70, '5.2.5', 2, 0, 0),
(219, 71, '5.2.6', 2, 0, 0),
(220, 72, '5.2.7', 2, 0, 0),
(221, 73, '5.2.8', 2, 0, 0),
(222, 74, '1.1.1', 2, 0, 0),
(297, 1, '1.1.1', 3, 5, 5),
(298, 2, '1.1.2', 3, 10, 10),
(299, 3, '1.1.3', 3, 0, 0),
(300, 4, '1.1.4', 3, 0, 0),
(301, 5, '1.1.5', 3, 0, 0),
(302, 6, '1.1.6', 3, 0, 0),
(303, 7, '1.1.7', 3, 0, 0),
(304, 8, '1.1.8', 3, 0, 0),
(305, 9, '1.1.9', 3, 0, 0),
(306, 10, '1.1.10', 3, 0, 0),
(307, 11, '1.1.11', 3, 0, 0),
(308, 12, '1.1.12', 3, 0, 0),
(309, 13, '1.1.13', 3, 0, 0),
(310, 14, '1.1.14', 3, 0, 0),
(311, 15, '1.1.15', 3, 0, 0),
(312, 16, '1.2.1', 3, 0, 0),
(313, 17, '1.2.2', 3, 0, 0),
(314, 18, '1.2.3', 3, 0, 0),
(315, 19, '1.2.4', 3, 0, 0),
(316, 20, '1.2.5', 3, 0, 0),
(317, 21, '1.2.6', 3, 0, 0),
(318, 22, '1.2.7', 3, 0, 0),
(319, 23, '1.2.8', 3, 0, 0),
(320, 24, '1.2.9', 3, 0, 0),
(321, 25, '1.2.10', 3, 0, 0),
(322, 26, '1.2.11', 3, 0, 0),
(323, 27, '1.3.1', 3, 0, 0),
(324, 28, '1.3.2', 3, 0, 0),
(325, 29, '1.3.3', 3, 0, 0),
(326, 30, '1.3.4', 3, 0, 0),
(327, 31, '1.3.5', 3, 0, 0),
(328, 32, '1.3.6', 3, 0, 0),
(329, 33, '1.3.7', 3, 0, 0),
(330, 34, '2.1.1', 3, 0, 0),
(331, 35, '2.1.2', 3, 0, 0),
(332, 36, '2.1.3', 3, 0, 0),
(333, 37, '2.1.4', 3, 0, 0),
(334, 38, '2.1.5', 3, 0, 0),
(335, 39, '2.1.6', 3, 0, 0),
(336, 40, '2.1.7', 3, 0, 0),
(337, 41, '2.1.8', 3, 0, 0),
(338, 42, '2.1.9', 3, 0, 0),
(339, 43, '2.1.10', 3, 0, 0),
(340, 44, '2.1.11', 3, 0, 0),
(341, 45, '2.1.12', 3, 0, 0),
(342, 46, '2.1.13', 3, 0, 0),
(343, 47, '2.1.14', 3, 0, 0),
(344, 48, '2.1.15', 3, 0, 0),
(345, 49, '2.1.16', 3, 0, 0),
(346, 50, '2.1.17', 3, 0, 0),
(347, 51, '2.1.18', 3, 0, 0),
(348, 52, '2.1.19', 3, 0, 0),
(349, 53, '2.1.20', 3, 0, 0),
(350, 54, '2.1.21', 3, 0, 0),
(351, 55, '2.1.22', 3, 0, 0),
(352, 56, '3.1.1', 3, 0, 0),
(353, 57, '3.1.2', 3, 0, 0),
(354, 58, '3.1.3', 3, 0, 0),
(355, 59, '3.1.4', 3, 0, 0),
(356, 60, '4.1.1', 3, 0, 0),
(357, 61, '5.1.1', 3, 0, 0),
(358, 62, '5.1.2', 3, 0, 0),
(359, 63, '5.1.3', 3, 0, 0),
(360, 64, '5.1.4', 3, 0, 0),
(361, 65, '5.1.5', 3, 0, 0),
(362, 66, '5.2.1', 3, 0, 0),
(363, 67, '5.2.2', 3, 0, 0),
(364, 68, '5.2.3', 3, 0, 0),
(365, 69, '5.2.4', 3, 0, 0),
(366, 70, '5.2.5', 3, 0, 0),
(367, 71, '5.2.6', 3, 0, 0),
(368, 72, '5.2.7', 3, 0, 0),
(369, 73, '5.2.8', 3, 20, 20),
(370, 74, '1.1.1', 3, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `unief_fund_master`
--

CREATE TABLE `unief_fund_master` (
  `unicef_fund_id` int(11) NOT NULL,
  `unicef_fund_desc` varchar(256) NOT NULL,
  `start_month` date NOT NULL,
  `end_month` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unief_fund_master`
--

INSERT INTO `unief_fund_master` (`unicef_fund_id`, `unicef_fund_desc`, `start_month`, `end_month`, `status`) VALUES
(1, 'Test Unicef Fund', '2020-09-01', '2020-09-30', 1),
(2, 'Test Unicef Fund 3', '2020-09-01', '2020-09-30', 1),
(3, 'Test Data 4', '2020-09-01', '2020-09-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'admin', '$2y$10$ZrBk2zWOLhPAaOhncDBJv.pKAfhFYywahFQXY4NXDmhOcaRtLdAfS', 'admin@admin.com', 'Saidul Islam', 'Sheik', '12345678910', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_head`
--
ALTER TABLE `acc_head`
  ADD PRIMARY KEY (`id`),
  ADD KEY `COL 1` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `output_id` (`output_id`);

--
-- Indexes for table `budget_details`
--
ALTER TABLE `budget_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `budget_id` (`budget_id`);

--
-- Indexes for table `budget_master`
--
ALTER TABLE `budget_master`
  ADD PRIMARY KEY (`budget_id`),
  ADD KEY `budget_id` (`budget_id`);

--
-- Indexes for table `camp_info`
--
ALTER TABLE `camp_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `cg_details`
--
ALTER TABLE `cg_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `cg_id` (`cg_id`),
  ADD KEY `camp_id` (`camp_id`);

--
-- Indexes for table `cg_master`
--
ALTER TABLE `cg_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `of_details`
--
ALTER TABLE `of_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `cg_id` (`of_id`),
  ADD KEY `camp_id` (`acc_h_id`);

--
-- Indexes for table `of_master`
--
ALTER TABLE `of_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `output`
--
ALTER TABLE `output`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `output_name` (`output_name`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `uncef_fund_details`
--
ALTER TABLE `uncef_fund_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `budget_id` (`unicef_fund_id`);

--
-- Indexes for table `unief_fund_master`
--
ALTER TABLE `unief_fund_master`
  ADD PRIMARY KEY (`unicef_fund_id`),
  ADD KEY `budget_id` (`unicef_fund_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_head`
--
ALTER TABLE `acc_head`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `budget_details`
--
ALTER TABLE `budget_details`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=661;

--
-- AUTO_INCREMENT for table `budget_master`
--
ALTER TABLE `budget_master`
  MODIFY `budget_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cg_details`
--
ALTER TABLE `cg_details`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `cg_master`
--
ALTER TABLE `cg_master`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `of_details`
--
ALTER TABLE `of_details`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=677;

--
-- AUTO_INCREMENT for table `of_master`
--
ALTER TABLE `of_master`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `output`
--
ALTER TABLE `output`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uncef_fund_details`
--
ALTER TABLE `uncef_fund_details`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `unief_fund_master`
--
ALTER TABLE `unief_fund_master`
  MODIFY `unicef_fund_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acc_head`
--
ALTER TABLE `acc_head`
  ADD CONSTRAINT `acc_head_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`output_id`) REFERENCES `output` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `budget_details`
--
ALTER TABLE `budget_details`
  ADD CONSTRAINT `budget_details_ibfk_1` FOREIGN KEY (`budget_id`) REFERENCES `budget_master` (`budget_id`);

--
-- Constraints for table `cg_details`
--
ALTER TABLE `cg_details`
  ADD CONSTRAINT `cg_details_ibfk_1` FOREIGN KEY (`cg_id`) REFERENCES `cg_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cg_details_ibfk_2` FOREIGN KEY (`camp_id`) REFERENCES `camp_info` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
