class UserSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :email, :password_digest, :bio, :image, :photo
    has_many :events 
    has_many :attendings
    has_many :attending_events, through: :attendings, source: :event
    has_many :bookmarks
    has_many :bookmarked__events, through: :bookmarks, source: :event
  end
  