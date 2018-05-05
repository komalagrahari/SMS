class CreateSubjectclasses < ActiveRecord::Migration[5.1]
  def change
    create_table :subjectclasses do |t|

      t.timestamps
    end
  end
end
