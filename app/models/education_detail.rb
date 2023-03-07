class EducationDetail < ApplicationRecord
 belongs_to :user
 validates :ed_type, presence: true, numericality: false    
 validates :year_of_passout, presence: true
 validates :per_cgpa, presence: true, numericality: true
end
