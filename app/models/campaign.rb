class Campaign < ApplicationRecord
    has_many :notes, dependent: :destroy
    has_many :npcs, dependent: :destroy
end
