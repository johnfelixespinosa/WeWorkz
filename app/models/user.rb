class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 6}, uniqueness: true
  validates :email, presence: true, format: { with: 
    /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}

  has_many :locations
end
