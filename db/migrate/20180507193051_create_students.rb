class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :email
      t.string :education
      t.text :bio
      t.string :password
      t.string :avatar
      t.integer :cohort_id
      
      t.timestamps
    end
  end
end
