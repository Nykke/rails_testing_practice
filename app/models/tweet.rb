class Tweet < ApplicationRecord
    validates :status, presence: true
end
