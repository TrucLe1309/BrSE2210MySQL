SELECT * FROM testing_system.account;

-- QUESTION 1: Thêm ít nhất 10 record vào mỗi table--  
  

INSERT INTO `testing_system`.`account` (`Email`, `UserName`, `FullName`, `DepartmentID`, `PositionID`, `CreatedDate`) 
VALUES ('vti_account16@vtiacademy.com', 'vti16', 'Nguyen Van Binh', '1', '1', '2019-12-02'),
		('vti_account18@vtiacademy.com', 'vti18', 'Tran Van Khang', '2', '4', '2020-11-02'),
		('vti_account19@vtiacademy.com', 'vti19', 'Duong Thuy Linh', '11', '6', '2019-9-10'),
		('vti_account20@vtiacademy.com', 'vti20', 'Lam Vy Vy', '6', '5', '2020-8-11'),
		('quan.account21@vtiacademy.com', 'quan', 'Tran Trong Quan', '10', '5', '2022-7-19'),
		('hang_account22@vtiacademy.com', 'hang22', 'Ngo Thanh Hang', '1', '2', '2019-8-22'),
		('vti_account23@vtiacademy.com', 'vti23', 'Lam Quoc Dat', '3', '2', '2019-2-16'),
		('khang_account24@vtiacademy.com', 'khang24', 'Nguyen Minh Khang', '5', '1', '2020-5-10'),
		('ngoc_account25@vtiacademy.com', 'vti25', 'Phan Thi Hong Ngoc', '1', '4', '2021-3-19');

INSERT INTO department 	(DepartmentName)
	VALUES 	('Phong Ky Thuat 3'),
			('Phong Ke Toan'),
			('Phong Kiem Toan'),
			('Phong Cham Soc Khach Hang'),
			('Phong Kinh Doanh'),
			('Phong Hanh Chinh'),
			('Phong Thiet Ke 1'),
			('Phong Dau Tu'),
			('Phong Quan Li Du An');
    
INSERT INTO answer (Content, QuestionID, IsCorrect)
    VALUES ('Câu trả lời 5 - Question SQL1', 1, 0),
			('Câu trả lời 6 - question SQL1', 1, 1),
			('Câu trả lời 7 - Question SQL1', 1, 0),
			('Câu trả lời 8 - Question SQL1', 1, 1),
			('Câu trả lời 5 - Question SQL2', 1, 0),
			('Câu trả lời 6 - Question SQL2', 1, 0),
			('Câu trả lời 7 - Question SQL2', 1, 1),
			('Câu trả lời 2 - Question HTML1', 1, 0),
			('Câu trả lời 2 - Question HTML2', 4, 1),
			('Câu trả lời 3 - Question HTML1', 3, 0);
    
INSERT INTO categoryquestion (CategoryName)
	VALUES ('Java'), ('SQL'), ('Python'), ('HTML'), ('CSS'), ('JavaScript'), 
			('Ruby'), ('.NET'), ('SQL'), ('Java');
            
INSERT INTO exam (`Code`, Title, CategoryID, Duration, CreatorID, CreatedDate)
	VALUES ('MS_11', 'De thi 11', 1, 90, 1, NOW()),
			('MS_12', 'De thi 12', 2, 90, 5, NOW()),
            ('MS_13', 'De thi 13', 1, 60, 4, NOW()),
            ('MS_14', 'De thi 14', 2, 90, 3, NOW()),
            ('MS_15', 'De thi 15', 2, 60, 1, NOW()),
            ('MS_16', 'De thi 16', 1, 60, 7, NOW()),
            ('MS_17', 'De thi 17', 1, 90, 2, NOW()),
            ('MS_18', 'De thi 18', 1, 90, 7, NOW()),
            ('MS_19', 'De thi 19', 2, 60, 4, NOW()),
            ('MS_20', 'De thi 20', 1, 90, 2, NOW());
            

INSERT INTO `testing_system`.`question` (`Content`, `CategoryID`, `TypeID`, `CreatorID`, `CreatedDate`) 
	VALUES ('Câu hỏi SQL3', '2', '2', '1', '2021-11-01'),
			('Câu hỏi SQL4', '2', '2', '4', '2021-12-02'),
            ('Câu hỏi SQL5', '2', '2', '1', '2021-12-01'),
			('Câu hỏi CSS1', '4', '1', '5', '2021-01-09'),
			('Câu hỏi CSS2', '4', '2', '8', '2021-10-11'),
			('Câu hỏi CSS3', 4, 1, 1, '2021-1-04'),
			('Câu hỏi Python1', '6', '2', '1', '2021-11-11'),
			('Câu hỏi Python2', '6', '2', '5', '2021-10-06'),
			('Câu hỏi Python3', '6', '2', '6', '2021-9-9'),
			('Câu hỏi Javascript1', '8', '1', '2', '2021-07-01');    
            
