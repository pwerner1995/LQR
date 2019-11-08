class Drink < ApplicationRecord
    has_many :store_drinks, dependent: :destroy
    has_many :stores, through: :store_drink
    validates :name, presence: true, uniqueness: true
    validates :price, presence: true
end
