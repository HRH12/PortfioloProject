--Select count(gender_shooter)
-- From ss_data
-- Where gender_shooter = 'Male'


-- Select count(gender_shooter)
-- From ss_data
-- Where gender_shooter = 'Female'



-- Select count(race_ethnicity_shooter)
-- From ss_data
-- Where race_ethnicity_shooter = 'Black'


-- Select count(race_ethnicity_shooter)
-- From ss_data
-- Where race_ethnicity_shooter = 'White'


-- Select count(race_ethnicity_shooter)
-- From ss_data
-- Where race_ethnicity_shooter = 'Asian'


-- Select count(race_ethnicity_shooter)
-- From ss_data
-- Where race_ethnicity_shooter = 'Hispanic'


-- Select count(race_ethnicity_shooter)
-- From ss_data
-- Where race_ethnicity_shooter = 'Native American'


-- Select round(AVG(age_shooter),2)
-- From ss_data

 
-- Select count(weapon_type)
-- From ss_data
-- Where weapon_type = 'handgun'

-- Select count(weapon_type)
-- From ss_data
-- Where weapon_type = 'shotgun'


-- Select count(weapon_type)
-- From ss_data
-- Where weapon_type = 'assault rifles'


-- Select count(weapon_type)
-- From ss_data
-- Where weapon_type = 'More than one weapon'


-- Select count(weapon_type)
-- From ss_data
-- Where weapon_type = 'More than two weapons'


-- Select count(weapon_type)
-- From ss_data
-- Where weapon_type = 'rifle'


-- Select state
-- From ss_data
-- Where state = 'California'


-- Select count(state)
-- From ss_data
-- Where state = 'New York'
-- Answer: 9

-- Select count(state)
-- From ss_data
-- Where state = 'Texas'


-- Select count(state)
-- From ss_data
-- Where state = 'Florida'


-- Select count(state)
-- From ss_data
-- Where state = 'Georgia'



-- Select state
-- From ss_data
-- Where state = 'Louisiana'


-- Select school_name
-- From ss_data
-- Where school_name Like '%High School%'


-- Select count(school_name)
-- From ss_data
-- Where school_name Like '%Middle School%'


-- Select count(school_name)
-- From ss_data
-- Where school_name Like '%Elementary School%'


-- Select count(school_name)
-- From ss_data
-- Where school_name Like '%Academy%'


-- Select shooting_type
-- From ss_data
-- Where shooting_type = 'targeted'


-- Select count(shooting_type)
-- From ss_data
-- Where shooting_type = 'indiscriminate'



-- Select count(shooting_type)
-- From ss_data
-- Where shooting_type = 'accidental'




-- Select age_shooter
-- From ss_data
-- Where age_shooter <=15


-- Select round(AVG(age_shooter))
-- From ss_data
-- Where age_shooter <=15


-- Select age_shooter
-- From ss_data
-- Where age_shooter =15



-- Select count(age_shooter)
-- From ss_data
-- Where age_shooter =18



-- Select count(age_shooter)
-- From ss_data
-- Where age_shooter =17


-- Select count(age_shooter)
-- From ss_data
-- Where age_shooter =14


-- Select county, school_name, state, incident_date,age_shooter
-- From ss_data
-- Where state = 'Illinois' and county = 'Cook County'
-- Order By 4


-- #Total Incidents 
-- Select count(school_name)
-- From ss_data
-- Answer: 366

-- #Total Killed
-- Select Sum(killed)
-- From ss_data


-- -- Total incidents vs Total Death
-- Select school_name, incident_date, Nullif(sum(killed),0)/NULLIF(Sum(casualties),0)::float As Death_percentage
-- From ss_data
-- Group By school_name, incident_date

-- Select school_name, incident_date, Nullif(sum(killed),0)/NULLIF(Sum(casualties),0)::float As Death_percentage
-- From ss_data
-- Group By school_name, incident_date
-- Order By Death_percentage ASC


-- --Chances of being injured or killed during this incident 
-- Select school_name,incident_date, (casualties) /(total_enrollment) ::float As Killed_Hurt
-- From ss_data
-- Group By school_name,casualties, total_enrollment, incident_date

-- -- Total Incidents vs Total Enrollment
-- -- Shows how many students have been involved in a school shooting 
-- Select school_name, total_enrollment, incident_date, count(school_name) /(total_enrollment) ::float As Percentage_Happening
-- From ss_data
-- Group By school_name, total_enrollment, incident_date
-- Order by incident_date


-- -- States with highest school shooting incidents
-- Select school_name, count(state) as Most_incidents
-- From ss_data
-- Group BY school_name,state
-- Order By count(state) DESC

-- -- By state how many students have died from school shooting incidents
-- Select state , SUM(killed) As Total_students_killed
-- From ss_data
-- Group BY state
-- Order By 2



-- By state how many students have died or been injured  from school shooting incidents
-- Select state , Max(casualties) As Total_students_casualties
-- From ss_data
-- Group BY state
-- Order By 2




-- -- Which day do SS occur the most by day of the week
-- Select Count(day_of_week)
-- From ss_data
-- Where day_of_week = 'Tuesday'


