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
end
