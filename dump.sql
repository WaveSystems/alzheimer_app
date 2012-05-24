PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
  CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
  INSERT INTO "schema_migrations" VALUES('20120314100532');
  INSERT INTO "schema_migrations" VALUES('20120314100533');
  INSERT INTO "schema_migrations" VALUES('20120314152754');
  INSERT INTO "schema_migrations" VALUES('20120314160522');
  INSERT INTO "schema_migrations" VALUES('20120315152052');
  INSERT INTO "schema_migrations" VALUES('20120315153529');
  INSERT INTO "schema_migrations" VALUES('20120315173121');
  INSERT INTO "schema_migrations" VALUES('20120315175030');
  INSERT INTO "schema_migrations" VALUES('20120326185102');
  INSERT INTO "schema_migrations" VALUES('20120327043640');
  INSERT INTO "schema_migrations" VALUES('20120327043918');
  INSERT INTO "schema_migrations" VALUES('20120327153353');
  INSERT INTO "schema_migrations" VALUES('20120328172545');
  INSERT INTO "schema_migrations" VALUES('20120328175537');
  INSERT INTO "schema_migrations" VALUES('20120330003418');
  INSERT INTO "schema_migrations" VALUES('20120423145421');
  INSERT INTO "schema_migrations" VALUES('20120424143254');
  INSERT INTO "schema_migrations" VALUES('20120424144729');
  INSERT INTO "schema_migrations" VALUES('20120425171903');
  INSERT INTO "schema_migrations" VALUES('20120504144931');
  INSERT INTO "schema_migrations" VALUES('20120504150159');
  INSERT INTO "schema_migrations" VALUES('20120509072717');
  INSERT INTO "schema_migrations" VALUES('20120509075224');
  INSERT INTO "schema_migrations" VALUES('20120509075240');
  INSERT INTO "schema_migrations" VALUES('20120509075548');
  INSERT INTO "schema_migrations" VALUES('20120509075621');
  INSERT INTO "schema_migrations" VALUES('20120509075733');
  INSERT INTO "schema_migrations" VALUES('20120509075806');
  INSERT INTO "schema_migrations" VALUES('20120509095016');
  CREATE TABLE "active_admin_comments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "resource_id" varchar(255) NOT NULL, "resource_type" varchar(255) NOT NULL, "author_id" integer, "author_type" varchar(255), "body" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "namespace" varchar(255));
  CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "username" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "group_id" integer);
  INSERT INTO "users" VALUES(1,'flashdevlin@gmail.com','','$2a$10$Vx9lEjCUYGyybRKSd9THJOJUNfmEAIW0OXJlJUG57VKm0MEieW1.u',NULL,NULL,NULL,8,'2012-05-15 19:37:30.804227','2012-05-09 14:01:20.688785','127.0.0.1','127.0.0.1','2012-05-09 06:59:35.691492','2012-05-15 19:37:30.805707',NULL);
  INSERT INTO "users" VALUES(2,'noel@hotmail.com','','$2a$10$eYH5lwTKo.3oD38DNznME.feKLXgGf9CId2ySKRDJPoPQwxUi6Lky',NULL,NULL,NULL,1,'2012-05-09 14:55:39.160596','2012-05-09 14:55:39.160596','127.0.0.1','127.0.0.1','2012-05-09 14:55:39.049873','2012-05-09 14:55:39.161782',NULL);
  CREATE TABLE "admin_users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
  INSERT INTO "admin_users" VALUES(1,'admin@example.com','$2a$10$lrLP/V/nDf6IrIIkY.kX1Ovv3s1kvAvMjadt939W07AAhyfC/pWJq',NULL,NULL,NULL,3,'2012-05-09 09:09:30.310437','2012-05-09 08:12:16.629076','127.0.0.1','127.0.0.1','2012-05-09 06:50:39.387737','2012-05-09 09:09:30.311841');
  CREATE TABLE "profiles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "firstname" varchar(255), "lastname" varchar(255), "birthdate" date, "street" varchar(255), "neighborhood" varchar(255), "zipcode" varchar(255), "country" varchar(255), "tutor_name" varchar(255), "ocupation" varchar(255), "bio" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer, "city" varchar(255), "number" integer, "state" varchar(255));
  INSERT INTO "profiles" VALUES(1,'Jorge','Robles Grajeda','1990-05-17','Priv. Primo de verdad','Centro','28000','Mexico','Juan Antonio Chávez','Ing. Sistemas ','Nací el 17 de Mayo de 1990 en El Grullo, Jalisco, México. Próximamente actualizaré mi biografía, solo necesito recordarla.','2012-05-09 07:01:16.068489','2012-05-09 08:07:07.799442',1,'Colima',422,'Colima');
  INSERT INTO "profiles" VALUES(2,'Noel','Escobedo','1952-05-09','Cuauhtemoc','Centro','28000','Mexico','Damaso Lopez','Ingeniero en sistemas','ALgo','2012-05-09 14:57:28.698223','2012-05-09 14:57:28.698223',2,'Colima',15,'Colima');
  CREATE TABLE "groups" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "description" varchar(255), "organization_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
  CREATE TABLE "application_admin_users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
  CREATE TABLE "organizations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "descripcion" varchar(255), "address" varchar(255), "city" varchar(255), "county" varchar(255), "state" varchar(255), "country" varchar(255), "phone" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "application_admin_user_id" integer);
  CREATE TABLE "questions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "question" varchar(255), "answer" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
  INSERT INTO "questions" VALUES(1,'Tienes 200 naranjas. Y debes repartirlas entre 20 personas. ¿Cuántas naranjas le tocan a cada persona?','10,diez,Diez','2012-05-09 07:09:11.456055','2012-05-09 07:09:30.626352');
  INSERT INTO "questions" VALUES(2,'Pilar tiene 53 años y Juan tiene 59 años. ¿Cuántos años tienen entre los dos?','---
    - ! ''["112"''
    - ! '' "112 años"]''
    ','2012-05-09 07:46:20.291283','2012-05-09 09:11:44.724074');
  INSERT INTO "questions" VALUES(3,'Tiene una cita programada a las 4 pm con su dentista. Si son las 9 am, ¿Cuántas horas faltan para que sea su cita?','---
    - ! ''["7"]''
    ','2012-05-09 07:51:54.730693','2012-05-09 09:11:33.248168');
  INSERT INTO "questions" VALUES(4,'Adela tenía dinero ahorrado en su alcancia. Para su cumpleaños sus abuelos le dieron $30 y ahora comprueba que tiene $54. ¿Cuánto dinero tenía ahorrado al principio en su alcancia?','---
    - ! ''["24"]''
    ','2012-05-09 07:54:09.207203','2012-05-09 09:11:19.193983');
  INSERT INTO "questions" VALUES(5,'Complete la sencuencia: 2, 4, 6, 8, 10, 12, __, 16, 18.','---
    - ''14''
    ','2012-05-09 07:54:24.694174','2012-05-09 07:54:24.694174');
  INSERT INTO "questions" VALUES(6,'Complete la secuencia: 1, 11, 21, 31, ___, 51, 61.','---
    - ''41''
    ','2012-05-09 07:54:37.659698','2012-05-09 07:54:37.659698');
  INSERT INTO "questions" VALUES(7,'Escriba el resultado: 25+34=','---
    - ''59''
    ','2012-05-09 07:54:56.257670','2012-05-09 07:54:56.257670');
  INSERT INTO "questions" VALUES(8,'Escriba el resultado: 18/2=','---
    - ''9''
    ','2012-05-09 07:55:09.228132','2012-05-09 07:55:09.228132');
  INSERT INTO "questions" VALUES(9,'Escriba el resultado: 26*3=','---
    - ''78''
    ','2012-05-09 07:55:52.655860','2012-05-09 07:55:52.655860');
  INSERT INTO "questions" VALUES(10,'Resuelva lo siguiente: (5+15)/2=','---
    - ''10''
    ','2012-05-09 08:13:14.712915','2012-05-09 08:13:14.712915');
  INSERT INTO "questions" VALUES(11,'Si Jesús compra 3 Kg de arroz en $30 cada uno. ¿Cuál fue el total de la compra?','---
    - ''90''
    ','2012-05-09 08:14:30.084453','2012-05-09 08:14:30.084453');
  INSERT INTO "questions" VALUES(12,'Un vago hace cigarillos con las colillas que recoge del suelo. Si necesita 7 colillas para hacer un cigarillo, ¿Cuántos hará con 49 colillas?','---
    - ! ''["7"]''
    ','2012-05-09 08:16:16.064627','2012-05-09 09:11:01.125676');
  CREATE TABLE "gnosia" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "image_file_name" varchar(255), "image_content_type" varchar(255), "image_file_size" integer, "image_updated_at" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "answer" varchar(255), "question" varchar(255));
  INSERT INTO "gnosia" VALUES(1,'¿Qué sentimiento expresa la persona?','1.jpg','image/jpeg',38462,'2012-05-09 07:16:07.301706','2012-05-09 07:16:07.394662','2012-05-09 07:48:01.877406','---
    - felicidad
    - Felicidad
    - feliz
    - Feliz
    ','¿Qué sentimiento expresa la persona?');
  INSERT INTO "gnosia" VALUES(2,'Enojo','2.jpg','image/jpeg',86994,'2012-05-09 07:20:15.230259','2012-05-09 07:20:15.349858','2012-05-09 07:40:28.022423','---
    - enojo
    - Enojo
    - Enojado
    - enojado
    ','¿Qué sentimiento expresa la persona?');
  INSERT INTO "gnosia" VALUES(3,'Ira','3.jpg','image/jpeg',40469,'2012-05-09 07:26:16.117276','2012-05-09 07:26:16.201173','2012-05-09 07:40:36.743794','---
    - ira
    - Ira
    - odio
    - Odio
    ','¿Qué sentimiento expresa la persona?');
  INSERT INTO "gnosia" VALUES(4,'tristesa','4.jpg','image/jpeg',22075,'2012-05-09 07:26:59.727960','2012-05-09 07:26:59.806493','2012-05-09 07:40:44.307732','---
    - tristeza
    - Tristeza
    - triste
    - Triste
    ','¿Qué sentimiento expresa la persona?');
  INSERT INTO "gnosia" VALUES(5,'alegría','5.jpg','image/jpeg',16720,'2012-05-09 07:27:29.503581','2012-05-09 07:27:29.582283','2012-05-09 07:40:58.553950','---
    - alegria
    - Alegria
    - alegría
    - Alegría
    - felicidad
    - Felicidad
    ','¿Qué sentimiento expresa la persona?');
  INSERT INTO "gnosia" VALUES(6,'tristeza','6.jpg','image/jpeg',33949,'2012-05-09 07:27:53.132191','2012-05-09 07:27:53.218227','2012-05-09 07:41:06.112971','---
    - tristeza
    - Tristeza
    - triste
    - Triste
    - dolor
    - Dolor
    ','¿Qué sentimiento expresa la persona?');
  INSERT INTO "gnosia" VALUES(7,'manzana','1.jpg','image/jpeg',51344,'2012-05-09 07:28:42.299921','2012-05-09 07:28:42.499548','2012-05-09 07:41:23.434243','---
    - manzana
    - Manzana
    - manzana verde
    - Manzana verde
    ','¿Qué fruta es esta?');
  INSERT INTO "gnosia" VALUES(8,'piña','2.jpg','image/jpeg',169149,'2012-05-09 07:28:59.203020','2012-05-09 07:28:59.421299','2012-05-09 07:41:29.954466','---
    - piña
    - Piña
    ','¿Qué fruta es esta?');
  INSERT INTO "gnosia" VALUES(9,'frambuesa','3.jpg','image/jpeg',23071,'2012-05-09 07:29:30.706923','2012-05-09 07:29:30.785140','2012-05-09 07:41:36.918681','---
    - frambuesa
    - Frambuesa
    - frambuesas
    - Frambuesas
    ','¿Qué fruta es esta?');
  INSERT INTO "gnosia" VALUES(10,'fresa','4.jpg','image/jpeg',76865,'2012-05-09 07:29:49.569052','2012-05-09 07:29:49.720634','2012-05-09 07:41:47.884082','---
    - fresa
    - Fresa
    - Fresas
    - fresas
    ','¿Qué fruta es esta?');
  INSERT INTO "gnosia" VALUES(11,'pera','5.jpg','image/jpeg',7834,'2012-05-09 07:30:14.260013','2012-05-09 07:30:14.326532','2012-05-09 07:41:55.058822','---
    - pera
    - Pera
    - peras
    - Peras
    ','¿Qué fruta es esta?');
  INSERT INTO "gnosia" VALUES(12,'durazno','6.jpg','image/jpeg',4942,'2012-05-09 07:30:35.421542','2012-05-09 07:30:35.489613','2012-05-09 07:42:01.648322','---
    - durazno
    - Durazno
    - Duraznos
    - duraznos
    ','¿Qué fruta es esta?');
  INSERT INTO "gnosia" VALUES(13,'kiwi','7.jpg','image/jpeg',5420,'2012-05-09 07:31:01.465139','2012-05-09 07:31:01.530770','2012-05-09 07:42:07.972735','---
    - kiwi
    - Kiwi
    - Kiwis
    - kiwis
    ','¿Qué fruta es esta?');
  INSERT INTO "gnosia" VALUES(14,'aguacate','8.jpg','image/jpeg',6035,'2012-05-09 07:31:26.473616','2012-05-09 07:31:26.540005','2012-05-09 08:00:11.765837','---
    - aguacate
    - Aguacate
    ','¿Qué verdura es esta?');
  CREATE TABLE "memoria" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "answer" varchar(255), "image_file_name" varchar(255), "image_content_type" varchar(255), "image_file_size" integer, "image_updated_at" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
  INSERT INTO "memoria" VALUES(1,'Frutas','Varias frutas','1.jpg','image/jpeg',785903,'2012-05-09 06:59:07.426742','2012-05-09 06:59:10.988829','2012-05-09 06:59:10.988829');
  INSERT INTO "memoria" VALUES(2,'Oficina','Cosas de oficina','2.jpg','image/jpeg',125009,'2012-05-09 07:02:11.188300','2012-05-09 07:02:11.724231','2012-05-09 07:02:11.724231');
  INSERT INTO "memoria" VALUES(3,'Animales','Varios animales','3.jpg','image/jpeg',441671,'2012-05-09 07:02:40.674620','2012-05-09 07:02:41.444770','2012-05-09 07:02:41.444770');
  INSERT INTO "memoria" VALUES(4,'Frutas','Más frutas','4.jpg','image/jpeg',187908,'2012-05-09 07:03:04.612289','2012-05-09 07:03:05.294333','2012-05-09 07:03:05.294333');
  INSERT INTO "memoria" VALUES(5,'Caballos','Granja','5.jpg','image/jpeg',275335,'2012-05-09 07:03:56.105071','2012-05-09 07:03:56.807140','2012-05-09 07:03:56.807140');
  INSERT INTO "memoria" VALUES(6,'Animales','Varios animales más','6.jpg','image/jpeg',195312,'2012-05-09 07:04:11.431345','2012-05-09 07:04:12.085447','2012-05-09 07:04:12.085447');
  INSERT INTO "memoria" VALUES(7,'Objetos','Objetos','7.jpg','image/jpeg',103826,'2012-05-09 07:04:27.217196','2012-05-09 07:04:27.727614','2012-05-09 07:04:27.727614');
  INSERT INTO "memoria" VALUES(8,'Objetos 2','Objetos 2','8.jpg','image/jpeg',107289,'2012-05-09 07:04:43.207990','2012-05-09 07:04:43.744469','2012-05-09 07:04:43.744469');
  INSERT INTO "memoria" VALUES(9,'Objetos 3','Objetos 3','9.jpg','image/jpeg',106935,'2012-05-09 07:05:08.185299','2012-05-09 07:05:08.693502','2012-05-09 07:05:08.693502');
  INSERT INTO "memoria" VALUES(10,'Objetos','Objetos','10.jpg','image/jpeg',105891,'2012-05-09 07:05:29.483681','2012-05-09 07:05:30.005400','2012-05-09 07:05:30.005400');
  INSERT INTO "memoria" VALUES(11,'Objetos','Objetos','11.jpg','image/jpeg',101405,'2012-05-09 07:05:53.067841','2012-05-09 07:05:53.576852','2012-05-09 07:05:53.576852');
  CREATE TABLE "events" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "start_at" datetime, "end_at" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer, "description" text, "done" boolean);
  INSERT INTO "events" VALUES(1,'Apagar la estufa','2012-05-09 09:19:00.000000','2012-05-09 09:20:00.000000','2012-05-09 09:19:50.951361','2012-05-09 09:19:50.951361',1,'Necesito apagar la estufa porque se me queman los frijolitos.',NULL);
  INSERT INTO "events" VALUES(2,'Apagar las luces','2012-05-09 09:21:00.000000','2012-05-09 09:24:00.000000','2012-05-09 09:22:24.178966','2012-05-09 09:22:24.178966',1,'Apagar las luces de la casa.',NULL);
  INSERT INTO "events" VALUES(3,'Hacer ejercicios de praxia','2012-05-09 15:08:00.000000','2012-05-09 15:11:00.000000','2012-05-09 15:07:46.745137','2012-05-09 15:08:28.768866',2,'Hacer ejercicios de praxia','t');
  CREATE TABLE "languages" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_file_name" varchar(255), "image_content_type" varchar(255), "image_file_size" integer, "image_updated_at" datetime);
  INSERT INTO "languages" VALUES(1,'Lenguaje','2012-05-09 08:24:43.427423','2012-05-09 08:24:43.427423','L1.jpg','image/jpeg',52403,'2012-05-09 08:24:42.798735');
  INSERT INTO "languages" VALUES(2,'Lenguaje','2012-05-09 08:24:57.805325','2012-05-09 08:24:57.805325','L2.jpg','image/jpeg',55166,'2012-05-09 08:24:57.258001');
  INSERT INTO "languages" VALUES(3,'Lenguaje','2012-05-09 08:25:18.395179','2012-05-09 08:25:18.395179','L3.jpg','image/jpeg',77830,'2012-05-09 08:25:17.891741');
  INSERT INTO "languages" VALUES(4,'Lenguaje','2012-05-09 08:26:18.609881','2012-05-09 08:26:18.609881','L4.jpg','image/jpeg',85788,'2012-05-09 08:26:18.097687');
  INSERT INTO "languages" VALUES(5,'Lenguaje','2012-05-09 08:26:31.838030','2012-05-09 08:26:31.838030','L5.jpg','image/jpeg',55134,'2012-05-09 08:26:31.241731');
  INSERT INTO "languages" VALUES(6,'Lenguaje','2012-05-09 08:26:44.763556','2012-05-09 08:26:44.763556','L6.jpg','image/jpeg',49540,'2012-05-09 08:26:44.241024');
  INSERT INTO "languages" VALUES(7,'Lenguaje','2012-05-09 08:26:59.495393','2012-05-09 08:26:59.495393','L7.jpg','image/jpeg',58769,'2012-05-09 08:26:58.983147');
  INSERT INTO "languages" VALUES(8,'Lenguaje','2012-05-09 08:27:13.105379','2012-05-09 08:27:13.105379','L8.jpg','image/jpeg',52698,'2012-05-09 08:27:12.545970');
  INSERT INTO "languages" VALUES(9,'Lenguaje','2012-05-09 08:27:26.039856','2012-05-09 08:27:26.039856','L9.jpg','image/jpeg',55127,'2012-05-09 08:27:25.470753');
  INSERT INTO "languages" VALUES(10,'Lenguaje','2012-05-09 08:27:38.138338','2012-05-09 08:27:38.138338','L10.jpg','image/jpeg',59174,'2012-05-09 08:27:37.570598');
  INSERT INTO "languages" VALUES(11,'Lenguaje','2012-05-09 08:27:49.877916','2012-05-09 08:27:49.877916','L11.jpg','image/jpeg',56519,'2012-05-09 08:27:49.318712');
  INSERT INTO "languages" VALUES(12,'Lenguaje','2012-05-09 08:28:02.009580','2012-05-09 08:28:02.009580','L12.jpg','image/jpeg',52735,'2012-05-09 08:28:01.439181');
  INSERT INTO "languages" VALUES(13,'Lenguaje','2012-05-09 08:28:13.752424','2012-05-09 08:28:13.752424','L13.jpg','image/jpeg',56761,'2012-05-09 08:28:13.149705');
  INSERT INTO "languages" VALUES(14,'Lenguaje','2012-05-09 08:28:26.510744','2012-05-09 08:28:26.510744','L14.jpg','image/jpeg',55947,'2012-05-09 08:28:25.953597');
  INSERT INTO "languages" VALUES(15,'Lenguaje','2012-05-09 08:28:40.040524','2012-05-09 08:28:40.040524','L15.jpg','image/jpeg',56797,'2012-05-09 08:28:39.477679');
  INSERT INTO "languages" VALUES(16,'Lenguaje','2012-05-09 08:28:52.871358','2012-05-09 08:28:52.871358','L16.jpg','image/jpeg',52715,'2012-05-09 08:28:52.313649');
  INSERT INTO "languages" VALUES(17,'Lenguaje','2012-05-09 08:29:04.660670','2012-05-09 08:29:04.660670','L17.jpg','image/jpeg',43727,'2012-05-09 08:29:04.099944');
  INSERT INTO "languages" VALUES(18,'Lenguaje','2012-05-09 08:29:19.586393','2012-05-09 08:29:19.586393','L18.jpg','image/jpeg',49732,'2012-05-09 08:29:19.017478');
  INSERT INTO "languages" VALUES(19,'Lenguaje','2012-05-09 08:29:33.332876','2012-05-09 08:29:33.332876','L19.jpg','image/jpeg',58479,'2012-05-09 08:29:32.799712');
  INSERT INTO "languages" VALUES(20,'Lenguaje','2012-05-09 08:29:45.333269','2012-05-09 08:29:45.333269','L20.jpg','image/jpeg',51250,'2012-05-09 08:29:44.808704');
  INSERT INTO "languages" VALUES(21,'Lenguaje','2012-05-09 08:30:01.240228','2012-05-09 08:30:01.240228','L21.jpg','image/jpeg',54422,'2012-05-09 08:30:00.705498');
  INSERT INTO "languages" VALUES(22,'Lenguaje','2012-05-09 08:30:14.876603','2012-05-09 08:30:14.876603','L22.jpg','image/jpeg',52974,'2012-05-09 08:30:14.342122');
  INSERT INTO "languages" VALUES(23,'Lenguaje','2012-05-09 08:30:32.899159','2012-05-09 08:30:32.899159','L23.jpg','image/jpeg',62005,'2012-05-09 08:30:32.348364');
  INSERT INTO "languages" VALUES(24,'Lenguaje','2012-05-09 08:30:47.745281','2012-05-09 08:30:47.745281','L24.jpg','image/jpeg',64715,'2012-05-09 08:30:47.229716');
  INSERT INTO "languages" VALUES(25,'Lenguaje','2012-05-09 08:30:59.293568','2012-05-09 08:30:59.293568','L25.jpg','image/jpeg',66378,'2012-05-09 08:30:58.718156');
  CREATE TABLE "orientations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_file_name" varchar(255), "image_content_type" varchar(255), "image_file_size" integer, "image_updated_at" datetime);
  INSERT INTO "orientations" VALUES(1,'Orientación','2012-05-09 08:32:34.552057','2012-05-09 08:32:34.552057','OE1.jpg','image/jpeg',49053,'2012-05-09 08:32:34.041961');
  INSERT INTO "orientations" VALUES(2,'Orientación','2012-05-09 08:32:44.548371','2012-05-09 08:32:44.548371','OE2.jpg','image/jpeg',44078,'2012-05-09 08:32:43.991094');
  INSERT INTO "orientations" VALUES(3,'Orientación','2012-05-09 08:32:55.902324','2012-05-09 08:32:55.902324','OE3.jpg','image/jpeg',43857,'2012-05-09 08:32:55.364926');
  INSERT INTO "orientations" VALUES(4,'Orientación','2012-05-09 08:33:07.835721','2012-05-09 08:33:07.835721','OE4.jpg','image/jpeg',43681,'2012-05-09 08:33:07.319464');
  INSERT INTO "orientations" VALUES(5,'Orientación','2012-05-09 08:33:21.947034','2012-05-09 08:33:21.947034','OE5.jpg','image/jpeg',54237,'2012-05-09 08:33:21.397611');
  INSERT INTO "orientations" VALUES(6,'Orientación','2012-05-09 08:33:35.090358','2012-05-09 08:33:35.090358','OE6.jpg','image/jpeg',37959,'2012-05-09 08:33:34.543833');
  INSERT INTO "orientations" VALUES(7,'Orientación','2012-05-09 08:33:52.521988','2012-05-09 08:33:52.521988','OE7.jpg','image/jpeg',52282,'2012-05-09 08:33:51.967121');
  INSERT INTO "orientations" VALUES(8,'Orientación','2012-05-09 08:34:02.361219','2012-05-09 08:34:02.361219','OE8.jpg','image/jpeg',52645,'2012-05-09 08:34:01.722915');
  INSERT INTO "orientations" VALUES(9,'Orientación','2012-05-09 08:34:16.213052','2012-05-09 08:34:16.213052','OE9.jpg','image/jpeg',42859,'2012-05-09 08:34:15.641735');
  INSERT INTO "orientations" VALUES(10,'Orientación','2012-05-09 08:34:28.535559','2012-05-09 08:34:28.535559','OE10.jpg','image/jpeg',45123,'2012-05-09 08:34:28.003936');
  INSERT INTO "orientations" VALUES(11,'Orientación','2012-05-09 08:34:41.526735','2012-05-09 08:34:41.526735','OE11.jpg','image/jpeg',44447,'2012-05-09 08:34:40.985288');
  INSERT INTO "orientations" VALUES(12,'Orientación','2012-05-09 08:34:56.797372','2012-05-09 08:34:56.797372','OE12.jpg','image/jpeg',42944,'2012-05-09 08:34:56.276205');
  INSERT INTO "orientations" VALUES(13,'Orientación','2012-05-09 08:35:09.787167','2012-05-09 08:35:09.787167','OE13.jpg','image/jpeg',45621,'2012-05-09 08:35:09.177197');
  INSERT INTO "orientations" VALUES(14,'Orientación','2012-05-09 08:35:21.674037','2012-05-09 08:35:21.674037','OE14.jpg','image/jpeg',41239,'2012-05-09 08:35:21.138057');
  INSERT INTO "orientations" VALUES(15,'Orientación','2012-05-09 08:35:36.259338','2012-05-09 08:35:36.259338','OE15.jpg','image/jpeg',43611,'2012-05-09 08:35:35.646609');
  INSERT INTO "orientations" VALUES(16,'Orientación','2012-05-09 08:35:48.283897','2012-05-09 08:35:48.283897','OE16.jpg','image/jpeg',41443,'2012-05-09 08:35:47.740355');
  CREATE TABLE "praxia" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_file_name" varchar(255), "image_content_type" varchar(255), "image_file_size" integer, "image_updated_at" datetime);
  INSERT INTO "praxia" VALUES(1,'Praxia','2012-05-09 08:36:43.738645','2012-05-09 08:36:43.738645','Untitled_1.bmp','image/bmp',2359350,'2012-05-09 08:36:43.288581');
  INSERT INTO "praxia" VALUES(2,'Praxia','2012-05-09 08:36:59.663487','2012-05-09 08:36:59.663487','Untitled_1.jpg','image/jpeg',107380,'2012-05-09 08:36:59.115696');
  INSERT INTO "praxia" VALUES(3,'Praxia','2012-05-09 08:37:11.539270','2012-05-09 08:37:11.539270','Untitled_2.jpg','image/jpeg',129362,'2012-05-09 08:37:10.943055');
  INSERT INTO "praxia" VALUES(4,'Praxia','2012-05-09 08:37:37.565527','2012-05-09 08:37:37.565527','Untitled_3.jpg','image/jpeg',92092,'2012-05-09 08:37:36.998181');
  INSERT INTO "praxia" VALUES(5,'Praxia','2012-05-09 08:37:52.438881','2012-05-09 08:37:52.438881','Untitled_4.jpg','image/jpeg',160949,'2012-05-09 08:37:51.849237');
  INSERT INTO "praxia" VALUES(6,'Praxia','2012-05-09 08:38:05.066494','2012-05-09 08:38:05.066494','Untitled_5.jpg','image/jpeg',78121,'2012-05-09 08:38:04.522755');
  INSERT INTO "praxia" VALUES(7,'Praxia','2012-05-09 08:38:18.525672','2012-05-09 08:38:18.525672','Untitled_6.jpg','image/jpeg',108313,'2012-05-09 08:38:17.956934');
  INSERT INTO "praxia" VALUES(8,'Praxia','2012-05-09 08:38:33.193673','2012-05-09 08:38:33.193673','Untitled_7.jpg','image/jpeg',130415,'2012-05-09 08:38:32.619749');
  INSERT INTO "praxia" VALUES(9,'Praxia','2012-05-09 08:38:49.787161','2012-05-09 08:38:49.787161','Untitled_8.jpg','image/jpeg',101983,'2012-05-09 08:38:49.185045');
  INSERT INTO "praxia" VALUES(10,'Praxia','2012-05-09 08:39:04.124387','2012-05-09 08:39:04.124387','Untitled_9.jpg','image/jpeg',79203,'2012-05-09 08:39:03.544268');
  INSERT INTO "praxia" VALUES(11,'Praxia','2012-05-09 08:39:17.915233','2012-05-09 08:39:17.915233','Untitled_10.jpg','image/jpeg',131781,'2012-05-09 08:39:17.365605');
  INSERT INTO "praxia" VALUES(12,'Praxia','2012-05-09 08:39:36.479507','2012-05-09 08:39:36.479507','Untitled_11.jpg','image/jpeg',136688,'2012-05-09 08:39:35.892513');
  INSERT INTO "praxia" VALUES(13,'Praxia','2012-05-09 08:39:52.564887','2012-05-09 08:39:52.564887','Untitled_12.jpg','image/jpeg',93447,'2012-05-09 08:39:52.001619');
  INSERT INTO "praxia" VALUES(14,'Praxia','2012-05-09 08:40:04.339922','2012-05-09 08:40:04.339922','Untitled_13.jpg','image/jpeg',69221,'2012-05-09 08:40:03.775276');
  INSERT INTO "praxia" VALUES(15,'Praxia','2012-05-09 08:40:17.326168','2012-05-09 08:40:17.326168','Untitled_14.jpg','image/jpeg',60743,'2012-05-09 08:40:16.786499');
  INSERT INTO "praxia" VALUES(16,'Praxia','2012-05-09 08:40:32.741518','2012-05-09 08:40:32.741518','Untitled_15.jpg','image/jpeg',130602,'2012-05-09 08:40:32.167756');
  INSERT INTO "praxia" VALUES(17,'Praxia','2012-05-09 08:40:44.434919','2012-05-09 08:40:44.434919','Untitled_16.jpg','image/jpeg',52240,'2012-05-09 08:40:43.916756');
  INSERT INTO "praxia" VALUES(18,'Praxia','2012-05-09 08:40:57.357327','2012-05-09 08:40:57.357327','Untitled_17.jpg','image/jpeg',44470,'2012-05-09 08:40:56.785792');
  DELETE FROM sqlite_sequence;
  INSERT INTO "sqlite_sequence" VALUES('admin_users',1);
  INSERT INTO "sqlite_sequence" VALUES('memoria',11);
  INSERT INTO "sqlite_sequence" VALUES('users',2);
  INSERT INTO "sqlite_sequence" VALUES('profiles',2);
  INSERT INTO "sqlite_sequence" VALUES('questions',12);
  INSERT INTO "sqlite_sequence" VALUES('gnosia',16);
  INSERT INTO "sqlite_sequence" VALUES('languages',25);
  INSERT INTO "sqlite_sequence" VALUES('orientations',16);
  INSERT INTO "sqlite_sequence" VALUES('praxia',18);
  INSERT INTO "sqlite_sequence" VALUES('events',3);
  CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
  CREATE INDEX "index_admin_notes_on_resource_type_and_resource_id" ON "active_admin_comments" ("resource_type", "resource_id");
  CREATE INDEX "index_active_admin_comments_on_namespace" ON "active_admin_comments" ("namespace");
  CREATE INDEX "index_active_admin_comments_on_author_type_and_author_id" ON "active_admin_comments" ("author_type", "author_id");
  CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
  CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
  CREATE UNIQUE INDEX "index_admin_users_on_email" ON "admin_users" ("email");
  CREATE UNIQUE INDEX "index_admin_users_on_reset_password_token" ON "admin_users" ("reset_password_token");
  CREATE UNIQUE INDEX "index_application_admin_users_on_email" ON "application_admin_users" ("email");
  CREATE UNIQUE INDEX "index_application_admin_users_on_reset_password_token" ON "application_admin_users" ("reset_password_token");
  COMMIT;

