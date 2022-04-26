class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :population
      t.references :parent, foreign_key: {to_table: :cities}

      t.timestamps
    end
  end
end
