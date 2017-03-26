Select floor(datediff(CURDATE(),birthday)/365) 
from student;
-- where floor(datediff(CURDATE(),birthday)/365) in (25)

Select lecturer.lecturer_id, lecturer.NAME, lecturer.SURNAME
from lecturer join subj_lect
on lecturer.lecturer_id=subj_lect.LECTURER_ID
join subject
on subj_lect.SUBJ_ID=subject.SUBJ_ID
where subject.SUBJ_NAME in ("География", "Химия")
group by lecturer.lecturer_id, lecturer.NAME, lecturer.SURNAME
having count(distinct subject.SUBJ_NAME)=2