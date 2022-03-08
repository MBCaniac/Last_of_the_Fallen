class AddGoldToUnits < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :gold, :integer
  end
end
