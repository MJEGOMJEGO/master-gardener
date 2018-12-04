class RenameColumnImgurlToImg < ActiveRecord::Migration[5.2]
  def change
    rename_column :actions, :img_url, :img
    rename_column :species, :img_url_water, :img_water
    rename_column :species, :img_url_feed, :img_feed
    rename_column :species, :img_url_exposure, :img_exposure
    rename_column :species, :img_url_repot, :img_repot
    rename_column :species, :img_url_cutclean, :img_cutclean
    rename_column :species, :img_url_feeling_good, :img_feeling_good
    rename_column :species, :img_url_feeling_bad, :img_feeling_bad
    rename_column :users, :img_url, :img
  end
end
