class AddCodeToSpeciesAndActions < ActiveRecord::Migration[5.2]
  def change
    add_column :actions, :code, :string
    add_column :species, :code, :string
  end
end
