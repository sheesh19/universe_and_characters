class Character < ApplicationRecord
    belongs_to :universe
    validates :name, presence: true
end
