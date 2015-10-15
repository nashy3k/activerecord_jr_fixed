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

	when "New cohort"
	puts "New cohort:"
	cname = gets.chomp
	newcohort = Cohort.create(name: cname)

	when "List all"
		puts "student or cohort"
		table = gets.chomp
		case table
			when 'student'
				puts Student.all
			when 'cohort'
				puts Cohort.all
		end

	when "Where"
		puts "student or cohort"
		table = gets.chomp
		puts "name:"
		name = gets.chomp
		case table
			when 'student'
				puts Student.where('first_name = ?', name)
			when 'cohort'
				puts Cohort.where('name = ?', name)
		end

	when "Find"
			puts "student or cohort"
			table = gets.chomp
			puts "id:"
			id = gets.chomp
			case table
				when 'student'
					puts Student.find(id)
				when 'cohort'
					puts Cohort.find(id)
			end

	else
	puts "Nothing"
end





