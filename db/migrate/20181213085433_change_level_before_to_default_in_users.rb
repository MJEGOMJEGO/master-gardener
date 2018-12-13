class ChangeLevelBeforeToDefaultInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :level_before, :integer, default: 0
  end
end
