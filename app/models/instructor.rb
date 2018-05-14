class Instructor < ApplicationRecord
    has_one :role
    belongs_to :cohort
end
