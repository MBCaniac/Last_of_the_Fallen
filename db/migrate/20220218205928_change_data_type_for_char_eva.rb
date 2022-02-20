class ChangeDataTypeForCharEva < ActiveRecord::Migration[7.0]
  def change
    change_column :units, :char_eva, :integer
  end
end
