class CreateParkingSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :parking_spots do |t|
      t.references :parking_location, null: false, foreign_key: true
      t.string :name
      t.string :status
      t.decimal :max_distance, default:50.0

      t.timestamps
    end
  end
end
