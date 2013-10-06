day table
	name

timeslot
	name
	start
	end

room table
	name

subject table
	name
	desc
	load
		department

section table
	name
	year
		department

department table
	name
	desc
		chairperson

schedule table
		name
		day
		timeslot
		room
		subjsect

subjsect table
		name
		section
		subject
		professor
		schedule

prof table
	lname
	fname
	mi
	status
	load
		subjsect

chairperson table
	lname
	fname
	mi
	department

user table
	lname
	fname
	name
	contactno
	email
	password
	hashed_password
	salt
	accesslevel