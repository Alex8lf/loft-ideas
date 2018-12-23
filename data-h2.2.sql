SET DB_CLOSE_DELAY -1;         
;              
CREATE USER IF NOT EXISTS SA SALT '9d42be6ca9f24bec' HASH '0a9c9f5bcc0f742cca55ff459e4499b523af658d4f329488c4e352fc7b9e97db' ADMIN;            
CREATE SEQUENCE PUBLIC."hibernate_sequence" START WITH 1;      
CREATE MEMORY TABLE PUBLIC."organization"(
    "id" BIGINT NOT NULL,
    "kind" VARCHAR(255),
    "name" VARCHAR(255),
    "url" VARCHAR(255)
);               
ALTER TABLE PUBLIC."organization" ADD CONSTRAINT PUBLIC.CONSTRAINT_4 PRIMARY KEY("id");        
-- 20 +/- SELECT COUNT(*) FROM PUBLIC."organization";

INSERT INTO PUBLIC."organization"("id", "kind", "name", "url") VALUES
(1, 'Магазин электротехники', 'Белый Ветер', 'https://ru.wikipedia.org/wiki/Белый_Ветер_Цифровой'),
(2, 'Антикафе', 'Гвоздь', 'https://twitter.com/anticafegvozd'),
(3, 'Бар', 'Синий забор', 'https://vk.com/sinii.zabor'),
(4, 'Магазин электротехники', 'DNS', 'https://www.dns-shop.ru/'),
(5, 'Суши-бар', 'Часть суши', 'http://chast-sushi.ru/'),
(6, 'Кафе', 'NORA COMMUNITY', 'https://vk.com/nora_com'),
(7, 'Ресторан', 'IL Патио', 'http://ilpatio.ru/'),
(8, 'Магазин видеоигр', '1С Интерес', ''),
(9, 'Пекарня/Кондитерская', 'Круассан Дорэ', 'https://vk.com/croissantdore1'),
(10, 'Бар', 'Killfish', 'https://vk.com/killfishbar'),
(11, 'Кафе', 'Veranda', 'https://ru.foursquare.com/v/veranda/4d63b435bd253704c93fd0c5'),
(12, 'Гастропаб', 'Barrymore', ''),
(13, 'Фаст-фуд', 'Starfood', ''),
(14, 'Паб', 'Бутлегер', ''),
(15, 'Ресторан', 'Гаврош', ''),
(16, 'Зоомагазин', 'Клеопатка Хэппи', 'https://vk.com/kleopatrahappy'),
(17, 'Кофейня', 'Double B Coffee Tea', ''),
(18, 'Ресторан', 'Эль Капоне', ''),
(19, 'Паб', 'Pretty Dolphin', ''),
(20, 'Суши-бар', 'Sushi House', ''),
(21, 'Суши-бар', 'Якитория', 'https://yakitoriya.ru/en/'),
(22, 'Кофейня', 'Фламбэ', ''),
(23, 'Суши-бар', 'Автосуши', 'https://nn.avtosushi.ru/'),
-- 24 veranda -> 11
(25, 'Шиномонтаж', 'Стелс', ''),
(26, 'Ресторан', 'Марше', ''),
(27, 'Суши-бар', 'Быстро суши', ''),
(28, 'Суши-бар', 'Шире Хари', ''),
(29, 'Итальянский ресторан', 'Trattoria Peperoni', ''),
(30, 'Визовый центр', 'VFS-Global', ''),
(31, 'Кафе', 'Стамбульские сладости', ''),
(32, 'Итальянский ресторан', 'Остерия Олива', ''),
(33, 'Кофейня', 'Coffee Cake', ''),
(34, 'Итальянский ресторан', 'Pronto Pizza e Pasta', ''),
(35, 'Ресторан', 'Али Баба', ''),
(36, 'Суши-бар', 'Самурай', 'https://samurai-nn.ru/'),
(37, 'Музей', 'Кварки', 'http://kvarky.ru/'),
(38, 'Ресторан', 'Рояль', ''),
(39, 'Бар', 'Tesla Bar', ''),
(40, 'Бар', 'Fabrika Bar', ''),
-- 41 il патио -> 7
(42, 'Итальянский ресторан', 'Перчини', ''),
(43, 'Магазин шин и дисков', 'McWheels.ru', ''),
(44, 'Кафе', 'Дель Пара', ''),
(45, 'Бар', 'Ленинград', ''),
(46, 'Кафе', 'Green Room', ''),
-- 47 sushi houst -> 20
(48, 'Кафе', 'Кудяблишная', ''),
-- 49 шире хари -> 28
(50, 'Салон красоты', 'Trandline', ''),
(51, 'Ресторан', 'Gusto Soup', ''),
(52, 'Кофейня', '42', ''),
(53, 'Фаст-фуд', 'Burger King', ''),
(54, 'Ресторан', 'Мишель', ''),
(55, 'Кафе', 'Приют Усталого Тракториста', ''),
(56, 'Бар', 'Mesto', ''),
(57, 'Лаунж-бар', 'Del Lounge Cafe', ''),
(58, 'Арт-кафе', 'Б/У', ''),
(59, 'Кафе', 'Moloko Friday', ''),
(60, 'Сэндвич-бар', 'LIKE', ''),
(61, 'Клуб', 'VAСЯ+1', ''),
-- 62 эль капоне -> 18
-- 63 il патио -> 7
(64, 'Тату-салон', 'Наколочная', ''),
(65, 'Кафе', 'КофеТун', ''),
(66, 'Ресторан', 'Миндаль', ''),
-- 67 il патио -> 7
(68, 'Кафе', 'ТАО', ''),
(69, 'Кафе', 'Hermitage', ''),
(70, 'Ресторан', 'Строганов Стейк Хаус', ''),
(71, 'Кофейня', 'Coffein', ''),
-- 72 автосуши -> 23
(73, 'Магазин спортивных товаров', 'Триал-спорт', ''),
(74, 'Ресторан', 'Sbarro', ''),
(75, 'Паб', 'Кельтский Дом', ''),
(76, 'Кафе', 'Крокодил Приходил', ''),
(77, 'Итальянский ресторан', 'SuperMario Pizza', ''),
(78, 'Супермаркет', 'Пятёрочка', ''),
(79, 'Юридические услуги', 'Равновесие', ''),
(80, 'Ремонт оргтехники', 'Оргтехсервис', ''),
(81, 'Супермаркет', 'SPAR', ''),
(82, 'Кафе', 'Черный Пруд', ''),
(83, 'Крепёжные изделия', 'Титан', ''),
(84, 'Аптека', 'Farmani', ''),
-- 85 spar -> 81
(86, 'Курьерские услуги', 'Boxberry', ''),
(87, 'Перевозки', 'ПЭК', ''),
(88, 'Магазин', 'Продукты', ''),
-- 89 boxberry -> 86
-- 90 farmani -> 84
(91, 'Автотюнинг', 'Автостекла', ''),
(92, 'Супермаркет', '555', ''),
(93, 'Стройматериалы', 'База', ''),
(94, 'Магазин', 'Волга', ''),
(95, 'Турагенство', 'Евразия', ''),
(96, 'Кофейня', 'Бодрый день', ''),
(97, 'Супермаркет', 'Перекресток', ''),
(98, 'Парикмахерская', 'Веста', ''),
(99, 'Аптека', 'Мила', ''),
(100, 'Нефтепродукты', 'ННК', ''),
(101, 'Спецодежда', 'Канзов', ''),
(102, 'Магазин мягкой мебели', 'Авангард', ''),
(103, 'Строительный магазин', 'Технополис', ''),
(104, 'Ресторан', 'Pranzo', ''),
(105, 'Автоломбард', 'Алмаз', ''),
(106, 'Магазин игрушек', 'Тойся', ''),
(107, 'Лизинг', 'ВЛК', ''),
(108, 'Автомойка', 'Ура', ''),
(109, 'Супермаркет', 'Лайм', ''),
(110, 'Вейп', 'ПараМаг', ''),
(111, 'Бакн', 'Альфа-Банк', ''),
(112, 'Строительный сервис', 'Окна для всех', '');

