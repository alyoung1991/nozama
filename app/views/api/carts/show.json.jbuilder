json.set! @cart.id do
  json.extract! @cart, :id, :session_id
  json.cart_items @cart.cart_items.pluck(:product_id)
end