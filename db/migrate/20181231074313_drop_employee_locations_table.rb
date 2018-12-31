class DropEmployeeLocationsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :employee_locations

  end
end
