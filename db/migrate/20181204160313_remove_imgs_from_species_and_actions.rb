class RemoveImgsFromSpeciesAndActions < ActiveRecord::Migration[5.2]
  def change
    remove_column :actions, :img, :string

    remove_column :species, :img_water, :string
    remove_column :species, :img_feed, :string
    remove_column :species, :img_exposure, :string
    remove_column :species, :img_repot, :string
    remove_column :species, :img_cutclean, :string
    remove_column :species, :img_feeling_good, :string
    remove_column :species, :img_feeling_bad, :string
  end
end
