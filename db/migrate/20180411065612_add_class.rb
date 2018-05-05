class AddClass < ActiveRecord::Migration[5.1]
  def change
  	 add_column :s_classes, :name, :string
  	 add_column :s_classes, :section, :string
  end
end
