class Message < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :request, presence: true
end
