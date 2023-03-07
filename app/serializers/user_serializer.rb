class UserSerializer < ApplicationSerializer
   attributes :id,:user_name,:first_name,:last_name,:gender
    has_many :education_details
    has_one :contact_detail
    has_one :resume
    has_many :skills
end
