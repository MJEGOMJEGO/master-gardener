class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.string :name
      t.integer :points
      t.string :img_url
      t.references :specie, foreign_key: true
      t.integer :frequency_in_days

      t.timestamps
    end
  end
end
