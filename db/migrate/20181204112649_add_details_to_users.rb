class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :city_location, :string
    add_column :users, :level, :integer
    add_column :users, :score, :integer
    add_column :users, :img_url, :string
    add_column :users, :badges, :text, array: true
  end
end
