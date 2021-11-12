class Api::CartsController < ApplicationController
    before_action :ensure_logged_in
    
    def show
        if(params[:session_id])
            @cart = Cart.find_or_create_by(session_id: params[:session_id])
            render :show
        else
            render json: @cart, status: :unprocessable_entity
        end
    end

    def create
        @cart = Cart.new(cart_params)
        if @cart.save
            render :show
        else
            render json: @cart, status: :unprocessable_entity
        end
    end

    def update
        @cart = Cart.find(params[:id])
        if @cart.update(cart_params)
            render json: @cart
        else
            render json: @cart.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        @cart.destroy if @cart.id == session[:cart_id]
        session[:cart_id] = nil
        render json: @cart
    end

    private

    def cart_params
        params.require(:cart).permit(:session_id)
    end
end