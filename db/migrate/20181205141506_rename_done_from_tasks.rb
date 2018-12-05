class RenameDoneFromTasks < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :mark_as_done, :done
    change_column_default :tasks, :done, from: nil, to: false
  end
end
