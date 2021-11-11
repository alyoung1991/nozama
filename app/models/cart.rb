# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  session_id :integer
#
class Cart < ApplicationRecord
    has_many :cart_items, 
        primary_key: :id,
        foreign_key: :cart_id,
        class_name: :CartItem,
        dependent: :destroy

    def add_product(product)
        current_cart_item = cart_items.find_by(product_id: product.id)
        if current_cart_item
            current_cart_item.increment(:quantity)
        else
            current_cart_item = cart_items.build(product_id: product.id)
        end
        current_cart_item
    end
end
