---Queries for sub_africa

--Total students that failed the sub_africa exam
-- Select Student_name, score
-- From sub_africa
-- Where score < .70

---Number of students that scored over 70%
-- Select student_name, score
-- From sub_africa
-- where score >= .70

---Number of students that scored above 80%
-- Select student_name, score, meets
-- From sub_africa
-- where score >= .80

--- Number of students that meet the district criteria vs students that did not
-- Select Sum(student_id) as ID, student_name, score, meets
-- from sub_africa
-- where meets = 'No'
-- Group by student_id, student_name, score, meets
-- Order By student_id

--Average Test Score 
-- Select round(AVG(score),2) As Avg_score
-- From sub_africa

--Average Raw Score
-- Select round(Avg(raw_score),2)
-- From sub_africa

--Number of students that mastered the content 
-- Select Sum(student_id), masters
-- From sub_africa
-- Group By student_id

--- Number of students that scored below a 50%
-- Select student_name, score
-- From sub_africa
-- Where score <=.50

---Queries from sc_asia

---Number of students that scored over 70%
-- Select student_name, score
-- From sc_asia
-- Where score >=.70

---Number of students that scored above 80%
-- Select student_name, score, meets
-- From sc_asia
-- where score >= .80

--- Number of students that meet the district criteria vs students that did not
-- Select (student_id) as ID, student_name, score, meets
-- from sc_asia
-- where meets = 'Yes'
-- Group by student_id, student_name, score, meets
-- Order By student_id

-- --Average Test Score 
-- Select round(AVG(score),2) As Avg_score
-- From sc_asia

--Average Raw Score
-- Select round(Avg(raw_score),2)
-- From sc_asia

--Number of students that mastered the content 
-- Select Sum(student_id), masters
-- From sub_africa
-- Group By student_id

--- Number of students that scored below a 50%
-- Select student_name, score
-- From sub_africa
-- Where score <=.50

-- Alter Table sc_asia
-- Rename student_id To user_id

-- --Total students that failed the sc_asia exam
-- Select Student_name, score
-- From sc_asia
-- Where score < .70

---Comparison sub_africa vs sc_asia (union to update table)
-- Create table new_table as
-- SELECT * FROM sub_africa
-- UNION
-- SELECT * FROM sc_asia

---Rename New Table
-- Alter Table new_table
-- Rename To both_tests

--- Average Score for all students on both test
-- Select round(AVG(score),2)
-- From both_tests



