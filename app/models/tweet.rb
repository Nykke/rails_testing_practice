class Tweet < ApplicationRecord
  validates :status, presence: true

  belongs_to :zombie 
end
