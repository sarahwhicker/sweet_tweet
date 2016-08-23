class Tweet < ApplicationRecord
  belongs_to :user

  validates :message, presence: true, length: { maximum: 140, too_long: 'A Tweet is a maximum of 140 characters. Duh.'}
end
