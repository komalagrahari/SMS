class AddReferencetoStudentProfile < ActiveRecord::Migration[5.1]
  def change
  	add_reference :student_profiles, :user, foreign_key: true
  end
end
