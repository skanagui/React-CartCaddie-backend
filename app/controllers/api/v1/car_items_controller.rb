class Api::V1::CarItemsController < ApplicationController
    


    def index
        car_items = CarItems.all
        render json: carItems
    end

    
    def show
        car_item = CarItems.find(params[:id])
        render json: car_item
    end

    def create
        car_item = CarItems.create!(cart_product_params)
        render json: car_item
    end

    def update
        caritem = CarItems.find(params[:id])
        caritem.update(cart_product_params)
        render json: car_item
        
    end

    def destroy
        
        car_item = CarItems.find(params[:id])
        car_item.destroy
        render json: {}
    end

    private

    def car_item_params
        params.require(:car_item).permit(:cart_id, :item_id, :quantity )
    end

end
