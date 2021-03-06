class CreateCartitems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :quantity, default: 1, null: false
      t.integer :product_id, null: false
      t.integer :cart_id, null: false
      t.timestamps
    end
    add_index :cart_items, :cart_id
    add_index :cart_items, :product_id
  end
end
