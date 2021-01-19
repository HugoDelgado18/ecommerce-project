class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_id
      t.string :brand
      t.string :department
      t.string :title
      t.string :description
      t.string :img_url
      t.string :customer_rating
      t.boolean :in_stock
      t.string :price

      t.timestamps
    end
  end
end
