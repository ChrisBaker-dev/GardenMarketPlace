class CreateFarmers < ActiveRecord::Migration[6.1]
  def change
    create_table :farmers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :farm_name, null: false

      t.timestamps
    end
  end
end
