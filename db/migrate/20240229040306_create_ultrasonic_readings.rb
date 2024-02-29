class CreateUltrasonicReadings < ActiveRecord::Migration[7.0]
  def change
    create_table :ultrasonic_readings do |t|
      t.references :parking_spot, null: false, foreign_key: true
      t.decimal :reading

      t.timestamps
    end
  end
end
