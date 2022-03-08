class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :bank
      t.string :shop
      t.string :quest

      t.timestamps
    end
  end
end
