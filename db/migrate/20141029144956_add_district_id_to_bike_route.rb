class AddDistrictIdToBikeRoute < ActiveRecord::Migration
  def change
    add_column :bike_routes, :district_id, :integer
  end
end
