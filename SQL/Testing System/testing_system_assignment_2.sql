USE testingsystem3;

-- thêm dữ liệu vào bảng department
INSERT INTO Department	(DepartmentName)
VALUES 					('Sale'),
						('Marketing'),
						('Develop'),
						('QA'), -- Quality Assurance là người chịu trách nhiệm đảm bảo chất lượng sản phẩm
                        ('HR'); -- phòng nhân sự
                        

-- thêm dữ liệu vào bảng position
INSERT INTO `Position`	(PositionName)
VALUES					('DEV'),
						('TEST'),
						('SCRUM_MASTER'),
						('PM'),
						('BA');
                        
INSERT INTO `account`(Email, 								Username, 					FullName, 				DepartmentID,	 PositionID)
VALUES 				 ('tien.maivan@vti.com.vn',				'tien.maivan',				'Mai Văn Tiến',				2,				3),
					 ('tham.vuongthi@vti.com.vn',			'tham.vuongthi',			'Vương Thị Thắm',			1,				5),
                     ('anh.nguyenminh@vti.com.vn',			'anh.nguyenminh',			'Nguyễn Minh Anh',			3,				1),
                     ('huyen.tothi@vti.com.vn',				'huyen.tothi',				'Tô Thị Huyền',				4,				4),
					 ('kien.nguyentrung@vti.com.vn',		'kien.nguyentrung',			'Nguyễn Trung Kiên',		5,				2),
					 ('luong.nguyenxuan@vti.com.vn',		'luong.nguyenxuan',			'Nguyễn Xuân Lương',		5,				1),
					 ('hai.phamngoc@vti.com.vn',			'hai.phamngoc',				'Phạm Ngọc Hải',			2,				4),
					 ('phuong.phunggia@vti.com.vn',			'phuong.phunggia',			'Phùng Gia Phương',			1,				3),
					 ('khoa.nguyendang@vti.com.vn',			'khoa.nguyendang',			'Nguyễn Đăng Khoa',			3,				5),
				 	 ('dung.phamhoangkim@vti.com.vn',		'dung.phamhoangkim',		'Phạm Hoàng Kim Dung',		1,				4),
				 	 ('nhat.buivan@vti.com.vn',				'nhat.buivan',				'Bùi Văn Nhất',				4,				1),
					 ('thach.tranngoc@vti.com.vn',			'thach.tranngoc',			'Trần Ngọc Thạch',			3,				5),
					 ('hong.tranthuy@vti.com.vn',			'hong.tranthu',				'Trần Thúy Hồng',			2,				1),
                     ('bay.nguyendang@vti.com.vn',			'bay.nguyendang',			'Nguyễn Đăng Bảy',			5,				2),
                     ('thu.tranminh@vti.com.vn',			'thu.tranminh',				'Trần Minh Thư',			4,				3),
                     ('nam.daohthanh@vti.com.vn',			'nam.daohthanh',			'Đào Thanh Nam',			1,				4),
                     ('hoi.hakhanh@vti.com.vn',				'hoi.hakhanh',				'Hà Khánh Hội',				1,				5),
                     ('thao.nguyenthiphuong@vti.com.vn',	'thao.nguyenthiphuong',		'Nguyễn Thị Phương Thảo',	2,				1); -- 18 người
                     
-- thêm dữ liệu vào bảng group
INSERT INTO `group` (GroupName, 	CreatorID)
VALUES			  	('Group1_D1',	2),
					('Group1_D2',	1),
					('Group1_D3',	3),                    
                    ('Group2_D1',	8),
                    ('Group2_D2',	7),
                    ('Group2_D5',	5),                    
                    ('Group3_D1',	10),
                    ('Group3_D4',	4);
                    
-- thêm dữ liệu vào bảng group_account
INSERT INTO groupaccount(GroupID, AccountID)
VALUES 					 (1,		2),
						 (1,		16),
                         (2,		1),
                         (2,		18),
                         (3,		3),
                         (3,		9),
                         (3,		12),
                         (4,		8),
                         (4,		17),
                         (5,		7),
                         (5,		18),
                         (6,		5),
                         (6,		6),
                         (6,		14),
                         (7,		10),
                         (8,		4),
                         (8,		11),
                         (8,		15);
                         
-- thêm dữ liệu vào bảng type_question
INSERT INTO typequestion	(TypeName)
VALUES						('Essay'),
							('Multiple-Choice');
                            
