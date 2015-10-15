require_relative 'app'

cohort = Cohort.find(1)
cohort[:name] = 'Best cohort ever'
cohort.save

Cohort.find(1)[:name] == 'Best cohort ever'

puts Cohort.find(1)[:name]
puts Cohort.find(2)[:name]
	
puts "Test :"
test = gets.chomp
case test
	when "New student"
	puts "New student, first name:"
	fname = gets.chomp
	puts "last name:"
	lname = gets.chomp
	puts "Email:"
	email = gets.chomp
	birthday = Date.today - rand(15..40)*365
	gender = ['m', 'f'].sample
	noob = Student.create(first_name: fname, last_name: lname, email: email, birthdate: birthday, gender: gender, cohort_id: 'Delta')
	#puts Student.where('first_name = ?', fname)

	when "New cohort"
	puts "New cohort:"
	cname = gets.chomp
	newcohort = Cohort.create(name: cname)

	else
	puts "Nothing"
end





