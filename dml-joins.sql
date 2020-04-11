--1
--select user_new.name,role.name from user_new inner join role on user_new.role_id = role.id;
--select user_new.name,role.name from user_new left outer join role on user_new.role_id = role.id ;
--select user_new.name,role.name from user_new,role where user_new.role_id = role.id;

--2
--select *  from user_new left outer join role on user_new.role_id = role.id order by user_new.name asc ;

--3
--select user_new.name from user_new left outer join role on user_new.role_id = role.id;

--4
--select user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name
--from user_new 
--inner join profile on user_new.profile_id = profile.id
--inner join degree on profile.degree_id = degree.id
--inner join department on degree.department_id = department.id
--inner join experience on profile.id = experience.profile_id
--where user_new.name = 'ProGrad' and experience.currentvalue=3;

--5
--select user_new.name, skill.name from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join skill on profile.id = skill.id
--where role.name = 'alumini';

--6
--select user_new.name, experience.company_name from user_new
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join experience on user_new.id = experience.id
--where role.name = 'guide'
--order by user_new.name , experience.company_name;

--7
--select user_new.name, experience.company_name from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join experience on user_new.id = experience.id
--where role.name = 'guide'
--order by user_new.name,experience.company_name;

--8
--select user_new.name, experience.company_name from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join experience on user_new.id = experience.id
--where role.name = 'guide' and experience.currentValue=1
--order by user_new.name;

--9
--select user_new.name, experience.company_name from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join experience on user_new.id = experience.id
--where role.name = 'Alumini' and experience.currentValue=1 and profile.batch='2008'
--order by user_new.name;

--10
--select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--where role.name='Alumni' and user_new.profile_id is not null
--order by user_new.name;

--11
--select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join degree on user_new.id = degree.id
--where role.name='Alumni' and degree.name='BSC_CT'
--order by user_new.name;

--12
--select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join degree on user_new.id = degree.id
--inner join department on user_new.id = department.id
--where role.name='Alumni' and department.name='CSE'
--order by user_new.name;

--13
--select user_new.name, higher_degree.university_name from user_new
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join higher_degree on user_new.id = higher_degree.id
--inner join department on user_new.id = department.id
--where role.name='Alumni' and higher_degree.degree_name is not null
--order by user_new.name,higher_degree.university_name;

--14
--select user_new.name, higher_degree.university_name from user_new
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join higher_degree on user_new.id = higher_degree.id
--inner join department on user_new.id = department.id
--where role.name='Alumni' and higher_degree.degree_name is not null
--order by user_new.name,higher_degree.university_name;

--15
--select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join degree on user_new.id = degree.id
--inner join higher_degree on user_new.id = higher_degree.id
--inner join department on user_new.id = department.id
--where role.name='Alumni' and higher_degree.university_name='Texas University'
--order by user_new.name;

--16
--select user_new.name, profile.batch from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--where role.name='Alumni' and profile.gender='female'
--order by user_new.name;

--17
--select user_new.name, profile.batch,degree.name from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join degree on user_new.id = degree.id
--where role.name='Alumni' and profile.gender='female'
--order by user_new.name;

--18
--select user_new.name, profile.batch,degree.name,department.name from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join degree on user_new.id = degree.id
--inner join department on user_new.id= department.id
--where role.name='Alumni' and profile.gender='female'
--order by user_new.name;

--19
--select degree.name, department.name from degree
--inner join department on degree.department_id= department.id
--order by degree.name;

--20
--select user_new.name, profile.designation from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--where role.name='Alumni' and profile.gender='male'
--order by user_new.name;

--21
--select user_new.name, profile.designation from user_new 
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join experience on user_new.id = experience.id
--where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
--order by user_new.name;

--22
--select user_new.name, querytable.content from user_new
--inner join querytable on user_new.role_id = querytable.id
--order by user_new.name;

--23
--select user_new.name, querytable.content from user_new
--inner join querytable on user_new.role_id = querytable.id
--where querytable.parent_id is not null
--order by user_new.name;

--24
--select user_new.name, post.content from user_new
--inner join post on user_new.role_id = post.id
--order by user_new.name;

--25
--select user_new.name, post.content from user_new
--inner join post on user_new.role_id = post.id
--inner join post_type on post.type_id = post_type.id
--where  post_type.name='Technology'
--order by user_new.name,post.dateof;

--26
--select user_new.name, post.content from user_new
--inner join post on user_new.role_id = post.id
--inner join post_type on post.type_id = post_type.id
--where post.dateof='2013'
--order by user_new.name,post.dateof,post.content;

--27
--select user_new.name, department.name from user_new
--inner join role on user_new.role_id = role.id
--inner join profile on user_new.profile_id = profile.id
--inner join degree on user_new.id = degree.id
--inner join department on user_new.id= department.id
--inner join profile_skills on user_new.profile_id = profile_skills.profile_id
--inner join skill on profile_skills.skill_id = skill.id
--where skill.name='Programming'
--order by user_new.name;

--28
--select user_new.name, event.name from user_new
--inner join event on user_new.id = event.id
--inner join role on user_new.role_id = role.id
--where role.name='Alumni'    
--order by user_new.name,event.dateof,event.name desc;

--29
--select user_new.name, event.name from user_new
--inner join event on user_new.id = event.id
--inner join role on user_new.role_id = role.id
--where role.name='Alumni'    
--order by user_new.name,event.dateof;