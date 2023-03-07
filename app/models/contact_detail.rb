class ContactDetail < ApplicationRecord
    belongs_to :user
    validates :email,
    presence: true,
    format: {
      with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    },
    uniqueness: true
validates :phone,
    presence: true,
    numericality: {
      only_integer: true
    },
    length: {
      is: 10
    }
validates :address, :date_of_birth, presence: true
end
