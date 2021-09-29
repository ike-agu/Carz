class AddRatingToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :rating, :integer
  end
end
