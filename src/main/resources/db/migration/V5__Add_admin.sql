-- Insert data to table ApplicationUser
INSERT INTO aistudenttesterdb.ApplicationUser (Username, Password, DisplayName, ActiveFlag)
VALUES ('admin', '$2a$08$35tfcjlQ79BIOErZ6mEaAuKmLtH3LrvZ8g4QYKq9uMp9vXmHAutYG', 'Admin', 'Y');

-- Insert data to table RoleMap
INSERT INTO aistudenttesterdb.RoleMap (ApplicationUserID, Roles, ActiveFlag) VALUES (1, 'ADMIN', 'Y');