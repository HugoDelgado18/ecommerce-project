class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :firstname
      t.string :lastname
      t.string :address
      t.integer :zipcode

      t.timestamps
    end
  end
end
