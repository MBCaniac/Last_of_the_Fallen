class AddStatusToEquips < ActiveRecord::Migration[7.0]
  def change
    add_column :equips, :status, :string
  end
end
