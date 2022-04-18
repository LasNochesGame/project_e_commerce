class ShopsController < ApplicationController
    def new
    end

    def create
        @shop = Shop.new (params.require(:shop).permit(:corporate_name, :cnpj, :address, :city, :state, :manager))
        @shop.save
        redirect_to root_path
    end

    def edit
        @shop = Shop.find(params[:id])
    end

    def update
        @shop = Shop.find(params[:id])
        @shop.update(params.require(:shop).permit(:corporate_name, :cnpj, :address, :city, :state, :manager))
        redirect_to root_path
    end

    def destroy
        shop = Shop.find(params[:id])
        shop.destroy
        redirect_to root_path
    end

    def index
        @shops = Shop.all
    end

    def show
        @shop = Shop.find(params[:id])
    end

end