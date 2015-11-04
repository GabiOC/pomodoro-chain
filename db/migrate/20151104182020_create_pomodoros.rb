class CreatePomodoros < ActiveRecord::Migration
  def change
    create_table :pomodoros do |t|
      t.datetime :start
      t.datetime :end
      t.string :task
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :pomodoros, :users
  end
end
