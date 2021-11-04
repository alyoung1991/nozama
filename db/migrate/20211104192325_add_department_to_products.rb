class AddDepartmentToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :department, :string, null: false
  end
end
