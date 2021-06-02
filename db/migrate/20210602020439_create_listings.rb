class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.references :farmer, null: false, foreign_key: true
      t.text :description
      t.references :produce, null: false, foreign_key: true
      t.numeric :qty
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
