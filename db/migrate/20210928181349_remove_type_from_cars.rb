class RemoveTypeFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :type, :string
  end
end
