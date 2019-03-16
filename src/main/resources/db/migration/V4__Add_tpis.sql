-- Insert data to table Subject
INSERT INTO aistudenttesterdb.Subject (SubjectName, ActiveFlag) VALUES ('ТПИС', 'Y');

-- Insert data to table Topic
INSERT INTO aistudenttesterdb.Topic (SubjectID, TopicName, ActiveFlag) VALUES (1, 'Интеллектуальные системы, основанные на знаниях', 'Y');
INSERT INTO aistudenttesterdb.Topic (SubjectID, TopicName, ActiveFlag) VALUES (1, 'Инструментальный комплекс ЭКО для создания интеллектуальных систем', 'Y');
INSERT INTO aistudenttesterdb.Topic (SubjectID, TopicName, ActiveFlag) VALUES (1, 'Технология проектирования интеллектуальных систем', 'Y');
INSERT INTO aistudenttesterdb.Topic (SubjectID, TopicName, ActiveFlag) VALUES (1, 'Технологии инженерии знаний', 'Y');
INSERT INTO aistudenttesterdb.Topic (SubjectID, TopicName, ActiveFlag) VALUES (1, 'Системы управления знаниями', 'Y');

-- Insert data to table Question
-- Topic 1
-- 1
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('После какого события произошло окончательное рождение искусственного интеллекта?',
        'доклад Лайтхилла;',
        'после создания ЭВМ в 40-х гг. ХХ в.;',
        'семинар в Дартсмурском колледже(США);',
        'создание Чарльзом Бэббиджем механического калькулятора 1833 г.;',
        'зарождение нейрокибернетики.',
        2,
        'Y');
-- 2
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Сколько можно выделить условных поколений в истории создания и развития робототехники?',
        'II поколения;',
        'III поколения;',
        'IV поколения;',
        'V поколений;',
        'VI поколений.',
        2,
        'Y');
-- 3
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Практически все современные промышленные роботы принадлежат:',
        'I поколению;',
        'II поколению;',
        'III поколению;',
        'IV поколению;',
        'V поколению.',
        1,
        'Y');
-- 4
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Одним из направлений искусственного интеллекта, основным подходом которого является описание классов объектов через определенные значения значимых признаков, является:',
        'создание новых архитектурных компьютеров;',
        'распределенный искусственный интеллект;',
        'создание многоагентных систем;',
        'распознавание образов;',
        'искусственная жизнь.',
        4,
        'Y');
-- 5
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В рамках какого направления разрабатываются специальные языки для решения интеллектуальных задач, в которых традиционно упор делается на преобладание логической и символьной обработки над вычислительными процедурами - LISP, PROLOG и др.?',
        'разработка программного обеспечения для систем ИИ;',
        'разработка технологии искусственных агентов;',
        'создание многоагентных систем (МАС);',
        'создание новых архитектурных компьютеров;',
        'создание пакетов прикладных программ, ориентированных на промышленную разработку интеллектуальных систем, например, КЕЕ, ARTS.',
        1,
        'Y');
-- 6
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('… - это “любая сущность, которая находится в некоторой среде, воспринимает ее посредством сенсоров, получая данные, которые отражают события, происходящие в среде, интерпретирует эти данные и действует на среду посредством эффектов”.',
        'активный объект;',
        'метаобъект;',
        'агент;',
        'пользователь;',
        'решатель.',
        3,
        'Y');
-- 7
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие направления в разработке МАС сегодня являются основными?',
        'распределенный искусственный интеллект и классические интеллектуальные системы;',
        'базы знаний и решатели;',
        'классические интеллектуальные системы и искусственная жизнь;',
        'распределенный искусственный интеллект и искусственная жизнь;',
        'искусственная жизнь и интеллектуальные агенты.',
        4,
        'Y');
-- 8
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Исходные агентообразующие факторы - среда, восприятие, интерпретация и ...',
        'задача;',
        'источник мотивации;',
        'действие;',
        'способность к организации;',
        'автономность.',
        3,
        'Y');
-- 9
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Минимальный набор базовых характеристик произвольного агента включает такие свойства, как активность, общительность, целенаправленность и … :',
        'автономность;',
        'способность к организации;',
        'действие;',
        'запоминание состояний;',
        'мотивация.',
        1,
        'Y');
-- 10
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какое направление МАС в большей степени связано с трактовкой интеллектуального поведения в контексте выживания, адаптации и самоорганизации в динамической враждебной среде?',
        'распределенный искусственный интеллект;',
        'искусственная жизнь;',
        'интеллектуальные агенты;',
        'классические интеллектуальные системы;',
        'пустая экспертная система.',
        2,
        'Y');
-- 11
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Начиная с 50-х гг. ХХ в., одной из популярных тем исследований в области ИИ является … :',
        'кибернетика;',
        'нейрокибернетика;',
        'машинное обучение;',
        'компьютерная лингвистика;',
        'распознавание образов.',
        4,
        'Y');
-- 12
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какая первая программа в области естественно-языковых интерфейсов?',
        'переводчик с английского на русский;',
        'языковой чат;',
        'калькулятор;',
        'карта;',
        'конвертер валют.',
        1,
        'Y');
-- 13
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что описывает следующее определение: «Направление информатики, целью которого является разработка аппаратно-программных средств, позволяющих пользователю-непрограммисту ставить и решать свои, традиционного считающиеся интеллектуальными задачи, общаясь с ЭВМ на ограниченном подмножестве естественного языка»?',
        'системы, основанные на знаниях;',
        'искусственный интеллект;',
        'интеллектуальные роботы;',
        'распознавание образов;',
        'компьютерная лингвистика.',
        2,
        'Y');
-- 14
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что описывает следующее определение: «Анализ смысла составных частей каждого предложения на основе некоторой предметно-ориентированной базы знаний»?',
        'морфологический 	анализ;',
        'синтаксический анализ;',
        'семантический анализ;',
        'прагматический анализ;',
        'ассоциативный поиск.',
        3,
        'Y');
-- 15
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какое направление искусственного интеллекта близко к машинному обучению и тесно связано с нейрокибернетикой?',
        'распознавание образов;',
        'создание новых архитектур компьютеров;',
        'искусственный агент;',
        'искусственная жизнь;',
        'создание многоагентных систем.',
        1,
        'Y');
-- 16
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('При наличии какого механизма агенту необязательно выполнять распоряжения какого-либо другого агента или пользователя?',
        'автономия;',
        'целеобразование;',
        'мотивация;',
        'активизация функций;',
        'запоминание',
        2,
        'Y');
-- 17
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие существуют специальные языки для взаимодействия агентов?',
        'KEE, ARTS',
        'KIF, KQML;',
        'LISP, PROLOG;',
        'SMALLTALK;',
        'G2.',
        2,
        'Y');
-- 18
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Один из основных направлений ИИ является:',
        'агенты и многоагентные системы;',
        'распознавание и синтез речи;',
        'компьютерная лингвистика;',
        'представление знаний и разработка систем, основанных на знаниях;',
        'понимание естественного языка.',
        4,
        'Y');
-- 19
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Начиная с каких годов на прикладных работах начинает сказываться постепенное отставание в технологии?',
        'с 50-х гг.;',
        'с 60-х гг.;',
        'с 70-х гг.;',
        'с 80-х гг.;',
        'с 90-х гг.;',
        4,
        'Y');
-- 20
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какая область ИИ включает модели, методы и алгоритмы, ориентированные на автоматическое накопление и формирование знаний на основе анализа и обобщения данных, а также обучение по примерам, и традиционные подходы из теории распознавания образов.',
        'искусственная жизнь;',
        'компьютерная лингвистика',
        'машинное обучение;',
        'распознавание образов;',
        'нейрокибернетика.',
        3,
        'Y');
-- 21
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Сколько человек входит в минимальный состав коллектива разработчиков(КР)?',
        '2;',
        '3;',
        '4;',
        '5;',
        '6.',
        3,
        'Y');
-- 22
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Минимальный состав КР включает: пользователя, эксперта и …',
        'менеджера и инженера по знаниям;',
        'инженера по знаниям и программиста;',
        'технического помощника и программиста;',
        'программиста и администратора баз данных;',
        'инженера по знаниям и руководителя КР.',
        2,
        'Y');
-- 23
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О каком члене из коллектива разработчиков идет речь: «необходимо, чтобы он имел некоторый базовый уровень квалификации, был дружелюбным и умел объяснять свои требования к системе»?',
        'пользователь;',
        'эксперт;',
        'инженер по знаниям;',
        'программист;',
        'ко всем членам КР.',
        1,
        'Y');
-- 24
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О каком члене из коллектива разработчиков идет речь: «должен быть ознакомлен с популярной литературой по искусственному интеллекту, должен быть доброжелательным, готовым поделиться своим опытом, должен иметь педагогические навыки и интерес к успешности разработки»?',
        'пользователь;',
        'эксперт;',
        'инженер по знаниям;',
        'программист;',
        'ко всем членам КР.',
        2,
        'Y');
-- 25
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О каком члене из коллектива разработчиков идет речь: «должен быть ознакомлен с основными структурами представления знаний и механизмами вывода, должен быть общительным и способным отказаться от традиционных навыков и освоить новые методы»?',
        'пользователь;',
        'эксперт;',
        'инженер по знаниям;',
        'программист;',
        'ко всем членам КР.',
        4,
        'Y');
-- 26
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О каком члене из коллектива разработчиков идет речь: «”задает тон” в общении с экспертом, ведет диалог, от него в конечном итоге зависит его продуктивность»?',
        'пользователь;',
        'эксперт;',
        'инженер по знаниям;',
        'программист;',
        'ко всем членам КР.',
        3,
        'Y');
-- 27
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Работа на каком уровне требует от инженера по знаниям знакомства с элементами когнитивной психологии и способами репрезентации понятий и процессов в памяти человека?',
        'Z1;',
        'Z2;',
        'Z3;',
        'Z4;',
        'Z5.',
        1,
        'Y');
-- 28
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На каком уровне инженера по знаниям подразумевается широкая общенаучная подготовка, знакомство с методами реферирования и аннотирования текстов, владение навыками быстрого чтения?',
        'Z1;',
        'Z2;',
        'Z3;',
        'Z4;',
        'Z5.',
        2,
        'Y');
-- 29
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На каком уровне инженера по знаниям требуется квалифицированное знакомство с методологией представления знаний, системным анализом, теорией познания, аппаратом многомерного шкалирования, кластерным и факторным анализом?',
        'Z1;',
        'Z2;',
        'Z3;',
        'Z4;',
        'Z5.',
        3,
        'Y');
-- 30
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На каком уровне инженера по знаниям предусматривается предварительное изучение аппарата математической логики и современных языков представления знаний?',
        'Z1;',
        'Z2;',
        'Z3;',
        'Z4;',
        'Z5.',
        4,
        'Y');
-- 31
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На каком уровне инженера по знаниям предусматривает овладение практическими навыками работы с ЭВМ и, возможно, одним из языков программирования?',
        'Z1;',
        'Z2;',
        'Z3;',
        'Z4;',
        'Z5.',
        5,
        'Y');
-- 32
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На сколько независимых этапов можно разделить разработку экспертных систем?',
        '4;',
        '5;',
        '6;',
        '7;',
        '8.',
        3,
        'Y');
-- 33
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Каких этапов разработки экспертных систем 	из следующего перечня не достастает: Выбор проблемы, Разработка прототипа, Стыковка, Поддержка?',
        'Доработка;',
        'Оценка;',
        'Доработка и Оценка;',
        'Обработка и Оценка;',
        'нет правильного ответа.',
        3,
        'Y');
-- 34
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О каком этапе разработки экспертных систем идет речь: «Этот этап определяет деятельность, предшествующую решению начать разрабатывать конкретную ЭС»?',
        'Выбор подходящей проблемы;',
        'Разработка прототипа;',
        'Стыковка;',
        'Оценка;',
        'Поддержка.',
        1,
        'Y');
-- 35
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О каком этапе разработки экспертных систем идет речь: «Инженер по знаниям выдвигает несколько вариантов подходов, связанных с использованием имеющихся на рынке программных средств, окончательный выбор которых возможен лишь на этом этапе. Составляется план, который определяет шаги процесса разработки и необходимые затраты, а также ожидаемые результаты»?',
        'Выбор подходящей проблемы;',
        'Разработка прототипа;',
        'Стыковка;',
        'Оценка;',
        'Поддержка.',
        2,
        'Y');
-- 36
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О каком этапе разработки экспертных систем идет речь: «На этом этапе происходит тестирование в отношении критериев эффективности»?',
        'Выбор подходящей проблемы;',
        'Разработка прототипа;',
        'Стыковка;',
        'Оценка;',
        'Поддержка.',
        4,
        'Y');
-- 37
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О каком этапе разработки экспертных систем идет речь: «На этом этапе осуществляется слияние экспертной системы с другими программными средствами с среде, в которой она будет работать, и обучение людей, которых она будет обслуживать»?',
        'Выбор подходящей проблемы;',
        'Разработка прототипа;',
        'Стыковка;',
        'Оценка;',
        'Поддержка.',
        3,
        'Y');
-- 38
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О каком этапе разработки экспертных систем идет речь: «Этот этап является подходящим для получения рекомендаций извне, чтобы гарантировать удачно выбранный и осуществимый с технической точки зрения первоначальный проект»?',
        'Выбор подходящей проблемы;',
        'Разработка прототипа;',
        'Стыковка;',
        'Оценка;',
        'Поддержка.',
        1,
        'Y');
-- 39
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О каком этапе разработки экспертных систем идет речь: «Этот этап включает обеспечение связи ЭС с существующими базами данных и другими системами на предприятии, а также улучшение системных факторов, зависящих от времени, чтобы можно было обеспечить ее более эффективную работу и улучшить характеристики ее технических средств, если система работает в необычной среде»?',
        'Выбор подходящей проблемы;',
        'Разработка прототипа;',
        'Стыковка;',
        'Оценка;',
        'Поддержка.',
        3,
        'Y');
-- 40
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О каком этапе разработки экспертных систем идет речь: «Этот этап предусматривает поддержание системы в ее инструментальной среде разработки, когда она создана из-за того, что проблемная область изменяется»?',
        'Выбор подходящей проблемы;',
        'Разработка прототипа;',
        'Стыковка;',
        'Оценка;',
        'Поддержка.',
        5,
        'Y');
-- 41
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие приложения интеллектуальных систем являются одними из основных?',
        'бизнес, обработка изображений;',
        'геология, медицина;',
        'производство, бизнес;',
        'наука, космонавтика;',
        'наука, компьютерные системы.',
        3,
        'Y');
-- 42
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Для чего предназначена экспертная система Audit Expert?',
        'для решения задач анализа менеджмента предприятия;',
        'для решения задач анализа финансового состояния предприятия;',
        'для решения задач анализа IT-развития предприятия;',
        'для решения задач анализа системы безопасности предприятия;',
        'для решения задач анализа системы управления предприятия.',
        2,
        'Y');
-- 43
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что делает Audit Expert с полученными данными баланса и отчета о прибылях и убытках?',
        'преобразует в аналитические таблицы;',
        'сравнивает значения с нормативами;',
        'определяет дальнейшее развитие предприятия;',
        'оценивает кредитоспособность;',
        'оценивает риски банкротства.',
        1,
        'Y');
-- 44
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В каких предприятиях наиболее активно используются финансовые ЭС?',
        'унитарные;',
        'коммерческие;',
        'некоммерческие;',
        'государственные;',
        'частные.',
        2,
        'Y');
-- 45
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что было центральной проблемой при разработке ЭС до последнего времени?',
        'различные языки представления знаний;',
        'недостаток языков представления знаний;',
        'нехватка корректных языков представления знаний;',
        'избыток некорректных языков представления знаний;',
        'нет правильного ответа.',
        1,
        'Y');
-- 46
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие модели представления знаний получили наибольшее распространение?',
        'семантические сети, комбинаторные модели;',
        'алгебраические модели, объектно-ориентированные языки;',
        'фреймовые модели, продукционные правила;',
        'логика первого порядка, алгебраические модели;',
        'нет правильного ответа.',
        3,
        'Y');
-- 47
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что сегодня вызывает наибольшие трудности в разработке ЭС?',
        'процесс машинной реализации систем;',
        'до-машинный этап анализа знаний и проектирования базы знаний;',
        'распространение «подделок» под ЭС в виде многочисленных диалоговых систем;',
        'нехватка грамотных специалистов и специальной литературы;',
        'слабый рынок программных продуктов для разработки ЭС.',
        2,
        'Y');
-- 48
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Чем характеризуется состояние разработки ЭС в последние годы?',
        'Стабильный интерес среди наиболее «продвинутых» и квалифицированных слоев специалистов;',
        'Интерес имеет пока достаточно слабое материальное подкрепление — явная нехватка грамотных специалистов и специальной литературы;',
        'Появляется возможность распространения “подделок” под экспертные системы;',
        'все ответы верны;',
        'нет правильного ответа.',
        4,
        'Y');
