class CreateSClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :s_classes do |t|

      t.timestamps
    end
  end
end
