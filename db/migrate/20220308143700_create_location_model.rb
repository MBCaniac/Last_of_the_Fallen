class CreateLocationModel < ActiveRecord::Migration[7.0]
  def change
    create_table :location_models do |t|
      t.string :bank
      t.string :shop
      t.string :quest
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
