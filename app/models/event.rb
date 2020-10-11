class Event < ApplicationRecord
  geocoded_by :complete_address
  before_validation :geocode
  def complete_address
    [address, city, state, zipcode].compact.join(', ')
  end
  
  belongs_to :user
  has_many :attendings
  has_many :attending_users, through: :attendings, source: :user
  
  has_many :bookmarks
  has_many :bookmarked_users, through: :bookmarks, source: :user
end
