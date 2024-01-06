class Campaign < ApplicationRecord
    has_many :notes, dependent: :destroy
end
