class AddPictureUrlToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :picture_url, :string, null: false
  end
end