INSERT INTO `group`(GroupName, CreatorID, CreatedDate)
			VALUES ('Nhom 11', 2, '2021-10-9');
INSERT INTO `group`(GroupName, CreatorID, CreatedDate)
			VALUES  ('Nhom 12', 1, '2021-11-10'),
					('Nhom 13', 5, '2021-11-9'),
					('Nhom 14', 4, '2021-1-7'),
					('Nhom 15', 9, '2021-2-10'),
					('Nhom 16', 4, '2021-5-6'),
					('Nhom 17', 9, '2021-11-12'),
					('Nhom 18', 3, '2021-3-8'),
					('Nhom 19', 1, '2021-2-5'),
					('Nhom 20', 7, '2021-11-8');
                    
INSERT INTO groupaccount(GroupID, accountID, JoinDate)
			VALUES  (10, 18, '2021-2-5'),
					(12, 20, '2021-4-3'),
					(10, 18, '2021-2-5'),
					(6, 11, '2021-2-10'),
                    (11, 20, '2021-3-7'),
                    (1, 18, '2021-2-5'),
					(19, 3, '2021-2-9'),
					(19, 25, '2021-6-30'),
                    (7, 6, '2021-6-11'),
					(4, 3, '2021-8-4');
                    
INSERT INTO `position`( PositionName)
VALUES	    ('Dev1'),
			('Dev2'),
			('Tester'),
			('PM'),
			('Leader'),
			('Scrum Master'),
            ('Tester'),
			('PM'),
			('Leader'),
			('Scrum Master')
;

INSERT INTO examquestion(ExamID, QuestionID)
	VALUES (17, 1),
		   (18, 1),
		   (19, 7),
		   (20, 14),
		   (10, 12),
		   (11, 8),
		   (8, 3),
		   (5, 11),
		   (15, 19),
		   (16, 10),
		   (18, 16)
	;
					
					
-- QUESTION 2: Lấy ra tất cả các phòng ban --
 SELECT * FROM department;
					
                    
                    
-- QUESTION 3: Lấy ra ID của phòng ban `Phong Sale`--
SELECT DepartmentID, DepartmentName
	FROM department
	WHERE DepartmentName = 'Phong Sale';
        
        
        
-- QUESTION 4: Lấy ra account có fullname dài nhất--
SELECT * FROM `account`
		WHERE length(fullname) = (SELECT MAX(LENGTH(Fullname)) FROM `account`);
        
        

-- QUESTION 5: Lấy ra thông tin account có fullname dài nhất và thuộc phòng ban có id=3 --
 SELECT * FROM `account`
		WHERE length(Fullname)= (SELECT MAX(LENGTH(Fullname)) FROM `account`) AND DepartmentID = 3;



-- QUESTION 6: Lấy ra tên group đã tham gia trước ngày 20/12/2019--
SELECT GroupName FROM `Group`
		WHERE CreatedDate < '2019-12-20';
        
        
-- QUESTION 7: Lấy ra ID của question có 4 câu trả lời--
SELECT QuestionID FROM answer
        GROUP BY QuestionID
         HAVING  COUNT(AnswerID)>=4;
         
         
-- QUESTION 8: Lấy ra các mã đề thi có thời gian thi >= 60 phút và được tạo trước ngày 20/12/2019--
SELECT `code` FROM exam
	WHERE (Duration >= 60 AND CreatedDate < '2019-12-20');   
    
    
--  QUESTION 9: Lấy ra 5 group được tạo gần đây nhất--
SELECT * FROM `group` ORDER BY CreatedDate DESC
LIMIT 5;

--  QUESTION 10: Đếm số nhân viên thuộc department có id = 2--
SELECT  DepartmentID, COUNT(AccountID) AS totalMember
 FROM `account`
WHERE  DepartmentID=2;


--  QUESTION 11: Lấy ra nhân viên có tên kết thúc bằng chữ "o"
SELECT Fullname FROM `account`
WHERE Fullname LIKE '%o' ;
        
--  QUESTION 12: Xóa tất cả các exam được tạo trước ngày 20/12/2019--
DELETE  FROM `exam`
WHERE CreatedDate < '2019-12-20';


--  QUESTION 13: Xóa tất cả các question có nội dung bắt đầu bằng từ "câu hỏi"--
DELETE  FROM `question`
WHERE Content LIKE 'Câu hỏi%';


-- QUESTION 14:Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn--
UPDATE `account`
SET 	Fullname='Nguyen Ba Loc',
	Email = 'thanhloc.nguyenba@vti.com.vn'
WHERE AccountID=5;


-- QUESTION 15: update account có id = 5 sẽ thuộc group có id = 4
UPDATE  groupaccount
SET 	GroupID = 4
WHERE 	AccountID =5;


-- 
SET SQL_SAFE_UPDATES = 0;

