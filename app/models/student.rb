class Student < ApplicationRecord
    has_one :role
    has_many :student_courses
    has_many :courses, through: :student_courses
end