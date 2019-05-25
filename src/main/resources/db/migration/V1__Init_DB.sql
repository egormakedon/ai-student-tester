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
    SubjectName    TEXT NOT NULL,
    ActiveFlag     CHAR(1) NOT NULL,

    PRIMARY KEY(SubjectID)
)
    ENGINE = InnoDB;

-- Create table Topic
CREATE TABLE IF NOT EXISTS aistudenttesterdb.Topic
(
    TopicID       BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    SubjectID     BIGINT UNSIGNED NOT NULL,
    TopicName     TEXT NOT NULL,
    ActiveFlag    CHAR(1) NOT NULL,

    PRIMARY KEY(TopicID),
    INDEX Topic_SubjectID_Index (SubjectID ASC),

    CONSTRAINT Topic_Subject
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
    INDEX QuestionMap_QuestionID_Index (QuestionID ASC),
    INDEX QuestionMap_TopicID_Index (TopicID ASC),

    CONSTRAINT QuestionMap_Question
    FOREIGN KEY (QuestionID)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT QuestionMap_Topic
    FOREIGN KEY (TopicID)
    REFERENCES aistudenttesterdb.Topic (TopicID)
)
    ENGINE = InnoDB;

-- Create table ApplicationUser
CREATE TABLE IF NOT EXISTS aistudenttesterdb.ApplicationUser
(
    ApplicationUserID    BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    Username             VARCHAR(100) NOT NULL,
    Password             TEXT NOT NULL,
    DisplayName          VARCHAR(30) NOT NULL,
    ActiveFlag           CHAR(1) NOT NULL,

    PRIMARY KEY(ApplicationUserID),
    INDEX ApplicationUser_Username_Index (Username ASC)
)
    ENGINE = InnoDB;

-- Create table RoleMap
CREATE TABLE IF NOT EXISTS aistudenttesterdb.RoleMap
(
    RoleMapID            BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    ApplicationUserID    BIGINT UNSIGNED NOT NULL,
    Roles                VARCHAR(100) NOT NULL,
    ActiveFlag           CHAR(1) NOT NULL,

    PRIMARY KEY(RoleMapID),
    INDEX RoleMap_ApplicationUserID_Index (ApplicationUserID ASC),

    CONSTRAINT RoleMap_ApplicationUser
    FOREIGN KEY (ApplicationUserID)
    REFERENCES aistudenttesterdb.ApplicationUser (ApplicationUserID)
)
    ENGINE = InnoDB;

-- Create table StudentGroup
CREATE TABLE IF NOT EXISTS aistudenttesterdb.StudentGroup
(
    StudentGroupID        BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    StudentGroupNumber    BIGINT UNSIGNED NOT NULL,
    ActiveFlag            CHAR(1) NOT NULL,

    PRIMARY KEY(StudentGroupID),
    INDEX StudentGroup_StudentGroupNumber_Index (StudentGroupNumber ASC)
)
    ENGINE = InnoDB;

-- Create table Student
CREATE TABLE IF NOT EXISTS aistudenttesterdb.Student
(
    StudentID         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    StudentGroupID    BIGINT UNSIGNED NOT NULL,
    StudentTicket     BIGINT UNSIGNED NOT NULL,
    LastName          TEXT NOT NULL,
    FirstName         TEXT NOT NULL,
    MiddleName        TEXT NOT NULL,
    ActiveFlag        CHAR(1) NOT NULL,

    PRIMARY KEY(StudentID),
    INDEX Student_StudentGroupID_Index (StudentGroupID ASC),

    CONSTRAINT Student_StudentGroup
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
    INDEX Mark_StrategyID_Index (StrategyID ASC),

    CONSTRAINT Mark_Strategy
    FOREIGN KEY (StrategyID)
    REFERENCES aistudenttesterdb.Strategy (StrategyID)
)
    ENGINE = InnoDB;

-- Create table TestSession
CREATE TABLE IF NOT EXISTS aistudenttesterdb.TestSession
(
    TestSessionID    BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    SubjectID        BIGINT UNSIGNED NOT NULL,
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
    INDEX TestSession_SubjectID_Index (SubjectID ASC),
    INDEX TestSession_StudentID_Index (StudentID ASC),
    INDEX TestSession_Q1_Index (Q1 ASC),
    INDEX TestSession_Q2_Index (Q2 ASC),
    INDEX TestSession_Q3_Index (Q3 ASC),
    INDEX TestSession_Q4_Index (Q4 ASC),
    INDEX TestSession_Q5_Index (Q5 ASC),
    INDEX TestSession_Q6_Index (Q6 ASC),
    INDEX TestSession_Q7_Index (Q7 ASC),
    INDEX TestSession_Q8_Index (Q8 ASC),
    INDEX TestSession_Q9_Index (Q9 ASC),
    INDEX TestSession_Q10_Index (Q10 ASC),
    INDEX TestSession_Q11_Index (Q11 ASC),
    INDEX TestSession_Q12_Index (Q12 ASC),
    INDEX TestSession_Q13_Index (Q13 ASC),
    INDEX TestSession_Q14_Index (Q14 ASC),
    INDEX TestSession_Q15_Index (Q15 ASC),
    INDEX TestSession_Q16_Index (Q16 ASC),
    INDEX TestSession_Q17_Index (Q17 ASC),
    INDEX TestSession_Q18_Index (Q18 ASC),
    INDEX TestSession_Q19_Index (Q19 ASC),
    INDEX TestSession_Q20_Index (Q20 ASC),

    CONSTRAINT TestSession_Subject
    FOREIGN KEY (SubjectID)
    REFERENCES aistudenttesterdb.Subject (SubjectID),

    CONSTRAINT TestSession_Student
    FOREIGN KEY (StudentID)
    REFERENCES aistudenttesterdb.Student (StudentID),

    CONSTRAINT TestSession_Question_Q1
    FOREIGN KEY (Q1)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q2
    FOREIGN KEY (Q2)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q3
    FOREIGN KEY (Q3)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q4
    FOREIGN KEY (Q4)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q5
    FOREIGN KEY (Q5)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q6
    FOREIGN KEY (Q6)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q7
    FOREIGN KEY (Q7)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q8
    FOREIGN KEY (Q8)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q9
    FOREIGN KEY (Q9)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q10
    FOREIGN KEY (Q10)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q11
    FOREIGN KEY (Q11)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q12
    FOREIGN KEY (Q12)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q13
    FOREIGN KEY (Q13)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q14
    FOREIGN KEY (Q14)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q15
    FOREIGN KEY (Q15)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q16
    FOREIGN KEY (Q16)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q17
    FOREIGN KEY (Q17)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q18
    FOREIGN KEY (Q18)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q19
    FOREIGN KEY (Q19)
    REFERENCES aistudenttesterdb.Question (QuestionID),

    CONSTRAINT TestSession_Question_Q20
    FOREIGN KEY (Q20)
    REFERENCES aistudenttesterdb.Question (QuestionID)
)
    ENGINE = InnoDB;