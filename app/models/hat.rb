class Hat < ApplicationRecord

  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :brand, presence: true
  validates :color, presence: true
  validates :style, presence: true

end
