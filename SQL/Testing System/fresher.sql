DROP DATABASE IF EXISTS fresher;
CREATE DATABASE fresher;
USE fresher;

-- Question 1: Tạo table với các ràng buộc và kiểu dữ liệu
CREATE TABLE Trainee(
	TraineeID			INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Full_Name			NVARCHAR(50) NOT NULL,
    Birth_Date			DATE NOT NULL,
    Gender				ENUM('MALE','FEMALE','UNKNOWN') NOT NULL,
    ET_IQ				TINYINT UNSIGNED CHECK (ET_IQ >=0 AND ET_IQ <=20) ,
    ET_Gmath			TINYINT UNSIGNED CHECK (ET_Gmath >=0 AND ET_Gmath <=20),
    ET_English			TINYINT UNSIGNED CHECK (ET_English >=0 AND ET_English <=50) ,
    Training_Class		CHAR(6) NOT NULL,
    Evaluation_Notes	VARCHAR(10) NOT NULL
);

-- Question 2: Thêm ít nhất 10 bản ghi vào table
INSERT INTO trainee (Full_Name,			Birth_Date,		Gender,		ET_IQ,	ET_Gmath,	ET_English,		Training_Class,		Evaluation_Notes) 
VALUES				(N'Mai Văn Tiến',	'1993-09-10',	'MALE',		5,		10,			20,				'VTI021',			'CDKTCN'),
					(N'Từ Tuấn Kỳ',		'1994-08-30',	'MALE',		20,		12,			40,				'VTI021',			'CDKTCN'),
                    (N'Đặng Nga My',		'1996-12-17',	'FEMALE',	15,		18,			42,				'VTI017',			'DHNT'),
                    (N'Trần Minh Thư',	'1996-04-20',	'FEMALE',	15,		20,			50,				'VTI019',			'DHBKSG'),
                    (N'Trần Minh Thư',	'1992-08-28',	'FEMALE',	17,		17,			47,				'VTI017',			'DHNT'),
                    (N'Ngô Anh Duy',		'1993-02-10',	'MALE',		15,		10,			30,				'VTI017',			'CDKTCN'),
                    (N'Nguyễn Văn Chức',	'1993-06-10',	'MALE',		15,		8,			28,				'VTI019',			'DHNT'),
                    (N'Lê Đại Hành',		'1992-10-26',	'MALE',		3,		13,			33,				'VTI021',			'CDKTCN'),
                    (N'Mai Trúc',		'1998-05-30',	'MALE',		15,		16,			46,				'VTI017',			'DHBKSG'),
                    (N'Mã Văn Tài',		'2000-09-29',	'MALE',		19,		19,			45,				'VTI021',			'DHBKSG'),
                    (N'Đoàn Thị Điểm',	'1990-12-25',	'FEMALE',	7,		16,			50,				'VTI019',			'CDKTCN');

-- Question 3: Insert 1 bản ghi mà có điểm ET_IQ =30. Sau đó xem kết quả.
-- INSERT INTO trainee (Full_Name,			Birth_Date,		Gender,		ET_IQ,	ET_Gmath,	ET_English,		Training_Class,		Evaluation_Notes) 
-- VALUES				('Nguyễn Thị Nữ',	'1995-04-30',	'FEMALE',	30,		7,			20,				'VTI021',			'CDKTCN');
-- SELECT * FROM trainee;
-- ET_IQ có ràng buộc điều kiện giá trị từ 0 đến 20 nên ko thể insert dữ liệu

-- Question 4: Viết lệnh để lấy ra tất cả các thực tập sinh đã vượt qua bài test đầu vào, 
-- và sắp xếp theo ngày sinh. Điểm ET_IQ >=12, ET_Gmath>=12, ET_English>=20
SELECT		Full_Name,Birth_Date,ET_IQ,ET_Gmath,ET_English
FROM		trainee
WHERE		ET_IQ >= 12 AND ET_Gmath >=12 AND ET_English >=20
ORDER BY	Birth_Date
;

-- Question 5: Viết lệnh để lấy ra thông tin thực tập sinh có tên bắt đầu bằng chữ N và kết thúc bằng chữ C
SELECT	* 
FROM	trainee
WHERE	Full_Name LIKE ('N%C')
;

-- Question 6: Viết lệnh để lấy ra thông tin thực tập sinh mà tên có ký thự thứ 2 là chữ G
SELECT	* 
FROM	trainee
WHERE	Full_Name LIKE ('_g%')
;

-- Question 7: Viết lệnh để lấy ra thông tin thực tập sinh mà tên có 10 ký tự và ký tự cuối cùng là C
SELECT	* 
FROM	trainee
WHERE	Full_Name LIKE ('%C') AND length(Full_Name) = 10
;

-- Question 8: Viết lệnh để lấy ra Fullname của các thực tập sinh trong lớp, lọc bỏ các tên trùng nhau.
SELECT DISTINCT	Full_Name 
FROM	trainee
;

