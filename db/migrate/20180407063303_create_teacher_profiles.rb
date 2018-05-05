class CreateTeacherProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_profiles do |t|

      t.timestamps
    end
  end
end
