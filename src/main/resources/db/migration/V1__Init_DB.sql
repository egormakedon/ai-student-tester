-- Create hibernate sequence
CREATE TABLE hibernate_sequence
(
    next_val    BIGINT
)
    ENGINE = InnoDB;
INSERT INTO hibernate_sequence VALUES ( 1 );
INSERT INTO hibernate_sequence VALUES ( 1 );

-- Create table Question
CREATE TABLE IF NOT EXISTS aistudenttesterdb.Question
(
    QuestionID      BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    QuestionName    TEXT NOT NULL,
    FirstAnswer     TEXT NOT NULL,
    SecondAnswer    TEXT NOT NULL,
    ThirdAnswer     TEXT NOT NULL,
    FourthAnswer    TEXT NOT NULL,
    FifthAnswer     TEXT NOT NULL,
    RightAnswer     INT UNSIGNED NOT NULL,
    ActiveFlag      CHAR(1) NOT NULL,

    PRIMARY KEY(QuestionID)
)
    ENGINE = InnoDB;

-- Create table Subject
CREATE TABLE IF NOT EXISTS aistudenttesterdb.Subject
(
    SubjectID      BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    SubjectName    VARCHAR(100) NOT NULL,
    ActiveFlag     CHAR(1) NOT NULL,

    PRIMARY KEY(SubjectID),
    UNIQUE INDEX SubjectName_Index (SubjectName ASC)
)
    ENGINE = InnoDB;

-- Create table Topic
CREATE TABLE IF NOT EXISTS aistudenttesterdb.Topic
(
    TopicID       BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    SubjectID     BIGINT UNSIGNED NOT NULL,
    TopicName     VARCHAR(100) NOT NULL,
    ActiveFlag    CHAR(1) NOT NULL,

    PRIMARY KEY(TopicID),
    INDEX SubjectID_Index (SubjectID ASC),
    UNIQUE INDEX TopicName_Index (TopicName ASC),

    CONSTRAINT SubjectID
    FOREIGN KEY (SubjectID)
    REFERENCES aistudenttesterdb.Subject (SubjectID)
)
    ENGINE = InnoDB;

-- Create table QuestionMap
CREATE TABLE IF NOT EXISTS aistudenttesterdb.QuestionMap
(
    QuestionMapID    BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    QuestionID       BIGINT UNSIGNED NOT NULL,
    TopicID          BIGINT UNSIGNED NOT NULL,
    ActiveFlag       CHAR(1) NOT NULL,

    PRIMARY KEY(QuestionMapID),
    INDEX QuestionID_Index (QuestionID ASC),
    INDEX TopicID_Index (TopicID ASC),

    CONSTRAINT QuestionID
    FOREIGN KEY (QuestionID)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TopicID
    FOREIGN KEY (TopicID)
    REFERENCES aistudenttesterdb.Topic (TopicID)
)
    ENGINE = InnoDB;

-- Create table ApplicationUser
CREATE TABLE IF NOT EXISTS aistudenttesterdb.ApplicationUser
(
    ApplicationUserID    BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Username             VARCHAR(100) NOT NULL,
    Password             VARCHAR(100) NOT NULL,
    Email                VARCHAR(100) NOT NULL,
    ActiveFlag           CHAR(1) NOT NULL,

    PRIMARY KEY(ApplicationUserID),
    UNIQUE INDEX Username_Index (Username ASC),
    UNIQUE INDEX Email_Index (Email ASC)
)
    ENGINE = InnoDB;

-- Create table RoleMap
CREATE TABLE IF NOT EXISTS aistudenttesterdb.RoleMap
(
    RoleMapID            BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    ApplicationUserID    BIGINT UNSIGNED NOT NULL,
    RoleName             VARCHAR(100) NOT NULL,
    ActiveFlag           CHAR(1) NOT NULL,

    PRIMARY KEY(RoleMapID),
    INDEX ApplicationUserID_Index (ApplicationUserID ASC),
    INDEX RoleName_Index (RoleName ASC),

    CONSTRAINT ApplicationUserID
    FOREIGN KEY (ApplicationUserID)
    REFERENCES aistudenttesterdb.ApplicationUser (ApplicationUserID)
)
    ENGINE = InnoDB;

