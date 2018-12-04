class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.date :max_date
      t.boolean :mark_as_done
      t.references :plant, foreign_key: true
      t.references :action, foreign_key: true

      t.timestamps
    end
  end
end