-- 49
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой прототип выполняет следующую функцию: “надежно решает все задачи на реальных примерах, но для сложной задачи требует много времени и памяти”?',
        'демонстрационный прототип ЭС;',
        'демонстрационный прототип ЭС;',
        'действующий прототип ЭС;',
        'промышленная система;',
        'коммерческая система.',
        3,
        'Y');
-- 50
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На какой стадии разработки прототипа ЭС строится представление концепций предметной области на основе выбранного языка представления знаний?',
        'структурирование ;',
        'реализация;',
        'идентификация проблемы;',
        'извлечение знаний;',
        'формализация.',
        5,
        'Y');
-- 51
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Несколько десятков правил, фреймов или примеров - это … :',
        'прототип;',
        'длина прототипа;',
        'объем прототипа;',
        'знания;',
        'нет правильного ответа.',
        3,
        'Y');
-- 52
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Каких стадий разработки прототипа информации не хватает: Идентификация проблемы, Получение знаний, Структурирование, Реализация прототипа, Формализация',
        'обработка знаний;',
        'анализ и обработка знаний;',
        'обработка знаний и тестирование;',
        'тестирование;',
        'нет правильного ответа.',
        4,
        'Y');
-- 53
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой минимальный коллектив разработки прототипа ЭС на этапе “идентификация проблемы”?',
        'эксперт+аналитик+пользователь;',
        'эксперт+аналитик ;',
        'аналитик+программист;',
        'программист;',
        'нет правильного ответа.',
        1,
        'Y');
-- 54
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой минимальный коллектив разработки прототипа ЭС на этапе “получение знаний”?',
        'эксперт+аналитик+пользователь;',
        'эксперт+аналитик ;',
        'аналитик+программист;',
        'программист;',
        'нет правильного ответа.',
        2,
        'Y');
-- 55
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой минимальный коллектив разработки прототипа ЭС на этапе “структурирование”?',
        'эксперт+аналитик+пользователь;',
        'эксперт+аналитик ;',
        'аналитик+программист;',
        'программист;',
        'нет правильного ответа.',
        5,
        'Y');
-- 56
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой минимальный коллектив разработки прототипа ЭС на этапе “формализация”?',
        'эксперт+аналитик+пользователь;',
        'эксперт+аналитик ;',
        'аналитик+программист;',
        'программист;',
        'нет правильного ответа.',
        3,
        'Y');
-- 57
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой минимальный коллектив разработки прототипа ЭС на этапе “реализация прототипа”?',
        'эксперт+аналитик+пользователь;',
        'эксперт+аналитик ;',
        'аналитик+программист;',
        'программист;',
        'нет правильного ответа.',
        4,
        'Y');
-- 58
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой минимальный коллектив разработки прототипа ЭС на этапе “тестирование”?',
        'эксперт+аналитик+пользователь;',
        'эксперт+аналитик ;',
        'аналитик+программист;',
        'программист;',
        'нет правильного ответа.',
        5,
        'Y');
-- 59
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие из перечисленных задач не позволяют решать современные финансовые ЭС?',
        'оценка времени достижения финансовыми показателями критических значений;',
        'анализ знаний и проектирование баз знаний на до-машинном этапе;',
        'сравнение значений финансовых показателей с нормативами;',
        'проведение анализа безубыточности и факторного анализа рентабельности собственного капитала;',
        'нет правильного ответа.',
        2,
        'Y');
-- 60
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие из перечисленных задач не позволяют решать современные финансовые ЭС?',
        'проведение анализа безубыточности и факторного анализа рентабельности собственного капитала;',
        'проведение регламентируемого анализа в соответствии с нормативными актами контролирующих ведомств;',
        'разработка собственных методик анализа путем описания исходных форм и итоговых аналитических таблиц;',
        'все ответы верны;',
        'нет правильного ответа;',
        4,
        'Y');

-- Topic 2
-- 61
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь: “это связи и закономерности предметной области (принципы, модели, законы), полученные в результате практической деятельности и профессионального опыта, позволяющего специалистам ставить и решать задачи в данной области”?',
        'данные;',
        'знания;',
        'утверждение;',
        'база данных;',
        'нет правильного ответа.',
        2,
        'Y');
-- 62
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь: “это информация, полученная в результате наблюдений или изменений отдельных свойств (атрибутов), характеризующих объекты, процессы и явления предметной области”?',
        'данные;',
        'знания;',
        'утверждение;',
        'база данных;',
        'нет правильного ответа.',
        1,
        'Y');
-- 63
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь: “представленная в объективной форме совокупность самостоятельных материалов, систематизированных таким образом, чтобы эти материалы могли быть найдены и обработаны с помощью ЭВМ”?',
        'данные;',
        'знания;',
        'база знаний;',
        'база данных;',
        'нет правильного ответа.',
        4,
        'Y');
-- 64
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь: “это отдельные факты, характеризующие объекты, процессы и явления предметной области, а также их свойства”?',
        'данные;',
        'знания;',
        'база знаний;',
        'база данных;',
        'нет правильного ответа.',
        1,
        'Y');
-- 65
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь: “особого рода баз данных, разработанная для оперирования знаниями (метаданными)”?',
        'экспертная система;',
        'знания;',
        'база знаний;',
        'база данных;',
        'нет правильного ответа.',
        3,
        'Y');
-- 66
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь:”это наиболее распространённый класс ИС, ориентированный на тиражирование опыта высококвалифицированных специалистов в областях, где качество принятия решений традиционно зависит от уровня экспертизы, например таких, как медицина, юриспруденция, геология, экономика, военное дело и др.”?',
        'экспертная система;',
        'знания;',
        'база знаний;',
        'база данных;',
        'нет правильного ответа.',
        1,
        'Y');
-- 67
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь: “это пара имён (имя символьного атрибута и имя значения). Ссылкой этого является эта пара имён в квадратных скобках, разделенных точкой”?',
        'данные;',
        'знания;',
        'утверждение;',
        'база данных;',
        'нет правильного ответа.',
        3,
        'Y');
-- 68
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь:”это сложные программы, которые манипулируют знаниями в целях получения удовлетворительного и эффективного решения в узкой предметной области”?',
        'экспертная система;',
        'знания;',
        'база знаний;',
        'база данных;',
        'нет правильного ответа.',
        1,
        'Y');
-- 69
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Для чего предназначены арифметические правила вывода?',
        'для вычисления атрибутов;',
        'для передачи атрибутов;',
        'для вывода атрибутов;',
        'для упорядочивания атрибутов;',
        'нет правильного ответа.',
        1,
        'Y');
-- 70
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В каком режиме работает ЭКО?',
        'в режиме редактирования;',
        'в режиме консультации;',
        'в режиме проектирования;',
        'в режиме редактирования и консультации;',
        'в режиме проектирования и консультации.',
        4,
        'Y');
-- 71
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Именами правил могут быть произвольные последовательности символов длиной до … :',
        '10 байт;',
        '15 байт;',
        '20 байт;',
        '25 байт;',
        '30 байт.',
        3,
        'Y');
-- 72
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие типы правил определены в языке представления знаний?',
        'простой вопрос, сложный альтернативный вопрос, байесовское правило;',
        'простой вопрос, сложный альтернативный вопрос, сложный дистрибутивный вопрос;',
        'арифметическое правило, логическое правило, байесовское правило;',
        'все ответы верны;',
        'нет правильного ответа.',
        4,
        'Y');
-- 73
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какое назначение действия СБРОС?',
        'отменяет полученное значение;',
        'удаляет полученное значение;',
        'заменяет полученное значение;',
        'отдает полученное значение;',
        'нет правильного ответа.',
        1,
        'Y');
-- 74
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Для чего используются символьные атрибуты в системе ЭКО?',
        'для обработки качественных характеристик предметной области;',
        'для представления качественных характеристик предметной области;',
        'для описание качественных характеристик предметной области;',
        'для формализации качественных характеристик предметной области;',
        'нет правильного ответа.',
        2,
        'Y');
-- 75
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой символ необходимо поставить, чтобы система по умолчанию осуществляла шкалирование?',
        '&;',
        '|;',
        '#;',
        '$;',
        '%.',
        4,
        'Y');
-- 76
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой вопрос используется, когда символьный атрибут может иметь одновременно несколько или ни одного значений?',
        'альтернативный;',
        'дистрибутивный;',
        'простой;',
        'альтернативный и дистрибутивный;',
        'нет правильного ответа.',
        2,
        'Y');
-- 77
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что в качестве цели имеет правило со сложным вопросом?',
        'атрибут;',
        'значение атрибута;',
        'утверждение;',
        'параметр;',
        'нет правильного ответа.',
        1,
        'Y');
-- 78
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В качестве параметров какого действия следует задать текст (обязательно) и список числовых атрибутов и или утверждений (необязательно)?',
        'переход;',
        'цель;',
        'сообщение;',
        'результат;',
        'нет правильного ответа.',
        3,
        'Y');
-- 79
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Параметры какого действия задают в виде списка имен, разделенных запятыми или пробелами?',
        'переход;',
        'цель;',
        'сообщение;',
        'результат;',
        'нет правильного ответа.',
        2,
        'Y');
-- 80
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какое действие задает список целей, сообщения о значении которых должны будут быть выданы на экран, а также уровень выдачи результатов?',
        'переход;',
        'цель;',
        'сообщение;',
        'результат;',
        'нет правильного ответа.',
        4,
        'Y');
-- 81
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Параметрами какого действия могут быть утверждения, числовые и символьные атрибуты?',
        'переход;',
        'цель;',
        'сообщение;',
        'результат;',
        'нет правильного ответа.',
        2,
        'Y');
-- 82
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь: “это формулы, с помощью которых разработчик экспертной системы указывает, каким образом должны вычисляться значения атрибутов и утверждений”?',
        'правила вывода;',
        'условия применимости правила;',
        'сценарий;',
        'цель;',
        'символьные атрибуты.',
        1,
        'Y');
-- 83
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Сколько существует типов атрибутов в ЭКО?',
        '1;',
        '2;',
        '3;',
        '4;',
        '5.',
        2,
        'Y');
-- 84
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие бывают типы атрибутов в ЭКО?',
        'числовые;',
        'числовые и символьные;',
        'числовые, символьные и строковые;',
        'числовые, символьные, строковые и вещественные;',
        'нет правильного ответа.',
        2,
        'Y');
-- 85
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Из чего состоит описание предметной области?',
        'из описания атрибутов;',
        'из описания правил ввода;',
        'из описания правил вывода;',
        'из описания атрибутов и правил ввода;',
        'из описания атрибутов и правил вывода.',
        4,
        'Y');
-- 86
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что 	необходимо указать при задании (создании) числового атрибута?',
        'только имя атрибута;',
        'область определения в виде числового диапазона;',
        'область значения в виде числового диапазона;',
        'имя атрибута и область определения в виде числового диапазона;',
        'имя атрибута и область значения в виде числового диапазона.',
        4,
        'Y');
-- 87
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что 	позволяет получить «простой вопрос»?',
        'значение числового атрибута;',
        'коэффициент определенности отдельного утверждения;',
        'множества утверждений (сложные цели);',
        'либо значение числового атрибута, либо коэффициент определенности отдельного утверждения;',
        'либо значение числового атрибута, либо множества утверждений (сложные цели).',
        4,
        'Y');
-- 88
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Утверждения и числовые атрибуты называются … :',
        'целями;',
        'сложными целями;',
        'сообщениями;',
        'целями;',
        'нет правильного ответа.',
        1,
        'Y');
-- 89
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Символьные атрибуты, представляющие собой множества утверждений, называются … :',
        'целями;',
        'сложными целями;',
        'сообщениями;',
        'целями;',
        'нет правильного ответа.',
        2,
        'Y');
-- 90
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Значения целей определяются с помощью … :',
        'правил ввода ;',
        'правил вывода;',
        'логического правила;',
        'арифметического правила;',
        'байесовского правила.',
        2,
        'Y');
-- 91
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какое действие указывает, что в качестве следующего предложения сценария следует рассматривать предложение, номер которого указан в параметре действия?',
        'переход;',
        'цель;',
        'сообщение;',
        'результат;',
        'нет правильного ответа.',
        1,
        'Y');
-- 92
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь: “управляющий компонент модели, задающий порядок проведения консультации; представляет собой последовательность предложений, пронумерованных начиная с единицы”?',
        'утверждение;',
        'экспертная система;',
        'сценарий;',
        'сообщение;',
        'нет правильного ответа.',
        3,
        'Y');
-- 93
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что необходимо указать, чтобы описать (задать) символьный атрибут?',
        'только имя атрибута;',
        'область определения в виде числового диапазона;',
        'множество возможных значений;',
        'имя атрибута и множество возможных значений;',
        'имя атрибута и область определения в виде числового диапазона.',
        4,
        'Y');
-- 94
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Коэффициенты определенности утверждений принимают значения:',
        'от -5.00 до 5.00;',
        'от -10.00 до 10.00;',
        'от -1.00 до 1.00;',
        'от -15.00 до 15.00;',
        'от -2.00 до 2.00.',
        1,
        'Y');
-- 95
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой вопрос используется в тех случаях, когда известно, что атрибут достоверно принимает какое-либо одно из возможных значений?',
        'простой;',
        'альтернативный;',
        'дистрибутивный;',
        'альтернативный и дистрибутивный;',
        'нет правильного ответа.',
        2,
        'Y');
-- 96
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие типы вопросов являются сложными?',
        'простой;',
        'альтернативный;',
        'дистрибутивный;',
        'альтернативный и дистрибутивный;',
        'нет правильного ответа.',
        4,
        'Y');
-- 97
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь: “нечеткие логические выражения, вычисляемые в момент обращения к правилу”?',
        'условия применимости;',
        'утверждения;',
        'атрибут;',
        'сообщения;',
        'нет правильного ответа.',
        1,
        'Y');
-- 98
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь: “представляет собой текст, в который могут подставляться сведения об атрибутах и их значениях”?',
        'шаблон;',
        'утверждения;',
        'атрибут;',
        'сообщения;',
        'нет правильного ответа.',
        1,
        'Y');
-- 99
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('О чем идет речь: “это логическое выражение, значение которого вычисляется в момент обращения к правилу”?',
        'условия применимости правила;',
        'утверждения;',
        'атрибут;',
        'сообщения;',
        'нет правильного ответа.',
        1,
        'Y');
-- 100
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какое действие позволяет выдавать информационные сообщения пользователю во время решения задачи?',
        'переход;',
        'цель;',
        'сообщение;',
        'результат;',
        'нет правильного ответа.',
        3,
        'Y');

-- Topic 3
-- 101
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Набор сведений, которые воспринимаются и обрабатываются живым существом или устройством и передаются с помощью знаков (символов, звуков, жестов) -  это … ?',
        'Знания;',
        'Данные;',
        'Информация;',
        'Контент;',
        'Понятие',
        3,
        'Y');
-- 102
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Отдельные упорядоченные факты, характеризующие объекты, процессы и явления предметной области, а также их свойства – это … ?',
        'Знания;',
        'Данные;',
        'Информация;',
        'Контент;',
        'Понятие',
        2,
        'Y');
-- 103
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Закономерности предметной области (принципы, связи, законы), полученные в результате практической деятельности и профессионального опыта, позволяющие специалистам ставить и решать задачи в этой области – это?',
        'Знания;',
        'Данные;',
        'Информация;',
        'Контент;',
        'Понятие',
        1,
        'Y');
-- 104
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Классификация знаний бывает: по глубине, по владельцу, по форме, по источнику получения и … ?',
        'Из опыта;',
        'Из книг;',
        'По умению;',
        'По сфере применения;',
        'По оцифрованнию',
        4,
        'Y');
-- 105
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Типы знаний бывают: зачем-знания, что-знания, как-знания, где-знания, когда-знания, кто-знания и …?',
        'Почему-знания;',
        'Кому-знания;',
        'Для чего-знания;',
        'Какие-знания;',
        'В каком виде-знания',
        1,
        'Y');
-- 106
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('… — это описание понятий и действий, необходимых для решения проблемы, на формальном языке, пригодном для построения компьютерной системы',
        'Поле знаний;',
        'Знания;',
        'Представление знаний;',
        'Представление данных;',
        'Логические модели',
        3,
        'Y');
-- 107
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('… , основанная на правилах, позволяет представить знания в виде предложений типа «Если (условие), то (действие)».',
        'Семантические сети;',
        'Фреймы;',
        'Формальные логические модели;',
        'Продукционные модели;',
        'Нейронные сети',
        4,
        'Y');
-- 108
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В качестве понятий обычно выступают абстрактные или конкретные объекты, а отношения — это связи типа: «это», «имеет частью», «принадлежит», «любит». О какой модели представления знаний идёт речь?',
        'Семантические сети;',
        'Фреймы;',
        'Формальные логические модели;',
        'Продукционные модели;',
        'Нейронные сети',
        1,
        'Y');
