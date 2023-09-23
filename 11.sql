-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.4.13-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- gallery 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `gallery` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gallery`;

-- 테이블 gallery.boards 구조 내보내기
CREATE TABLE IF NOT EXISTS `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `good` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `boards_pk2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- 테이블 데이터 gallery.boards:~10 rows (대략적) 내보내기
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
INSERT INTO `boards` (`id`, `email`, `password`, `good`) VALUES
	(14, 'kos656@naver.com', 'pw12345678910', 'Java'),
	(15, 'never@naver.com', 'abc1234', 'JavaScript'),
	(16, 'sfawawr@naver.com', 'abc1234', 'Python'),
	(17, 'aa', 'aa', 'JavaScript'),
	(18, 'ddd', 'ddd', 'JavaScript'),
	(19, 'ww', 'ww', 'JavaScript'),
	(20, 'a', 'a', 'JavaScript'),
	(21, 'a123', 'a123', 'JavaScript'),
	(23, 'aaa', 'aaaa', 'JavaScript'),
	(25, 'asdf', 'asdf123', 'JavaScript');
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;

-- 테이블 gallery.carts 구조 내보내기
CREATE TABLE IF NOT EXISTS `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- 테이블 데이터 gallery.carts:~8 rows (대략적) 내보내기
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` (`id`, `member_id`, `item_id`) VALUES
	(28, 9, 1),
	(29, 9, 2),
	(30, 9, 3),
	(42, 14, 1),
	(43, 14, 2),
	(44, 14, 9),
	(45, 14, 8),
	(46, 14, 7);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;

-- 테이블 gallery.items 구조 내보내기
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img_path` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount_per` int(11) DEFAULT NULL,
  `Content` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 테이블 데이터 gallery.items:~10 rows (대략적) 내보내기
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `name`, `img_path`, `price`, `discount_per`, `Content`) VALUES
	(1, 'scratch', '/img/scratch.jpg', 1000, 100, '시간인증 IT서포터즈 비영리단체 행정업무 보조 (모집중)\n봉사기간2023.05.02 ~ 2023.05.31봉사시간14시 0분 ~ 18시 0분\n모집기간2023.05.02 ~ 2023.05.31활동요일화,수,목\n모집인원4 명 / 일신청인원2 명\n봉사분야행정보조 > 업무지원봉사자유형성인  청소년  기업·단체 \n모집기관사단법인 바보클럽 인재양성콘텐츠랩상세정보등록기관부산광역시 금정구\n봉사장소부산시 해운대구 센텀중앙로97, A동 1011호 (재송동, 센텀스카이비즈)봉사대상기타'),
	(2, 'kiosk', '/img/kiosk.jpg', 2000, 3, '시간인증 농촌봉사활동, 농촌환경정비, IT봉사 (모집중)\n봉사기간2023.05.12 ~ 2023.08.11봉사시간9시 0분 ~ 17시 0분\n모집기간2023.05.06 ~ 2023.08.11활동요일월,화,수,목,금,토,일\n모집인원150 명 / 일신청인원159 명\n봉사분야농어촌 봉사 > 일손지원봉사자유형성인  청소년  기업·단체 \n모집기관군산깐치멀농촌교육농장상세정보등록기관전라북도 군산시\n봉사장소깐치멀마을 일원봉사대상기타'),
	(3, 'python', '/img/python.jpg', 3000, 30, '봉사기간2023.06.10 ~ 2023.06.10봉사시간9시 30분 ~ 16시 30분\n모집기간2023.05.11 ~ 2023.05.31활동요일토\n모집인원15 명 / 일신청인원8 명\n봉사분야문화행사 > 행사보조봉사자유형성인  청소년 \n모집기관강원도장애인재활협회상세정보등록기관강원도 춘천시\n봉사장소강원창작개발센터 (강원 춘천시 서면 박사로 882)봉사대상장애인'),
	(4, '노인 it 교육', '/img/it.jpg', 4000, 100, ''),
	(5, '보이스피싱 예방', '/img/voice.png', 1000, 3, ''),
	(6, '유튜브 영상 편집', '/img/vcg.png', 2000, 30, ''),
	(7, '클라우드 컴퓨팅 교육', '/img/aws.png', 3000, 100, ''),
	(8, '웹 개발 기초- 청소년 방과후 프로그램', '/img/program.png', 4000, 3, ''),
	(9, '라즈베리파이', '/img/raspberry.jpg', 1000, 30, ''),
	(10, '아두이노', '/img/arduino.jpg', 2000, 100, '');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- 테이블 gallery.members 구조 내보내기
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_pk2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 테이블 데이터 gallery.members:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`, `email`, `password`) VALUES
	(1, 'example@example.com', 'abc0709!!');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

