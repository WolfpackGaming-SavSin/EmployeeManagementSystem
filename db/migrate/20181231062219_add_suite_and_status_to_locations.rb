class AddSuiteAndStatusToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :status, :boolean, default: true
    add_column :locations, :suite, :string
  end
end
