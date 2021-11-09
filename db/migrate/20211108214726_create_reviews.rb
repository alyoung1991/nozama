class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :headline, null: false
      t.string :body, default: "", null: false
      t.integer :rating, null: false
      t.integer :product_id, null: false
      t.integer :author_id, null: false
      t.timestamps
    end
    add_index :reviews, :product_id
  end
end
