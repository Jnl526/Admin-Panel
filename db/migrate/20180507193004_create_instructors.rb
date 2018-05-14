class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :email
      t.string :education
      t.text :bio
      t.integer :salary
      t.string :password     
      t.string :avatar
      t.timestamps
    end
  end
end
