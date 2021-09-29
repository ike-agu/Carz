class AddReviewToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :review, :text
  end
end
