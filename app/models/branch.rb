class Branch < ApplicationRecord
  has_many :user_branches
  has_many :users, through: :user_branches
  has_many :branch_bloods
end