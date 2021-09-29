class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :type
      t.text :description
      t.integer :review

      t.timestamps
    end
  end
end
