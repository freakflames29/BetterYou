class CreateUserShownames < ActiveRecord::Migration[6.1]
  def change
    create_table :user_shownames do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :show_name,default: true

      t.timestamps
    end
  end
end
