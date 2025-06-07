-- JHM4 資料庫 SELECT 語句練習題

-- 基礎查詢 (Basic Queries)
-- =====================================================

-- 1. 簡單查詢：查詢所有學生的姓名和性別
-- 你的答案：
SELECT name,gender FROM `Student`;

-- 2. 條件查詢：查詢所有男學生的資料
-- 你的答案：
SELECT * from `Student` where gender='M';

-- 3. 排序查詢：查詢所有學生的資料，按出生日期由早到晚排序
-- 你的答案：
SELECT * from `Student`
ORDER BY birthday ASC;

-- 4. 限制結果數量：查詢前3名最年輕的學生資料
-- 你的答案：
SELECT * from `Student`
ORDER BY birthday DESC LIMIT 3;

-- 中級查詢 (Intermediate Queries)
-- =====================================================

-- 5. 單表聚合函數：統計總共有多少名學生
-- 你的答案：
SELECT COUNT(*) FROM `Student`;


-- 6. 分組統計：統計每個年級有多少個班級
-- 你的答案：
SELECT grade, count(class_id) from `Class` GROUP BY grade;


-- 7. 條件統計：統計每個性別的學生人數
-- 你的答案：
SELECT gender, count(*) FROM `Student` GROUP BY gender;


-- 8. 範圍查詢：查詢學分數在3到4之間的課程資料
-- 你的答案：
SELECT * FROM `Course` where  credit=3 or 4; 

-- 表連接查詢 (JOIN Queries)
-- =====================================================

-- 9. 內連接查詢：查詢所有學生的姓名及其所屬班級名稱
-- 你的答案：
SELECT name,c.class_name from `Student` s JOIN Class c on s.class_id = c.class_id


-- 10. 多表連接：查詢所有課程的名稱、學分數及授課教師姓名
-- 你的答案：
SELECT course_name,credit,t.name FROM `Course` c join `Teacher` t on c.teacher_id = t.teacher_id


-- 11. 複雜連接查詢：查詢每個學生的姓名、班級名稱及其選修的課程名稱
-- 你的答案：
SELECT name,c.class_name,c3.course_name FROM`Student` s JOIN `Class` c JOIN `Student_Course` c2 JOIN `Course` c3 on s.class_id = c.class_id and s.student_id = c2.student_id and c3.course_id = c2.course_id;


-- 12. 左連接查詢：查詢所有教師及其負責的班級（包括沒有負責班級的教師）
-- 你的答案：
SELECT t.* ,c.class_name
FROM `Teacher` t 
LEFT JOIN `Class_Teacher` ct 
ON t.teacher_id = ct.teacher_id
LEFT JOIN `Class` c 
ON ct.class_id = c.class_id ORDER BY t.teacher_id;


-- 高級查詢 (Advanced Queries)
-- =====================================================

-- 13. 子查詢：查詢選修課程數量最多的學生姓名
-- 你的答案：
SELECT student_id as asdf FROM `Student_Course` 
SELECT * FROM s


-- 14. 複雜統計查詢：統計每個班級的學生人數和平均年齡（以2024年為基準）
-- 你的答案：


-- 15. 分組過濾：查詢選修課程數量超過2門的學生姓名和選修課程數
-- 你的答案：


-- 16. 存在性查詢：查詢沒有學生選修的課程
-- 你的答案：


-- 17. 複雜條件查詢：查詢同時選修「數學」和「物理」的學生姓名
-- 你的答案：


-- 18. 排名查詢：查詢每個部門教師數量最多的前2個部門
-- 你的答案：


-- 綜合應用題 (Comprehensive Questions)
-- =====================================================

-- 19. 複雜業務查詢：查詢「張志明」老師教授的課程中，每門課程有多少名學生選修，並按選修人數降序排列
-- 你的答案：


-- 20. 多層子查詢：查詢選修了「數學系」所有課程的學生姓名
-- 你的答案：


-- 21. 時間計算查詢：查詢每個年級學生的平均年齡（精確到小數點後兩位，以2024年1月1日為基準）
-- 你的答案：


-- 22. 綜合統計報表：生成一份報表，顯示每個班級的詳細資訊：班級名稱、年級、學生總數、男女學生比例、該班學生選修的課程總數
-- 你的答案：