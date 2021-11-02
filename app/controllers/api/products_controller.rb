class Api::ProductsController < ApplicationController
    def index
        @products = Product.search_query_match(params[:query])
        render :index
    end

    def show
        @product = Product.find_by(id: params[:id])
        render :show
    end
end