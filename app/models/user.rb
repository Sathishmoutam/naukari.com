class User < ApplicationRecord
    has_one :contact_detail
    has_one :resume
    has_many :education_details 
    has_many :skills
    has_many :applies
    has_secure_password 
    validates :password, :user_name,presence: true
    validates :first_name,
              :last_name,
              presence: true,
              format: {
                with: /\A[a-zA-Z]+\z/,
                message: "only allows letters"
              }
    validates :gender,
              presence: true,
              inclusion: {
                in: %w[male female],
                message: "is not a valid gender"
              }
end