class Event < ApplicationRecord
  geocoded_by :complete_address
  before_validation :geocode
  def complete_address
    [address, city, state, zipcode].compact.join(', ')
  end
  
  belongs_to :user
  has_many :attendings
  has_many :attending_users, through: :attendings, source: :user
  
  has_many :comments
  has_many :user_comments, through: :comments, source: :user
  # has_one_attached :file
end
