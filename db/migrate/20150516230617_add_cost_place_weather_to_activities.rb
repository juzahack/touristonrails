class AddCostPlaceWeatherToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :cost, :integer
    add_column :activities, :place, :string
    add_column :activities, :weather, :string
  end
end
