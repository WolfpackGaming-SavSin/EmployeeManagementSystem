class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :locationName, null: false
      t.string :streetAddress, null: false
      t.string :city, null: false
      t.string :state, null: false, default: "CA"
      t.string :zipCode, null: false
      t.timestamps
    end
  end
end
