require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Admin.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, dob: Faker::Date.birthday(18, 60), email:"admin@domain.com", education: Faker::Job.education_level, bio: Faker::Lorem.paragraphs(1), password: "test123", avatar: "default_profile.png")

6.times do |i|
    Course.create(name: Faker::Name.title, hours: Faker::Number.between(1, 5), description: Faker::Lorem.paragraphs(1), avatar: "")
end

6.times do |i|
    Instructor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, dob: Faker::Date.birthday(18, 60), email:"instructor#{i+1}@domain.com", education: Faker::Job.education_level, bio: Faker::Lorem.paragraphs(1), password: "test123", salary: 75000, avatar: "")
end


6.times do |i|
    Cohort.create(name: Faker::Name.title, start_date: Faker::Date.backward(14), end_date: Faker::Date.forward(23), instructor_id: Faker::Number.between(1, 6), course_id: Faker::Number.between(1, 6),avatar: "")
end




Role.create(role: "Admin")
Role.create(role: "Contributor")
Role.create(role: "User")



6.times do |i|
    Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, dob: Faker::Date.birthday(18, 60), email:"student#{i+1}@domain.com", education: Faker::Job.education_level, bio: Faker::Lorem.paragraphs(1), password: "test123", avatar: "", cohort_id: Faker::Number.between(1, 6))
end





