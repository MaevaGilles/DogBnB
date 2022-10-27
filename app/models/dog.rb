class Dog < ApplicationRecord
    belongs_to :city
    has_many :dogsitters, through: :strolls, dependent: :destroy
    has_many :strolls, through: :strolldogs, dependent: :destroy
    has_many :strolldogs, dependent: :destroy

end
