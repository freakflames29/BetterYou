class CreateUserPoints < ActiveRecord::Migration[6.1]
  def change
    create_table :user_points do |t|
      t.references :user, null: false, foreign_key: true
      t.string :points,default:'0'

      t.timestamps
    end
  end
end
