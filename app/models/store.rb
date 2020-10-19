class Store < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :address, :hour, :tel_number, :genre, :budget, :image, presence: true
  
end
