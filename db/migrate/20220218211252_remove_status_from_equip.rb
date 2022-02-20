class RemoveStatusFromEquip < ActiveRecord::Migration[7.0]
  def change
    remove_column :equips, :status, :string
  end
end
