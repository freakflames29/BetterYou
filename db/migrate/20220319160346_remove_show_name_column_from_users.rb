class RemoveShowNameColumnFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users,:show_name
  end
end
