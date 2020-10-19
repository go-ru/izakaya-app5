class Message < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one :deliver

  validates :request, presence: true
end
