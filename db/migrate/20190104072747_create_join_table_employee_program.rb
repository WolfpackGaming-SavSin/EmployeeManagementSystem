class CreateJoinTableEmployeeProgram < ActiveRecord::Migration[5.2]
  def change
    create_join_table :programs, :employees do |t|
      t.index [:program_id, :employee_id]
      t.index [:employee_id, :program_id]
    end
  end
end
