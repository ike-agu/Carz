class RemoveReviewFromCars < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :review, :integer
  end
end
