class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.string :name
      t.string :classtype
      t.string :gender
      t.integer :char_lvl
      t.integer :char_xp
      t.integer :char_hp
      t.integer :char_tp
      t.integer :char_def
      t.integer :char_eva
      t.integer :char_atp

      t.timestamps
    end
  end
end
