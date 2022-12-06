----- ** Exercise 1: Join **------

-- Question 1: Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ --
SELECT a.FullName, d.DepartmentID, d.DepartmentName
FROM `account` a JOIN department d ON d.DepartmentID= a.DepartmentID
;

-- Question 2: Viết lệnh để lấy ra thông tin các account được tạo sau ngày 20/12/2010 
SELECT *
FROM `account`
WHERE CreatedDate> 2010-12-20;

-- Question 3: Viết lệnh để lấy ra tất cả các developer
SELECT *
FROM `account` a JOIN department d ON d.DepartmentID= a.DepartmentID
WHERE d.DepartmentName IN ('Phong Dev 1','Phong Dev 2') ;


-- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên

SELECT *
FROM `account` a JOIN department d ON d.DepartmentID= a.DepartmentID
;

SELECT d.DepartmentName, COUNT(AccountID) AS totalMember
FROM `account` a JOIN department d ON d.DepartmentID= a.DepartmentID
GROUP BY a.DepartmentID
HAVING totalMember>3; 

-- Question 5: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều nhất
SELECT *
FROM examquestion e JOIN question q ON e.QuestionID;

SELECT  q.Content, COUNT(e.QuestionID) as totalQuestion
FROM examquestion e JOIN question q ON e.QuestionID = q.QuestionID
GROUP BY e.QuestionID
ORDER BY totalQuestion DESC
LIMIT 1
;

-- Question 6: Thống kê mỗi category Question được sử dụng trong bao nhiêu Question
SELECT c.CategoryID,CategoryName, COUNT(c.CategoryID) AS totalCategory
FROM categoryquestion c JOIN question q ON c.CategoryID = q.CategoryID
GROUP BY c.CategoryID;


-- Question 7: Thống kê mỗi Question được sử dụng trong bao nhiêu Exam
SELECT q.QuestionID,q.Content, COUNT(ExamID) AS totalExam
FROM question q
LEFT JOIN examquestion e ON q.QuestionID= e.QuestionID
GROUP BY q.QuestionID;


-- Question 8: Lấy ra Question có nhiều câu trả lời nhất
SELECT q.QuestionID, q.Content, COUNT(a.AnswerID) AS totalAnswer
FROM question q JOIN answer a ON q.QuestionID
GROUP BY q.QuestionID
ORDER BY totalAnswer desc
LIMIT 1
;



-- Question 9: Thống kê số lượng account trong mỗi group
SELECT GroupID, COUNT(AccountID)
FROM groupaccount
GROUP BY GroupID
;


--  Question 10: Tìm chức vụ có ít người nhất
SELECT a.positionID, PositionName, COUNT(AccountID) AS totalMember
FROM `account` a JOIN position p ON a.PositionID = P.PositionID
GROUP BY a.PositionID
ORDER BY totalMember ASC
LIMIT 1
;

-- Question 11: Thống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM
SELECT a.DepartmentID, d.DepartmentName, p.PositionName, COUNT(p.PositionID) AS totalPositon
FROM `account` a JOIN department d ON a.departmentID= d.DepartmentID
		JOIN position p ON a.PositionID = p.PositionID
GROUP BY d.DepartmentID, p.PositionID
;


-- Question 12: Lấy thông tin chi tiết của câu hỏi bao gồm: thông tin cơ bản của
--  question, loại câu hỏi, ai là người tạo ra câu hỏi, câu trả lời là gì, ...
SELECT q.QuestionID, q.Content, t.TypeName, a.Fullname, s.Content
FROM question q JOIN typequestion t ON q.TypeID = t.TypeID
		JOIN `account` a ON q.CreatorID = a.AccountID
                JOIN answer s ON q.QuestionID = s.QuestionID
GROUP BY q.TypeID, q.CreatorID, s.QuestionID
;
Error Code: 1055. Expression #5 of SELECT list is not in GROUP BY clause 
and contains nonaggregated column 'testing_system.s.Content' which is not functionally 
dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
