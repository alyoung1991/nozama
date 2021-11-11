json.set! @cart.id do
  json.extract! @cart, :id, :session_id
  json.cart_items @cart.cart_items.map{|cart_item| Product.find_by(id: cart_item.product_id)}
end