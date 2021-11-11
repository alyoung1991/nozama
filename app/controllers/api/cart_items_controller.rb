class Api::CartItemsController < ApplicationController
    def index
        @cart_items = CartItem.all
    end

    def create
        # @product = Product.find(params[:cart_item][:product_id])
        @cart_item = CartItem.new(cart_item_params)

        if @cart_item.save
            render :show
        else
            render json: ["Unable to add product to cart"], status: 422
        end
    end

    def update
        @cart_item = CartItem.find(params[:id])
        if(@cart_item && @cart_item.update(cart_item_params))
            render json: @cart_item
        else
            render json: ["Unable to update cart item"], status: 422
        end
    end

    def destroy
        @cart = Cart.find(session[:cart_id])
        @cart_item.destroy
        render json: @cart_item
    end

    private
    def set_cart_item
        @cart_item = CartItem.find(params[:id])
    end

    def cart_item_params
        params.require(:cart_item).permit(:cart_id, :quantity, :product_id)
    end
end