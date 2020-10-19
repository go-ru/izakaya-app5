class Deliver < ApplicationRecord
  belongs_to :user
  belongs_to :message
  has_one_attached :image

  validates :store_name, :product, :image, presence: true
end
