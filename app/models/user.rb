class User < ApplicationRecord
  has_many :skill_users, dependent: :destroy
  has_many :skills, through: :skill_users
  validates :name, :email, presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
  validates :email, uniqueness: true
end
