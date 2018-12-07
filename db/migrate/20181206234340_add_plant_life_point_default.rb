class AddPlantLifePointDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :plants, :life_points, :integer, default: 0
  end
end
