class AddLevelbeforeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :level_before, :integer
  end
end
