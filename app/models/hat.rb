class Hat < ApplicationRecord
  include PgSearch

  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :brand, presence: true
  validates :color, presence: true
  validates :style, presence: true

  pg_search_scope :search_by_descriptions, against: [:name, :brand, :color]

end
