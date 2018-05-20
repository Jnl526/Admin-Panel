class Instructor < ApplicationRecord
    has_one :role
    has_many :cohorts

    def name
        "#{first_name} #{last_name}"
    end

    validate :age
    
    def age
        if self.dob
          errors.add(:dob, 'You must be under 150 years old.') if self.dob < 150.years.ago.to_date
        end
    end
end
