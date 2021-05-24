class CreateProduceFamilies < ActiveRecord::Migration[6.1]
  def change
    create_table :produce_families do |t|
      t.string :family, null: false

      t.timestamps
    end
  end
end
