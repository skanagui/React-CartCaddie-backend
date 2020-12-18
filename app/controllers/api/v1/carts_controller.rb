class Api::V1::CartsController < ApplicationController
    # skip_before_action :authorized, only: [:create, :index]

    def index
        carts = Cart.all
        render json: carts
    end

    
    def show
        cart = Cart.find(params[:id])
        render json: cart
    end

    def create
        cart = Cart.create!(cart_params)
        render json: cart
    end

    def update
        cart = Cart.find(params[:id])
        # byebug
        cart.update(cart_params)
        render json: cart 
    end
    
    def destroy
        
    end

    private

    def cart_params
        params.require(:cart).permit(:user_id)
    end

end
