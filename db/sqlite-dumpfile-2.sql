BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20180402035437');
INSERT INTO schema_migrations VALUES('20180402035508');
INSERT INTO schema_migrations VALUES('20180402035621');
INSERT INTO schema_migrations VALUES('20180402052125');
INSERT INTO schema_migrations VALUES('20180402053411');
INSERT INTO schema_migrations VALUES('20180402053456');
INSERT INTO schema_migrations VALUES('20180402053507');
INSERT INTO schema_migrations VALUES('20180402060714');
INSERT INTO schema_migrations VALUES('20180402060850');
INSERT INTO schema_migrations VALUES('20180402061001');
INSERT INTO schema_migrations VALUES('20180403012744');
INSERT INTO schema_migrations VALUES('20180405174020');
INSERT INTO schema_migrations VALUES('20180405174109');
INSERT INTO schema_migrations VALUES('20180407140008');
INSERT INTO schema_migrations VALUES('20180407142638');
INSERT INTO schema_migrations VALUES('20180412102803');
INSERT INTO schema_migrations VALUES('20180412135530');
INSERT INTO schema_migrations VALUES('20180412135827');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2018-03-21 06:37:37.032047','2018-03-21 06:37:37.032047');
CREATE TABLE IF NOT EXISTS "questions" ("id" SERIAL PRIMARY KEY NOT NULL, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "name" varchar, "order" integer, "users_id" integer);
INSERT INTO questions VALUES(1,'2018-03-03','2018-03-03','ความรู้เกี่ยวกับถ่านหินก่อนการเยี่ยมชม (Knowledge of coal before visiting BLCP)',1,NULL);
INSERT INTO questions VALUES(2,'2018-03-03','2018-03-03','ความรู้เกี่ยวกับโรงไฟฟ้าถ่านหินก่อนการเยี่ยมชม (Knowledge of coal fired power plant before visiting BLCP)',2,NULL);
INSERT INTO questions VALUES(3,'2018-03-03','2018-03-03','ความรู้เกี่ยวกับถ่านหินก่อนการเยี่ยมชม (Knowledge of coal before visiting BLCP)',3,NULL);
INSERT INTO questions VALUES(4,'2018-03-03','2018-03-03','ความรู้เกี่ยวกับถ่านหินก่อนการเยี่ยมชม (Knowledge of coal before visiting BLCP)',4,NULL);
INSERT INTO questions VALUES(5,'2018-03-03','2018-03-03','ความรู้เกี่ยวกับโรงไฟฟ้าถ่านหินก่อนการเยี่ยมชม (Knowledge of coal fired power plant before visiting BLCP)',5,NULL);
INSERT INTO questions VALUES(6,'2018-03-03','2018-03-03','ความรู้เกี่ยวกับถ่านหินก่อนการเยี่ยมชม (Knowledge of coal before visiting BLCP)',6,NULL);
INSERT INTO questions VALUES(7,'2018-03-03','2018-03-03','ท่านสนใจรับฟังการบรรยายในหัวข้อใดมากที่สุด (สามารถเลือกได้มากกว่าหนึ่งข้อ)',7,NULL);
INSERT INTO questions VALUES(8,'2018-03-03','2018-03-03','ข้อเสนอแนะอื่น ๆ',8,NULL);
CREATE TABLE IF NOT EXISTS "answers" ("id" SERIAL PRIMARY KEY NOT NULL, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "name" varchar, "order" integer);
INSERT INTO answers VALUES(1,'2018-03-03','2018-03-03','น้อย',1);
INSERT INTO answers VALUES(2,'2018-03-03','2018-03-03','ปานกลาง',2);
INSERT INTO answers VALUES(3,'2018-03-03','2018-03-03','ดี',3);
INSERT INTO answers VALUES(4,'2018-03-03','2018-03-03','ดีมาก',4);
INSERT INTO answers VALUES(5,'2018-03-03','2018-03-03','กรอกรายละเอียดเพิ่มเติม',1);
INSERT INTO answers VALUES(6,'2018-03-03','2018-03-03','สิ่งแวดล้อม',2);
INSERT INTO answers VALUES(7,'2018-03-03','2018-03-03','กระบวนการผลิตกระแสไฟฟ้าโดยใช้ถ่านหินเป็นเชื้อเพลิง',3);
INSERT INTO answers VALUES(8,'2018-03-03','2018-03-03','การจัดการลานกองถ่านหินและท่าเรือ',4);
INSERT INTO answers VALUES(9,'2018-03-03','2018-03-03','รายละเอียดอื่น ๆ',1);
CREATE TABLE IF NOT EXISTS "question_answers" ("id" SERIAL PRIMARY KEY NOT NULL, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "question_id" integer, "answer_id" integer);
INSERT INTO question_answers VALUES(1,'2018-03-03','2018-03-03',1,1);
INSERT INTO question_answers VALUES(2,'2018-03-03','2018-03-03',1,2);
INSERT INTO question_answers VALUES(3,'2018-03-03','2018-03-03',1,3);
INSERT INTO question_answers VALUES(4,'2018-03-03','2018-03-03',1,4);
INSERT INTO question_answers VALUES(5,'2018-03-03','2018-03-03',2,1);
INSERT INTO question_answers VALUES(6,'2018-03-03','2018-03-03',2,2);
INSERT INTO question_answers VALUES(7,'2018-03-03','2018-03-03',2,3);
INSERT INTO question_answers VALUES(8,'2018-03-03','2018-03-03',2,4);
INSERT INTO question_answers VALUES(9,'2018-03-03','2018-03-03',3,1);
INSERT INTO question_answers VALUES(10,'2018-03-03','2018-03-03',3,2);
INSERT INTO question_answers VALUES(11,'2018-03-03','2018-03-03',3,3);
INSERT INTO question_answers VALUES(12,'2018-03-03','2018-03-03',3,4);
INSERT INTO question_answers VALUES(13,'2018-03-03','2018-03-03',4,1);
INSERT INTO question_answers VALUES(14,'2018-03-03','2018-03-03',4,2);
INSERT INTO question_answers VALUES(15,'2018-03-03','2018-03-03',4,3);
INSERT INTO question_answers VALUES(16,'2018-03-03','2018-03-03',4,4);
INSERT INTO question_answers VALUES(17,'2018-03-03','2018-03-03',5,1);
INSERT INTO question_answers VALUES(18,'2018-03-03','2018-03-03',5,2);
INSERT INTO question_answers VALUES(19,'2018-03-03','2018-03-03',5,3);
INSERT INTO question_answers VALUES(20,'2018-03-03','2018-03-03',5,4);
INSERT INTO question_answers VALUES(21,'2018-03-03','2018-03-03',6,1);
INSERT INTO question_answers VALUES(22,'2018-03-03','2018-03-03',6,2);
INSERT INTO question_answers VALUES(23,'2018-03-03','2018-03-03',6,3);
INSERT INTO question_answers VALUES(24,'2018-03-03','2018-03-03',6,4);
INSERT INTO question_answers VALUES(25,'2018-03-03','2018-03-03',7,5);
INSERT INTO question_answers VALUES(26,'2018-03-03','2018-03-03',7,6);
INSERT INTO question_answers VALUES(27,'2018-03-03','2018-03-03',7,7);
INSERT INTO question_answers VALUES(28,'2018-03-03','2018-03-03',7,8);
INSERT INTO question_answers VALUES(29,'2018-03-03','2018-03-03',8,9);
CREATE TABLE IF NOT EXISTS "users" ("id" SERIAL PRIMARY KEY NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" timestamp, "remember_created_at" timestamp, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" timestamp, "last_sign_in_at" timestamp, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "first_name" varchar, "last_name" varchar, "occupation" varchar);
INSERT INTO users VALUES(1,'bank@biza.co.th','$2a$11$pL2UwQfCRDX6ljglTIaTde.od2LfVmh1UzrDD41EyW2rqEOF42Ghe',NULL,NULL,NULL,2,'2018-04-12 15:56:24.505765','2018-04-07 15:07:55.176397','127.0.0.1','127.0.0.1','2018-04-07 15:07:55.158885','2018-04-12 15:56:24.507255','แบงค์',NULL,'1');
INSERT INTO users VALUES(2,'monthon@biza.co.th','$2a$11$qysAHdQUOvUYED583lGOKOggTlZT3uuP6VVo7AxG3eTMR/DruHuCG',NULL,NULL,NULL,8,'2018-04-21 04:46:25.455684','2018-04-12 16:20:12.715081','127.0.0.1','127.0.0.1','2018-04-12 10:37:42.366881','2018-04-21 04:46:25.457682','monthon',NULL,'2');
INSERT INTO users VALUES(3,'monthon2@biza.co.th','$2a$11$HHUO2FVjFeyZeKYzxXlSoeS8I4aCrinP0V7KVCgBcwIuLpzkhKtRK',NULL,NULL,NULL,1,'2018-04-12 10:51:10.262669','2018-04-12 10:51:10.262669','127.0.0.1','127.0.0.1','2018-04-12 10:51:10.252660','2018-04-12 10:51:10.263671','เบียร์',NULL,'3');
INSERT INTO users VALUES(4,'admin@skh.co.th','$2a$11$uGu1hXa0ymkIFC7Ks//B4uDlxnoSRDr4RRu/AZXoF4TgkYNgq//8W',NULL,NULL,NULL,1,'2018-04-12 13:45:51.673763','2018-04-12 13:45:51.673763','127.0.0.1','127.0.0.1','2018-04-12 13:45:51.660251','2018-04-12 13:45:51.674765','Sky-high',NULL,'4');
INSERT INTO users VALUES(5,'monthon@biza.co.th3','$2a$11$C5PUaECJUKgigN3Z.dQboua9PSfCtAY0igitLsTqjvP76nE85kD5.',NULL,NULL,NULL,1,'2018-04-12 14:16:22.440170','2018-04-12 14:16:22.440170','127.0.0.1','127.0.0.1','2018-04-12 14:16:22.427159','2018-04-12 14:16:22.440170','111111',NULL,'2');
INSERT INTO users VALUES(6,'monthon5@biza.co.th','$2a$11$euRk2YwxSWqgKtbgdtErdu74wFnfRTmPgufWy/OV5/dteDPgu..TC',NULL,NULL,NULL,1,'2018-04-12 14:18:47.554424','2018-04-12 14:18:47.554424','127.0.0.1','127.0.0.1','2018-04-12 14:18:47.540411','2018-04-12 14:18:47.554924','5',NULL,'1');
CREATE TABLE IF NOT EXISTS "models" ("id" SERIAL PRIMARY KEY NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" timestamp, "remember_created_at" timestamp, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" timestamp, "last_sign_in_at" timestamp, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
CREATE TABLE IF NOT EXISTS "q_items" ("id" SERIAL PRIMARY KEY NOT NULL, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "user_id" integer DEFAULT NULL, "question_id" integer DEFAULT NULL, "answer_id" integer DEFAULT NULL);
INSERT INTO q_items VALUES(19,'2018-04-07 13:34:59.201617','2018-04-07 13:34:59.201617',1,1,1);
INSERT INTO q_items VALUES(20,'2018-04-07 13:34:59.215617','2018-04-07 13:34:59.215617',1,2,4);
INSERT INTO q_items VALUES(21,'2018-04-07 13:34:59.228625','2018-04-07 13:34:59.228625',1,3,5);
INSERT INTO q_items VALUES(22,'2018-04-07 13:37:44.553165','2018-04-07 13:37:44.553165',1,1,2);
INSERT INTO q_items VALUES(23,'2018-04-07 13:37:44.575180','2018-04-07 13:37:44.575180',1,2,4);
INSERT INTO q_items VALUES(24,'2018-04-07 13:37:44.599198','2018-04-07 13:37:44.599198',1,3,6);
INSERT INTO q_items VALUES(25,'2018-04-07 13:38:54.972350','2018-04-07 13:38:54.972350',1,1,1);
INSERT INTO q_items VALUES(26,'2018-04-07 13:38:54.985360','2018-04-07 13:38:54.985360',1,2,4);
INSERT INTO q_items VALUES(27,'2018-04-07 13:38:55.003374','2018-04-07 13:38:55.003374',1,3,6);
INSERT INTO q_items VALUES(28,'2018-04-07 13:38:55.019388','2018-04-07 13:38:55.019388',1,4,8);
INSERT INTO q_items VALUES(29,'2018-04-07 13:41:56.199854','2018-04-07 13:41:56.199854',1,1,1);
INSERT INTO q_items VALUES(30,'2018-04-07 13:41:56.216868','2018-04-07 13:41:56.216868',1,2,4);
INSERT INTO q_items VALUES(31,'2018-04-07 13:41:56.231891','2018-04-07 13:41:56.231891',1,3,5);
INSERT INTO q_items VALUES(32,'2018-04-07 13:41:56.244889','2018-04-07 13:41:56.244889',1,4,8);
INSERT INTO q_items VALUES(33,'2018-04-07 13:43:05.876017','2018-04-07 13:43:05.876017',1,1,1);
INSERT INTO q_items VALUES(34,'2018-04-07 13:43:05.892041','2018-04-07 13:43:05.892041',1,2,4);
INSERT INTO q_items VALUES(35,'2018-04-07 13:43:05.913570','2018-04-07 13:43:05.913570',1,3,5);
INSERT INTO q_items VALUES(36,'2018-04-07 13:43:05.930782','2018-04-07 13:43:05.930782',1,4,8);
INSERT INTO q_items VALUES(37,'2018-04-07 15:12:01.543257','2018-04-07 15:12:01.543257',2,1,1);
INSERT INTO q_items VALUES(38,'2018-04-07 15:12:01.559286','2018-04-07 15:12:01.559286',2,2,4);
INSERT INTO q_items VALUES(39,'2018-04-07 15:12:01.579299','2018-04-07 15:12:01.579299',2,3,6);
INSERT INTO q_items VALUES(40,'2018-04-07 15:12:01.600314','2018-04-07 15:12:01.600314',2,4,8);
INSERT INTO q_items VALUES(41,'2018-04-07 15:15:32.686617','2018-04-07 15:15:32.686617',2,1,1);
INSERT INTO q_items VALUES(42,'2018-04-07 15:15:32.703203','2018-04-07 15:15:32.703203',2,2,3);
INSERT INTO q_items VALUES(43,'2018-04-07 15:15:32.723216','2018-04-07 15:15:32.723216',2,3,5);
INSERT INTO q_items VALUES(44,'2018-04-07 15:15:32.744231','2018-04-07 15:15:32.744231',2,4,8);
INSERT INTO q_items VALUES(45,'2018-04-07 15:25:25.676281','2018-04-07 15:25:25.676281',1,1,2);
INSERT INTO q_items VALUES(46,'2018-04-07 15:25:25.691292','2018-04-07 15:25:25.691292',1,2,4);
INSERT INTO q_items VALUES(47,'2018-04-07 15:25:25.709310','2018-04-07 15:25:25.709310',1,3,6);
INSERT INTO q_items VALUES(48,'2018-04-07 15:25:25.727825','2018-04-07 15:25:25.727825',1,4,8);
INSERT INTO q_items VALUES(49,'2018-04-07 15:39:08.118899','2018-04-07 15:39:08.118899',1,1,2);
INSERT INTO q_items VALUES(50,'2018-04-07 15:39:08.135921','2018-04-07 15:39:08.135921',1,2,4);
INSERT INTO q_items VALUES(51,'2018-04-07 15:39:08.158443','2018-04-07 15:39:08.158443',1,3,5);
INSERT INTO q_items VALUES(52,'2018-04-07 15:39:08.175780','2018-04-07 15:39:08.175780',1,4,8);
INSERT INTO q_items VALUES(53,'2018-04-12 07:43:21.420075','2018-04-12 07:43:21.420075',1,1,1);
INSERT INTO q_items VALUES(54,'2018-04-12 07:43:21.432605','2018-04-12 07:43:21.432605',1,2,4);
INSERT INTO q_items VALUES(55,'2018-04-12 07:43:21.445615','2018-04-12 07:43:21.445615',1,3,6);
INSERT INTO q_items VALUES(56,'2018-04-12 07:43:21.461625','2018-04-12 07:43:21.461625',1,4,8);
INSERT INTO q_items VALUES(57,'2018-04-12 10:56:55.635521','2018-04-12 10:56:55.635521',2,1,2);
INSERT INTO q_items VALUES(58,'2018-04-12 10:56:55.653312','2018-04-12 10:56:55.653312',2,2,3);
INSERT INTO q_items VALUES(59,'2018-04-12 10:56:55.671325','2018-04-12 10:56:55.671325',2,3,6);
INSERT INTO q_items VALUES(60,'2018-04-12 10:56:55.686335','2018-04-12 10:56:55.686335',2,4,8);
INSERT INTO q_items VALUES(61,'2018-04-12 11:08:16.928518','2018-04-12 11:08:16.928518',2,1,1);
INSERT INTO q_items VALUES(62,'2018-04-12 11:08:16.953537','2018-04-12 11:08:16.953537',2,2,3);
INSERT INTO q_items VALUES(63,'2018-04-12 11:08:16.968547','2018-04-12 11:08:16.968547',2,3,5);
INSERT INTO q_items VALUES(64,'2018-04-12 11:08:16.985559','2018-04-12 11:08:16.985559',2,4,8);
INSERT INTO q_items VALUES(65,'2018-04-12 11:29:51.537533','2018-04-12 11:29:51.537533',2,1,2);
INSERT INTO q_items VALUES(66,'2018-04-12 11:29:51.560583','2018-04-12 11:29:51.560583',2,2,3);
INSERT INTO q_items VALUES(67,'2018-04-12 11:29:51.575595','2018-04-12 11:29:51.575595',2,3,5);
INSERT INTO q_items VALUES(68,'2018-04-12 11:29:51.586601','2018-04-12 11:29:51.586601',2,4,8);
INSERT INTO q_items VALUES(69,'2018-04-12 13:46:00.296458','2018-04-12 13:46:00.296458',4,1,1);
INSERT INTO q_items VALUES(70,'2018-04-12 13:46:00.315472','2018-04-12 13:46:00.315472',4,2,4);
INSERT INTO q_items VALUES(71,'2018-04-12 13:46:00.331484','2018-04-12 13:46:00.331484',4,3,5);
INSERT INTO q_items VALUES(72,'2018-04-12 13:46:00.352499','2018-04-12 13:46:00.352499',4,4,8);
INSERT INTO q_items VALUES(73,'2018-04-12 13:48:57.510868','2018-04-12 13:48:57.510868',4,1,1);
INSERT INTO q_items VALUES(74,'2018-04-12 13:48:57.555899','2018-04-12 13:48:57.555899',4,2,4);
INSERT INTO q_items VALUES(75,'2018-04-12 13:48:57.572913','2018-04-12 13:48:57.572913',4,3,6);
INSERT INTO q_items VALUES(76,'2018-04-12 13:48:57.588425','2018-04-12 13:48:57.588425',4,4,8);
INSERT INTO q_items VALUES(77,'2018-04-12 15:44:30.342994','2018-04-12 15:44:30.342994',2,1,1);
INSERT INTO q_items VALUES(78,'2018-04-12 15:44:30.360993','2018-04-12 15:44:30.360993',2,2,3);
INSERT INTO q_items VALUES(79,'2018-04-12 15:44:30.381508','2018-04-12 15:44:30.381508',2,3,NULL);
INSERT INTO q_items VALUES(80,'2018-04-12 15:44:30.394521','2018-04-12 15:44:30.394521',2,NULL,NULL);
INSERT INTO q_items VALUES(81,'2018-04-12 15:44:30.408538','2018-04-12 15:44:30.408538',2,NULL,NULL);
INSERT INTO q_items VALUES(82,'2018-04-12 15:44:30.419549','2018-04-12 15:44:30.419549',2,NULL,NULL);
INSERT INTO q_items VALUES(83,'2018-04-12 15:44:30.434559','2018-04-12 15:44:30.434559',2,NULL,NULL);
INSERT INTO q_items VALUES(84,'2018-04-12 15:44:30.449557','2018-04-12 15:44:30.449557',2,NULL,NULL);
INSERT INTO q_items VALUES(85,'2018-04-12 15:55:36.151976','2018-04-12 15:55:36.151976',2,1,2);
INSERT INTO q_items VALUES(86,'2018-04-12 15:55:36.169987','2018-04-12 15:55:36.169987',2,2,1);
INSERT INTO q_items VALUES(87,'2018-04-12 15:55:36.188500','2018-04-12 15:55:36.188500',2,3,NULL);
INSERT INTO q_items VALUES(88,'2018-04-12 15:55:36.202012','2018-04-12 15:55:36.202012',2,NULL,NULL);
INSERT INTO q_items VALUES(89,'2018-04-12 15:55:36.219023','2018-04-12 15:55:36.219023',2,NULL,NULL);
INSERT INTO q_items VALUES(90,'2018-04-12 15:55:36.235033','2018-04-12 15:55:36.235033',2,NULL,NULL);
INSERT INTO q_items VALUES(91,'2018-04-12 15:55:36.252546','2018-04-12 15:55:36.252546',2,NULL,NULL);
INSERT INTO q_items VALUES(92,'2018-04-12 15:55:36.270558','2018-04-12 15:55:36.270558',2,NULL,NULL);
INSERT INTO q_items VALUES(93,'2018-04-12 15:56:32.904797','2018-04-12 15:56:32.904797',1,1,1);
INSERT INTO q_items VALUES(94,'2018-04-12 15:56:32.920526','2018-04-12 15:56:32.920526',1,2,3);
INSERT INTO q_items VALUES(95,'2018-04-12 15:56:32.940277','2018-04-12 15:56:32.940277',1,3,NULL);
INSERT INTO q_items VALUES(96,'2018-04-12 15:56:32.955786','2018-04-12 15:56:32.955786',1,NULL,NULL);
INSERT INTO q_items VALUES(97,'2018-04-12 15:56:32.976301','2018-04-12 15:56:32.976301',1,NULL,NULL);
INSERT INTO q_items VALUES(98,'2018-04-12 15:56:32.991812','2018-04-12 15:56:32.991812',1,NULL,NULL);
INSERT INTO q_items VALUES(99,'2018-04-12 15:56:33.007347','2018-04-12 15:56:33.007347',1,NULL,NULL);
INSERT INTO q_items VALUES(100,'2018-04-12 15:56:33.025859','2018-04-12 15:56:33.025859',1,NULL,NULL);
INSERT INTO q_items VALUES(101,'2018-04-12 16:09:36.497831','2018-04-12 16:09:36.497831',1,4,3);
INSERT INTO q_items VALUES(102,'2018-04-12 16:09:36.508338','2018-04-12 16:09:36.508338',1,5,2);
INSERT INTO q_items VALUES(103,'2018-04-12 16:09:36.522859','2018-04-12 16:09:36.522859',1,6,1);
INSERT INTO q_items VALUES(104,'2018-04-12 16:09:36.540862','2018-04-12 16:09:36.540862',1,7,7);
INSERT INTO q_items VALUES(105,'2018-04-12 16:09:36.557873','2018-04-12 16:09:36.557873',1,8,NULL);
INSERT INTO q_items VALUES(106,'2018-04-12 16:09:36.568382','2018-04-12 16:09:36.568382',1,NULL,NULL);
INSERT INTO q_items VALUES(107,'2018-04-12 16:09:36.587895','2018-04-12 16:09:36.587895',1,NULL,NULL);
INSERT INTO q_items VALUES(108,'2018-04-12 16:09:36.603407','2018-04-12 16:09:36.603407',1,NULL,NULL);
CREATE INDEX "index_questions_on_users_id" ON "questions" ("users_id");
CREATE INDEX "index_question_answers_on_question_id" ON "question_answers" ("question_id");
CREATE INDEX "index_question_answers_on_answer_id" ON "question_answers" ("answer_id");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "index_models_on_email" ON "models" ("email");
CREATE UNIQUE INDEX "index_models_on_reset_password_token" ON "models" ("reset_password_token");
CREATE INDEX "index_q_items_on_user_id" ON "q_items" ("user_id");
CREATE INDEX "index_q_items_on_question_id" ON "q_items" ("question_id");
CREATE INDEX "index_q_items_on_answer_id" ON "q_items" ("answer_id");
COMMIT;