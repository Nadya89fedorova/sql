-- Select name, surname, lecturer_id
-- from lecturer
-- where lecturer_id not in (select lecturer_id from subj_lect)

-- Select student.STUDENT_ID
-- from student join exam_marks  
-- on student.STUDENT_ID=exam_marks.STUDENT_ID
-- join subject
-- on exam_marks.SUBJ_ID=subject.SUBJ_ID
-- where exam_marks.STUDENT_ID in (select STUDENT_ID from exam_marks where mark =5)
-- group by student.STUDENT_ID
-- having count(distinct exam_marks.MARK)= 1;

Select subj_lect.LECTURER_ID, count(distinct exam_marks.student_id) -- subj_lect.LECTURER_ID, count(student.student_id)
from subj_lect 
inner join exam_marks 
on subj_lect.subj_id=exam_marks.subj_id
-- inner join student
-- on exam_marks.student_id=student.student_id
group by subj_lect.LECTURER_ID
order by count(distinct exam_marks.student_id) desc
limit 3;
-- group by student.student_id
-- order by count(student.student_id) desc
Select *
from subj_lect 
inner join exam_marks 
on subj_lect.subj_id=exam_marks.subj_id
order by 1;

select *
from subject s left join subj_lect sl
on s.SUBJ_ID=sl.SUBJ_ID and sl.LECTURER_ID = 15
where sl.LECTURER_ID is null;


select * from subject s;
select * from subj_lect sl where sl.LECTURER_ID = 15;