class CreateProduces < ActiveRecord::Migration[6.1]
  def change
    create_table :produces do |t|
      t.string :name, null: false
      t.references :produce_family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
