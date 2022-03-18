class AddShowNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :show_name,:boolean,default: true
  end
end
