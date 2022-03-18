class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :level
      t.string :points,default: "10"

      t.timestamps
    end
  end
end
