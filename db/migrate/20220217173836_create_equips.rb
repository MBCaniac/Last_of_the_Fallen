class CreateEquips < ActiveRecord::Migration[7.0]
  def change
    create_table :equips do |t|
      t.string :helm
      t.string :armor
      t.string :accessory
      t.string :weapon
      t.references :unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
