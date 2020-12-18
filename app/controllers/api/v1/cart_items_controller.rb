class Api::V1::CartItemsController < ApplicationController

    def index
        cart_items = CartItem.all
        render json: cart_items
    end

    
    def show
        cart_item = CartItem.find(params[:id])
        render json: cart_item
    end

    def create
        cart_item = CartItem.create!(cart_item_params)
        render json: cart_item
    end

    def update
        cart_item = CartItem.find(params[:id])
        cart_item.update(cart_item_params)
        render json: cart_item
        
    end

    def destroy
        
        cart_item = CartItem.find(params[:id])
        cart_item.destroy
        render json: cart_item
    end

    private

    def cart_item_params
        params.require(:cart_item).permit(:cart_id, :item_id, :quantity )
    end

end
