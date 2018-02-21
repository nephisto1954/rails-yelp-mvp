class RemoveReviewIdFromRestaurant < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :reviews_id
  end
end
