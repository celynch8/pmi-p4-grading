Student.destroy_all
Project.destroy_all

names = [
	'Ian Brown',
	'Pablo Cardenas',
	'Alex Christison',
	'Laurel Collier',
	'Kevin Darmawan',
	'Judith Dinowitz',
	'Jeremy Horowitz',
	'Jean Kim',
	'Eunice Kim',
	'Ray Lou',
	'Rob Montrone',
	'Qasim Naqvi',
	'Frankie Nguyen',
	'Isabelle Ringnes',
	'Nick Sharma',
	'Ashley Singh',
	'Madison Stern',
	'Megan Wainer',
	'Hallie Weiss'
]

emails = [
	'ianmichaelbrown@me.com',
	'pcorlan@vt.edu',
	'alexchristison@gmail.com',
	'laurelsunshine@yahoo.com',
	'kevindarmawan333@gmail.com',
	'judith.dinowitz@gmail.com',
	'jeremyc.horowitz@gmail.com',
	'jeankim23@gmail.com',
	'eunice@bricklink.com',
	'rlou90@gmail.com',
	'robmontrone@gmail.com',
	'qasimnaqvi0104@gmail.com',
	'frankiee@me.com',
	'isabelleringnes@gmail.com',
	'sharma.nicholas@gmail.com',
	'ashleyks2@gmail.com',
	'madisonsstern@gmail.com',
	'megbw8@gmail.com',
	'halliejweiss@gmail.com'
]

names.each_with_index do |name, i|
	full_name = name.split(' ')
	Student.create(first_name: full_name[0], last_name: full_name[1], email: emails[i])
end

projects = [
	{name: 'VA Loan Captain', s1: 'Nick', s2: 'Hallie'},
	{name: 'GA Circuits Web Design', s1: 'Judith', s2: 'Pablo'},
	{name: 'GA Circuits Data Analysis', s1: 'Ray', s2: 'Isabelle'},
	{name: 'Noodle', s1: 'Ian', s2: 'Megan'},
	{name: 'Modalyst', s1: 'Kevin', s2: 'Madison'},
	{name: 'Cohero Health', s1: 'Jean', s2: 'Eunice'},
	{name: 'Related Noise', s1: 'Jeremy'},
	{name: 'Spoon University', s1: 'Ashley', s2: 'Laurel'},
	{name: 'Countr', s1: 'Qasim', s2: 'Frankie'},
	{name: 'Huge', s1: 'Alex', s2: 'Rob'}
]


projects.each do |project|
	p = Project.create(name: project[:name])
	s1_id = Student.find_by(first_name: project[:s1]).id
	if project[:s2]
		s2_id = Student.find_by(first_name: project[:s2]).id
	else
		s2_id = nil
	end
	p.set_student_ids(s1_id,s2_id)
end
