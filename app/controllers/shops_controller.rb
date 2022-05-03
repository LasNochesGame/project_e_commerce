class ShopsController < ApplicationController
    layout 'application_user'

    def new
        @shop = Shop.new
    end

    def create
        @shop = Shop.new (params.require(:shop).permit(:corporate_name, :cnpj, :address, :city, :state, :manager))
        if @shop.save
            redirect_to root_path, notice: 'Loja Registrada Com Sucesso'
        else
            flash.now[:alert] = 'Não Foi Possível Registrar a Loja'
            render 'new'
        end
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
        shop.delete
        redirect_to root_path, notice: 'Loja Deletada Com Sucesso'
    end

    def index
        @shops = Shop.all
    end

    def show
        @shop = Shop.find(params[:id])
    end

end