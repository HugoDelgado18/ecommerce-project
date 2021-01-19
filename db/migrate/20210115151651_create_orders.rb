class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :payment
      t.string :address
      t.boolean :shipped

      t.timestamps
    end
  end
end
