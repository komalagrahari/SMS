class AddFieldstoTeacherProfile < ActiveRecord::Migration[5.1]
  def change
  	 add_column :teacher_profiles, :experience, :string
     add_column :teacher_profiles, :subject1, :string
     add_column :teacher_profiles, :subject2, :string
     add_column :teacher_profiles, :subject3, :string
     add_column :teacher_profiles, :recentclass, :string
     add_column :teacher_profiles, :newclass, :string
     add_column :teacher_profiles, :section, :string
     add_column :teacher_profiles, :adhaarnumber, :string
     add_column :teacher_profiles, :recentschool, :string
     add_column :teacher_profiles, :marrigestatus,:string
     add_column :teacher_profiles, :spouse,:string
     add_column :teacher_profiles, :children,:string
     add_column :teacher_profiles, :salary, :string
  end
end
