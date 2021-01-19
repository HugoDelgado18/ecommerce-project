class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :product_id
      t.string :content

      t.timestamps
    end
  end
end
