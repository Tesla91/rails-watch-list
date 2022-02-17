class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy_async

  validates :title, :overview, presence: true, uniqueness: true
end