-- 테이블 gallery.orders 구조 내보내기
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `card_number` varchar(16) DEFAULT NULL,
  `items` varchar(500) DEFAULT NULL,
  `payment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- 테이블 데이터 gallery.orders:~12 rows (대략적) 내보내기
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `member_id`, `name`, `address`, `card_number`, `items`, `payment`) VALUES
	(15, 17, '초코파이', '교통대', '', '[{"id":1,"name":"scratch","imgPath":"/img/scratch.jpg","price":1000,"discountPer":100,"content":"시간인증 IT서포터즈 비영리단체 행정업무 보조 (모집중)\\n봉사기간2023.05.02 ~ 2023.05.31봉사시간14시 0분 ~ 18시 0분\\n모집기간2023.05.02 ~ 2023.05.31활동요일화,수,목\\n모집인원4 명 / 일신청인원2 명\\n봉사분야행정보조 > 업무지원봉사자유형성인  청소년  기업·단체 \\n모집기관사단법인 바보클럽 인재양성콘텐츠랩상세정보등록기관부산광역시 금정구\\n봉사장소부산시 해운대구 센텀중앙로97, A동 1011호 (재송동, 센텀스카이비즈)봉사대상기타"}]', ''),
	(16, 17, '초코파이', '교통대', '', '[{"id":4,"name":"노인 it 교육","imgPath":"/img/it.jpg","price":4000,"discountPer":100,"content":"시간인증 IT서포터즈 비영리단체 행정업무 보조 (모집중)\\n봉사기간2023.05.02 ~ 2023.05.31봉사시간14시 0분 ~ 18시 0분\\n모집기간2023.05.02 ~ 2023.05.31활동요일화,수,목\\n모집인원4 명 / 일신청인원2 명\\n봉사분야행정보조 > 업무지원봉사자유형성인  청소년  기업·단체 \\n모집기관사단법인 바보클럽 인재양성콘텐츠랩상세정보등록기관부산광역시 금정구\\n봉사장소부산시 해운대구 센텀중앙로97, A동 1011호 (재송동, 센텀스카이비즈)봉사대상기타"}]', '0'),
	(17, 17, '초코파이', '교통대', '', '[{"id":1,"name":"scratch","imgPath":"/img/scratch.jpg","price":1000,"discountPer":100,"content":"시간인증 IT서포터즈 비영리단체 행정업무 보조 (모집중)\\n봉사기간2023.05.02 ~ 2023.05.31봉사시간14시 0분 ~ 18시 0분\\n모집기간2023.05.02 ~ 2023.05.31활동요일화,수,목\\n모집인원4 명 / 일신청인원2 명\\n봉사분야행정보조 > 업무지원봉사자유형성인  청소년  기업·단체 \\n모집기관사단법인 바보클럽 인재양성콘텐츠랩상세정보등록기관부산광역시 금정구\\n봉사장소부산시 해운대구 센텀중앙로97, A동 1011호 (재송동, 센텀스카이비즈)봉사대상기타"}]', '800'),
	(18, 17, '초코파이', '교통대', '', '[{"id":2,"name":"kiosk","imgPath":"/img/kiosk.jpg","price":2000,"discountPer":3,"content":"시간인증 농촌봉사활동, 농촌환경정비, IT봉사 (모집중)\\n봉사기간2023.05.12 ~ 2023.08.11봉사시간9시 0분 ~ 17시 0분\\n모집기간2023.05.06 ~ 2023.08.11활동요일월,화,수,목,금,토,일\\n모집인원150 명 / 일신청인원159 명\\n봉사분야농어촌 봉사 > 일손지원봉사자유형성인  청소년  기업·단체 \\n모집기관군산깐치멀농촌교육농장상세정보등록기관전라북도 군산시\\n봉사장소깐치멀마을 일원봉사대상기타"}]', '970'),
	(19, 17, '초코파이', '교통대', '', '[{"id":2,"name":"kiosk","imgPath":"/img/kiosk.jpg","price":2000,"discountPer":3,"content":"시간인증 농촌봉사활동, 농촌환경정비, IT봉사 (모집중)\\n봉사기간2023.05.12 ~ 2023.08.11봉사시간9시 0분 ~ 17시 0분\\n모집기간2023.05.06 ~ 2023.08.11활동요일월,화,수,목,금,토,일\\n모집인원150 명 / 일신청인원159 명\\n봉사분야농어촌 봉사 > 일손지원봉사자유형성인  청소년  기업·단체 \\n모집기관군산깐치멀농촌교육농장상세정보등록기관전라북도 군산시\\n봉사장소깐치멀마을 일원봉사대상기타"}]', '1940'),
	(20, 17, '초코파이', '교통대', '', '[{"id":2,"name":"kiosk","imgPath":"/img/kiosk.jpg","price":2000,"discountPer":3,"content":"시간인증 농촌봉사활동, 농촌환경정비, IT봉사 (모집중)\\n봉사기간2023.05.12 ~ 2023.08.11봉사시간9시 0분 ~ 17시 0분\\n모집기간2023.05.06 ~ 2023.08.11활동요일월,화,수,목,금,토,일\\n모집인원150 명 / 일신청인원159 명\\n봉사분야농어촌 봉사 > 일손지원봉사자유형성인  청소년  기업·단체 \\n모집기관군산깐치멀농촌교육농장상세정보등록기관전라북도 군산시\\n봉사장소깐치멀마을 일원봉사대상기타"}]', '1940'),
	(22, 17, '초코파이', '교통대', '', '[{"id":3,"name":"python","imgPath":"/img/python.jpg","price":3000,"discountPer":30,"content":"봉사기간2023.06.10 ~ 2023.06.10봉사시간9시 30분 ~ 16시 30분\\n모집기간2023.05.11 ~ 2023.05.31활동요일토\\n모집인원15 명 / 일신청인원8 명\\n봉사분야문화행사 > 행사보조봉사자유형성인  청소년 \\n모집기관강원도장애인재활협회상세정보등록기관강원도 춘천시\\n봉사장소강원창작개발센터 (강원 춘천시 서면 박사로 882)봉사대상장애인"}]', '2100'),
	(23, 17, '초코파이', '교통대', '', '[{"id":7,"name":"클라우드 컴퓨팅 교육","imgPath":"/img/aws.png","price":3000,"discountPer":100,"content":""},{"id":8,"name":"웹 개발 기초- 청소년 방과후 프로그램","imgPath":"/img/program.png","price":4000,"discountPer":3,"content":""}]', '3880'),
	(24, 18, 'ww', 'ww', '', '[{"id":2,"name":"kiosk","imgPath":"/img/kiosk.jpg","price":2000,"discountPer":3,"content":"시간인증 농촌봉사활동, 농촌환경정비, IT봉사 (모집중)\\n봉사기간2023.05.12 ~ 2023.08.11봉사시간9시 0분 ~ 17시 0분\\n모집기간2023.05.06 ~ 2023.08.11활동요일월,화,수,목,금,토,일\\n모집인원150 명 / 일신청인원159 명\\n봉사분야농어촌 봉사 > 일손지원봉사자유형성인  청소년  기업·단체 \\n모집기관군산깐치멀농촌교육농장상세정보등록기관전라북도 군산시\\n봉사장소깐치멀마을 일원봉사대상기타"}]', '1940'),
	(25, 25, '이학현', '서현로 68 ', '', '[{"id":1,"name":"scratch","imgPath":"/img/scratch.jpg","price":1000,"discountPer":100,"content":"시간인증 IT서포터즈 비영리단체 행정업무 보조 (모집중)\\n봉사기간2023.05.02 ~ 2023.05.31봉사시간14시 0분 ~ 18시 0분\\n모집기간2023.05.02 ~ 2023.05.31활동요일화,수,목\\n모집인원4 명 / 일신청인원2 명\\n봉사분야행정보조 > 업무지원봉사자유형성인  청소년  기업·단체 \\n모집기관사단법인 바보클럽 인재양성콘텐츠랩상세정보등록기관부산광역시 금정구\\n봉사장소부산시 해운대구 센텀중앙로97, A동 1011호 (재송동, 센텀스카이비즈)봉사대상기타"},{"id":7,"name":"클라우드 컴퓨팅 교육","imgPath":"/img/aws.png","price":3000,"discountPer":100,"content":""}]', '2100'),
	(26, 25, '이학현1', '서현로 681', '', '[]', ''),
	(27, 19, '초코파이', '교통대', '', '[{"id":2,"name":"kiosk","imgPath":"/img/kiosk.jpg","price":2000,"discountPer":3,"content":"시간인증 농촌봉사활동, 농촌환경정비, IT봉사 (모집중)\\n봉사기간2023.05.12 ~ 2023.08.11봉사시간9시 0분 ~ 17시 0분\\n모집기간2023.05.06 ~ 2023.08.11활동요일월,화,수,목,금,토,일\\n모집인원150 명 / 일신청인원159 명\\n봉사분야농어촌 봉사 > 일손지원봉사자유형성인  청소년  기업·단체 \\n모집기관군산깐치멀농촌교육농장상세정보등록기관전라북도 군산시\\n봉사장소깐치멀마을 일원봉사대상기타"}]', '1940');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- 테이블 gallery.pcarts 구조 내보내기
CREATE TABLE IF NOT EXISTS `pcarts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- 테이블 데이터 gallery.pcarts:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `pcarts` DISABLE KEYS */;
INSERT INTO `pcarts` (`id`, `member_id`, `item_id`) VALUES
	(1, 9, 1),
	(2, 2, 1),
	(12, 17, 2),
	(14, 18, 7),
	(15, 25, 1);