-- 109
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Традиционно в представлении знаний выделяют … , основанные на классическом исчислении предикатов 1-го порядка, когда предметная область или задача описывается в виде набора аксиом',
        'Семантические сети;',
        'Фреймы;',
        'Формальные логические модели;',
        'Продукционные модели;',
        'Нейронные сети',
        3,
        'Y');
-- 110
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Машина вывода – это … ?',
        'Образец правила сопоставляется с имеющимися фактами;',
        'Программа, управляющая перебором правил;',
        'Рабочая память подвергается изменению путем добавления в неё заключения сработавшего правила;',
        'Абстрактный образ для представления некоего стереотипа восприятия;',
        'Ориентированный граф, вершины которого — понятия, а дуги — отношения между ними',
        2,
        'Y');
-- 111
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Машина вывода (интерпретатор правил) выполняет две функции: во-первых, просмотр существующих фактов из рабочей памяти (базы данных) и правил из базы знаний и добавление (по мере возможности) в рабочую память новых фактов и, во-вторых, … ?',
        'Применение правил;',
        'Просмотр;',
        'Запрос информации;',
        'Определение порядка просмотра и применения правил;',
        'Сохранение информации',
        4,
        'Y');
-- 112
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие бывают методы поиска?',
        'Глубину и ширину;',
        'Прямой и обратный;',
        'Правый и левый;',
        'В даль и в близь;',
        'Быстрый и медленный',
        1,
        'Y');
-- 113
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Интерпретатор продукций работает …',
        'В одном направлении;',
        'По кругу;',
        'По маршруту;',
        'По кольцу;',
        'Циклически',
        5,
        'Y');
-- 114
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Сколько правил может сработать в одном цикле?',
        '1;',
        '2;',
        '3;',
        'Ни одного;',
        'Бесконечно много',
        1,
        'Y');
-- 115
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Управляющий компонент определяет … и выполняет четыре функции.',
        'Применение правил;',
        'Количество правил;',
        'Порядок применения правил;',
        'Функции правил;',
        'Условия правил',
        3,
        'Y');
-- 116
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Управляющий компонент выполняет функции: сопоставление, выбор, срабатывание и … ?',
        'Получение;',
        'Действие;',
        'Нахождение;',
        'Определение;',
        'Замена',
        2,
        'Y');
-- 117
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('При поиске в глубину?',
        'Система проанализирует все симптомы очередной подцепи;',
        'В качестве очередной подцели выбирается та, которая соответствует предыдущему уровню описания задачи;',
        'Система вначале проанализирует все симптомы, находящиеся на одном уровне пространства состояний, даже если они относятся к разным заболеваниям, и лишь затем перейдет к симптомам следующего уровня детальности;',
        'В качестве очередной подцели выбирается та, которая соответствует следующему, более детальному уровню описания задачи;',
        ') Система вначале проанализирует все симптомы, находящиеся на одном уровне пространства состояний, даже если они относятся к разным заболеваниям, и лишь затем перейдет к симптомам предыдущего уровня детальности;',
        4,
        'Y');
-- 118
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Знания о видимых взаимосвязях между отдельными событиями и фактами в предметной области - … знания.',
        'Глубинные;',
        'Абстрактные;',
        'Поверхностные;',
        'Процедурные;',
        'Декларативные',
        3,
        'Y');
-- 119
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что является основой любой интеллектуальной системы?',
        'База знаний;',
        'База данных;',
        'Данные;',
        'Знания;',
        'Семантические сети',
        1,
        'Y');
-- 120
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Абстрактный образ для представления некоего стереотипа восприятия – это … ?',
        'Узел;',
        'Дуга;',
        'Слот;',
        'Атрибут;',
        'Фрейм',
        5,
        'Y');
-- 121
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('… - знакомство и обучение членов коллектива разработчиков, а также создание неформальной формулировки проблемы.',
        'Извлечение знаний;',
        'Идентификация проблемы;',
        'Тестирование;',
        'Формализация;',
        'Реализация',
        2,
        'Y');
-- 122
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('…  — разработка программного комплекса, демонстрирующего жизнеспособность подхода в целом.',
        'Извлечение знаний;',
        'Идентификация проблемы;',
        'Тестирование;',
        'Формализация;',
        'Реализация',
        5,
        'Y');
-- 123
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('… -  выявление ошибок в подходе и реализации прототипа и выработка рекомендаций по доводке системы до-промышленного варианта.',
        'Извлечение знаний;',
        'Идентификация проблемы;',
        'Тестирование;',
        'Формализация;',
        'Реализация',
        3,
        'Y');
-- 124
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('… — разработка базы знаний на языке представления знаний, который, с одной стороны, соответствует структуре поля знаний, а с другой — позволяет реализовать прототип системы на следующей стадии программной реализации',
        'Извлечение знаний;',
        'Идентификация проблемы;',
        'Тестирование;',
        'Формализация;',
        'Реализация',
        4,
        'Y');
-- 125
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('… — получение инженером по знаниям наиболее полного из возможных представлений о предметной области и способах принятия решения в ней.',
        'Извлечение знаний;',
        'Идентификация проблемы;',
        'Тестирование;',
        'Формализация;',
        'Реализация',
        1,
        'Y');
-- 126
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Обычно в основном цикле разработки экспертной системы участвуют … ?',
        'не менее 10-11 человек;',
        'не менее 3-4 человек;',
        'не более 7-8 человек;',
        'не более 3-4 человек;',
        '7 человек',
        2,
        'Y');
-- 127
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Цель этапа идентификации задачи состоит в том …',
        'Чтобы характеризовать задачу;',
        'Чтобы приступить к работе по созданию базы знаний;',
        'Чтобы завершить создание экспертной системы;',
        'Чтобы собрать необходимые ресурсы;',
        'Чтобы характеризовать задачу и структуру поддерживающих ее знаний и приступить к работе по созданию базы знаний',
        5,
        'Y');
-- 128
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В процессе идентификации задачи инженер и эксперт работают …',
        'в разных городах;',
        'через связывающие их приложения;',
        'в тесном контакте;',
        'в разных организациях;',
        'в разных проектах',
        3,
        'Y');
-- 129
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Средняя продолжительность этапа идентификации проблемы?',
        '1-2 недели;',
        '3-4 недели;',
        '1-3 месяца;',
        '2-3 недели;',
        '1-2 года',
        1,
        'Y');
-- 130
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На этапе извлечение знаний происходит перенос компетентности экспертов на инженеров по знаниям с использованием различных методов. Что здесь лишнее? анализ текстов, диалоги, экспертные игры, лекции, дискуссии, интервью, наблюдение и другие.',
        'анализ тестов;',
        'экспертные игры;',
        'лекции;',
        'прогулки;',
        'интервью',
        4,
        'Y');
-- 131
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Средняя продолжительность этапа извлечение знаний?',
        '1-2 недели;',
        '3-4 недели;',
        '1-3 месяца;',
        '2-3 недели;',
        '1-2 года',
        3,
        'Y');
-- 132
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Условное неформальное описание основных понятий и взаимосвязей между понятиями предметной области, выявленных из системы знаний эксперта, в виде графа, диаграммы, таблицы или текста – это … ?',
        'Инженерия знания;',
        'Поле знаний;',
        'Стратегия получения знаний;',
        'Структурирование знаний;',
        'Представление знаний',
        2,
        'Y');
-- 133
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На этапе структурирование или концептуализация знаний выявляется структура полученных знаний о предметной области, т.е. определяются: … . Что лишнее?',
        'терминология;',
        'список основных понятий и их атрибутов;',
        'отношения между понятиями;',
        'структура входной и выходной информации;',
        'формализация',
        5,
        'Y');
-- 134
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Средняя продолжительность этапа формализации?',
        '1-2 недели;',
        '3-4 недели;',
        '1-2 месяца;',
        '2-3 недели;',
        '1-2 года',
        3,
        'Y');
-- 135
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Средняя продолжительность этапа реализации?',
        '3-4 недели;',
        '1-2 месяца;',
        '1-2 года;',
        '1-2 недели;',
        '2-3 недели',
        2,
        'Y');
-- 136
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На этапе тестирования прототип проверяется на: … . Что лишнее?',
        'использование «пустых» ЭС;',
        'качество проверочных примеров;',
        'удобство и адекватность интерфейсов ввода/вывода;',
        'корректность базы знаний;',
        'эффективность стратегии управления',
        1,
        'Y');
-- 137
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Средняя продолжительность этапа тестирование?',
        '3-4 недели;',
        '1-2 месяца;',
        '1-2 года;',
        '1-2 недели;',
        '2-3 недели;',
        4,
        'Y');
-- 138
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На каком этапе проверяется пригодность экспертной системы для конечного пользователя?',
        'Формализация;',
        'Опытная эксплуатация и внедрение;',
        'Реализация;',
        'Тестирование;',
        'Идентификация проблемы',
        2,
        'Y');
-- 139
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Когда стоит переходить к этапу опытная эксплуатация и внедрение?',
        'Когда ошибки в решениях создают у пользователя отрицательное представление о системе;',
        'Когда система еще в разработке;',
        'После этапа извлечение знаний;',
        'После этапа идентификация проблем;',
        'Когда система будет успешно решать все требуемые задачи',
        5,
        'Y');
-- 140
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Как часто меняются роли разработчиков?',
        'Являются постоянными на протяжении всей разработки;',
        'Меняются после каждого этапа разработки;',
        'Меняются каждый день;',
        'Меняются раз в месяц;',
        'Не меняются вообще никогда',
        1,
        'Y');
-- 141
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что такое инициализация?',
        'Представление какой-либо содержательной области в виде формальной системы или исчисления;',
        'Это исследовательский метод, который позволяет выявить уровень знаний, умений и навыков, способностей и других качеств;',
        'Создание, активация, подготовка к работе, определение параметров. Приведение программы или устройства в состояние готовности;',
        'Разработка программного комплекса, демонстрирующего жизнеспособность подхода в целом;',
        'получение инженером по знаниям наиболее полного из возможных представлений о предметной области и способах принятия решения в ней',
        3,
        'Y');
-- 142
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой фактор ставят на первое место из всех факторов, влияющих на успешное осуществление проекта?',
        'Материальное оснащение;',
        'Человеческие отношения;',
        'Мотивация сотрудников;',
        'Строгий руководитель;',
        'Ответственные сотрудники',
        2,
        'Y');
-- 143
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Перечень требований к кандидату: … . Что лишнее?',
        'Необходимость овладения новыми технологиями и инновациями;',
        'Умение решать более сложные задачи;',
        'умение концентрироваться на решении сложных проблем;',
        'высокая степень коммуникативной гибкости при внедрении работ;',
        'умение правильно проводить своё личное время',
        5,
        'Y');
-- 144
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой минимальный срок заключения контрактов для руководителей?',
        '1 год;',
        '3 года;',
        '5 лет;',
        '2 года;',
        'полгода',
        4,
        'Y');
-- 145
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Определение требований к системе включает: … . Что лишнее?',
        'Выяснение требований к личности человека;',
        'Выбор целей БД;',
        'Выяснение информационных потребностей различных отделов и руководителей фирмы;',
        'Выяснение требований к оборудованию;',
        'Выяснение требований к программному обеспечению',
        1,
        'Y');
-- 146
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В чём заключается концептуальное проектирование базы данных?',
        'Создании логической модели данных для исследуемой части предприятия;',
        'В описании СУБД ориентированной модели БД;',
        'В создании для анализируемой части предприятия концептуальной модели данных;',
        'В процессе проектирования БД;',
        'В определении конкретных структур хранения данных и методов доступа к ним',
        3,
        'Y');
-- 147
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В построении общей концептуальной модели данных выделяют ряд этапов: … . Что лишнее?',
        'Выделение локальных представлений, соответствующих обычно относительно независимым данным. Каждое такое представление проектируется как подзадача;',
        'Разделение локальных представлений;',
        'Формулирование сущностей, описывающих локальную предметную область проектируемой БД, и описание атрибутов, составляющих структуру каждой сущности;',
        'Выделение ключевых атрибутов;',
        'Спецификация связей между сущностями. Удаление избыточных связей',
        2,
        'Y');
-- 148
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Логическая модель, отражающая особенности представления о функционировании предприятия одновременно многих типов пользователей, называется?',
        'Глобальной логической моделью данных;',
        'Локальной логической моделью данных;',
        'Многозначной логической моделью данных;',
        'Расширенной логической моделью данных;',
        'Широкой логической моделью данных',
        1,
        'Y');
-- 149
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что является базовым понятием для управления проектом?',
        'Бюджет;',
        'Стоимость;',
        'Задача;',
        'Цель;',
        'Жизненный цикл',
        5,
        'Y');
-- 150
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Если результативность задачи зависит от … , которое является субъективным, изменяющимся, символьным или вытекающим частично из соображений здравого смысла, тогда область может обоснованно выступать претендентом на экспертную систему.',
        'Решения;',
        'Знания;',
        'Правила;',
        'Условия;',
        'Расчета',
        2,
        'Y');
-- 151
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Ключевой шаг в создании экспертных систем – это?',
        'Найти инвестора;',
        'Найти время;',
        'Найти подходящего инженера;',
        'Найти подходящего эксперта;',
        'Найти материал',
        4,
        'Y');
-- 152
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('После того как инженер по знаниям убедился, что: данная задача может быть решена с помощью экспертной системы; экспертную систему можно создать предлагаемыми на рынке средствами; имеется подходящий эксперт; предложенные критерии производительности являются разумными; затраты и срок их окупаемости приемлемы для заказчика, то он?',
        'Заканчивает работу;',
        'Распускает команду;',
        'Составляет план разработки;',
        'Меняет заказчика;',
        'Передает материал другому инженеру',
        3,
        'Y');
-- 153
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Усеченной версией экспертной системы, спроектированной для проверки правильности кодирования фактов, связей и стратегий рассуждения эксперта называется …',
        'Глобальная система;',
        'Расширенная система;',
        'Многозначная система;',
        'Локальная система;',
        'Прототипная система',
        5,
        'Y');
-- 154
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Несколько десятков правил, фреймов или примеров – это …?',
        'Площадь прототипа;',
        'Объем прототипа;',
        'Размер прототипа;',
        'Прототип;',
        'Радиус прототипа',
        2,
        'Y');
-- 155
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Система решает часть задач, демонстрируя жизнеспособность подхода (несколько десятков правил или понятий)',
        'Демонстрационный прототип ЭС;',
        'Исследовательский прототип ЭС;',
        'Действующий прототип ЭС;',
        'Промышленная система;',
        'Коммерческая система',
        1,
        'Y');
-- 156
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Система надежно решает все задачи на реальных примерах, но для сложной задачи требует много времени и памяти',
        'Демонстрационный прототип ЭС;',
        'Исследовательский прототип ЭС;',
        'Действующий прототип ЭС;',
        'Промышленная система;',
        'Коммерческая система',
        3,
        'Y');
-- 157
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Система обеспечивает высокое качество решений при минимизации требуемого времени и памяти; переписывается с использованием более эффективных средств представления знаний',
        'Демонстрационный прототип ЭС;',
        'Исследовательский прототип ЭС;',
        'Действующий прототип ЭС;',
        'Промышленная система;',
        'Коммерческая система',
        4,
        'Y');
-- 158
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Система решает большинство задач, но неустойчива в работе и не полностью проверена (несколько сотен правил или понятий)',
        'Демонстрационный прототип ЭС;',
        'Исследовательский прототип ЭС;',
        'Действующий прототип ЭС;',
        'Промышленная система;',
        'Коммерческая система',
        2,
        'Y');
-- 159
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Промышленная система, пригодная к продаже, то есть хорошо документирована и снабжена сервисом',
        'Демонстрационный прототип ЭС;',
        'Исследовательский прототип ЭС;',
        'Действующий прототип ЭС;',
        'Промышленная система;',
        'Коммерческая система',
        5,
        'Y');
-- 160
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('С помощью чего система будет общаться с пользователем и экспертом?',
        'Интерфейсов;',
        'Электронной почты;',
        'Специальных встреч;',
        'Отдельного приложения;',
        'Не будут общаться',
        1,
        'Y');
-- 161
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Прототипирование позволяет уменьшить?',
        'Быстроту и дешевизну разработки;',
        'Системные функции;',
        'Риски проекта;',
        'Количество пользователей;',
        'Количество требований',
        3,
        'Y');
-- 162
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Риски прототипирования: … . Что лишнее?',
        'Заинтересованные в проекте лица могут принять работающий прототип за начальную версию системы;',
        'Пользователи системы не могут пользоваться прототипом;',
        'Пользователи системы могут использовать работающий прототип для анализа и критики интерфейса;',
        'Пользователи системы могут использовать работающий прототип для определения характеристик качества системы;',
        'Разработчики могут много сил и средств потратить на разработку прототипа',
        2,
        'Y');