-- thêm dữ liệu vào bảng category_question
INSERT INTO categoryquestion	(CategoryName)
VALUES							('MySQL'),
								('Basic Java'),
                                ('Basic Frontend'),
                                ('Spring Boot'),
                                ('React JS');
                                
-- them du lieu vào bảng question
INSERT INTO question	(content, 																CategoryID, 	TypeID, 	CreatorID)
VALUES					('SQL là gì?', 															1,				1,			3),
                        ('Schema là gì?',														1,				1,			4),
                        ('Lợi ích của View?',													1,				1,			2),
                        ('Câu lệnh SQL nào được dùng để chèn thêm dữ liệu vào database:',		1,				2,			3),
                        ('SQL là từ viết tắt của?',												1,				2,			1),
                        ('JVM là gì?',															2,				1,			5),
                        ('Trình biên dịch JIT là gì?',											2,				1,			1),
                        ('Platform là gì?',														2,				1,			5),
                        ('Kết quả sau khi biên dịch mã int a = 3.5',							2,				2,			10),
                        ('Kết quả sau khi biên dịch mã: float a = 9/0',							2,				2,			3),
                        ('DOM trong HTML là gì?', 												3,				1,			7),
                        ('Thẻ Meta là gì?', 													3,				1,			2),
                        ('Hoisting trong JavaScript là gì?', 									3,				1,			5),
                        ('Cú pháp chung của đường dẫn ảnh trực tiếp', 							3,				2,			1),
                        ('Các đường dẫn tương đối sẽ làm cho những đường kết nối hypertext', 	3,				2,			12),
                        ('DevTools trong Spring Boot là gì?', 									4,				1,			13),
                        ('Spring Boot Actuator là gì?', 										4,				1,			4),
                        ('Giải thích về thuật ngữ “Spring Boot”.', 								4,				1,			3),
                        ('Spring Boot giúp bạn tạo ứng dụng độc lập', 							4,				2,			4),
                        ('Spring Boot giúp bạn tự động cấu hình bất cứ khi nào có thể.', 		4,				2,			3),
                        ('Giải thích về DOM ảo và cách nó hoạt động.', 							5,				1,			3),
                        ('React là gì ?', 														5,				1,			13),
                        ('React có một khái nhiệm đó là state. Nó là gì?', 						5,				1,			1),
                        ('Các tính năng chính của ReactJS là gì?', 								5,				2,			9),
                        ('Một vài giới hạn của React?', 										5,				2,			3);
                        
-- thêm dữ liệu vào bảng answer
INSERT INTO answer	(content, 																				QuestionID,	isCorrect)
VALUES				('Viết tắt của Structured Query Language – ngôn ngữ truy vấn cấu trúc.',				1,				1),
					('Biểu đồ là tập hợp các đối tượng cơ sở dữ liệu của người dùng',						2,				1),
                    ('Chế độ xem không hạn chế quyền truy cập vào dữ liệu....',								3,				0),	
                    ('Add recrd',																			4,				0),
                    ('Add into',																			4,				0),
                    ('Insert',																				4,				1),
                    ('Add new',																				4,				0),
                    ('Strong Question Language',															5,				0),
                    ('Structured Question Language',														5,				0),
                    ('Structured Query Language',															5,				1),
                    ('JVM (viết tắt của Java Virtual Machine) là một thiết bị trừu tượng (ảo)',				6,				1),
                    ('(Just-In-Time) được sử dụng để giảm hiệu suất biên dịch chương trình',				7,				0),
                    ('Bất cứ môi trường phần cứng hoặc phần mềm nào mà trong đó có một chương trình chạy',	8,				1),
                    ('Compilation error',																	9,				1),
                    ('Runtime error',																		9,				0),
                    ('3.5',																					9,				0),
                    ('3',																					9,				0),
                    ('Compilation error: Phép tính chia phải nằm trong cú pháp try',						10,				0),
                    ('Compilation error: DivideByZeroException',											10,				0),
                    ('Runtime exception',																	10,				1),
                    ('No Error: kết quả là NaN',															10,				0),
					('The Document Object Model Được biết đến là một giao diện lập trình...',				11,				1),
                    ('Thẻ Meta là đoạn văn bản mô tả nội dung của trang',									12,				1),
                    ('thuật ngữ dùng để mô tả sự di chuyển của hàng và cột lên đầu phạm vi của chúng',		13,				0),
                    ('src=img',																				14,				0),
                    ('src=image',																			14,				0),
                    ('img=file',																			14,				0),
                    ('img src=file',																		14,				1),
                    ('Linh Động',																			15,				1),
                    ('Rời rạc',																				15,				0),
                    ('Thống nhất',																			15,				0),
                    ('giúp bạn tăng năng xuất của developer.',												16,				1),
                    ('cho phép bạn theo dõi và quản lý ứng dụng của mình khi bạn muốn đưa nó vào sử dụng',	17,				0),
                    ('Nó là 1 module Spring cung cấp Rapid Application Development cho Spring Framework',	18,				1),
                    ('Đúng',																				19,				1),
                    ('Sai',																					19,				0),
                    ('Đúng',																				20,				1),
                    ('Sai',																					20,				0),
                    ('DOM ảo là một đối tượng JS nhẹ. Nó chỉ đơn giản là một bản sao của  DOM thực',		21,				1),
                    ('React là một thư viện JavaScript front-end được phát triển bởi Facebook vào năm 2011',22,				1),
                    ('State là nguồn dữ liệu cho các thành phần (components) của React.',					23,				1),
                    ('Hỗ trợ kết xuất phía máy chủ',														24,				1),
                    ('Nó sử dụng RealDOM thay vì VirtualDOM',												24,				0),
                    ('Tuân theo luồng dữ liệu một chiều hoặc ràng buộc dữ liệu.',							24,				1),
                    ('React chỉ là một thư viện, không phải là 1 framework toàn diện',						25,				1),
                    ('React là một thư viện lớn mất nhiều thời gian để học',								25,				1),
                    ('Việc code sẽ phức tạp hơn vì React dùng inline-templating và JSS',					25,				0);
                     
