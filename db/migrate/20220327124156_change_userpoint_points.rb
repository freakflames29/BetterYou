class ChangeUserpointPoints < ActiveRecord::Migration[6.1]
  def change
    change_column :user_points,:points,:integer
  end
end
