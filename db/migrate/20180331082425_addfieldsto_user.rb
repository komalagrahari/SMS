class AddfieldstoUser < ActiveRecord::Migration[5.1]
  	def change
  	 add_column :users, :f_name, :string
     add_column :users, :l_name, :string
     add_column :users, :fathername, :string
     add_column :users, :gender, :string
     add_column :users, :phonenumber, :string
     add_column :users, :address, :text
     add_column :users, :zipcode, :string
     add_column :users, :city, :string
     add_column :users, :dob, :string
     add_column :users, :password, :string
  end
end
