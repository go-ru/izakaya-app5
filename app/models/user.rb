class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        
validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }, length: { minimum: 6 }

validates :store_name, presence: true

has_one :store
has_many :messages
has_many :comments
has_many :delivers

def self.search(search)
  if search != ""
    User.where('store_name LIKE(?)', "%#{search}%")
  else
    User.left_joins(:delivers).group("store_name").order('count(user_id) DESC')
  end
end

end