-- 163
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Экспертные системы оцениваются главным образом для того, чтобы проверить …',
        'Использование программы;',
        'Эффективность программы;',
        'Полезность программы;',
        'Работу программы;',
        'Точность работы программы и её полезность',
        5,
        'Y');
-- 164
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Под стыковкой системы подразумевается …',
        'Разработка связей между экспертной системой и средой, в которой она действует;',
        'Внесение изменений;',
        'Вмешательство инженера по знаниям;',
        'Модификация системы;',
        'Готовность экспертной системы',
        1,
        'Y');
-- 165
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('При перекодировании системы на язык, подобный С, повышается ее быстродействие и увеличивается переносимость, однако … при этом уменьшается',
        'Рефлексивность;',
        'Гибкость;',
        'Стратифицированность;',
        'Скорость;',
        'Интеллектуальность',
        2,
        'Y');
-- 166
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Методы тестирования программ: … . Что лишнее?',
        'Статистическое тестирование;',
        'Детерминированное тестирование;',
        'Гибкое тестирование;',
        'Стохастическое тестирование;',
        'Тестирование в реальном масштабе времени',
        3,
        'Y');
-- 167
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Требует многократного выполнения программы на ЭВМ с использованием специальных тестовых наборов данных называют …',
        'Статистическое тестирование;',
        'Детерминированное тестирование;',
        'Гибкое тестирование;',
        'Стохастическое тестирование;',
        'Тестирование в реальном масштабе времени',
        2,
        'Y');
-- 168
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Проверяются результаты обработки исходных данных с учетом времени их поступления динамики, использования памяти, длительности и приоритетности обработки, взаимодействия с другими программами называют …',
        'Статистическое тестирование;',
        'Детерминированное тестирование;',
        'Гибкое тестирование;',
        'Стохастическое тестирование;',
        'Тестирование в реальном масштабе времени',
        5,
        'Y');
-- 169
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Перебрать все варианты невозможно, поэтому используется множество случайных величин с соответствующими распределениями, для сравнения результатов также используются распределения случайных величин называют …',
        'Статистическое тестирование;',
        'Детерминированное тестирование;',
        'Гибкое тестирование;',
        'Стохастическое тестирование;',
        'Тестирование в реальном масштабе времени',
        4,
        'Y');
-- 170
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Формальный анализ текста программы на языке программирования называют …',
        'Статистическое тестирование;',
        'Детерминированное тестирование;',
        'Гибкое тестирование;',
        'Стохастическое тестирование;',
        'Тестирование в реальном масштабе времени',
        1,
        'Y');
-- 171
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Структурное тестирование (“белый ящик”) – при разработке тестовых наборов данных руководствуются следующими критериями: … . Что лишнее?',
        'Покрытие операторов;',
        'Покрытие узлов ветвления;',
        'Покрытие условий;',
        'Комбинаторное покрытие условий;',
        'Покрытие выводов',
        5,
        'Y');
-- 172
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Функциональное тестирование («черный ящик»). К стратегии функционального тестирования относятся следующие методы: … . Что лишнее?',
        'Метод эквивалентного разбиения;',
        'Класс эквивалентности;',
        'Метод покрытия операторов;',
        'Анализ граничных значений;',
        'Метод функциональных диаграмм',
        3,
        'Y');
-- 173
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Документирование разработки должно проводиться?',
        'Когда разработка закончилась;',
        'На каждом этапе разработки;',
        'Когда система готова;',
        'Перед началом разработки системы;',
        'Документация не обязательна',
        2,
        'Y');
-- 174
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Для полного цикла проектирования целесообразно выделить следующие уровни: … . Что лишнее?',
        'Требования пользователей и функциональные спецификации;',
        'Проектная документация системы;',
        'Программная документация;',
        'Техническая документация;',
        'Документация о личностях, участвующих в разработке проекта',
        5,
        'Y');
-- 175
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Основное на третьем этапе заключается в добавлении большого числа дополнительных эвристик. Эти эвристики обычно увеличивают … системы, обеспечивая большее число правил для трудноуловимых аспектов отдельных случаев.',
        'Ширину;',
        'Глубину;',
        'Объем;',
        'Размеры;',
        'Радиус',
        2,
        'Y');
-- 176
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Необходимо обратить особое внимание на … интерфейсов, их простоту и удобство для управления работой ЭС.',
        'Цветовую гамму;',
        'Количество информации;',
        'Сложность;',
        'Языковые возможности;',
        'Графическое представление',
        4,
        'Y');
-- 177
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Прототипирование основывается на … , в которых участвуют заказчик и разработчик.',
        'Многократном повторении итераций;',
        'Однократном повторении итераций;',
        'Давно существующей системе;',
        'Стратегии разработки;',
        'Принятии заказчиком макета за продукт',
        1,
        'Y');
-- 178
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Где чаще всего применяется продукционная модель?',
        'Информационных системах;',
        'Интеллектуальных системах;',
        'Экспертных системах;',
        'Промышленных экспертных системах;',
        'Нигде не применяется',
        4,
        'Y');
-- 179
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что означает термин «семантическая»?',
        '«правильная»;',
        '«лучшая»;',
        '«надежная»;',
        '«ограниченная»;',
        '«смысловая»',
        5,
        'Y');
-- 180
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что такое семантика?',
        'Это ориентированный граф, вершины которого — понятия, а дуги — отношения между ними;',
        'Это наука, устанавливающая отношения между символами и объектами, которые они обозначают, то есть наука, определяющая смысл знаков;',
        'Знания о видимых взаимосвязях между отдельными событиями и фактами в предметной области',
        'Абстракции, аналогии, схемы, отображающие структуру и природу процессов, протекающих в предметной области;',
        'Это хорошо структурированные данные, или данные о данных, или метаданные',
        2,
        'Y');
-- 181
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Проблема поиска решения в базе знаний типа семантической сети сводится?',
        'К некоторой подсети;',
        'К отражению поставленного запроса к базе;',
        'К задаче поиска фрагмента сети;',
        'К задаче поиска ответа;',
        'Ни к чему не сводится',
        3,
        'Y');
-- 182
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Кем была предложена модель семантической сети?',
        'Минский;',
        'Цейтин;',
        'Хейес-Рот;',
        'Пушкин;',
        'Куиллиан',
        5,
        'Y');
-- 183
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что является преимуществом модели семантической сети?',
        'Сложность организации процедуры поиска вывода на семантической сети;',
        'Более других соответствует современным представлениям об организации долговременной памяти человека;',
        'Отражает концептуальную основу организации памяти человека;',
        'Применима в основном в исследовательских «игрушечных» системах;',
        'Нет преимуществ',
        2,
        'Y');
-- 184
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что является недостатком модели семантической сети?',
        'Сложность организации процедуры поиска вывода на семантической сети;',
        'Более других соответствует современным представлениям об организации долговременной памяти человека;',
        'Отражает концептуальную основу организации памяти человека;',
        'Применима в основном в исследовательских «игрушечных» системах;',
        'Нет недостатков',
        1,
        'Y');
-- 185
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Кем был предложен термин «фрейм»?',
        'Минский;',
        'Цейтин;',
        'Хейес-Рот;',
        'Пушкин;',
        'Куиллиан',
        1,
        'Y');
-- 186
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Важнейшим свойством теории фреймов является заимствование из теории семантических сетей — так называемое … .',
        'Поиск вывода на семантической сети;',
        'Множественное наследование;',
        'Одиночное наследование;',
        'Наследование свойств;',
        'Нет правильного ответа',
        4,
        'Y');
-- 187
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Где применима формальная логическая модель?',
        'Исследовательских «игрушечных» системах;',
        'Интеллектуальных системах;',
        'Экспертных системах;',
        'Промышленных экспертных системах;',
        'Нигде не применяется',
        1,
        'Y');
-- 188
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Несмотря на все недостатки, какая модель получила наибольшее распространение?',
        'Семантическая сети;',
        'Фрейм;',
        'Формальная логическая модель;',
        'Продукционная модель;',
        'Нейронные сети',
        4,
        'Y');
-- 189
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Управляющий компонент определяет порядок применения правил и выполняет четыре функции: … . Что лишнее?',
        'Действие;',
        'Выбор;',
        'Сопоставление;',
        'Изменение;',
        'Срабатывание',
        4,
        'Y');
-- 190
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что просматривает интерпретатор продукций в каждом цикле?',
        'Все решения;',
        'Все факты;',
        'Все циклы;',
        'Все примеры;',
        'Все правила',
        5,
        'Y');
-- 191
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('При обратном порядке вывода вначале выдвигается некоторая гипотеза, а затем механизм вывода как бы возвращается назад, переходя к фактам, пытаясь найти те, которые подтверждают гипотезу. Если она оказалась правильной, то выбирается следующая гипотеза, детализирующая первую и являющаяся по отношению к ней подцелью. Далее отыскиваются факты, подтверждающие истинность подчиненной гипотезы. Вывод такого типа называется … .',
        'Прямой вывод;',
        'Управляемым целями;',
        'Обратный вывод;',
        'Глубинный вывод;',
        'Вывод в ширину',
        2,
        'Y');
-- 192
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Сложные программные комплексы, аккумулирующие знания специалистов в конкретных предметных областях и тиражирующие этот эмпирический опыт для консультаций менее квалифицированных пользователей называют … .',
        'Экспертные системы;',
        'Интеллектуальные системы;',
        'Промышленная система;',
        'Коммерческая система;',
        'Действующий прототип ЭС',
        1,
        'Y');
-- 193
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Специалист предметной области, для которого предназначена система – это … .',
        'Инженер по знаниям;',
        'Интерфейс пользователя;',
        'Решатель;',
        'Пользователь;',
        'База знаний',
        4,
        'Y');
-- 194
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Для разрешения конфликта интерпретатор имеет критерий, с помощью которого он выбирает … .',
        'Три правила;',
        'Два правила;',
        'Единственное правило;',
        'Ноль правил;',
        'Ничего',
        3,
        'Y');
-- 195
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Совокупность отобранных правил в интерпретаторе составляет?',
        'Множество;',
        'Конфликтное множество;',
        'Совокупность множеств;',
        'Совокупность конфликтных множеств;',
        'Ничего',
        2,
        'Y');
-- 196
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Комплекс программ, реализующих диалог пользователя с ЭС как на стадии ввода информации, так и при получении результатов – это … .',
        'Инженер по знаниям;',
        'Интерфейс пользователя;',
        'Решатель;',
        'Пользователь;',
        'База знаний',
        2,
        'Y');
-- 197
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Программа, моделирующая ход рассуждений эксперта на основании знаний, имеющихся в БЗ – это … .',
        'Интеллектуальный редактор БЗ;',
        'Интерфейс пользователя;',
        'Решатель;',
        'Подсистема объяснений;',
        'База знаний',
        3,
        'Y');
-- 198
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Программа, позволяющая пользователю получить ответы на вопросы: «Как была получена та или иная рекомендация?» и «Почему система приняла такое решение?» - это … .',
        'Интеллектуальный редактор БЗ;',
        'Интерфейс пользователя;',
        'Решатель;',
        'Подсистема объяснений;',
        'База знаний',
        4,
        'Y');
-- 199
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Программа, представляющая инженеру по знаниям возможность создавать БЗ в диалоговом режиме – это … .',
        'Интеллектуальный редактор БЗ;',
        'Интерфейс пользователя;',
        'Решатель;',
        'Подсистема объяснений;',
        'База знаний',
        1,
        'Y');
-- 200
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Специалист в области искусственного интеллекта, выступающий в роли промежуточного буфера между экспертом и базой знаний – это … .',
        'Инженер по знаниям;',
        'Интерфейс пользователя;',
        'Решатель;',
        'Пользователь;',
        'База знаний',
        1,
        'Y');

-- Topic 4
-- 201
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Процесс взаимодействие эксперта с источникам знаний, в результате которого становятся явными процесс рассуждений специалистов при принятии решения и структура их представления и предметной области -',
        'формирование знаний;',
        'приобретение знаний;',
        'извлечение знаний;',
        'экстенсионал;',
        'интенсионал;',
        3,
        'Y');
-- 202
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Процесс наполнения базы знаний экспертом с использованием специализированных программных средств -',
        'формирование знаний;',
        'приобретение знаний;',
        'извлечение знаний;',
        'экстенсионал;',
        'интенсионал;',
        2,
        'Y');
-- 203
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Процесс анализа данных и выявления скрытых закономерностей с использованием специального математического аппарата и программных средств -',
        'формирование знаний;',
        'приобретение знаний;',
        'извлечение знаний;',
        'экстенсионал;',
        'интенсионал;',
        1,
        'Y');
-- 204
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Прямое извлечение знаний происходит посредством',
        'общения инженера и эксперта ;',
        'общения инженера и аналитика;',
        'общения двух аналитиков;',
        'общения аналитика и эксперта;',
        'общения двух экспертов',
        4,
        'Y');
-- 205
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Междисциплинарное понятие, обозначающее все формы непосредственных контактов между людьми — от дружеских до деловых -',
        'общение;',
        'послание;',
        'партнерство;',
        'сотрудничество;',
        'кураторство',
        1,
        'Y');
-- 206
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Сколько поколений имеет автоматизированное приобретение знаний?',
        '1;',
        '2;',
        '3;',
        '4;',
        '5',
        3,
        'Y');
-- 207
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Жесткость модели представления знаний, встроенной в систему приобретения знаний (СПЗ) и связанной с привязкой к программной реализации — проблема … поколения.',
        '1;',
        '2;',
        '3;',
        '4;',
        '5',
        1,
        'Y');
-- 208
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Систему SIMER+MIR была разработана под руководством, что ведущая',
        'Попова;',
        'Осипова;',
        'Волкова;',
        'Гаврилова;',
        'Федорова',
        2,
        'Y');
-- 209
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Обучение на основе примеров(прецедентов) включает',
        'обеспечения механизма сопряжения;',
        'установление соответствий между набором полей БЗ и множеством декларативной компоненты БЗ;',
        'преобразование результата работы алгоритма обучения в способ представления;',
        'настройку алгоритма распознавания на задачу посредством предъявления примеров, классификация которых известна;',
        'множество примеров предметной области',
        4,
        'Y');
-- 210
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Условное неформальное описание основных понятий и взаимосвязей между понятиями предметной области, выявленных из системы знаний эксперта, в виде графа/диаграммы, таблицы или текста -',
        'знания;',
        'база данных;',
        'контекст;',
        'база знаний;',
        'поле знаний',
        5,
        'Y');
-- 211
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Коммуникативным пассивным методам относится',
        'наблюдение;',
        'ролевые игры;',
        'анкетирование;',
        'анализ литературы;',
        'экспертные игры',
        1,
        'Y');
-- 212
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Коммуникативно пассивные методы подразумевают передается',
        'аналитику;',
        'эксперту;',
        'инженеру;',
        'всем выше перечисленным;',
        'нет правильного ответа',
        2,
        'Y');
-- 213
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Коммуникативно активные методы подразумевают передается',
        'аналитику;',
        'эксперту;',
        'инженеру;',
        'всем выше перечисленным;',
        'нет правильного ответа',
        1,
        'Y');
-- 214
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Предметная область, с определившейся терминологией, развивающейся теорией, явными взаимосвязями между явлениями - … предметная область',
        'хорошо структурированная;',
        'средне структурированная;',
        'слабо структурированная;',
        'верны 2 и 3 пункт;',
        'нет правильного ответа',
        2,
        'Y');
-- 215
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Сеансы наблюдений могут потребовать от инженера по знаниям:',
        'овладение техникой стенографии;',
        'развитие навыков «чтения по глазам»;',
        'верны 1 и 2 пункт;',
        'наблюдение за имитацией процесса;',
        'верны 2 и 4 пункты',
        3,
        'Y');
-- 216
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Самый распространенный коммуникативно пассивный метод извлечения знаний на начальных этапах разработки',
        'анализ протоколов «мыслей вслух»;',
        'лекции;',
        'интервью;',
        'анализ документации;',
        'наблюдение',
        5,
        'Y');
-- 217
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('принципиальная сложность для любого человека объяснить процесс размышлений является основной трудностью при',
        'наблюдении;',
        'лекции',
        'протоколировании «мыслей вслух»;',
        'интервью;',
        'анализе документации',
        3,
        'Y');
-- 218
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие вопросы на лекции бесполезны?',
        'умные, углубляющие лекцию;',
        'глупые, не по существу;',
        'вопросы на засыпку, провокационные;',
        'верны 2 и 3 пункты;',
        'полезны все вопросы',
        4,
        'Y');
-- 219
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('К коммуникативным активным методам не относится',
        'игры с экспертом;',
        'свободный диалог;',
        'интервью;',
        'анализ документации;',
        'анкетирование',
        4,
        'Y');
