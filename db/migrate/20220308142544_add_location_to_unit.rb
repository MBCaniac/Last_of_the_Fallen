class AddLocationToUnit < ActiveRecord::Migration[7.0]
  def change
    add_column :units, :location, :string
  end
end
