class ChangeNameOfLocation < ActiveRecord::Migration[7.0]
  def change
    rename_column :units, :location, :locate
  end
end
