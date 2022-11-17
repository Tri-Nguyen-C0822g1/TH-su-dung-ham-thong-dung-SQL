use quanlysinhvien;
-- Bước 2;
select Address, count(StudentID) as 'Số lượng học viên'
from student
group by address;

-- Bước 3 tính điểm trung bình của từng học viên bằng avg();
select S.studentID, S.StudentName, AVG(Mark)
from student s join Mark m on s.studentID = m.studentid
group by s.studentid;

-- Bước 4 hiển thị học viên có điểm trung bình lớn hơn 12;
select s.studentid, s.studentname, avg(mark)
from student s join mark m on s.studentid = m.studentid
group by studentid
having avg(mark) > 12; 

-- Bước 5 Học viên có điểm trung bình lớn nhất;
select s.studentid, s.studentname, avg(mark)
from student s join mark m on s.studentid = m.studentid
group by studentid
having avg(mark) >= all(select avg(mark) from mark group by Mark.studentid);


