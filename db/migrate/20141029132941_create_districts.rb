class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :eng_name
      t.string :chi_name
      t.string :eng_region
      t.string :chi_region

      t.timestamps
    end
  end
end
