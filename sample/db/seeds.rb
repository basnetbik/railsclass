# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
["Roy","Ram","Sita"].each do |name|
	Student.find_or_create_by_name(:name => name)
end

["Civil","Mechanical","Electrical","Computer"].each do |name|
	Program.find_or_create_by_name(:name => name)
end