-- thêm dữ liệu vào bảng exam
INSERT INTO exam(code, 				title, 						CategoryID, 	duration, 	CreatorID)
VALUES			('MySQL-01',		'Đề thi MySQL 01',			1,				45,			3),
				('MySQL-02',		'Đề thi MySQL 02',			1,				30,			12),
                ('MySQL-03',		'Đề thi MySQL 03',			1,				60,			4),
                ('MySQL-04',		'Đề thi MySQL 04',			1,				60,			1),
                ('Java-01',			'Đề thi Java 01',			2,				45,			1),
                ('Java-02',			'Đề thi Java 02',			2,				15,			3),
                ('Java-03',			'Đề thi Java 03',			2,				15,			10),
                ('Java-04',			'Đề thi Java 04',			2,				45,			8),
                ('Frontend-01',		'Đề thi Frontend 01',		3,				30,			3),
                ('Frontend-02',		'Đề thi Frontend 02',		3,				45,			8),
                ('Frontend-03',		'Đề thi Frontend 03',		3,				30,			1),
                ('Frontend-04',		'Đề thi Frontend 04',		3,				60,			4),
                ('SpringBoot-01',	'Đề thi SpringBoot 01',		4,				60,			2),
                ('SpringBoot-02',	'Đề thi SpringBoot 02',		4,				45,			4),
                ('SpringBoot-03',	'Đề thi SpringBoot 03',		4,				30,			10),
                ('SpringBoot-04',	'Đề thi SpringBoot 04',		4,				30,			8),
                ('ReactJS-01',		'Đề thi ReactJS 01',		5,				90,			3),
                ('ReactJS-02',		'Đề thi ReactJS 02',		5,				90,			4),
                ('ReactJS-03',		'Đề thi ReactJS 03',		5,				30,			1),
                ('ReactJS-04',		'Đề thi ReactJS 04',		5,				45,			2);
				
-- Đề thi MySQL thì các câu hỏi phải thuộc chủ đề MySQL
-- Đề thi Java thì các câu hỏi phải thuộc chủ đề Java 
-- thêm dữ liệu vào bảng exam_question
INSERT INTO examquestion	(ExamID,		QuestionID)
VALUES						(1,				2),
							(1,				5),
                            (1,				1),
                            (2,				3),
                            (2,				2),
                            (2,				4),
                            (5,				6),
                            (5,				7),
                            (5,				8),
                            (7,				10),
                            (7,				8),
                            (7,				9),
                            (10,			15),
                            (10,			13),
                            (10,			11),
                            (11,			12),
                            (11,			14),
                            (11,			13),
                            (14,			17),
                            (14,			18),
                            (14,			19),
                            (16,			20),
                            (16,			17),
                            (16,			16),
                            (17,			21),
                            (17,			25),
                            (17,			23),
                            (18,			24),
                            (18,			22),
                            (18,			25);
   
   
   


                            

