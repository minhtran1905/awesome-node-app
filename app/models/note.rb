class Note < ApplicationRecord
  belongs_to :user

  # validations

  validates :content, presence: true

  validates :content, length: { in: 0..255 }, if: :content?

  # end for validations

  class << self
  end
end