-- 220
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие способы анкетирования предпочтительнее?',
        'аналитик вслух задает вопросы и сам заполняет анкету по ответам эксперта;',
        'эксперт самостоятельно заполняет анкету после предварительного инструктирования;',
        'анкета размещается в Интернете или на отдельном компьютере и затем автоматически обрабатывается;',
        'верны пункты 1 и 2;',
        'верны пункты 2 и 3',
        5,
        'Y');
-- 221
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Эротетическая логика -',
        'диалектическая логика;',
        'логика вопросов;',
        'формальная логика;',
        'классическая логика;',
        'символическая логика',
        2,
        'Y');
-- 222
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Вопросы в интервью по воздействию делятся на',
        'вербальные и невербальные;',
        'основные и контрольные;',
        'прямые и косвенные;',
        'личные и безличные;',
        'открытые и закрытые',
        3,
        'Y');
-- 223
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Вопросы, «ломающие лед» между аналитиком и экспертом  -',
        'провоцирующие;',
        'оживляющие память;',
        'буферные;',
        'контактные;',
        'нет правильного ответа',
        4,
        'Y');
-- 224
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Вопросы, которые используются для разграничения тем интервью -',
        'провоцирующие;',
        'оживляющие память;',
        'буферные;',
        'контактные;',
        'нет правильного ответа',
        3,
        'Y');
-- 225
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Вопросы, которые используются для реконструкции отдельных случаев из практики -',
        'провоцирующие;',
        'оживляющие память;',
        'буферные;',
        'контактные;',
        'нет правильного ответа',
        2,
        'Y');
-- 226
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Вопросы, используемые для получения неподготовленных ответов -',
        'провоцирующие;',
        'оживляющие память;',
        'буферные;',
        'контактные;',
        'нет правильного ответа',
        1,
        'Y');
-- 227
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Метод извлечения знаний в форме беседы инженера по знаниям и эксперта, в которой нет жесткого регламентированного плана и вопросника -',
        'интервью;',
        'игры с экспертом;',
        'анкетирование;',
        'наблюдение;',
        'свободный диалог',
        5,
        'Y');
-- 228
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Вопросы для интервью для эксперта имеют … значение.',
        'парадигматическое;',
        'диагностическое;',
        'денотативное;',
        'сигнификативное;',
        'эмотичное',
        2,
        'Y');
-- 229
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой вид подготовки к свободному диалогу включает знакомство с теорией общения?',
        'общая;',
        'специальная;',
        'конкретная;',
        'психологическая;',
        'нет правильного ответа',
        4,
        'Y');
-- 230
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой вид подготовки к свободному диалогу включает овладение теорией и навыками интервьюирования?',
        'общая;',
        'специальная;',
        'конкретная;',
        'психологическая;',
        'нет правильного ответа',
        2,
        'Y');
-- 231
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой вид подготовки к свободному диалогу включает знакомство с системной методологией?',
        'общая;',
        'специальная;',
        'конкретная;',
        'психологическая;',
        'нет правильного ответа',
        1,
        'Y');
-- 232
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой вид подготовки к свободному диалогу включает изучение предметной области по литературе?',
        'общая;',
        'специальная;',
        'конкретная;',
        'психологическая;',
        'нет правильного ответа',
        3,
        'Y');
-- 233
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Эксперимент, где участникам предлагается производственная ситуация, а они на основе своего жизненного опыта, общих и специальных знаний и представлений принимают решение  -',
        'диагностическая игра;',
        'деловая игра;',
        'интервью;',
        '«мозговой штурм»;',
        'круглый стол',
        2,
        'Y');
-- 234
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что необходимо сделать перед началом «круглого стола»?',
        'убедиться, что все правильно понимают задачу;',
        'установить регламент;',
        'четко сформулировать тему;',
        'верны 2 и 3 пункты;',
        'верны 1, 2 и 3 пункты',
        5,
        'Y');
-- 235
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В каком году был впервые использован метод «мозговой штурм» ?',
        'в 1947 г.;',
        'в 1948 г.;',
        'в 1949 г.;',
        'в 1939 г.;',
        'в 1938 г.',
        4,
        'Y');
-- 236
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Ролевые игры в группе предусматривают участие',
        'эксперта;',
        'нескольких экспертов;',
        'инженера по знаниям;',
        'нескольких инженеров по знаниям;',
        'эксперта и инженера по знаниям',
        2,
        'Y');
-- 237
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Глобальная схема, которая может быть положена в основу концептуального анализа  структуры знаний любой предметной области -',
        'иерархия абстракций;',
        'иерархия понятий;',
        'понятийная структура;',
        'онтология;',
        'нет правильного ответа',
        1,
        'Y');
-- 238
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Упорядоченная система  основных понятий предметной области -',
        'иерархия абстракций;',
        'иерархия понятий;',
        'понятийная структура;',
        'онтология;',
        'нет правильного ответа',
        3,
        'Y');
-- 239
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Онтологии имеют … значение.',
        'гносеологическое ;',
        'дидактическое ;',
        'когнитивное;',
        'гносеологическое и дидактическое;',
        'дидактическое и когнитивное',
        4,
        'Y');
-- 240
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Автором идеи интеллект-карт считается',
        'Анохин;',
        'Дэвид Асубель;',
        'Загорулько;',
        'Джон Венн;',
        'Тони Бьюзен',
        5,
        'Y');
-- 241
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Сколько стадий в алгоритме для формирования поля знаний?',
        '7;',
        '8;',
        '9;',
        '10;',
        '11',
        3,
        'Y');
-- 242
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На какой стадии формирования поля знаний чаще всего можно столкнуться с непредвиденными трудностями?',
        'определение отношений;',
        'извлечение знаний;',
        'построение пирамиды знаний;',
        'составление словаря терминов;',
        'определение стратегии принятия решения',
        2,
        'Y');
-- 243
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('найдите неверное утверждение',
        'поле знаний — эскиз будущей БЗ;',
        'и-карты являются инструментом для подготовки поля знаний;',
        'к-карты являются инструментом для подготовки поля знаний;',
        'поле знаний — формальное описание БЗ;',
        'все варианты верны',
        4,
        'Y');
-- 244
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В каких годах получили развитие формальные компьютерные языки и системы представления и обработки знаний, записанных на естественном языке, например, проект Сус?',
        '1960-е;',
        '1970-е;',
        '1980-е;',
        '1990-е;',
        '2000-е',
        3,
        'Y');
-- 245
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Описание понятий и действий, необходимых для решения проблемы, на формальном языке, пригодном для построения компьютерной сети -',
        'представление знаний;',
        'модель представления знаний;',
        'поле знаний;',
        'среда выполнения модели знаний;',
        'нет правильного ответа',
        1,
        'Y');
-- 246
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('К модульным ЯПЗ относятся',
        'семантические сети;',
        'фреймы;',
        'отнтологии;',
        'логические исчисление;',
        'все вариант верны',
        4,
        'Y');
-- 247
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Существует … основных подхода к формализации.',
        '1;',
        '2;',
        '3;',
        '4;',
        '5',
        2,
        'Y');
-- 248
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Способ компактного представления КАК-знаний и подходит для отображения моделей со сложной логикой -',
        'матрица зависимостей;',
        'корреляционная матрица;',
        'структурирование функции качества;',
        'QFD;',
        'таблица решений',
        5,
        'Y');
-- 249
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Таблица принятия решений, как правило, состоит из … частей.',
        '1;',
        '2;',
        '3;',
        '4;',
        '5',
        4,
        'Y');
-- 250
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Метод, помогающий трансферу знаний и принятию решений при разработке продуктов и услуг -',
        'матрица зависимостей;',
        'корреляционная матрица;',
        'структурирование функции качества;',
        'QFD',
        'таблица решений',
        4,
        'Y');
-- 251
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Иерархическая лестница понятий, подъем по которой означает углубление понимания и повышения уровня абстракции понятия -',
        'пирамида знаний;',
        'лестница знаний;',
        'словарь терминов;',
        'детализация понятий;',
        'нет правильного ответа',
        1,
        'Y');
-- 252
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Кто выявил, что диаграммы «узел-связь» нагляднее для небольших и несложных структур, однако они становятся сложными при визуализации моделей больших систем.',
        'Анохин;',
        'Дэвид Асубель;',
        'Загорулько;',
        'Джон Венн;',
        'Келлер',
        5,
        'Y');
-- 253
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Семиотика включает',
        'синтаксис;',
        'семантику;',
        'прагматику;',
        'верны 1 и 2 пункты;',
        'верны 1, 2 и 3 пункты',
        5,
        'Y');
-- 254
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Обобщение предметов некоторого класса по их специфическим признакам -',
        'атрибут;',
        'отношение;',
        'метапонятие;',
        'концепт;',
        'нет правильного ответа',
        4,
        'Y');
-- 255
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Кто предложил ряд подходов к созданию основ теории обобщения и классификации применительно к ситуационному управлению и искусственному интеллекту в целом?',
        'Ломнев;',
        'Поспелов;',
        'Волков;',
        'Зенкин;',
        'Попов',
        2,
        'Y');
-- 256
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Неформальные методы выявления связей придумывает',
        'эксперт;',
        'несколько экспертов;',
        'инженер по знаниям;',
        'несколько инженеров по знаниям;',
        'эксперт и инженер по знаниям',
        3,
        'Y');
-- 257
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Выберите неверное утверждение',
        'сценарии делятся на фрагменты;',
        'фрагменты делятся не сцены;',
        'основной упор в существующих моделях представления знаний делается на понятия;',
        'знания в памяти — отдельные фрагменты;',
        'метод «сортировки карточек» является неформальным',
        4,
        'Y');
-- 258
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Методы построения пирамиды знаний включают использование -',
        'рисунков;',
        'схем;',
        'кубиков;',
        'диаграмм;',
        'все вышеперечисленное верно',
        5,
        'Y');
-- 259
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Сколько базовых отношений существует между понятиями?(Поспелов)',
        'более 50;',
        'более 100;',
        'более 150;',
        'более 200;',
        'более 250',
        4,
        'Y');
-- 260
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Традиционные методы выявления понятий основаны на',
        'математическом аппарате распознавания образов и классификации;',
        'методологии инженерии знаний;',
        'естественной иерархии предметной области;',
        'верны 1 и 2 пункты;',
        'верны й и 3 пункты',
        1,
        'Y');
-- 261
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Математический инструментарий, предназначенный для обработки данных о попарных сходствах , связях или отношениях между анализируемыми объектами с целью представления этих объектов в иде точек некоторого координатного пространства -',
        'ассоциативная сеть;',
        'многомерное шкалирование;',
        'психологическое шкалирование',
        'семантическое пространство;',
        'субъективное шкалирование',
        2,
        'Y');
-- 262
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Традиционно многомерное шкалирование используется для',
        'поиска и интерпретации латентных переменных;',
        'верификации геометрической конфигурации системы анализируемых объектов в координатном пространстве латентных переменных;',
        'сжатие исходного массива данных с максимальными потерями в информативности;',
        'верны 1 и 2 пункты;',
        'верны 1, 2  и 3 пункты',
        4,
        'Y');
-- 263
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Укажите неверное утверждение',
        'МШ — раздел прикладной статистики;',
        'Цель МШ — представление объектов в виде точек некоторого координатного пространства;',
        'Латентный — скрытый, непосредственно наблюдаемый;',
        'Традиционное МШ используется для решения трех типов задач;',
        'МШ не используется как инструмент наглядного представления исходных данных',
        5,
        'Y');
-- 264
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('МШ широко применятся в исследованиях по',
        'антропологии;',
        'педагогике;',
        'психологии;',
        'экономике;',
        'все вышеперечисленное верно',
        5,
        'Y');
-- 265
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В основе многомерного шкалирования лежит интерактивная процедура субъективного шкалирования, когда … предлагается оценить сходство между различными элементами некой градуированной шкалы',
        'эксперту;',
        'нескольким экспертам;',
        'инженеру по знаниям;',
        'нескольким инженерам по знаниям;',
        'эксперту и инженеру по знаниям',
        1,
        'Y');
-- 266
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Основный тип данных в многомерном шкалировании  -',
        'связь между двумя объектами;',
        'мера близости между двумя объектами;',
        'сера сходства между двумя объектами;',
        'мера различия между двумя ответами;',
        'верны 2 и 3 пункты',
        2,
        'Y');
-- 267
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какая из аксиом неверная?',
        'd(a,b) >= 0;',
        'd(a,a)=0;',
        'd(a,b)>d(b,a);',
        'd(a,b)+d(b,c)>=d(a,c);',
        'все аксиомы верны',
        3,
        'Y');
-- 268
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Метрические методы были введены Торгерсоном в',
        '1958;',
        '1968;',
        '1978;',
        '1988;',
        '1998',
        1,
        'Y');
-- 269
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('При сравнении методов многомерного шкалирования с другими методами анализа, многомерное шкалирование выигрывает за счет',
        'возможности дать наглядное количественное координатное представление;',
        'возможности дать наглядное качественное координатное представление;',
        'того, что координатное представление более простое и легче интерпретируется экспертами;',
        'верны 1 и 3 пункты;',
        'верны 2 и 3 пункты',
        4,
        'Y');
-- 270
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Система KELLY была предложена Похилько и Страховым в … году.',
        '1960;',
        '1970;',
        '1980;',
        '1990;',
        '2000',
        4,
        'Y');
-- 271
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Метод репертуарных решеток был сформулирован Джорждем Келли в … году',
        '1945;',
        '1955;',
        '1965;',
        '1975;',
        '1985',
        2,
        'Y');
-- 272
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('«Чем шире набор личностных конструктов у субъекта, тем более многомерных, дифференцированным является образ мира, человека, других явлений и предметов, то есть тем выше его когнитивная сложность». Кому принадлежит данное высказывание?',
        'Келли;',
        'Торгерсон;',
        'Гаврилова;',
        'Алексеева;',
        'Крускал',
        3,
        'Y');
-- 273
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Репертуарная решетка представляет собой матрицу, которая заполняется',
        'испытуемым;',
        'экспериментатором;',
        'испытуемым или экспериментатором;',
        'испытуемым и экспериментатором;',
        'верны 3 и 4 пункты',
        3,
        'Y');
-- 274
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('К конструктам можно отнести',
        'биполярные признаки;',
        'параметры, шкалы ;',
        'альтернативные противоположные отношения;',
        'способы поведения;',
        'все вышеперечисленное',
        5,
        'Y');
-- 275
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('В качестве объектов, находящихся в столбцах репертуарной решетки, могут выступать',
        'шкалы;',
        'альтернативные противоположные отношения ;',
        'способы поведения;',
        'люди и предметы;',
        'биполярные признаки',
        4,
        'Y');
-- 276
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Область представлений человека о мире, понятия которой можно соотнести с конкретной референтной осью выделяемого конструкта -',
        'диапазон пригодности;',
        'диапазон обобщения;',
        'диапазон противопоставления;',
        'диапазон осмысления;',
        'нет правильного ответа',
        1,
        'Y');
-- 277
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Стратегия … направлена на поиск симптомов, которые обеспечивают более точное различие гипотез',
        'деления пути;',
        'симптомной обусловленности;',
        'различения симптомов;',
        'дифференциации гипотез;',
        'нет правильного ответа',
        4,
        'Y');
-- 278
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Управление знаниями -',
        'совокупность процессов, которые управляют созданием знаний внутри предприятия;',
        'совокупность процессов, которые управляют созданием и обработкой и использованием знаний внутри предприятия;',
        'совокупность процессов, которые управляют созданием и распространением знаний внутри предприятия;',
        'совокупность процессов, которые управляют созданием, распространением, обработкой и использованием знаний внутри предприятия;',
        'совокупность процессов, которые управляют созданием , обработкой и использованием знаний внутри предприятия',
        4,
        'Y');
-- 279
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Стратегия … обеспечивает нахождение симптоматических событий, которые лежат на пути к уже найденному симптому',
        'деления пути;',
        'симптомной обусловленности;',
        'различения симптомов;',
        'дифференциации гипотез;',
        'нет правильного ответа',
        1,
        'Y');
-- 280
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что не является причиной  разработки системы управления знаниями?',
        'работники предприятия тратят мало времени на поиск необходимой информации;',
        'опыт ведущих и наиболее квалифицированных сотрудников используется только ими самими;',
        'ценная информация захоронена в огромном количестве документов и данных, доступ к которым затруднен;',
        'дорогостоящие ошибки повторяются из-за недостаточной информативности и игнорирования предыдущего опыта;',
        'все вышеперечисленное верно',
        1,
        'Y');
-- 281
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Укажите неверное утверждение',
        'корпоративная память фиксирует информацию из различных источников предприятия;',
        'корпоративная память не делает информацию доступной специалистам для решения производственных задач;',
        'корпоративная память не позволяет исчезнуть знаниям выбывающих специалистов;',
        'корпоративная память хранит большие объемы данных, информации и знаний из различных источников предприятия;',
        'корпоративная память позволяет избегать ошибок',
        2,
        'Y');
