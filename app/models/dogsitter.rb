class Dogsitter < ApplicationRecord
    belongs_to :city
    has_many :dogs, through: :strolls, dependent: :destroy
    has_many :strolldogs, through: :strolls, dependent: :destroy
    has_many :strolls, dependent: :destroy
end
