-- Insert data to table AISTUDENTTESTER.ROLE
INSERT INTO AISTUDENTTESTER.ROLE (ROLENAME, ACTIVEFLAG)
VALUES ('USER', 'Y');
INSERT INTO AISTUDENTTESTER.ROLE (ROLENAME, ACTIVEFLAG)
VALUES ('ADMIN', 'Y');

-- Insert data to table AISTUDENTTESTER.STRATEGY
INSERT INTO AISTUDENTTESTER.STRATEGY (STRATEGYNAME, ACTIVEFLAG)
VALUES ('SIMPLE', 'Y');
INSERT INTO AISTUDENTTESTER.STRATEGY (STRATEGYNAME, ACTIVEFLAG)
VALUES ('MULTI', 'N');

-- Insert data to table AISTUDENTTESTER.MARK
-- SIMPLE STRATEGY
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 0, 0, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 1, 0, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 2, 1, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 3, 1, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 4, 2, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 5, 2, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 6, 3, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 7, 3, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 8, 4, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 9, 4, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 10, 5, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 11, 5, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 12, 6, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 13, 6, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 14, 7, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 15, 7, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 16, 8, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 17, 8, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 18, 9, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 19, 9, 'Y');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (1, 20, 10, 'Y');
-- MULTI STRATEGY
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 0, 0, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 1, 0, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 2, 0, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 3, 1, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 4, 1, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 5, 1, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 6, 2, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 7, 2, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 8, 3, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 9, 3, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 10, 4, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 11, 4, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 12, 5, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 13, 5, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 14, 6, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 15, 6, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 16, 7, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 17, 7, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 18, 8, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 19, 9, 'N');
INSERT INTO AISTUDENTTESTER.MARK (STRATEGYID, NUMBEROFRIGHTQUESTIONS, MARK, ACTIVEFLAG)
VALUES (2, 20, 10, 'N');

-- Insert data to table AISTUDENTTESTER.STUDENTGROUP
INSERT INTO AISTUDENTTESTER.STUDENTGROUP (STUDENTGROUPNUMBER, STUDENTGROUPYEAR, ACTIVEFLAG)
VALUES ('521701', '2015', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENTGROUP (STUDENTGROUPNUMBER, STUDENTGROUPYEAR, ACTIVEFLAG)
VALUES ('521702', '2015', 'Y');

-- Insert data to table AISTUDENTTESTER.STUDENT
-- 521701
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217006', 'Белявский', 'Владислав', 'Александрович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217007', 'Богумильчик', 'Мария', 'Сергеевна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217010', 'Войтиховский', 'Павел', 'Дмитриевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217011', 'Гаврилюк', 'Максим', 'Игоревич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5219011', 'Дубовский', 'Владислав', 'Владимирович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217016', 'Зубарев', 'Максим', 'Олегович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217020', 'Клименков', 'Владислав', 'Андреевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217022', 'Ковальчук', 'Вероника', 'Вячевлавовна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217024', 'Красова', 'Дарья', 'Валерьевна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217030', 'Лобач', 'Егор', 'Валентинович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217031', 'Логвинович', 'Марк', 'Николаевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217034', 'Мамайко', 'Александр', 'Юрьевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217037', 'Меленцевич', 'Максим', 'Дмитриевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217038', 'Минчик', 'Эдуард', 'Андреевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217039', 'Навросюк', 'Владислав', 'Геннадьевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217046', 'Родько', 'Александр', 'Дмитриевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217047', 'Рубин', 'Владислав', 'Александрович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217050', 'Севко', 'Алексей', 'Александрович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217053', 'Синельников', 'Павел', 'Михайлович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217054', 'Стельмаченок', 'Максим', 'Олегович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217059', 'Трушков', 'Артем', 'Сергеевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217067', 'Шульга', 'Алексей', 'Юрьевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217068', 'Шундрик', 'Алексей', 'Сергеевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217069', 'Якимцов', 'Иван', 'Дмитриевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (1, '5217070', 'Янковский', 'Александр', 'Викторович', 'Y');
-- 521702
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217001', 'АльтамираноАльтамирано', 'Стивен', 'Давидович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217002', 'Артемчук', 'Анастасия', 'Сергеевна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217003', 'Астахова', 'Надежда', 'Михайловна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '4217006', 'Басалай', 'Антон', 'Валерьевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '4217008', 'Берков', 'Антон', 'Васильевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217012', 'Гудойцев', 'Александр', 'Викторович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217013', 'Дудков', 'Антон', 'Дмитриевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217014', 'Жигимонт', 'Карина', 'Дмитриевна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217015', 'Жук', 'Александр', 'Андреевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217017', 'Каленчук', 'Евгений', 'Олегович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217018', 'Кирьянова', 'Анна', 'Александровна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '52170000', 'Клим', 'Владислав', 'Олегович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217023', 'Кот', 'Дмитрий', 'Валерьевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217025', 'Красько', 'Сергей', 'Геннадьевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217026', 'Кузин', 'Андрей', 'Владимирович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217027', 'Кузьменко', 'Елизавета', 'Игоревна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217032', 'Македон', 'Егор', 'Александрович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217036', 'Межень', 'Анастасия', 'Леонидовна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217040', 'Наронский', 'Александр', 'Витальевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217044', 'Пивоваревич', 'Людмила', 'Николаевна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217048', 'Рязанцева', 'Ульяна', 'Александровна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217049', 'Сафоненко', 'Карина', 'Андреевна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217056', 'Талах', 'Барбара', 'Юрьевна', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217058', 'Тикавый', 'Валерий', 'Александрович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217060', 'Федорович', 'Артем', 'Геннадьевич', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217063', 'Шалик', 'Егор', 'Владимирович', 'Y');
INSERT INTO AISTUDENTTESTER.STUDENT (STUDENTGROUPID, STUDENTTICKET, FIRSTNAME, LASTNAME, MIDDLENAME, ACTIVEFLAG)
VALUES (2, '5217066', 'Шпет', 'Александр', 'Витальевич', 'Y');

-- Insert data to table AISTUDENTTESTER.SUBJECT
INSERT INTO AISTUDENTTESTER.SUBJECT (SUBJECTNAME, ACTIVEFLAG)
VALUES ('ТПИС', 'Y');

-- Insert data to table AISTUDENTTESTER.TOPIC
INSERT INTO AISTUDENTTESTER.TOPIC (SUBJECTID, TOPICNAME, ACTIVEFLAG)
VALUES (1, 'Интеллектуальные системы, основанные на знаниях', 'Y');
INSERT INTO AISTUDENTTESTER.TOPIC (SUBJECTID, TOPICNAME, ACTIVEFLAG)
VALUES (1, 'Инструментальный комплекс ЭКО для создания интеллектуальных систем', 'Y');
INSERT INTO AISTUDENTTESTER.TOPIC (SUBJECTID, TOPICNAME, ACTIVEFLAG)
VALUES (1, 'Технология проектирования интеллектуальных систем', 'Y');
INSERT INTO AISTUDENTTESTER.TOPIC (SUBJECTID, TOPICNAME, ACTIVEFLAG)
VALUES (1, 'Технологии инженерии знаний', 'Y');
INSERT INTO AISTUDENTTESTER.TOPIC (SUBJECTID, TOPICNAME, ACTIVEFLAG)
VALUES (1, 'Системы управления знаниями', 'Y');