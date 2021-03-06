json.product do
  json.partial! '/api/products/product', product: @product
  json.reviewIds @product.reviews.pluck(:id)
end

@product.reviews.includes(:author).each do |review|
  json.reviews do
    json.set! review.id do
      json.partial! 'api/reviews/review', review: review
    end
  end

  json.authors do
    json.set! review.author.id do
      json.extract! review.author, :id, :email, :name
    end
  end
end
