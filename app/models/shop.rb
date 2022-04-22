class Shop < ApplicationRecord
    validates :corporate_name, :cnpj, :address, :city, :state, :manager, presence: true
    validates :cnpj, length: { in: 11..14 }
    validates :corporate_name, uniqueness: true
end
