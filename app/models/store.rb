class Store < ApplicationRecord
    has_many :store_drinks, dependent: :destroy
    has_many :drinks, through: :store_drink
    validates :name, presence: true
    validates :location, presence: true, uniqueness: true

    def menu
        storedrinks.map do |sd|
          sd.drink
        end
      end
    
      def storedrinks
        StoreDrink.all.select do |sd|
          sd.store_id == self.id
        end
      end
      
end
