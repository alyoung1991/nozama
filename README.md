# README

## Nozama

[Nozama.com](https://nozama-fsp.herokuapp.com/#/) is a clone of [Amazon.com](https://www.amazon.com/). Similar to Amazon, Nozama is an e-commerce web application that gives users the ability to signup or login to an account, browse products, review products, and add products to their shopping cart.

[Live Site](https://nozama-fsp.herokuapp.com/#/)

### Technologies Used
> #### Libraries
> * React
> * Redux
> * React-Redux
> * NPM
> * Webpack
> * Babel
> * jQuery
> * Faker
> * jBuilder

> #### Languages
> * JavaScript
> * HTML
> * CSS
> * Ruby
> * Rails

## Features

>### Search
> * A user should be able to search for a product by the product's name, or by the product's department. The department selector is a dropdown located next to the search bar, and similar to Amazon, it will only apply the department filter when the search button is clicked. The search bar will appear on every view of the application except for the Sign Up and Login pages. In addition, the sub nav bar contains multiple buttons which will display products from a specific department. Lastly, the search bar will only execute a search if there is either a search query inputted into the input field, or a department has been selected from the dropdown menu.

```ruby
def index
    @products = Product.search_query_match(params[:query])
    if params[:department] != "All"
        @products = @products.where(department: params[:department])
    end

    render :index
end
```
```ruby
def self.search_query_match(query)
    self.where("LOWER(name) LIKE ?", "%" + query.downcase + "%")
end
```

>### Products
> * A user should be able to view both a list of products based on their search criteria, as well as a detail view for a specific products they have clicked on from the list of search results. On the products list view, each product will display it's image, name, rating, price, and shipping estimation based on the curent date. The product's detail page will display a product's image, name, rating, price, details about the product, as well as a list of all customer reviews for that product. In addition, the product detail page will display a button to allow a user to add a product to their cart, and specify the quantity of that product they wish to add to their cart.

>### Reviews
> * A user should be able to write a review for a specific product, as well as edit, and delete reviews they have previously written. A user should not be able to edit or delete reviews belonging to other users. A user should also be able to view the products average rating as well as number of reviews for each product on both the product results list and product detail pages. When creating or editing a review, the user should be able to complete a form which will allow them to input a product review rating out of 5 stars, headline, and body. Reviews listed on the product detail page will display the name of the user who wrote the review.

>### Cart
> * A user should be able to add products to their cart. In addition, a user's cart should be associated to a user's session. In other words, when a user logs out, their cart items should not be visible from any other accounts, and when the user logs back into their account, their cart should contain all the items from their previous browsing session. A user should be able to view their cart and see information based on all cart items, including a product's image, name, price, and quantity of that given products in their cart. In addition, the user should be able to view the cart's subtotal, as well as the number of item's in their cart.
```ruby
def show
    if(params[:session_id])
        @cart = Cart.find_or_create_by(session_id: params[:session_id])
        render :show
    else
        render json: @cart, status: :unprocessable_entity
    end
end
```

```javascript
addProductToCart(product){
    const quantity = parseInt(document.querySelector('.quantity-select').value);
    const cartId = this.props.sessionId;
    const cartItem = {
        "quantity": 1,
        "product_id": product.id,
        "cart_id": cartId
    }
    for(let i = 0; i < quantity; i++){
        this.props.createCartItem(cartItem);
    }
    this.props.fetchCart(1, this.props.sessionId);
    this.props.history.push({
        pathname: '/cart/'
    });
}
```

