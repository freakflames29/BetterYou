class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :points,default: '20'
      t.string :image_link
      t.string :download_link

      t.timestamps
    end
  end
end
