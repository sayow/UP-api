class DropColumnFromProperties < ActiveRecord::Migration[6.0]
  def change
    remove_column :properties, :units
  end
end