CREATE MEMORY TABLE PUBLIC."story"(
    "id" BIGINT NOT NULL,
    "address" VARCHAR(255),
    "date" TIMESTAMP,
    "details" VARCHAR(255),
    "kind" VARCHAR(255),
    "name" VARCHAR(255),
    "reason" VARCHAR(255),
    "x" VARCHAR(255),
    "y" VARCHAR(255),
    "organization_id" BIGINT
);           
ALTER TABLE PUBLIC."story" ADD CONSTRAINT PUBLIC.CONSTRAINT_6 PRIMARY KEY("id");               
-- 20 +/- SELECT COUNT(*) FROM PUBLIC."story"; 

INSERT INTO PUBLIC."story"("id", "address", "date", "details", "kind", "name", "reason", "x", "y", "organization_id") VALUES
(1, 'ул. Белинского, 61', TIMESTAMP '2014-08-28', 'https://www.nn.ru/news/gorod/2014/08/28/magazin_zakryt_belyy_veter_poprosil_sud_priznat_ego_bankrotom/', 'Place Closed', 'Закрытие магазина Белый Ветер', 'Банкротство', '56.3171134290679', '44.02156151559096', 1),
(2, 'Большая Печерская 14', TIMESTAMP '2015-01-01', '', 'Place Closed', 'Закрытие Антикафе "Гвоздь"', 'Неизвестная причина', '56.32604256420478', '44.018555581569665', 2),
(3, 'ул.Пискунова, 9', TIMESTAMP '2018-06-13', 'https://vk.com/sinii.zabor?w=wall-155358353_48/all', 'Place Closed', 'Закрытие Синго забора', 'Банкротство', '', '', 3),
(4, 'Кулибина 3а', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Dns На Лядова', 'Неизвестная причина', '56.30797972800697', '43.98882873352473', 4),
(5, 'ул. Коминтерна, 105', TIMESTAMP '2014-05-10', '', 'Place Closed', 'Закрытие Часть суши', 'Неизвестная причина', '56.34836328357207', '43.86972784996033', 5),
(6, 'Большая Покровская ул., 52', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Nora Community', 'Неизвестная причина', '56.32242702365031', '44.0041708946228', 6),
(7, 'ул. Белинского, 63', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие IL Патио', 'Неизвестная причина', '56.31689182479907', '44.01917006598147', 7),
(8, 'Московское шоссе, д. 12', TIMESTAMP '2016-11-30', 'https://www.1c-interes.ru/news/23006794/', 'Place Closed', 'Закрытие магазина 1С Интерес', 'Неизвестная причина', '56.318149208109915', '43.92517447471619', 8),
(9, 'улица Максима Горького 156', TIMESTAMP '2017-05-01', 'http://apn-nn.com/news/sud-zakryl-perkarnyu-kruassan-dore-v-nizhnem-novgorode-za-narushenie-sanitarnykh-trebovaniy-/', 'Place Closed', 'Закрытие Круассан Дорэ', 'Постановление суда', '56.28327979667942', '44.03124906315357', 9),
(10, 'ул. Большая Покровская, 22', TIMESTAMP '2016-01-01', '', 'Place Closed', 'Закрытие Killfish', 'Неизвестная причина', '56.321276136539815', '43.99948100311168', 10),
(11, 'Большая Покровская ул., 49', TIMESTAMP '2013-05-01', '', 'Place Closed', 'Закрытие Veranda', 'Неизвестная причина', '56.31744710080525', '43.9946973323822', 11),
(12, 'Рождественская ул., 14', TIMESTAMP '2017-01-25', 'http://nn.dk.ru/news/gastropab-barrymore-na-ul-rozhdestvenskoy-zakroetsya-v-marte-237066837', 'Place Closed', 'Закрытие Barrymore', 'Начало нового проекта владельцем', '56.329252030684145', '43.99171579511652', 12),
(13, 'ул. Минина, 16а', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Starfood', 'Неизвестная причина', '56.328221241683984', '44.01680946350098', 13),
(14, 'Большая Печерская, 37', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Бутлегера', 'Неизвестная причина', '56.32420286052412', '44.025896787643426', 14),
(15, 'Рождественская ул., 23', TIMESTAMP '2017-05-01', 'http://nn.dk.ru/news/gavrosh-v-tom-sostoyanii-v-kotorom-on-seychas-nahoditsya-nekonkurentnosposoben-kotyusov-237110345', 'Place Closed', 'Закрытие Гавроша', 'Начало нового проекта владельцем', '56.32956006490348', '43.99311879344366', 15),
(16, 'ул. Белозерская, 1', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие зоомагазина Клеопатра Хэппи', 'Неизвестная причина', '56.3483930100527', '43.87209892272949', 16),
(17, 'Большая Покровская ул., 10', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Double B Coffee Tea', 'Неизвестная причина', '56.32386673693437', '44.00275468826294', 17),
(18, 'Большая Покровская ул., 2', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Эль Капоне', 'Неизвестная причина', '56.32540963329243', '44.00391027223615', 18),
(19, 'Рождественская ул., 22б', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Pretty Dolphin', 'Неизвестная причина', '56.32858735239756', '43.98944025280513', 19),
(20, 'ул. Большая Покровская', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Sushi House', 'Неизвестная причина', '56.31771021466146', '43.995605330343274', 20),
(21, 'ТРЦ Берлин', TIMESTAMP '2015-11-12', 'http://nn.dk.ru/news/restorany-seti-yakitoriya-uhodyat-s-nizhegorodskogo-rynka-236994307', 'Place Closed', 'Закрытие Якитории', 'Неизвестная причина', '56.31648912001568', '44.00590360164642', 21),
(22, 'пл. Горького, 2', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Фламбэ', 'Неизвестная причина', '56.315730320324604', '43.99174337227867', 22),
(23, 'Большая Покровская ул., 49', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Автосуши', 'Неизвестная причина', '56.31744365774503', '44.02692177717746', 23),
(24, 'Большая Покровская ул., 49', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Veranda', 'Неизвестная причина', '56.31744710080525', '43.9946973323822', 11),
(25, 'ул. Щербакова, 15', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Стелс', 'Неизвестная причина', '56.297526866954165', '43.93857479095459', 25),
(26, 'наб. Гребного Канала, 108', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Марше, Нижегородская обл.', 'Неизвестная причина', '56.306526632399404', '44.07597505308494', 26),
(27, 'просп. Ленина, 51, корп.1', TIMESTAMP '2017-05-01', 'https://progorodnn.ru/news/34102', 'Place Closed', 'Закрытие Быстро суши', 'Неизвестная причина', '56.278799402600406', '43.92180562019348', 27),
(28, 'Большая Покровская ул.', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Шире Хари', 'Неизвестная причина', '56.318188184603414', '43.9965066663047', 28),
(29, 'ул. Щербакова, 15', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Trattoria Peperoni', 'Неизвестная причина', '56.317159609130535', '43.994670874868234', 29),
(30, 'ул. Щербакова, 15', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие сервисно-визового центра VFS-Global', 'Неизвестная причина', '56.31993387361645', '44.00952669309941', 30),
(31, 'ул. Энгельса', TIMESTAMP '2017-05-01', 'https://www.kommersant.ru/doc/2255522', 'Place Closed', 'Закрытие Стамбульских сладостей', 'Неизвестная причина', '56.3506848519569', '43.86833310127258', 31),
(32, 'Московское ш., 12', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Остерии Олива', 'Неизвестная причина', '56.31742283805752', '43.92474438525395', 32),
(33, 'ул. Родионова, 187', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Coffee Cake', 'Неизвестная причина', '56.30722319229336', '44.07509395437531', 33),
(34, 'Веденяпина, 1а', TIMESTAMP '2017-05-01', 'http://nn.dk.ru/news/neformat-v-nizhnem-novgorode-zakrylas-odna-iz-dvuh-pronto-pizza-237070563', 'Place Closed', 'Закрытие Pronto Pizza e Pasta', 'Низкая посещаемость', '56.239384269819276', '43.86578914085068', 34),
(35, 'ул. Алексеевская, 15', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Али Бабы', 'Неизвестная причина', '56.32242107430925', '44.00405824184418', 35),
(36, 'ул. Культуры, 6', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Самурая', 'Неизвестная причина', '56.348938893430116', '43.85963129456944', 36),
(37, 'Совнаркомовская ул., 13', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Музея занимательных наук «Кварки»', 'Переезд', '56.328563239528506', '43.961060102347886', 37),
(38, 'Нижне-Волжская наб., 1', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие ресторана Рояль', 'Неизвестная причина', '56.293998538020034', '43.978600409177126', 38),
(39, 'ул. Б. Покровская, 49', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Tesla Bar', 'Неизвестная причина', '56.31724976704911', '43.994789254445834', 39),
(40, 'Нижневолжская наб., 16', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Fabrika Bar', 'Неизвестная причина', '56.327444688006835', '43.98461533792956', 40),
(41, 'ул. Белинского, 63', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие IL Патио', 'Неизвестная причина', '56.31689182479907', '44.01917006598147', 7),
(42, 'ул. Большая Покровская, 52', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Перчини', 'Неизвестная причина', '56.3165208907531', '43.99454740214577', 42),
(43, 'Казанская Набережная, 5', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие McWheels.ru', 'Неизвестная причина', '56.322968409808325', '44.03659343719482', 43),
(44, 'ул. Алексеевская, 6', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Дель Пара', 'Неизвестная причина', '56.32474124701022', '44.00593042373657', 44),
(45, 'ул. Нижневолжская набережная, 1в', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие бара Ленинград', 'Неизвестная причина', '56.29363869236037', '43.98035470904569', 45),
(46, 'ул. Алексеевская, 11', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Green Room', 'Неизвестная причина', '56.322930786663996', '44.00484111395697', 46),
(47, 'ул. Большая Покровская', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Sushi House', 'Неизвестная причина', '56.31771021466146', '43.995605330343274', 20),
(48, 'Большая Покровская ул., 22', TIMESTAMP '2017-05-01', 'http://anisimov.biz/kudyablishnaya-closed/', 'Place Closed', 'Закрытие Кудяблишной', 'Банкротство', '56.32135342926157', '43.999598476175876', 48),
(49, 'Большая Покровская ул.', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Шире Хари', 'Неизвестная причина', '56.318188184603414', '43.9965066663047', 28),
(50, 'Большая Покровская ул., 32', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Beauty Salon Trandline', 'Неизвестная причина', '56.24142551014491', '43.848345990428555', 50),
(51, 'Большая Покровская, 2', TIMESTAMP '2017-05-03', 'http://nn.dk.ru/news/gusto-soup-v-nizhnem-novgorode-zakrylos-237072524', 'Place Closed', 'Закрытие Gusto Soup', 'Низкая посещаемость', '56.32522050832469', '44.00363189407867', 51),
(52, 'ул. Большая Покровская, 2', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие кофейни 42', 'Неизвестная причина', '56.32525915430358', '44.0037644007063', 52),
(53, 'Большая Покровская ул.', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Burger King', 'Неизвестная причина', '56.317522114611656', '43.99540405315991', 53),
(54, 'ул. Большая Покровская, 6', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Мишель', 'Неизвестная причина', '56.32474124701022', '44.003618359565735', 54),
(55, 'Большая Покровская ул., 14', TIMESTAMP '2017-05-01', 'http://gofoods.me/?p=2495', 'Place Closed', 'Закрытие приюта Усталого Тракториста', 'Неизвестная причина', '56.322956536438625', '44.00128739814017', 55),
(56, 'Рождественская ул., 35/5', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие бара Mesto', 'Неизвестная причина', '56.328599323216146', '43.98717451502036', 56),
(57, 'Октябрьская ул., 12', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие бара Del Lounge Cafe', 'Неизвестная причина', '56.32216245222869', '44.003428323406254', 57),
(58, 'ул. Звездинка 10', TIMESTAMP '2017-05-01', 'https://citifox.ru/event/oficialnoe-zakrytie-bu-2/', 'Place Closed', 'Закрытие арт-кафе Б/У', 'Неизвестная причина', '56.316453418403725', '43.994659781455994', 58),
(59, 'ул. Родионова, 187', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Moloko Friday', 'Неизвестная причина', '56.31471722937671', '44.07015393126486', 59),
(60, 'ул. Большая Покровская, 24', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие LIKE', 'Неизвестная причина', '56.320987256073444', '43.99953603744507', 60),
(61, 'ул. Красная слобода, 9', TIMESTAMP '2016-05-01', 'http://www.vremyan.ru/news/nochnoj_klub_sgorel_v_nizhnem_novgorode_minuvshej_nochju.html', 'Place Closed', 'Закрытие VAСЯ+1', 'Пожар', '56.32972935838337', '44.02606433545963', 61),
(62, 'Большая Покровская ул.', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Эль Капоне', 'Неизвестная причина', '56.32540963329243', '44.00391027223615', 18),
(63, 'ул. Белинского, 63', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие IL Патио', 'Неизвестная причина', '56.31689182479907', '44.01917006598147', 7),
(64, 'Алексеевская 24', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Наколочной', 'Неизвестная причина', '56.31978381749861', '44.003221325439476', 64),
(65, 'ТЦ Седьмое небо', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие КофеТун', 'Неизвестная причина', '56.34034529597958', '43.95802009336337', 66),
(66, 'ул. Максима Горького, 152', TIMESTAMP '2017-05-01', 'https://www.nn.ru/news/more/epidemiya_restoran_vostochnoy_kukhni_zakryvaetsya_v_tsentre_nizhnego_novgoroda/53654481/', 'Place Closed', 'Закрытие Миндаля', 'Неизвестная причина', '56.31509066910511', '43.99986680000525', 66),
(67, 'ул. Уральская, 1А', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие IL Патио', 'Неизвестная причина', '55.81044266434259', '37.797801327365846', 7),
(68, 'Рождественская ул., 39', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие ТАО', 'Неизвестная причина', '56.32781102049919', '43.985456327861414', 68),
(69, 'Большая Покровская ул., 21', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Hermitage', 'Неизвестная причина', '56.32186785674932', '43.99993002665916', 69),
(70, 'Рождественская ул.', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Строганов Стейк Хаус', 'Неизвестная причина', '56.32812792497687', '43.987081824913986', 70),
(71, 'Большая Печерская ул., 55', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Coffein', 'Неизвестная причина', '56.32325694764648', '44.03049409389496', 71),
(72, 'Малая Ямская ул., 65', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие Автосуши', 'Неизвестная причина', '56.309413318989016', '43.979978426285854', 23),
(73, 'пр. Гагарина, 166', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие магазина Триал-спорт', 'Неизвестная причина', '56.25392699082123', '43.970007576973295', 73),
(74, 'ул. Родионова, 187', TIMESTAMP '2017-05-01', 'https://versia.ru/pochemu-nekogda-uspeshnaya-set-restoranov-sbarro-okazalas-na-grani-bankrotstva', 'Place Closed', 'Закрытие Sbarro', 'Неизвестная причина', '56.307778042766266', '44.074958759737726', 74),
(75, 'ул. Алексеевская, 29/25', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие паба Кельтский Дом', 'Неизвестная причина', '56.32038938457664', '44.00318914251463', 75),
(76, 'Карла Маркса 46', TIMESTAMP '2016-01-27', 'https://vk.com/krokodilprihodil?w=wall-73220640_464', 'Place Closed', 'Закрытие кафе Крокодил Приходил', 'Неизвестная причина', '56.341055543076095', '43.94920484700044', 76),
(77, 'просп., Ленина 67/1', TIMESTAMP '2017-05-01', '', 'Place Closed', 'Закрытие SuperMario Pizza', 'Неизвестная причина', '56.27170487106145', '43.91718360345992', 77),
(78, 'улица Германа Лопатина, 6Б, 603163', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Пятерочки', 'Неизвестная причина', '44.070629185', '56.29532510999999', 78),
(79, 'улица Ванеева, 127, 603105', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Равновесия', 'Неизвестная причина', '44.029908555', '56.301283925', 79),
(80, 'Печёрский съезд, 22', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Оргтехсервис', 'Неизвестная причина', '44.0417214', '56.322399489999995', 80),
(81, 'Верхне-Волжская набережная, 8', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие SPAR', 'Неизвестная причина', '44.018598765', '56.329132635', 81),
(82, 'улица Ванеева, 199, 603122', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие кафе Черный Пруд', 'Неизвестная причина', '44.034094705', '56.293297005', 82),
(83, 'Рождественская улица, 16, 603001', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Титана', 'Неизвестная причина', '43.991236085', '56.32897792', 83),
(84, 'улица Нартова, 2, 603057', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие аптеки Farmani', 'Неизвестная причина', '43.99584444', '56.289829985', 84),
(85, 'улица Гаугеля, 2, 603139', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие SPAR', 'Неизвестная причина', '43.808617565', '56.358322404999996', 81),
(86, 'Фруктовая улица, 3, корп. 3, 603093', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Boxberry', 'Неизвестная причина', '44.052123895', '56.31782686', 86),
(87, 'Совнаркомовская улица, 13, 603070', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие ПЭК', 'Неизвестная причина', '43.961304215', '56.328319125', 87),
(88, 'улица Ефремова, 3, 603003', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие магазина Продукты', 'Неизвестная причина', '43.866091780000005', '56.35015293', 88),
(89, 'улица Чаадаева, 5К, 603035', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Boxberry', 'Неизвестная причина', '43.854287915', '56.32927736', 86),
(90, 'Московское шоссе, 306, 603124', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие аптеки Farmani', 'Неизвестная причина', '43.812489305', '56.310782135', 84),
(91, 'улица Композитора Касьянова, 6Гк3', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Автостекла', 'Неизвестная причина', '44.05878939', '56.288101354999995', 91),
(92, 'Нижний Новгород, ул. Мечникова, 37а, 603035', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие магазина 555', 'Неизвестная причина', '43.839429785', '56.335669975', 92),
(93, 'улица Героя Шапошникова, 15, 603152', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'База', 'Неизвестная причина', '43.99012217', '56.249756555', 93),
(94, 'Бутырская улица, 22, 603050', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие магазин Волга', 'Неизвестная причина', '43.833851245000005', '56.36676435', 94),
(95, 'улица Янки Купалы, 42, 603142', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие офиса Евразия', 'Неизвестная причина', '43.84216964', '56.23783186', 95),
(96, 'Мотальный переулок, 8, 603140', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие кофейни Бодрый день', 'Неизвестная причина', '43.947506095', '56.294475915', 96),
(97, 'микрорайон Молитовка, улица Даргомыжского, 23', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Перекрестка', 'Неизвестная причина', '43.952060555', '56.290844144999994', 97),
(98, 'улица Ефремова, 3, 603003', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие парикмахерской Веста', 'Неизвестная причина', '43.866073815', '56.35051206', 98),
(99, 'Большая Покровская улица, 2А', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие аптеки Мила', 'Неизвестная причина', '44.004701825', '56.32518972', 99),
(100, 'улица Белинского, 71, 603024', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие ННК', 'Неизвестная причина', '44.022748985', '56.317707045', 100),
(101, 'микрорайон Молитовка, улица Даргомыжского, 19к4, 603132', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие магазина Канзов', 'Неизвестная причина', '43.95068613', '56.29264259', 101),
(102, 'Казанское шоссе, 6, 603163', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Авангарда', 'Неизвестная причина', '44.07705214', '56.29348683', 102),
(103, 'Южное шоссе, 2, 603123', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие магазина Технополис', 'Неизвестная причина', '43.8568032', '56.220228129999995', 103),
(104, 'Ошарская улица, 14, 603006', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Pranzo', 'Неизвестная причина', '44.009489845000004', '56.321066695', 104),
(105, 'проспект Бусыгина, 56, 603053', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Алмаза', 'Неизвестная причина', '43.884076050000004', '56.274704305', 105),
(106, 'Памирская улица, 13, корп. 1, 603032', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Тойся', 'Неизвестная причина', '43.93929549', '56.271785415', 106),
(107, 'улица Маршала Казакова, 3, 603116', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие ВЛК', 'Неизвестная причина', '43.92960267', '56.322154895', 107),
(108, 'улица Чаадаева, 3Б, 603035', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие автомойки Ура', 'Неизвестная причина', '43.856928964999994', '56.328418945', 108),
(109, 'улица Героя Советского Союза Прыгунова, 7', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие супермаркета Лайм', 'Неизвестная причина', '43.85951611', '56.233449205', 109),
(110, 'улица Родионова, 165к13, 603093', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие ПараМага', 'Неизвестная причина', '44.069892565', '56.31453183', 110),
(111, 'Кредитно-кассовый офис Горьковский — банк. улица Максима Горького, 140, 603000', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Альфа-Банк', 'Неизвестная причина', '43.995000024999996', '56.31437206', 111),
(112, 'проспект Бусыгина, 2А, 603053', TIMESTAMP '2017-05-01 11:45:02', '', 'Place Closed', 'Закрытие Балкона для Всех', 'Неизвестная причина', '43.90270711', '56.259287625', 112);

ALTER TABLE PUBLIC."story" ADD CONSTRAINT PUBLIC."FKg8fhtwijmkp8ocg4uid11y3v0" FOREIGN KEY("organization_id") REFERENCES PUBLIC."organization"("id") NOCHECK;  