-- 282
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('При разработке систем управления знаниями можно выделить .. этапов',
        '1;',
        '2;',
        '3;',
        '4;',
        '5',
        5,
        'Y');
-- 283
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На каком этапе происходит представление структурированной информации в форматах машинной обработки, то есть на языках описания данных и знаний?',
        'накопление;',
        'извлечение;',
        'структурирование;',
        'формализация;',
        'обслуживание',
        4,
        'Y');
-- 284
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Основная функция OMIS -',
        'сбор и систематическая организация информации;',
        'интеграция с существующими автоматизированными системами;',
        'обеспечение нужной информации по запросу;',
        'обеспечение нужной информацией при необходимости;',
        'все вышеперечисленное верное',
        5,
        'Y');
-- 285
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Укажите неверное утверждение.',
        'OMIS обеспечивает выдачу по запросу нужной информации;',
        'OMIS не включает подсистемы объяснений, которые непосредственно отвечают на вопросы;',
        'OMIS оставляет интерпретацию и оценку информации пользователю;',
        'OMIS оставляет интерпретацию и оценку информации пользователю;',
        'все вышеперечисленное верно',
        2,
        'Y');
-- 286
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Ядром системы OMIS является',
        'базы данных;',
        'хранилище документов;',
        'информационное хранилище;',
        'хранилище данных;',
        'хранилище знаний',
        3,
        'Y');
-- 287
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Онтологический уровень информационного хранилища не включает',
        'реляционную БД;',
        'метаописания;',
        'описание документации;',
        'понятийную структуру;',
        'все вышеперечисленное',
        1,
        'Y');
-- 288
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что нужно учитывать при разработке?',
        'человеческий фактор;',
        'эволюцию знаний;',
        'интеллектуальность;',
        'гибкость;',
        'все вышеперечисленное',
        5,
        'Y');
-- 289
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Техника лестничного спуска Хинкла  -',
        'метод построение репертуарных решеток;',
        'метод выявления конструктов ;',
        'метод построение МШ;',
        'метод построения OMIS;',
        'нет правильного ответа',
        2,
        'Y');
-- 290
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что не является онтологией?',
        'словарь с определениями;',
        'тезаурус;',
        'модель с фиксированным набором отношений;',
        'модель с произвольным набором отношений;',
        'все вышеперечисленное',
        3,
        'Y');
-- 291
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Укажите неверное утверждение',
        'текстологические методы извлечения знаний не относятся к текстологии;',
        'текстологические методы основаны на изучении специальных текстов из учебников, монографий и т.д.;',
        'цель текстологии — критическое прочтение научных текстов ;',
        'среди методов извлечения знаний текстологические наиболее разработанные;',
        'задача извлечения знаний из текстов — понимание смысл текста',
        4,
        'Y');
-- 292
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что не является компонентом научного текста?',
        'объективные взгляды;',
        'наблюдение;',
        'научные понятия;',
        'общие места;',
        'заимствования',
        1,
        'Y');
-- 293
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Кому принадлежит данное определение понимания? «Люди понимают друг друга не потому, что передают собеседнику знаки предметов, и даже не потому, что взаимно настраивают друг друга на точное и полное воспроизведение идентичного понятия, а потому, что взаимно затрагивают друг в друге одно и то же звено цепи чувствительных представлений и зачатков внутренних понятий, прикасаются к одним и тем же клавишам инструмента своего духа, благодаря чему у каждого вспыхивают в сознании соответствующий, но не тождественные смыслы»',
        'Файн;',
        'Бахтин;',
        'Сиротко-Сибирский;',
        'Гумбольдт;',
        'Соколов',
        4,
        'Y');
-- 294
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Существует … вида текстологических методов.',
        '1;',
        '2;',
        '3;',
        '4;',
        '5',
        3,
        'Y');
-- 295
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что влияет на качество интервью?',
        'язык и порядок вопросов;',
        'порядок и уместность вопросов;',
        'язык и уместность вопросов;',
        'язык, порядок и уместность вопросов;',
        'нет правильного ответа',
        4,
        'Y');
-- 296
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Определение …  означает, что элементы выбираются по определенным правилам та, чтобы они соответствовали какой-либо одной области и все вместе были связаны осмысленным образом аналогично репертуару ролей в пьесе',
        'репертуарная;',
        'пригодность;',
        'шкалирование;',
        'уместность;',
        'субъективный',
        1,
        'Y');
-- 297
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Содержательный уровень информационного хранилища не включает',
        'реляционные БД;',
        'документальные БД;',
        'БЗ с семантическими сетями;',
        'чертежи;',
        'описание документации',
        5,
        'Y');
-- 298
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Стратегия … выявляет специфические характеристики симптома, которые, с одной стороны, идентифицируют его как следствие некоторой гипотезы, с другой — противопоставляют другим',
        'деления пути;',
        'симптомной обусловленности;',
        'различения симптомов;',
        'дифференциации гипотез;',
        'нет правильного ответа',
        3,
        'Y');
-- 299
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На каком этапе должны быть выделены основные понятия, выработана структура представления информации, обладающая максимальной наглядностью, простотой измерения и дополнения?',
        'накопление;',
        'извлечение;',
        'структурирование;',
        'формализация;',
        'обслуживание',
        3,
        'Y');
-- 300
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Стратегия … направлена на выявление негативных симптомов, то есть симптомов,  отсутствие которых имеет большой диагностический вес, чем их присутствие',
        'деления пути;',
        'симптомной обусловленности;',
        'различения симптомов;',
        'дифференциации гипотез;',
        'нет правильного ответа',
        2,
        'Y');

-- Topic 5
-- 301
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Управление знаниями — это:',
        'совокупность процессов, управляющих созданием, обработкой и использованием информации внутри предприятия;',
        'совокупность процессов, управляющих созданием, распространением и использованием информации внутри предприятия;',
        'совокупность процессов, управляющих созданием, распространением, обработкой и использованием информации внутри предприятия;',
        'совокупность процессов, управляющих обработкой и использованием информации внутри предприятия;',
        'совокупность процессов, управляющих распространением, обработкой и использованием информации внутри предприятия',
        3,
        'Y');
-- 302
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что такое знания в СУЗ?',
        'закономерности предметной области, позволяющие специалистам решать свои задачи;',
        'закономерности предметной области, полученные в результате практического опыта или почерпнутые из литературы;',
        'все виды информации (руководства, письма, новости, информация о заказчиках, сведения о конкурентах и технологии, накопившиеся в процессе разработки);',
        'информация, позволяющая решить какую-либо практическую задачу;',
        'закономерности предметной области, полученные в результате практического опыта и позволяющие специалистам решать свои задачи',
        3,
        'Y');
-- 303
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Когда появились СУЗ?',
        '2010е;',
        '2000е;',
        '1990е;',
        '1980е;',
        '1970е',
        3,
        'Y');
-- 304
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какая технология включает в себя знания?',
        'базы и хранилища данных;',
        'браузеры и системы поиска;',
        'порталы, корпоративные сети;',
        'экспертные системы;',
        'системы групповой работы.',
        4,
        'Y');
-- 305
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какая из СУЗ работает с неструктурированной информацией в форме документов?',
        'Fulcrum;',
        'Mind Mappers;',
        'IBM;',
        'Autonomy;',
        'EMC Documentum',
        1,
        'Y');
-- 306
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что было первым инструментарием СУЗ?',
        'портал;',
        'репозиторий документов;',
        'хранилище данных;',
        'учетная система;',
        'Интернет',
        3,
        'Y');
-- 307
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Управление знаниями с точки зрения менеджмента подразумевает интегрированный подход к:',
        'созданию, организации, поиску, использованию информационных ресурсов предприятия;',
        'хранению, формированию, поиску документов, знаний и данных;',
        'анализу интеллектуальных ресурсов предприятия;',
        'созданию, организации, использованию, увеличению интеллектуальных и информационных ресурсов предприятия;',
        'созданию, организации, использованию, увеличению интеллектуальных ресурсов предприятия',
        4,
        'Y');
-- 308
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Жизненный цикл PWC:',
        'получение информации, использование информации, обмен знаниями, сотрудничество, оценка, создание, поддержание, ликвидация;',
        'получение информации, использование информации, сотрудничество, оценка, ликвидация;',
        'получение информации, обмен знаниями, использование информации, оценка, создание, ликвидация;',
        'использование информации, обучение, оценка, создание;',
        'получение информации, обучение, создание и оценка',
        1,
        'Y');
-- 309
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что включает в себя этап диагностики в жизненном цикле знаний?',
        'определение потребности в информации, «добычу» и описание знаний, определение сотрудников, владеющих информацией, блиц-оценку приоритетов организации в решении проблемы, введение должности инженера по знаниям;',
        'определение стоимостных характеристик, определение потребности в информации, обнаружение источников данных и знаний, введение должности аналитика;',
        'процесс извлечения знаний, выделение основных понятий, определение стоимостных характеристик;',
        'процесс извлечения знаний, проверку наличия информации и источников знаний, определение сотрудников, владеющих информацией, введение должности инженера по знаниям, описание знаний;',
        'определение потребности в информации, проверку наличия информации и источников знаний, определение сотрудников, владеющих информацией, определение стоимостных характеристик, блиц-оценку приоритетов организации в решении проблемы, введение должности инженера по знаниям',
        5,
        'Y');
-- 310
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Выберите типы обработки документов в СУЗ:',
        'хранение, поиск, анализ, доступ к любым информационным структурам;',
        'хранение, поиск, групповая работа, доступ к любым информационным ресурсам;',
        'хранение, формирование, передача опыта, доступ к любым информационным ресурсам;',
        'хранение, передача опыта, групповая работа, доступ к любым информационным ресурсам;',
        'хранение, поиск, анализ, групповая работа, доступ к любым информационным ресурсам',
        2,
        'Y');
-- 311
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие функции СУЗ обеспечивает линейка продуктов LOTUS?',
        'сбор информации, хранение информации, обработку информации, предоставление персонифицированного рабочего места на основе Web-браузера, предоставление средств для обмена информацией;',
        'сбор информации, документирование информации, хранение информации, предоставление персонифицированного рабочего места на основе Web-браузера, предоставление рабочего места для совместного использования;',
        'документирование информации, хранение информации, обработку информации, предоставление рабочего места для совместного использования, предоставление средств для обмена информацией;',
        'сбор информации, документирование информации, хранение информации, обработку информации, предоставление персонифицированного рабочего места на основе Web-браузера, предоставление рабочего места для совместного использования, предоставление средств для обмена информацией;',
        'сбор информации, документирование информации, хранение информации, обработку информации, предоставление персонифицированного рабочего места на основе Web-браузера',
        4,
        'Y');
-- 312
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какая из перечисленных СУЗ является средством Web',
        'Concept Mappers;',
        'Google, Yandex;',
        'Open Text;',
        'ARIS;',
        'IBM FileNet',
        2,
        'Y');
-- 313
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Классической ошибкой при автоматизации систем является:',
        'игнорирование разработчиками реальных потребностей, способностей и целей пользователей системы;',
        'стратегия структурирования рассматривается перед выбором технологии реализации;',
        'главенство и доминирование средств программной реализации над предметной постановкой;',
        'перегрузка начальной системы большим количеством услуг;',
        'неоднозначное понимание задачи',
        3,
        'Y');
-- 314
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Окончательная цель соединения бизнес-процессов и УЗ состоит в том, чтобы:',
        'обнаруживать информационную потребность в течение выполнения производственного процесса и определять уместное знание в специфическом контексте задачи;',
        'использовать информацию контекста задачи для информационной фильтрации;',
        'построить объединенные метамодели данных и знаний;',
        'последовательно сблизить логические методы и методы информационного поиска и индексации данных;',
        'автоматически порождать тезаурус из существующих массивов документов',
        1,
        'Y');
-- 315
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Уровень имплицитной информации корпоративной памяти — это:',
        'знание, которое является ключевым при принятии решений и управлении технологическими процессами;',
        'персональное знание, неотрывно связанное с индивидуальным опытом, которое может быть передано при прямом контакте через процедуры извлечения знаний;',
        'информация, доступная специалистам для решения производственных задач;',
        'большие объемы данных, информации и знаний из различных источников предприятия;',
        'данные и знания, которые могут быть найдены в документах организации в форме сообщений, писем, статей, справочников, патентов, чертежей, видео- и аудиозаписей, программного обеспечения',
        2,
        'Y');
-- 316
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие источники не используются в процессе выявления значимых признаков успешных прецедентов?',
        'методические материалы;',
        'блоги;',
        'тематические Интернет-страницы;',
        'результаты опроса;',
        'учебники',
        2,
        'Y');
-- 317
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Технология разработки справочной модели состоит из следующих этапов:',
        'выявление значимых признаков для описания успешных прецедентов, оценка выявленных признаков УП, анализ выявленных признаков УП, разработка справочной модели;',
        'выявление значимых признаков для описания и выбора успешных прецедентов, разработка справочной модели для описания и выбора УП;',
        'выявление значимых признаков для описания и выбора успешных прецедентов, оценка и анализ выявленных признаков УП, разработка справочной модели для описания и выбора УП;',
        'анализ значимых признаков УП, разработка справочной модели для описания и выбора УП, ликвидация;',
        'выявление значимых признаков для выбора успешных прецедентов, оценка выявленных признаков УП, разработка справочной модели для выбора УП',
        3,
        'Y');
-- 318
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Функциональные области и процессы на верхнем уровне делятся на:',
        'тактические, связанные с культурой компании, организационные;',
        'операционные, обеспечивающие;',
        'организационные, технологические, связанные с культурой компании;',
        'стратегические, организационные, технологические;',
        'стратегические, тактические, операционные',
        2,
        'Y');
-- 319
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Корпоративный портал знаний — это:',
        'система, которая объединяет все имеющиеся у организации информационные ресурсы (приложения, базы и хранилища данных, аналитические системы);',
        'система, которая предоставляет пользователям единый защищенный доступ к корпоративной и внешней информации предприятия;',
        'информационные ресурсы организации (приложения, базы и хранилища данных, аналитические системы);',
        'система, которая объединяет все имеющиеся у организации информационные ресурсы (приложения, базы и хранилища данных, аналитические системы) и, используя web-интерфейс, предоставляет пользователям единый защищенный доступ к корпоративной и внешней информации;',
        'средство управления информацией и данными предприятия',
        4,
        'Y');
-- 320
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие возможности обеспечивают продукты LOTUS на уровне расширенной организации с точки зрения базы данных коллективного доступа?',
        'управление знаниями на уровне организации, использование интеллектуального капитала и передового опыта;',
        'развитие электронных сообществ, создание альянсов, электронных рынков и групп с общими интересами;',
        'совершенствование обработки рабочих потоков и управления ими в рабочих группах;',
        'групповая работа, поддержка принятия решений;',
        'связь между организациями',
        2,
        'Y');
-- 321
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Управление знаниями как направление в информатике использует ПО для:',
        'реализации задач хранения, формирования, поиска, анализа, группового использования документов, данных и знаний;',
        'реализации задач формирования, поиска, анализа, группового использования документов, данных и знаний ;',
        'реализации задач хранения, формирования, поиска, анализа, группового использования документов;',
        'для анализа документов, данных и знаний;',
        'реализации задач группового использования интеллектуальных и информационных ресурсов',
        1,
        'Y');
-- 322
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Схема жизненного цикла PWC с традиционными методами инженерии знаний:',
        'диагностика, структурирование, распределение, реализация, использование, оценка, поддержка, ликвидация;',
        'приобретение, диагностика, извлечение, распределение, структурирование, реализация, использование, сотрудничество, оценка, поддержка;',
        'диагностика, приобретение, извлечение, структурирование, распределение, реализация, использование, сотрудничество, оценка, поддержка, ликвидация;',
        'диагностика, приобретение, извлечение, структурирование, реализация, использование, сотрудничество, оценка, поддержка, ликвидация;',
        'приобретение, извлечение, структурирование, реализация, использование, сотрудничество, оценка, поддержка',
        3,
        'Y');
-- 323
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что включает в себя этап приобретения в жизненном цикле знаний?',
        'обнаружение источников данных и знаний, их «добычу» и описание, выделение основных понятий, выработка структуры представления информации;',
        'определение потребности в информации, проверку наличия информации и источников знаний, определение сотрудников, владеющих информацией, определение стоимостных характеристик, блиц-оценку приоритетов организации в решении проблемы, введение должности инженера по знаниям;',
        'обнаружение источников данных и знаний, их «добычу» и описание, выделение основных понятий, определение сотрудников, владеющих информацией;',
        'определение потребности в информации, проверку наличия информации и источников знаний, выделение основных понятий, выработка структуры представления информации;',
        'определение потребности в информации, проверку наличия информации и источников знаний, выделение основных понятий, выработка структуры представления информации, введение должности инженера по знаниям',
        1,
        'Y');
