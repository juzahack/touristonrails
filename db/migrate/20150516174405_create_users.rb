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

    create_table :paths do |t|
      t.date :date
      t.string :place
      t.string :weather
      t.string :kind
      t.string :trip

      t.timestamps null: false
    end

    create_table :paths_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :path, index: true
      t.timestamps null: false
    end
  end
end
