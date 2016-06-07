require 'csv'

family = CSV.read('csv_test.txt')
puts "family="+family.inspect

father = family.find { |person| person.join(';').include?("Ho Po") }
puts "father="+father.inspect

CSV.open("csv_out.txt", "w") do |csv|
	family.each { |person| csv << person }
end

puts "The 2 files are identical" if File.identical?("csv_test.txt", "csv_out.txt")
