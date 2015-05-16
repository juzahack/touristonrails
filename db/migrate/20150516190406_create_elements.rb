class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.belongs_to :path, index: true
      t.belongs_to :activity, index: true
      t.integer :order

      t.timestamps null: false
    end
  end
end
