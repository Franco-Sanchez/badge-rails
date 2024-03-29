class Skill < ApplicationRecord
  has_many :skill_users, dependent: :destroy
  has_many :users, through: :skill_users
  validates :name, :description, :category, presence: true
end
