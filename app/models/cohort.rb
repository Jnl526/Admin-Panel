class Cohort < ApplicationRecord
    has_many :courses
    has_one :instructor

    def date_form
        self.date.strftime("%B %d, %Y")
      end
end
