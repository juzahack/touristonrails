class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.date :date
      t.string :place
      t.string :weather
      t.string :type
      t.string :trip

      t.timestamps null: false
    end
  end
end
