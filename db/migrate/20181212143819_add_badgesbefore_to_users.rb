class AddBadgesbeforeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :badges_before, :text, array: true
  end
end