/*!40000 ALTER TABLE `pcarts` ENABLE KEYS */;

-- 테이블 gallery.pitems 구조 내보내기
CREATE TABLE IF NOT EXISTS `pitems` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `img_path` varchar(100) DEFAULT NULL,
  `price` int(100) DEFAULT NULL,
  `discount_per` int(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 테이블 데이터 gallery.pitems:~9 rows (대략적) 내보내기
/*!40000 ALTER TABLE `pitems` DISABLE KEYS */;
INSERT INTO `pitems` (`id`, `name`, `img_path`, `price`, `discount_per`, `content`) VALUES
	(1, '연탄 나눔', '/img/yt.jpg', 50000, 10, '연탄'),
	(2, '달력 나눔', '/img/dr.png', 20000, 10, '달력'),
	(3, '봉사 뱃지 지급', '/img/badge.jpg', 30000, 10, '뱃지'),
	(4, '영화 티켓', '/img/tk.jpg', 40000, 10, '영화'),
	(5, '꽃 바구니', '/img/fw.jpg', 20000, 10, '꽃 바구니 결과물'),
	(6, '비즈 나눔', '/img/bz.jpg', 20000, 10, '비즈'),
	(7, '프로필 아이콘', '/img/pr3.jpg', 2000, 10, '아이콘1'),
	(8, '프로필 아이콘2', '/img/pr2.png', 3000, 10, '아이콘2'),
	(9, '프로필 아이콘3', '/img/pr1.jpg', 4000, 10, '아이콘3');
/*!40000 ALTER TABLE `pitems` ENABLE KEYS */;

-- 테이블 gallery.porders 구조 내보내기
CREATE TABLE IF NOT EXISTS `porders` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `member_id` int(100) DEFAULT NULL,
  `address` int(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `payment` int(100) DEFAULT NULL,
  `cart_number` int(100) DEFAULT NULL,
  `pitems` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 gallery.porders:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `porders` DISABLE KEYS */;
/*!40000 ALTER TABLE `porders` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
