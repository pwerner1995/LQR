class DrinksController < ApplicationController
    def index
        @drinks = Drink.all
    end
    
    def show
        @drink = Drink.find(params[:id])
        @store = Store.new
    end

    def create
        @drink = Drink.new(drink_params)
        if @drink.valid?
            @drink.save
            redirect_to drink_path(@drink)
        else
            render :new
        end
    end

    def new
        @drink = Drink.new
    end

    def edit
        @drink = Drink.find(params[:id])
    end

    def update
        @drink = Drink.find(params[:id])
        @drink.name = drink_params[:name]
        @drink.price = drink_params[:price]
        if @drink.valid?
            @drink.save
            redirect_to drink_path(@drink)
        else
            render :edit
        end
    end

    def delete
        @drink = Drink.find(params[:id])
        @drink.destroy
        redirect_to drinks_path
    end

    private

    def drink_params
        params.require(:drink).permit(:name, :price)
    end  
end
