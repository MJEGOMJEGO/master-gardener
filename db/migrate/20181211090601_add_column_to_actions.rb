class AddColumnToActions < ActiveRecord::Migration[5.2]
  def change
    add_column :actions, :sentence, :string
  end
end