-- Create table StudentGroup
CREATE TABLE IF NOT EXISTS aistudenttesterdb.StudentGroup
(
    StudentGroupID        BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    StudentGroupNumber    BIGINT UNSIGNED NOT NULL,
    StudentGroupYear      INT UNSIGNED NOT NULL,
    ActiveFlag            CHAR(1) NOT NULL,

    PRIMARY KEY(StudentGroupID)
)
    ENGINE = InnoDB;

-- Create table Student
CREATE TABLE IF NOT EXISTS aistudenttesterdb.Student
(
    StudentID         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    StudentGroupID    BIGINT UNSIGNED NOT NULL,
    StudentTicket     BIGINT UNSIGNED NOT NULL,
    FirstName         VARCHAR(100) NOT NULL,
    LastName          VARCHAR(100) NOT NULL,
    MiddleName        VARCHAR(100) NOT NULL,
    ActiveFlag        CHAR(1) NOT NULL,

    PRIMARY KEY(StudentID),
    INDEX StudentGroupID_Index (StudentGroupID ASC),
    UNIQUE INDEX StudentTicket_Index (StudentTicket ASC),
    INDEX FirstName_Index (FirstName ASC),
    INDEX LastName_Index (LastName ASC),
    INDEX MiddleName_Index (MiddleName ASC),

    CONSTRAINT StudentGroupID
    FOREIGN KEY (StudentGroupID)
    REFERENCES aistudenttesterdb.StudentGroup (StudentGroupID)
)
    ENGINE = InnoDB;

-- Create table Strategy
CREATE TABLE IF NOT EXISTS aistudenttesterdb.Strategy
(
    StrategyID      BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    StrategyName    VARCHAR(100) NOT NULL,
    ActiveFlag      CHAR(1) NOT NULL,

    PRIMARY KEY(StrategyID)
)
    ENGINE = InnoDB;

-- Create table Mark
CREATE TABLE IF NOT EXISTS aistudenttesterdb.Mark
(
    MarkID                    BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    StrategyID                BIGINT UNSIGNED NOT NULL,
    NumberOfRightQuestions    INT UNSIGNED NOT NULL,
    Mark                      INT UNSIGNED NOT NULL,
    ActiveFlag                CHAR(1) NOT NULL,

    PRIMARY KEY(MarkID),
    INDEX StrategyID_Index (StrategyID ASC),

    CONSTRAINT StrategyID
    FOREIGN KEY (StrategyID)
    REFERENCES aistudenttesterdb.Strategy (StrategyID)
)
    ENGINE = InnoDB;

