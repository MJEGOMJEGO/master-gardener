class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :nickname
      t.integer :life_points
      t.references :user, foreign_key: true
      t.references :specie, foreign_key: true

      t.timestamps
    end
  end
end
