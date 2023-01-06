class UnitsResultsAsArray < ActiveRecord::Migration[6.0]
  def change
    change_column :properties, :units, :string, array: true, default: '{}'
  end
end