-- Create table TestSession
CREATE TABLE IF NOT EXISTS aistudenttesterdb.TestSession
(
    TestSessionID    BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    StudentID        BIGINT UNSIGNED NOT NULL,
    CreatedDate      DATETIME NOT NULL,
    FinishedDate     DATETIME,
    Mark             INT UNSIGNED,
    Q1               BIGINT UNSIGNED NOT NULL,
    A1               INT UNSIGNED NOT NULL,
    Q2               BIGINT UNSIGNED NOT NULL,
    A2               INT UNSIGNED NOT NULL,
    Q3               BIGINT UNSIGNED NOT NULL,
    A3               INT UNSIGNED NOT NULL,
    Q4               BIGINT UNSIGNED NOT NULL,
    A4               INT UNSIGNED NOT NULL,
    Q5               BIGINT UNSIGNED NOT NULL,
    A5               INT UNSIGNED NOT NULL,
    Q6               BIGINT UNSIGNED NOT NULL,
    A6               INT UNSIGNED NOT NULL,
    Q7               BIGINT UNSIGNED NOT NULL,
    A7               INT UNSIGNED NOT NULL,
    Q8               BIGINT UNSIGNED NOT NULL,
    A8               INT UNSIGNED NOT NULL,
    Q9               BIGINT UNSIGNED NOT NULL,
    A9               INT UNSIGNED NOT NULL,
    Q10              BIGINT UNSIGNED NOT NULL,
    A10              INT UNSIGNED NOT NULL,
    Q11              BIGINT UNSIGNED NOT NULL,
    A11              INT UNSIGNED NOT NULL,
    Q12              BIGINT UNSIGNED NOT NULL,
    A12              INT UNSIGNED NOT NULL,
    Q13              BIGINT UNSIGNED NOT NULL,
    A13              INT UNSIGNED NOT NULL,
    Q14              BIGINT UNSIGNED NOT NULL,
    A14              INT UNSIGNED NOT NULL,
    Q15              BIGINT UNSIGNED NOT NULL,
    A15              INT UNSIGNED NOT NULL,
    Q16              BIGINT UNSIGNED NOT NULL,
    A16              INT UNSIGNED NOT NULL,
    Q17              BIGINT UNSIGNED NOT NULL,
    A17              INT UNSIGNED NOT NULL,
    Q18              BIGINT UNSIGNED NOT NULL,
    A18              INT UNSIGNED NOT NULL,
    Q19              BIGINT UNSIGNED NOT NULL,
    A19              INT UNSIGNED NOT NULL,
    Q20              BIGINT UNSIGNED NOT NULL,
    A20              INT UNSIGNED NOT NULL,
    ActiveFlag       CHAR(1) NOT NULL,

    PRIMARY KEY(TestSessionID),
    INDEX StudentID_Index (StudentID ASC),
    INDEX Q1_Index (Q1 ASC),
    INDEX Q2_Index (Q2 ASC),
    INDEX Q3_Index (Q3 ASC),
    INDEX Q4_Index (Q4 ASC),
    INDEX Q5_Index (Q5 ASC),
    INDEX Q6_Index (Q6 ASC),
    INDEX Q7_Index (Q7 ASC),
    INDEX Q8_Index (Q8 ASC),
    INDEX Q9_Index (Q9 ASC),
    INDEX Q10_Index (Q10 ASC),
    INDEX Q11_Index (Q11 ASC),
    INDEX Q12_Index (Q12 ASC),
    INDEX Q13_Index (Q13 ASC),
    INDEX Q14_Index (Q14 ASC),
    INDEX Q15_Index (Q15 ASC),
    INDEX Q16_Index (Q16 ASC),
    INDEX Q17_Index (Q17 ASC),
    INDEX Q18_Index (Q18 ASC),
    INDEX Q19_Index (Q19 ASC),
    INDEX Q20_Index (Q20 ASC),

    CONSTRAINT StudentID
    FOREIGN KEY (StudentID)
    REFERENCES aistudenttesterdb.Student (StudentID),

    CONSTRAINT Q1
    FOREIGN KEY (Q1)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q2
    FOREIGN KEY (Q2)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q3
    FOREIGN KEY (Q3)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q4
    FOREIGN KEY (Q4)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q5
    FOREIGN KEY (Q5)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q6
    FOREIGN KEY (Q6)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q7
    FOREIGN KEY (Q7)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q8
    FOREIGN KEY (Q8)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q9
    FOREIGN KEY (Q9)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q10
    FOREIGN KEY (Q10)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q11
    FOREIGN KEY (Q11)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q12
    FOREIGN KEY (Q12)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q13
    FOREIGN KEY (Q13)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q14
    FOREIGN KEY (Q14)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q15
    FOREIGN KEY (Q15)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q16
    FOREIGN KEY (Q16)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q17
    FOREIGN KEY (Q17)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q18
    FOREIGN KEY (Q18)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q19
    FOREIGN KEY (Q19)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT Q20
    FOREIGN KEY (Q20)
    REFERENCES aistudenttesterdb.Question (QuestionID)
)
    ENGINE = InnoDB;