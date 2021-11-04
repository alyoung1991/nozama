class Api::ProductsController < ApplicationController
    def index
        @products = Product.search_query_match(params[:query])
        if params[:department] != "All"
            @products = @products.where(department: params[:department])
        end

        render :index
    end

    def show
        @product = Product.find_by(id: params[:id])
    end
end