class Store < ApplicationRecord
    has_many :store_drinks, dependent: :destroy
    has_many :drinks, through: :store_drink
    validates :name, presence: true
    validates :location, presence: true, uniqueness: true
end
