class CreateJoinTableEmployeeSecurity < ActiveRecord::Migration[5.2]
  def change
    create_join_table :securities, :employees do |t|
      t.index [:security_id, :employee_id]
      t.index [:employee_id, :security_id]
    end
  end
end
