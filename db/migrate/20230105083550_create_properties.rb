# frozen_string_literal: true

class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :units

      t.timestamps
    end
  end
end
