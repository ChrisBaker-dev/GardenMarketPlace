class CreateProduceListings < ActiveRecord::Migration[6.1]
  def change
    create_table :produce_listings do |t|
      t.references :listing, null: false, foreign_key: true
      t.references :produce, null: false, foreign_key: true

      t.timestamps
    end
  end
end
