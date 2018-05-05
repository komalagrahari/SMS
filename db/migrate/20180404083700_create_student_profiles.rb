class CreateStudentProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :student_profiles do |t|

      t.timestamps
    end
  end
end
