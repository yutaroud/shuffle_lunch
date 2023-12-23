class User < ApplicationRecord
  has_many :groups

  validates :nickname, presence: true
end