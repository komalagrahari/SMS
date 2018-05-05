class AddFieldsToStudentProfile < ActiveRecord::Migration[5.1]
  def change
     add_column :student_profiles, :mothername, :string
     add_column :student_profiles, :guardianname, :string
     add_column :student_profiles, :recentclass, :string
     add_column :student_profiles, :newclass, :string
     add_column :student_profiles, :section, :string
     add_column :student_profiles, :adhaarnumber, :string
     add_column :student_profiles, :allergy, :string
     add_column :student_profiles, :bloodgroup, :string
     add_column :student_profiles, :diseases, :string 
     add_column :student_profiles, :siblings, :string
     add_column :student_profiles, :recentschool, :string
     add_column :student_profiles, :otheraddress, :text
  end
end
