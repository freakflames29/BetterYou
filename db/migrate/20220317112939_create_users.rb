class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :username, null: false
      t.string :email,null: false
      t.string :password_digest,null: false
      t.string :points, default: '0'

      t.timestamps
    end
  end
end
