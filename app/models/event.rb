class Event < ApplicationRecord
  has_many :groups

  validates :title, presence: true
end