class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string  :firstName,    null: false
      t.string  :lastName,     null: false
      t.string  :username,     null: false
      t.string  :email,        null: false
      t.integer :ext,         null: false
      t.string  :directPhone,  null: true
      t.string  :directFax,    null: true
      t.date    :dob,         null: true
      t.timestamps
    end
  end
end
