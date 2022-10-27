class Stroll < ApplicationRecord
    has_many :dogsitters, dependent: :destroy
    has_many :dogs, through: :strolldogs, dependent: :destroy
    has_many :strolldogs
end
