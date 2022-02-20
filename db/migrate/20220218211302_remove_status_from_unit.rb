class RemoveStatusFromUnit < ActiveRecord::Migration[7.0]
  def change
    remove_column :units, :status, :string
  end
end
