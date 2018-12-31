class CreateSecurities < ActiveRecord::Migration[5.2]
  def change
    create_table :securities do |t|
      t.string :name, null: false
      t.text :description
      t.timestamps
    end
  end
end
