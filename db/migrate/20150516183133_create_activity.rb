class CreateActivity < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :kind
      t.string :description

      t.timestamps null: false
    end

    create_table :activities_paths, id: false do |t|
      t.belongs_to :path, index: true
      t.belongs_to :activity, index: true
    end
  end
end
