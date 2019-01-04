class RenameNameColumnOnLocationsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :locations, :locationName, :name
  end
end
