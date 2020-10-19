class UserSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :email, :password_digest, :bio, :image, :file, :created_at
    has_many :events 
    has_many :attendings
    has_many :attending_events, through: :attendings, source: :event
    has_many :comments
    has_many :commented_events, through: :comments, source: :event
  end
  