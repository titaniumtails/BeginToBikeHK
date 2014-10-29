class CreateBikeRoutes < ActiveRecord::Migration
  def change
    create_table :bike_routes do |t|
      t.string :name
      t.string :from
      t.string :to
      t.string :from_district
      t.string :to_district
      t.string :map_thumb
      t.date :date
      t.text :map_detail
      t.text :warning
      t.string :warning_thumb
      t.text :description
      t.boolean :mtb
      t.integer :distance
      t.time :time
      t.string :difficulty
      t.text :comments
      t.string :best_tod
      t.boolean :user_generated
      t.integer :ranking

      t.timestamps
    end
  end
end
