class CreateJoinTableEmployeeApplication < ActiveRecord::Migration[5.2]
  def change
    create_join_table :applications, :employees do |t|
      t.index [:application_id, :employee_id]
      t.index [:employee_id, :application_id]
    end
  end
end
