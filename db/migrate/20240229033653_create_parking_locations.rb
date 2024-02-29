class CreateParkingLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :parking_locations do |t|
      t.string :street
      t.string :status

      t.timestamps
    end
  end
end
