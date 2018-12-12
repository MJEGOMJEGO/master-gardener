class ChangeBadgesToDefaultInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :badges, :text, array: true, default: []
  end
end
