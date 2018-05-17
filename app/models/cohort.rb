class Cohort < ApplicationRecord
    belongs_to :course
    belongs_to :instructor
    has_many :students
    
    def date_form
        self.date.strftime("%B %d, %Y")
      end
end
