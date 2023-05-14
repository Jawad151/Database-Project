use master
drop database FLEX_
create database FLEX_
USE FLEX_

INSERT INTO student VALUES
('101', 'S_student1', 'pass1', 'Doe', 'John', '1234567890123', '123 Main St', '456 Elm St', 'john.doe@email.com', '123-456-7890'),
('102', 'S_student2', 'pass2', 'Smith', 'Jane', '2345678901234', '456 Elm St', '789 Oak St', 'jane.smith@email.com', '234-567-8901'),
('103', 'S_student3', 'pass3', 'Jones', 'Bob', '3456789012345', '789 Oak St', '123 Maple St', 'bob.jones@email.com', '345-678-9012'),
('104', 'S_student4', 'pass4', 'Nguyen', 'Amy', '4567890123456', '123 Maple St', '456 Pine St', 'amy.nguyen@email.com', '456-789-0123'),
('105', 'S_student5', 'pass5', 'Chen', 'Michael', '5678901234567', '456 Pine St', '789 Cherry St', 'michael.chen@email.com', '567-890-1234'),
('106', 'S_student6', 'pass6', 'Garcia', 'Sara', '6789012345678', '789 Cherry St', '123 Oak St', 'sara.garcia@email.com', '678-901-2345'),
('107', 'S_student7', 'pass7', 'Khan', 'Adam', '7890123456789', '123 Oak St', '456 Maple St', 'adam.khan@email.com', '789-012-3456'),
('108', 'S_student8', 'pass8', 'Wang', 'Emily', '8901234567890', '456 Maple St', '789 Pine St', 'emily.wang@email.com', '890-123-4567'),
('109', 'S_student9', 'pass9', 'Lee', 'David', '9012345678901', '789 Pine St', '123 Cherry St', 'david.lee@email.com', '901-234-5678'),
('110', 'S_student10', 'pass10', 'Young', 'Jessica', '0123456789012', '123 Cherry St', '456 Oak St', 'jessica.young@email.com', '012-345-6789'),
('111', 'S_student11', 'pass11', 'Ng', 'Alexander', '1234567890123', '456 Oak St', '789 Maple St', 'alexander.ng@email.com', '123-456-7890'),
('112', 'S_student12', 'pass12', 'Liu', 'Jennifer', '2345678901234', '789 Maple St', '123 Pine St', 'jennifer.liu@email.com', '234-567-8901'),
('113', 'S_student13', 'pass13', 'Wong', 'Christopher', '3456789012345', '123 Pine St', '456 Cherry St', 'christopher.wong@email.com', '345-678-9012'),
('114', 'S_student14', 'pass14', 'Yang', 'Melissa', '4567890123456', '456 Cherry St', '789 Oak St', 'melissa.yang@email.com', '456-789-0123');




INSERT INTO ADMIN_ VALUES
('A1', 'A_admin1', 'pass1', 'John Smith'),
('A2', 'A_admin2', 'pass2', 'Jane M Doe'),
('A3', 'A_admin3', 'pass3', 'Bob L Johnson'),
('A4', 'A_admin4', 'pass4', 'Alicey Smith'),
('A5', 'A_admin5', 'pass5', 'Boby Lee'),
('A6', 'A_admin6', 'pass6', 'Jenny Chance'),
('A7', 'A_admin7', 'pass7', 'David Cheny'),
('A8', 'A_admin8', 'pass8', 'Samantha Lee'),
('A9', 'A_admin9', 'pass9', 'Erican Kim'),
('A10', 'A_admin10', 'pass10', 'George DeLee'),
('A11', 'A_admin11', 'pass11', 'Olivias BLee'),
('A12', 'A_admin12', 'pass12', 'Kevin Wango'),
('A13', 'A_admin13', 'pass13', 'Sophia Chenin'),
('A14', 'A_admin14', 'pass14', 'Williams Liu'),
('A15', 'A_admin15', 'pass15', 'Emily Wang'),
('A16', 'A_admin16', 'pass16', 'Stevena Chen'),
('A17', 'A_admin17', 'pass17', 'Cathya Lee'),
('A18', 'A_admin18', 'pass18', 'Alexa Kim'),
('A19', 'A_admin19', 'pass19', 'Jessicssa Mark'),
('A20', 'A_admin20', 'pass20', 'Michael Kimy');


insert into section  values
('A'),
('B'),
('C'),
('D'),
('E'),
('F'),
('G');


INSERT INTO Faculty VALUES

