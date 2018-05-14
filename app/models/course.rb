class Course < ApplicationRecord
     belongs_to :cohort
     has_many :student_courses
     has_many :students, through: :student_courses
end
