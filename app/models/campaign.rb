class Campaign < ApplicationRecord
    has_many :notes, dependent: :destroy
    has_many :npcs, dependent: :destroy
    has_many :locations, dependent: :destroy
    has_many :enemies, dependent: :destroy
end