-- Question 9: Viết lệnh để lấy ra Fullname của các thực tập sinh trong lớp, sắp xếp các tên này theo thứ tự từ A-Z.
SELECT	Full_Name 
FROM	trainee
ORDER BY Full_Name   -- chưa biết lấy tên từ Fullname :(
;

-- Question 10: Viết lệnh để lấy ra thông tin thực tập sinh có tên dài nhất
SELECT	*
FROM	trainee
HAVING	length(Full_Name) = (SELECT MAX(length(Full_Name))
							FROM trainee)
;

-- Question 11: Viết lệnh để lấy ra ID, Fullname và Ngày sinh thực tập sinh có tên dài nhất
SELECT	TraineeID,Full_Name,Birth_Date
FROM	trainee
HAVING	length(Full_Name) = (SELECT MAX(length(Full_Name))
							 FROM trainee)
;

-- Question 12: Viết lệnh để lấy ra Tên, và điểm IQ, Gmath, English thực tập sinh có tên dài nhất
SELECT	Full_Name,ET_IQ,ET_Gmath,ET_English
FROM	trainee
HAVING	length(Full_Name) = (SELECT MAX(length(Full_Name))
							 FROM trainee)
;

-- Question 13 Lấy ra 5 thực tập sinh có tuổi nhỏ nhất
SELECT *
FROM trainee
ORDER BY Birth_Date DESC
LIMIT 5
;

-- Question 14: Viết lệnh để lấy ra tất cả các thực tập sinh là ET, 1 ET thực tập sinh là những người thỏa mãn số điểm như sau:
-- ET_IQ + ET_Gmath>=20
-- ET_IQ>=8
-- ET_Gmath>=8
-- ET_English>=18
SELECT *
FROM trainee
WHERE ET_IQ+ET_Gmath >= 20 AND ET_IQ>=8 AND ET_Gmath>=8 AND ET_English>=18
;

-- Question 15: Xóa thực tập sinh có TraineeID = 5
-- DELETE FROM trainee WHERE TraineeID = 5;

-- Question 16: Xóa thực tập sinh có tổng điểm ET_IQ, ET_Gmath <=15
-- Tìm thực tập sinh có tổng điểm ET_IQ, ET_Gmath <=15 rồi xóa
SELECT * FROM trainee WHERE ET_IQ+ET_Gmath <= 15; 
-- DELETE FROM trainee WHERE ET_IQ+ET_Gmath <= 15;

-- Question 17: Xóa thực tập sinh quá 30 tuổi. 
-- Tìm thực tập sinh quá 30 tuổi rồi xóa
SELECT * FROM trainee WHERE year(now())-year(Birth_Date) >= 30; 
-- DELETE FROM trainee WHERE year(now())-year(Birth_Date) >= 30; 

-- Question 18: Thực tập sinh có TraineeID = 3 được chuyển sang lớp " VTI003". Hãy cập nhật thông tin vào database
UPDATE trainee 
SET Training_Class = 'VTI003'
WHERE TraineeID = 3
;

-- Question 19: Do có sự nhầm lẫn khi nhập liệu nên thông tin của học sinh số 10 đang bị sai,
-- hãy cập nhật lại tên thành “LeVanA”, điểm ET_IQ =10, điểm ET_Gmath =15, điểm ET_English = 30
UPDATE trainee 
SET Full_Name = 'LeVanA',ET_IQ =10,ET_Gmath =15,ET_English = 30
WHERE TraineeID = 10
;

-- Question 20: Đếm xem trong lớp VTI001 có bao nhiêu thực tập sinh
-- Question 21: Đếm xem trong lớp VTI001 có bao nhiêu thực tập sinh
SELECT COUNT(TraineeID)
FROM trainee
WHERE Training_Class= 'VTI001'
;

-- Question 22: Đếm tổng số thực tập sinh trong lớp VTI001 và VTI003 có bao nhiêu thực tập sinh.
SELECT COUNT(TraineeID)
FROM trainee
WHERE Training_Class= 'VTI001' OR Training_Class= 'VTI003'
;

-- Question 23: Lấy ra số lượng các thực tập sinh theo giới tính: Male, Female, Unknown.
SELECT Gender,COUNT(TraineeID)
FROM trainee
GROUP BY Gender 
;

-- Question 24: Lấy ra lớp có lớn hơn 5 thực tập viên
-- Question 25: Lấy ra lớp có lớn hơn 5 thực tập viên
SELECT Training_Class
FROM trainee
GROUP BY Training_Class HAVING COUNT(TraineeID) > 5
;

-- Question 26: Lấy ra trường có ít hơn 4 thực tập viên tham gia khóa học
SELECT Evaluation_Notes
FROM trainee
GROUP BY Evaluation_Notes HAVING COUNT(TraineeID) < 4
;

-- Question 27: Bước 1: Lấy ra danh sách thông tin ID, Fullname, lớp thực tập viên có lớp 'VTI001'
			 -- Bước 2: Lấy ra danh sách thông tin ID, Fullname, lớp thực tập viên có lớp 'VTI002'
			 -- Bước 3: Sử dụng UNION để nối 2 kết quả ở bước 1 và 2
SELECT	TraineeID,Full_Name,Training_Class
FROM	trainee
WHERE	Training_Class='VTI001'
;

SELECT	TraineeID,Full_Name,Training_Class
FROM	trainee
WHERE	Training_Class='VTI002'
;

-- Bước 3 chưa biết làm desu 