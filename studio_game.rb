name1 = "larry"
health1 = 30
name2 = "curly"
health2 = health1

name3 = "moe"
health3 = 100

name4 = "shemp"
health4 = 90

# puts name +  '\'s'  ' initial health is ' + initial_health.to_s
puts "#{name1.capitalize}'s initial health is #{health1}"
puts "#{name2.upcase} initial health is #{health2}"
puts "#{name3.capitalize} has a health of #{health3}".center(50, '*')
puts "#{name4.capitalize.ljust(30, '.')} initial health is #{health4}"

# puts "Players: \n\t#{name1}\n\t#{name2}\n\t#{name3}" 