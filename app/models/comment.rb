class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :hat

  validates :rating, presence: true
  validates :message, presence: true

  RATINGS = [
    '5 stars',
    '4 stars',
    '3 stars',
    '2 stars',
    '1 star'
  ]

  def stars
    return rating[0].to_i
  end

end
