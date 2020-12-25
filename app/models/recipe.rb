class Recipe < ApplicationRecord
    has_many :comments
    has_many :ratings
    belongs_to :user
end