('FAC1', 'John Smith', 'F_fac1', 'pass1', 'jsmith@example.com'),
('FAC2', 'Jane Doe', 'F_fac2', 'pass2', 'jdoe@example.com'),
('FAC3', 'Bob Johnson', 'F_fac3', 'pass3', 'bjohnson@example.com'),
('FAC4', 'Alice Smith', 'F_fac4', 'pass4', 'asmith@example.com'),
('FAC5', 'Bob Lee', 'F_fac5', 'pass5', 'blee@example.com'),
('FAC6', 'Jenny Chan', 'F_fac6', 'pass6', 'jchan@example.com'),
('FAC7', 'David Chen', 'F_fac7', 'pass7', 'dchen@example.com'),
('FAC8', 'Samantha Lee', 'F_fac8', 'pass8', 'slee@example.com'),
('FAC9', 'Erica Kim', 'F_fac9', 'pass9', 'ekim@example.com'),
('FAC10', 'George Lee', 'F_fac10', 'pass10', 'glee@example.com'),
('FAC11', 'Olivia Lee', 'F_fac11', 'pass11', 'olee@example.com'),
('FAC12', 'Kevin Wang', 'F_fac12', 'pass12', 'kwang@example.com'),
('FAC13', 'Sophia Chen', 'F_fac13', 'pass13', 'schen@example.com'),
('FAC14', 'William Liu', 'F_fac14', 'pass14', 'wliu@example.com'),
('FAC15', 'Emily Wang', 'F_fac15', 'pass15', 'ewang@example.com'),
('FAC16', 'Steven Chen', 'F_fac16', 'pass16', 'schen2@example.com'),
('FAC17', 'Cathy Lee', 'F_fac17', 'pass17', 'clee@example.com'),
('FAC18', 'Alex Kim', 'F_fac18', 'pass18', 'akim@example.com'),
('FAC19', 'Jessica Park', 'F_fac19', 'pass19', 'jpark@example.com'),
('FAC20', 'Michael Kim', 'F_fac20', 'pass20', 'mkim@example.com');


DROP TABLE COURSE
INSERT INTO COURSE VALUES
('C1', 'Introduction to Computer Science', 3, 'FAC1', 'FAC1',NULL, '2022-01-01'),
('C1', 'Introduction to Computer Science', 3, 'FAC8', 'FAC1',NULL, '2022-01-01'),
('C2', 'Data Structures and Algorithms', 4, 'FAC2', 'FAC1',NULL, '2022-01-01'),
('C2', 'Data Structures and Algorithms', 4, 'FAC8', 'FAC1',NULL, '2022-01-01'),
('C3', 'Database Systems', 3, 'FAC3', 'FAC7','C1','2022-01-01'),
('C4', 'Operating Systems', 3, 'FAC4', 'FAC2',NULL, '2022-01-01'),
('C5', 'Web Development', 3, 'FAC5', 'FAC8',NULL, '2022-01-01'),
('C6', 'Artificial Intelligence', 4, 'FAC6', 'FAC7',NULL, '2022-01-01'),
('C7', 'Computer Networks', 3, 'FAC7', 'FAC8',NULL, '2022-01-01'),
('C8', 'Software Engineering', 3, 'FAC8', 'FAC1',NULL, '2022-01-01'),
('C9', 'Computer Architecture', 3, 'FAC9', 'FAC1','C1', '2022-01-01'),
('C10', 'Programming Languages', 3, 'FAC10', 'FAC4',NULL, '2022-01-01'),
('C10', 'Programming Languages', 3, 'FAC9', 'FAC4',NULL, '2022-01-01'),
('C10', 'Programming Languages', 3, 'FAC11', 'FAC4',NULL, '2022-01-01'),
('C11', 'Computer Graphics', 3, 'FAC11', 'FAC4', 'C1','2022-01-01'),
('C12', 'Computer Vision', 4, 'FAC12', 'FAC1',NULL, '2022-01-01'),
('C13', 'Natural Language Processing', 4, 'FAC2','FAC13',NULL, '2022-01-01'),
('C14', 'Computer Security', 3, 'FAC14', 'FAC2',NULL, '2022-01-01'),
('C15', 'Distributed Systems', 4, 'FAC15', 'FAC2',NULL, '2022-01-01'),
('C16', 'Computer Science Ethics', 2, 'FAC16', 'FAC3','C1', '2022-01-01'),
('C17', 'Computer Science Theory', 3, 'FAC17', 'FAC5',NULL, '2022-01-01'),
('C18', 'Human-Computer Interaction', 3, 'FAC18', 'FAC5',NULL, '2022-01-01'),
('C19', 'Data Science', 4, 'FAC19', 'FAC8', NULL,'2022-01-01'),
('C20', 'Machine Learning', 4, 'FAC20', 'FAC7',NULL, '2022-01-01');



TRUNCATE TABLE STUDENT_course
INSERT INTO STUDENT_COURSE VALUES 
('101', 'C1', 'FAC1', 'A', NULL),
('101', 'C2', 'FAC2', 'B', NULL),
('101', 'C3', 'FAC3', 'B',NULL),
('101', 'C7', 'FAC7', 'A', NULL),
('101', 'C8', 'FAC8', 'B',NULL),
('101', 'C9', 'FAC9', 'B', NULL),
('102', 'C1', 'FAC1', 'C',NULL),
('103', 'C1', 'FAC1', 'D',NULL ),
('103', 'C2', 'FAC2', 'A',NULL ),
('102', 'C2', 'FAC2', 'C',NULL ),
('104', 'C5', 'FAC5', 'C', NULL),
('105', 'C6', 'FAC6', 'D', NULL),
('105', 'C7', 'FAC7', 'A', NULL),
('106', 'C1', 'FAC1', 'B',NULL ),
('106', 'C8', 'FAC8', 'C', NULL),
('107', 'C2', 'FAC2', 'D', NULL),
('107', 'C5', 'FAC5', 'A',NULL),
('108', 'C8', 'FAC8', 'B', NULL),
('108', 'C3', 'FAC3', 'C', NULL),
('109', 'C3', 'FAC3', 'A',NULL ),
('109', 'C2', 'FAC2', 'F', NULL),
('110', 'C1', 'FAC1', 'F', NULL),
('110', 'C3', 'FAC3', 'D', NULL);


