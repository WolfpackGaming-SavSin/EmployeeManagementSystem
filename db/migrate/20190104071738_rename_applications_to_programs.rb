class RenameApplicationsToPrograms < ActiveRecord::Migration[5.2]
  def change
    rename_table :applications, :programs
  end
end
