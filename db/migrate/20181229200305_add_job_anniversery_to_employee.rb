class AddJobAnniverseryToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :job_title, :string
    add_column :employees, :anniversary, :date
  end
end