-- 324
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Выберите типы обработки данных в СУЗ:',
        'хранение, поиск, анализ, доступ к любым информационным структурам;',
        'хранение, поиск, групповая работа, доступ к любым информационным ресурсам;',
        'хранение, формирование, передача опыта, доступ к любым информационным ресурсам;',
        'хранение, передача опыта, групповая работа, доступ к любым информационным ресурсам;',
        'хранение, поиск, анализ, групповая работа, доступ к любым информационным ресурсам',
        1,
        'Y');
-- 325
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какая из перечисленных СУЗ является комплексной системой управления контентом и документами?',
        'сообщество, блоги;',
        'библиотеки, справочники;',
        'Галактика ZOOM;',
        'Autonomy;',
        'ECM',
        5,
        'Y');
-- 326
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие возможности обеспечивают продукты LOTUS на уровне расширенных организаций с точки зрения коммуникации и потоков информации?',
        'коммуникации в масштабе организации, поощрение межфункциональных связей;',
        'коммуникации в масштабе отдела, рабочей группы, повышение эффективности информационного обмена;',
        'групповая работа, поддержка принятия решений;',
        'связь между организациями, связь с внешними участниками деловых процессов;',
        'совершенствование обработки рабочих потоков и управление ими в рабочих группах',
        4,
        'Y');
-- 327
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что такое сематический веб?',
        'концепция сети, в которой каждый ресурс на естественном языке снабжается описанием, понятным компьютеру;',
        'концепция сети, в которой каждый ресурс на формальном языке снабжается описанием, понятным компьютеру;',
        'сеть, в которой каждый ресурс снабжается описанием, понятным пользователю;',
        'сеть, в которой каждый ресурс снабжается описанием, понятным пользователю;',
        'концепция сети, в которой каждый ресурс на формальном языке снабжается описанием, понятным пользователю',
        1,
        'Y');
-- 328
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Содержимое корпоративной памяти на уровне программной реализации с точки зрения данных составляет:',
        'базы знаний;',
        'базы данных и информационные файлы;',
        'оцифрованные архивы;',
        'справочники;',
        'отчеты, письма',
        2,
        'Y');
-- 329
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Содержимое корпоративной памяти на уровне программной реализации с точки зрения знаний составляет:',
        'базы знаний;',
        'базы данных и информационные файлы;',
        'оцифрованные архивы;',
        'справочники;',
        'отчеты, письма',
        1,
        'Y');
-- 330
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных критериев имеет высокий приоритет важности при описании успешных прецедентов?',
        'уровень воздействия;',
        'размер компании;',
        'количество вовлеченных специалистов по управлению знаниями;',
        'тип организационной структуры компании;',
        'методы и инструменты',
        5,
        'Y');
-- 331
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Этапы внедрения процесса работы со справочными моделями для поддержания базы прецедентов:',
        'поиск и выбор наиболее похожих прецедентов под возникшую проблему, оценка эффективности предложенного решения проблемы, повторное использование информации и знаний из найденного прецедента для решения возникшей проблемы, сохранение вновь возникшего успешного прецедента в репозитории для обмена знаниями и решения подобных проблем в будущем;',
        'поиск наиболее похожих прецедентов под возникшую проблему, повторное использование информации и знаний из найденного прецедента для решения возникшей проблемы, сохранение вновь возникшего успешного прецедента в репозитории для обмена знаниями и решения подобных проблем в будущем;',
        'поиск и выбор наиболее похожих прецедентов под возникшую проблему, повторное использование информации и знаний из найденного прецедента для решения возникшей проблемы, оценка эффективности предложенного решения проблемы, сохранение вновь возникшего успешного прецедента в репозитории для обмена знаниями и решения подобных проблем в будущем;',
        'оценка эффективности решения проблемы, повторное использование информации и знаний из найденного прецедента для решения возникшей проблемы, сохранение вновь возникшего успешного прецедента в репозитории для обмена знаниями и решения подобных проблем в будущем;',
        'поиск и выбор наиболее похожих прецедентов под возникшую проблему, повторное использование информации и знаний из найденного прецедента для решения возникшей проблемы, оценка эффективности предложенного решения проблемы',
        3,
        'Y');
-- 332
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Когда впервые вводится идея семантического веба?',
        '1960е;',
        '1970е;',
        '1980е;',
        '1990е;',
        '2000е',
        5,
        'Y');
-- 333
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Где могут находится ресурсы знаний?',
        'в базах данных;',
        'в базах знаний;',
        'в картотечных блоках;',
        'у специалистов;',
        'все вышеперечисленное',
        5,
        'Y');
-- 334
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На каком этапе жизненного цикла знаний целесообразно обращение к профессиональным сообществам для получения сведений о накопленных в других компаниях знаниях?',
        'приобретения;',
        'реализации;',
        'анализа потребностей;',
        'использования;',
        'распределения',
        1,
        'Y');
-- 335
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных критериев имеет низкий приоритет важности при описании успешных прецедентов?',
        'проблемы в области знаний;',
        'уровень воздействия;',
        'размер выручки компании;',
        'цели в области знаний;',
        'функциональные области и процессы',
        3,
        'Y');
-- 336
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Карта знаний — это',
        'модель для объяснения того, как явные и неявные знания при создании знаний взаимодействуют в организации;',
        'визуализация явных и неявных знаний, необходимых для решения задачи;',
        'изучение, анализ, контроль финансового состояния предприятий, организаций, фирм;',
        'процесс идентификации знаний и умений, необходимых для выработки решения;',
        'процесс создания, приобретения, передачи и сохранения знания',
        2,
        'Y');
-- 337
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Для фильтрации информации на этапе распределения и реализации жизненного цикла знаний нужно использовать:',
        'экспертов;',
        'спроектированные структуры и методы повторного использования знаний;',
        'карты знаний;',
        'экспертов и карты знаний;',
        'экспертов и спроектированные структуры и методы повторного использования знаний',
        5,
        'Y');
-- 338
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие механизмы обработки знаний поддерживаются в LOTUS?',
        'средства выявления экспертизы;',
        'определения ценности информационных связей и содержания, важности оценок;',
        'организация персональных пространств как многостраничных сред, содержащих инструменты для выполнения пользователем повседневных задач;',
        '1, 2;',
        '1, 2, 3',
        5,
        'Y');
-- 339
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных критериев имеет средний приоритет важности при описании успешных прецедентов?',
        'проблемы в области знаний;',
        'методы и инструменты;',
        'уровень затрат на внедрение;',
        'организационно-правовая форма компании;',
        'функциональные области и процессы',
        3,
        'Y');
-- 340
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие возможности обеспечивают продукты LOTUS на уровне интегрированных организаций с точки зрения базы данных коллективного доступа?',
        'управление знаниями на уровне организации, использование интеллектуального капитала и передового опыта;',
        'развитие электронных сообществ, создание альянсов, электронных рынков и групп с общими интересами;',
        'совершенствование обработки рабочих потоков и управления ими в рабочих группах;',
        'групповая работа, поддержка принятия решений;',
        'связь между организациями',
        1,
        'Y');
-- 341
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что включает в себя этап распределения и реализации в жизненном цикле знаний?',
        'определение потребности в информации, проверку наличия информации и источников знаний, определение сотрудников, владеющих информацией, определение стоимостных характеристик, блиц-оценку приоритетов организации в решении проблемы, введение должности инженера по знаниям;',
        'обнаружение источников данных и знаний, их «добычу» и описание, выделение основных понятий, выработка структуры представления информации;',
        'коррекцию формализованных данных и знаний (добавление, обновление), удаление устаревшей информации, фильтрация данных и знаний для поиска информации;',
        'превращение структурированной информации в форматы машинной обработки, организацию автоматизированной обработки и поиска информации по запросу, создание новых должностей для помощи аналитикам и тем, кто занят поиском информации, обучение сотрудников обращению с системой;',
        'проверку наличия информации и источников знаний, коррекцию формализованных данных и знаний, обучение сотрудников обращению с системой',
        4,
        'Y');
-- 342
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Количество основных этапов жизненного цикла знаний?',
        '1;',
        '2;',
        '3;',
        '4;',
        '5',
        4,
        'Y');
-- 343
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Выберите типы обработки знаний в СУЗ:',
        'хранение, поиск, анализ, доступ к любым информационным структурам;',
        'хранение, поиск, групповая работа, доступ к любым информационным ресурсам;',
        'хранение, формирование, передача опыта, доступ к любым информационным ресурсам;',
        'хранение, передача опыта, групповая работа, доступ к любым информационным ресурсам;',
        'хранение, поиск, анализ, групповая работа, доступ к любым информационным ресурсам',
        3,
        'Y');
-- 344
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какая из перечисленных СУЗ является системой поиска и анализа информации?',
        'Argument Mappers;',
        'Microsoft Office SharePoint Server;',
        'шаблоны в системах управления проектами и процессами;',
        'Google Desktop for Enterprise;',
        'ECM',
        4,
        'Y');
-- 345
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие возможности обеспечивают продукты LOTUS на уровне интегрированных организаций с точки зрения коммуникации и потоков информации?',
        'коммуникации в масштабе организации, поощрение межфункциональных связей;',
        'коммуникации в масштабе отдела, рабочей группы, повышение эффективности информационного обмена;',
        'групповая работа, поддержка принятия решений;',
        'связь между организациями, связь с внешними участниками деловых процессов;',
        'совершенствование обработки рабочих потоков и управление ими в рабочих группах',
        1,
        'Y');
-- 346
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Объединенная эксплуатация формальных и неформальных представлений знаний и данных  — это:',
        'сближение логических методов и методов информационного поиска и индексации знаний;',
        'методы информационного поиска и индексации данных;',
        'логические методы и методы интеллектуального поиска и индексации знаний;',
        'последовательное сближение логических методов и методов информационного поиска;',
        'последовательное сближение логических методов и методов информационного поиска и индексации данных',
        5,
        'Y');
-- 347
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Семантический веб организации — это:',
        'реализация Semantic Web на предметной области;',
        'сеть, в которой каждый ресурс на естественном языке снабжается описанием, понятным пользователю;',
        'сеть, в которой каждый ресурс на формальном языке снабжается описанием, понятным пользователю;',
        'реализация Semantic Web на ограниченной предметной области (в рамках отдельно взятой организации);',
        'глобальная компьютерная сеть, узлы которой обмениваются данными, не требующими обработки в реальном времени',
        4,
        'Y');
-- 348
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Содержимое корпоративной памяти уровне программной реализации с точки зрения контента составляет:',
        'базы знаний;',
        'информационные файлы;',
        'оцифрованные архивы;',
        'каталоги;',
        'справочники',
        3,
        'Y');
-- 349
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Под процессом обслуживания корпоративной памяти понимается:',
        'фильтрация данных и знаний для поиска информации, необходимой пользователям;',
        'корректировка формализованных данных и знаний (добавление, обновление): «чистка», т.е. удаление устаревшей информации, фильтрация данных и знаний для поиска информации, необходимой пользователям;',
        'удаление устаревшей информации;',
        'корректировка формализованных данных и знаний (добавление, обновление);',
        'корректировка данных и знаний для поиска информации, необходимой пользователям',
        2,
        'Y');
-- 350
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных критериев имеет высокий приоритет важности при описании успешных прецедентов?',
        'функциональные области и процессы;',
        'уровень затрат на внедрение;',
        'организационно-правовая форма компании;',
        'использованное программное обеспечение;',
        'размер выручки компании',
        1,
        'Y');
-- 351
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных вариантов не является информационной технологией, которая используется и интегрируется СУЗ?',
        'системы групповой работы и ее поддержки;',
        'базы знаний и экспертные системы;',
        'порталы, корпоративные сети и Интернет;',
        'электронная почта;',
        'нет правильного варианта ответа',
        5,
        'Y');
-- 352
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие механизмы обработки знаний поддерживаются в LOTUS?',
        'библиотеки шаблонов создания приложений для управления знаниями;',
        'механизмы каталогизации контента;',
        'средства структуризации персонализированной информации;',
        '2, 3;',
        '1, 2, 3',
        5,
        'Y');
-- 353
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных критериев имеет низкий приоритет важности при описании успешных прецедентов?',
        'проблемы в области знаний;',
        'уровень воздействия;',
        'тип организационной структуры компании;',
        'организационно-правовая форма компании;',
        'функциональные области и процессы',
        4,
        'Y');
-- 354
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Для каких организаций СУЗ может стать хорошей стартовой площадкой?',
        'для компаний, которые уже справились с автоматизацией данных;',
        'для предприятий, которые хотят создать интегрированную корпоративную систему;',
        'для предприятий, которые хотят создать «мозаику» отдельных функциональных блоков;',
        'для всех организаций;',
        'нет правильного ответа',
        2,
        'Y');
-- 355
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что подразумевается под гибкостью СУЗ?',
        'возможность обработки знания в различной форме и по разным темам в контексте работы данного предприятия;',
        'возможность обработки знания в различной форме;',
        'возможность обработки знания по разным темам в одной форме;',
        'возможность накопления информации о пользователях системы и о знаниях, которые система получает во время работы;',
        'подход к извлечению точной, ранее неизвестной и потенциально полезной информации из данных',
        1,
        'Y');
-- 356
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Основной парадигмой управления знаниями предприятий является:',
        'хранилища данных;',
        'корпоративная память;',
        'Semantic Web;',
        'базы знаний;',
        'онтологии',
        5,
        'Y');
-- 357
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Каким образом с помощью технологии семантического веба обеспечивается оптимизация поиска информации?',
        'за счет более точного понимания машиной понятий, которые интересуют человека;',
        'за счет более точного индексирования информации с применением статистических методов и анализа семантических связей;',
        'за счет анализа семантических связей;',
        '1, 2;',
        '1, 3',
        4,
        'Y');
-- 358
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных критериев имеет средний приоритет важности при описании успешных прецедентов?',
        'проблемы в области знаний;',
        'методы и инструменты;',
        'уровень воздействия;',
        'организационно-правовая форма компании;',
        'функциональные области и процессы',
        3,
        'Y');
-- 359
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Содержимое корпоративной памяти на содержательном уровне с точки зрения знаний составляет:',
        'базы знаний;',
        'базовые онтологии;',
        'оцифрованные архивы;',
        'справочники;',
        'модели принятия решения',
        5,
        'Y');
-- 360
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие возможности обеспечивают продукты LOTUS на уровне отделов и подразделений (автоматизированной рабочей группы) с точки зрения средств координации рабочих потоков?',
        'бизнес-процессы на уровне рабочей группы, перестройка деловых процессов;',
        'бизнес-процессы на уровне рабочей группы, совершенствование обработки рабочих потоков и управления ими в рабочих группах;',
        'инновации в производственных цепочках, управление производственными цепочками;',
        'групповая работа, поддержка принятия решений;',
        'повышение эффективности информационного обмена',
        2,
        'Y');
-- 361
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что включает в себя этап использования в жизненном цикле знаний?',
        'превращение структурированной информации в форматы машинной обработки, организацию автоматизированной обработки и поиска информации по запросу, создание новых должностей для помощи аналитикам и тем, кто занят поиском информации, обучение сотрудников обращению с системой;',
        'обеспечение доступа к централизованно управляемой системе УЗ и индивидуальным ресурсам, коррекцию формализованных данных и знаний (добавление, обновление), удаление устаревшей информации, фильтрация данных и знаний для поиска информации, необходимой пользователям;',
        'проверку наличия информации и источников знаний, коррекцию формализованных данных и знаний, обучение сотрудников обращению с системой;',
        'проверку наличия информации и источников знаний, определение сотрудников, владеющих информацией, введение должности инженера по знаниям;',
        'превращение структурированной информации в форматы машинной обработки, организацию автоматизированной обработки и поиска информации по запросу, создание новых должностей для помощи аналитикам и тем, кто занят поиском информации, обучение сотрудников обращению с системой',
        2,
        'Y');
-- 362
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какими типами обработки в СУЗ различаются документы и данные?',
        'хранением и поиском;',
        'анализом и групповой работой;',
        'поиском и формированием;',
        'групповой работой и передачей опыта;',
        'доступом к любым информационным ресурсам',
        2,
        'Y');
-- 363
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какая из перечисленных СУЗ является инструментом структурирования знаний?',
        'Convera RetrievalWare;',
        'IBM FileNet;',
        'Autonomy;',
        'ARIS;',
        'ConceptMappers',
        5,
        'Y');
-- 364
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие возможности обеспечивают продукты LOTUS на уровне отделов и подразделений (автоматизированной рабочей группы) с точки зрения коммуникации и потоков информации?',
        'коммуникации в масштабе организации, поощрение межфункциональных связей;',
        'коммуникации в масштабе отдела, рабочей группы, повышение эффективности информационного обмена;',
        'групповая работа, поддержка принятия решений;',
        'связь между организациями, связь с внешними участниками деловых процессов;',
        'совершенствование обработки рабочих потоков и управление ими в рабочих группах',
        2,
        'Y');
