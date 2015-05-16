class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :surname
      t.string :name
      t.string :email
      t.integer :reputation
      t.string :place
      t.string :type

      t.timestamps null: false
    end
  end
end
