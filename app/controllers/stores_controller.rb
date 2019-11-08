class StoresController < ApplicationController
    def index
        @stores = Store.all
      end
      def show
        @store = Store.find(params[:id])
      end
      def new
        @store = Store.new
        #add iced coffee as default store_drink for a new store
      end
      def create
        @store = Store.create(store_params)
        redirect_to store_path(@store)
      end
      def edit
        @store = Store.find(params[:id])
      end
      def update
        @store = Store.find(params[:id])
        @store.update(store_params)
        redirect_to store_path(@store)
      end
      def delete
        @store = Store.find(params[:id])
        @store.destroy
        redirect_to stores_path
      end
      def menu
        @store = Store.find(params[:id])
        # @store = @store_drink.store
        @drink = Drink.new
      end
      private
      def store_params
        params.require(:store).permit(:location)
      end
end