-- 365
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Для чего может использоваться объединенная онтология\тезаурус?',
        'для улучшения поиска, фильтрации и маршрутизации документов;',
        'для обнаружения информационной потребности в течение выполнения производственного процесса;',
        'для определения уместного знания в специфическом контексте задачи;',
        'для поиска и фильтрации знаний;',
        'для автоматического порождения данных из массива документов',
        1,
        'Y');
-- 366
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что составляет концептуальную основу семантического веба организации?',
        'простые автоматизированные инструменты для разбора данных;',
        'язык базового формата хранения данных;',
        'корпоративные онтологии;',
        'совокупность бизнес-логики, правил, процессов и информации в компании;',
        'сервисные приложения',
        3,
        'Y');
-- 367
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Задача корпоративной памяти — :',
        'хранить знания из различных источников предприятия;',
        'хранить большие объемы данных, информации и знаний из различных источников;',
        'накапливать информацию из предыдущего опыта;',
        'хранить большие объемы данных, информации и знаний из различных источников предприятия и делать эту информацию доступной специалистам для решения производственных задач;',
        'предоставлять специалистам доступ к информации предприятия для решения производственных задач',
        4,
        'Y');
-- 368
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Содержимое корпоративной памяти на содержательном уровне с точки зрения контента составляет:',
        'базы данных;',
        'информационные файлы;',
        'справочники;',
        'оцифрованные архивы;',
        'отчеты, письма, фото',
        5,
        'Y');
-- 369
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Конечная цель OMIS состоит в:',
        'обеспечении доступа к знанию всякий раз, когда это необходимо;',
        'интеграции с существующими автоматизированными системами;',
        'сборе и систематической организации информации из различных источников;',
        'обеспечении нужной информации по запросу;',
        'обеспечении нужной информации по запросу',
        1,
        'Y');
-- 370
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных критериев имеет высокий приоритет важности при описании успешных прецедентов?',
        'уровень затрат на внедрение;',
        'уровень воздействия;',
        'количество вовлеченных специалистов по управлению знаниями;',
        'цели в области знаний;',
        'организационно-правовая форма компании',
        4,
        'Y');
-- 371
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Цели в области знаний делятся на:',
        'тактические, связанные с культурой компании, организационные;',
        'операционные, обеспечивающие;',
        'организационные, технологические, связанные с культурой компании;',
        'стратегические, организационные, технологические;',
        'стратегические, тактические, операционные',
        5,
        'Y');
-- 372
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что из перечисленного может являться элементом успешного решения?',
        'применяемые методики;',
        'текстовая документация;',
        'модель организации;',
        'системные компоненты;',
        'процессы и структуры',
        1,
        'Y');
-- 373
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('От какого этапа жизненного цикла знаний зависит дальнейшая жизнеспособность системы?:',
        'диагностики;',
        'распределения;',
        'приобретения;',
        'реализации;',
        'использования',
        3,
        'Y');
-- 374
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Чем сложен этап диагностики жизненного цикла знаний?',
        'отсутствием квалифицированных аналитиков;',
        'выделением основных понятий;',
        'выработкой структуры представления информации;',
        'способами извлечения знаний;',
        'осознанием способа мышления, принятого в организации, и созданием условий, когда работники готовы сотрудничать',
        1,
        'Y');
-- 375
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных критериев имеет низкий приоритет важности при описании успешных прецедентов?',
        'уровень зрелости;',
        'количество вовлеченных специалистов по управлению знаниями;',
        'количественные выгоды;',
        'организационно-правовая форма компании;',
        'функциональные области и процессы',
        2,
        'Y');
-- 376
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Информация персонального рабочего места включает:',
        'документы, файлы;',
        'средство онлайновых дискуссий с другими людьми;',
        'данные из корпоративных систем;',
        '1, 3;',
        '1, 2, 3',
        5,
        'Y');
-- 377
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Пространства сообществ могут включать:',
        'публичные форумы, открытые для всех пользователей;',
        'публичные форумы, открытые для сотрудников организаций;',
        'эксклюзивные места только для получивших соответствующее приглашение;',
        '2, 3;',
        '1, 3',
        4,
        'Y');
-- 378
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Для каких организаций СУЗ может предоставить высокий уровень автоматизации?',
        'для компаний, которые уже справились с автоматизацией данных;',
        'для предприятий, которые хотят создать интегрированную корпоративную систему;',
        'для предприятий, которые хотят создать «мозаику» отдельных функциональных блоков;',
        'для всех организаций;',
        'нет правильного ответа',
        1,
        'Y');
-- 379
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных критериев имеет средний приоритет важности при описании успешных прецедентов?',
        'проблемы в области знаний;',
        'методы и инструменты;',
        'использованное программное обеспечение;',
        'размер выручки компании;',
        'функциональные области и процессы',
        3,
        'Y');
-- 380
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие возможности обеспечивают продукты LOTUS на уровне интегрированных организаций с точки зрения средств координации рабочих потоков?',
        'бизнес-процессы на уровне рабочей группы, перестройка деловых процессов;',
        'бизнес-процессы на уровне рабочей группы, совершенствование обработки рабочих потоков и управления ими в рабочих группах;',
        'инновации в производственных цепочках, управление производственными цепочками;',
        'групповая работа, поддержка принятия решений;',
        'повышение эффективности информационного обмена',
        1,
        'Y');
-- 381
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('На каком этапе жизненного цикла знаний начинается процесс обучения сотрудников обращению с системой?',
        'на этапе диагностики;',
        'на этапе приобретения;',
        'на этапе распределения и реализации;',
        'на этапе анализа потребностей;',
        'на этапе использования',
        3,
        'Y');
-- 382
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие типы обработки в СУЗ есть и у знаний, и у данных?',
        'поиск;',
        'формирование;',
        'доступ к любым информационным ресурсам;',
        'групповая работа;',
        'анализ',
        3,
        'Y');
-- 383
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных компонентов «УЗ» используется в отдельных функциональных областях?',
        'ARIS;',
        'Mind Mappers;',
        'Галактика ZOOM;',
        'Autonomy;',
        'Flying Logic',
        1,
        'Y');
-- 384
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие возможности обеспечивают продукты LOTUS на уровне отделов и подразделений (автоматизированной рабочей группы) с точки зрения базы данных коллективного доступа?',
        'управление знаниями на уровне организации, использование интеллектуального капитала и передового опыта;',
        'развитие электронных сообществ, создание альянсов, электронных рынков и групп с общими интересами;',
        'совершенствование обработки рабочих потоков и управления ими в рабочих группах;',
        'групповая работа, поддержка принятия решений;',
        'связь между организациями',
        4,
        'Y');
-- 385
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Пространства сообществ — это:',
        'повторно используемые объекты данных, которые хранят в себе знания об отношениях между людьми, контентом, деятельностью (работой) и процессами, которые требуются для выполнения специфических задач и проектов;',
        'повторно используемые объекты знаний, которые хранят в себе информацию об отношениях между людьми, контентом, деятельностью (работой) и процессами, которые требуются для выполнения специфических задач и проектов;',
        'информация, которая хранит в себе данные об отношениях между людьми, контентом, деятельностью (работой) и процессами, которые требуются для выполнения специфических задач и проектов;',
        'объекты знаний, которые хранят в себе информацию об отношениях между людьми, контентом и  деятельностью (работой);',
        'повторно используемые объекты знаний, которые хранят в себе информацию об отношениях между людьми, контентом и деятельностью',
        2,
        'Y');
-- 386
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Сколько уровней у корпоративной памяти?',
        '1;',
        '2;',
        '3;',
        '4;',
        '5',
        2,
        'Y');
-- 387
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Уровень эксплицитной информации корпоративной памяти — это:',
        'знание, которое является ключевым при принятии решений и управлении технологическими процессами;',
        'персональное знание, неотрывно связанное с индивидуальным опытом, которое может быть передано при прямом контакте через процедуры извлечения знаний;',
        'информация, доступная специалистам для решения производственных задач;',
        'большие объемы данных, информации и знаний из различных источников предприятия;',
        'данные и знания, которые могут быть найдены в документах организации в форме сообщений, писем, статей, справочников, патентов, чертежей, видео- и аудиозаписей, программного обеспечения',
        5,
        'Y');
-- 388
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('СУЗ на основе корпоративной памяти является:',
        'helpdesk-приложения;',
        'OMIS;',
        'DIKW;',
        'Service Desk;',
        'Web2',
        2,
        'Y');
-- 389
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных критериев имеет средний приоритет важности при описании успешных прецедентов?',
        'проблемы в области знаний;',
        'методы и инструменты;',
        'размер компании;',
        'организационно-правовая форма компании;',
        'функциональные области и процессы',
        3,
        'Y');
-- 390
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Проблемы в области знаний делятся на:',
        'тактические, связанные с культурой компании, организационные;',
        'операционные, обеспечивающие;',
        'организационные, технологические, связанные с культурой компании;',
        'стратегические, организационные, технологические;',
        'стратегические, тактические, операционные',
        3,
        'Y');
-- 391
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что из перечисленного может являться формой представления элемента успешного решения?',
        'применяемые методики;',
        'текстовая документация;',
        'организационные изменения;',
        'применяемые способы изменения культуры компании;',
        'программный продукт и его технологическая поддержка',
        2,
        'Y');
-- 392
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Проблемы СУЗ:',
        'системы работают с  неструктурированной информацией в форме документов и данными без включения знаний;',
        'системы занимаются проблемой организации только части информации, в основном документооборота в компании;',
        'проектировщики традиционно ориентированы на отдельные группы потребителей — главным образом менеджеров;',
        '1 и 2;',
        '1 и 3',
        5,
        'Y');
-- 393
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какому этапу жизненного цикла знаний предшествует период накопления знаний?',
        'диагностике;',
        'реализации;',
        'использованию;',
        'приобретению;',
        'распределению',
        1,
        'Y');
-- 394
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Что подразумевается под интеллектуальностью СУЗ?',
        'возможность обработки знания в различной форме и по разным темам в контексте работы данного предприятия;',
        'возможность обработки знания в различной форме;',
        'возможность обработки знания по разным темам в одной форме;',
        'накопление системой информации о своих пользователях и о знаниях, которые она получает во время работы;',
        'подход к извлечению точной, ранее неизвестной и потенциально полезной информации из данных',
        4,
        'Y');
-- 395
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Интероперабельность онтологий — это:',
        'возможность использования на различных уровнях иерархии, в разных подразделениях, на разных технических и программных платформах специалистами одной квалификации;',
        'возможность использования на различных уровнях иерархии, в разных подразделениях, на разных технических и программных платформах специалистами разной квалификации;',
        'возможность использования на одном уровне иерархии, в разных подразделениях, на разных технических и программных платформах специалистами разной квалификации;',
        'возможность использования на различных уровнях иерархии, на одних технических и программных платформах специалистами разной квалификации;',
        'нет правильного варианта ответа',
        2,
        'Y');
-- 396
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('При проектировании семантического веба организации могут использоваться технологии:',
        'язык RDF;',
        'OWL;',
        'реляционные базы данных;',
        '1, 2;',
        'нет правильного варианта ответа',
        4,
        'Y');
-- 397
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Информация персонального рабочего места включает:',
        'календари;',
        'Web-узлы;',
        '«информирование о людях»;',
        '1, 2;',
        '1, 2, 3',
        5,
        'Y');
-- 398
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какой из перечисленных критериев имеет высокий приоритет важности при описании успешных прецедентов?',
        'размер выручки компании;',
        'использованное программное обеспечение;',
        'типа организационной структуры организации;',
        'проблемы в области знаний;',
        'размер компании',
        4,
        'Y');
-- 399
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Содержимое корпоративной памяти на содержательном уровне с точки зрения данных составляет:',
        'базы знаний;',
        'справочники и каталоги;',
        'базы данных;',
        'отчеты, письма и фото;',
        'оцифрованные архивы',
        2,
        'Y');
-- 400
INSERT INTO aistudenttesterdb.Question (QuestionName, FirstAnswer, SecondAnswer, ThirdAnswer,
                                      FourthAnswer, FifthAnswer, RightAnswer, ActiveFlag)
VALUES ('Какие возможности обеспечивают продукты LOTUS на уровне расширенных организаций с точки зрения средств координации рабочих потоков?',
        'бизнес-процессы на уровне рабочей группы, перестройка деловых процессов;',
        'бизнес-процессы на уровне рабочей группы, совершенствование обработки рабочих потоков и управления ими в рабочих группах;',
        'инновации в производственных цепочках, управление производственными цепочками;',
        'групповая работа, поддержка принятия решений;',
        'повышение эффективности информационного обмена',
        3,
        'Y');

-- Insert data to table QuestionMap
-- Topic 1
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (1, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (2, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (3, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (4, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (5, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (6, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (7, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (8, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (9, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (10, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (11, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (12, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (13, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (14, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (15, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (16, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (17, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (18, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (19, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (20, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (21, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (22, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (23, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (24, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (25, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (26, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (27, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (28, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (29, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (30, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (31, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (32, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (33, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (34, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (35, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (36, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (37, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (38, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (39, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (40, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (41, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (42, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (43, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (44, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (45, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (46, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (47, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (48, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (49, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (50, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (51, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (52, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (53, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (54, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (55, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (56, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (57, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (58, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (59, 1, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (60, 1, 'Y');

-- Topic 2
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (61, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (62, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (63, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (64, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (65, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (66, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (67, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (68, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (69, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (70, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (71, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (72, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (73, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (74, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (75, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (76, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (77, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (78, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (79, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (80, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (81, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (82, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (83, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (84, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (85, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (86, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (87, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (88, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (89, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (90, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (91, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (92, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (93, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (94, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (95, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (96, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (97, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (98, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (99, 2, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (100, 2, 'Y');

-- Topic 3
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (101, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (102, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (103, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (104, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (105, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (106, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (107, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (108, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (109, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (110, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (111, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (112, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (113, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (114, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (115, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (116, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (117, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (118, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (119, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (120, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (121, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (122, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (123, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (124, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (125, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (126, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (127, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (128, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (129, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (130, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (131, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (132, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (133, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (134, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (135, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (136, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (137, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (138, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (139, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (140, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (141, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (142, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (143, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (144, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (145, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (146, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (147, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (148, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (149, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (150, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (151, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (152, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (153, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (154, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (155, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (156, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (157, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (158, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (159, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (160, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (161, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (162, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (163, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (164, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (165, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (166, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (167, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (168, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (169, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (170, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (171, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (172, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (173, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (174, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (175, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (176, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (177, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (178, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (179, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (180, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (181, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (182, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (183, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (184, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (185, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (186, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (187, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (188, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (189, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (190, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (191, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (192, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (193, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (194, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (195, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (196, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (197, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (198, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (199, 3, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (200, 3, 'Y');

-- Topic 4
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (201, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (202, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (203, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (204, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (205, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (206, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (207, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (208, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (209, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (210, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (211, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (212, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (213, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (214, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (215, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (216, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (217, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (218, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (219, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (220, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (221, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (222, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (223, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (224, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (225, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (226, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (227, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (228, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (229, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (230, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (231, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (232, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (233, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (234, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (235, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (236, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (237, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (238, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (239, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (240, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (241, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (242, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (243, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (244, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (245, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (246, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (247, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (248, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (249, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (250, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (251, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (252, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (253, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (254, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (255, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (256, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (257, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (258, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (259, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (260, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (261, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (262, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (263, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (264, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (265, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (266, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (267, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (268, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (269, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (270, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (271, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (272, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (273, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (274, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (275, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (276, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (277, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (278, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (279, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (280, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (281, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (282, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (283, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (284, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (285, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (286, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (287, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (288, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (289, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (290, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (291, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (292, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (293, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (294, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (295, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (296, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (297, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (298, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (299, 4, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (300, 4, 'Y');

-- Topic 5
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (301, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (302, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (303, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (304, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (305, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (306, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (307, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (308, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (309, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (310, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (311, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (312, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (313, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (314, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (315, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (316, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (317, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (318, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (319, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (320, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (321, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (322, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (323, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (324, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (325, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (326, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (327, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (328, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (329, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (330, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (331, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (332, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (333, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (334, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (335, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (336, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (337, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (338, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (339, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (340, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (341, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (342, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (343, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (344, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (345, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (346, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (347, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (348, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (349, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (350, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (351, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (352, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (353, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (354, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (355, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (356, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (357, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (358, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (359, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (360, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (361, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (362, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (363, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (364, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (365, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (366, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (367, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (368, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (369, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (370, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (371, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (372, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (373, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (374, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (375, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (376, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (377, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (378, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (379, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (380, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (381, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (382, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (383, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (384, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (385, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (386, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (387, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (388, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (389, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (390, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (391, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (392, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (393, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (394, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (395, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (396, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (397, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (398, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (399, 5, 'Y');
INSERT INTO aistudenttesterdb.QuestionMap (QuestionID, TopicID, ActiveFlag) VALUES (400, 5, 'Y');