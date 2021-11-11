class AddSessionIdToCarts < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :session_id, :integer
  end
end
