class StoreDrinksController < ApplicationController

def new
   @store_drink = StoreDrink.new
   redirect_to store_menu_item_create_path
 end
 
 def store_create
   @store_drink = StoreDrink.find_or_create_by(drink_id: params[:drink][:id], store_id: params[:id])
   redirect_to store_menu_path(@store_drink.store)
 end
 def drink_create
   @store_drink = StoreDrink.find_or_create_by(store_id: params[:store][:id], drink_id: params[:id])
   params[:id] = @store_drink.store_id
   redirect_to store_menu_path(@store_drink.store)
 end
 def delete
   @store_drink = StoreDrink.find(params[:id])
   @store = @store_drink.store
   @store_drink.destroy
   redirect_to store_menu_path(@store.id)
 end

end
