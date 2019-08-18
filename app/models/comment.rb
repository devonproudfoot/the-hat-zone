class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :hat

  validates :rating, presence: true
  validates :message, presence: true
end
