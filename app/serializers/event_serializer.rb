class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :address, :city, :state, :zipcode, :time, :date, :sport, :image, :latitude, :longitude
  has_one :user
  has_many :attending_users
  has_many :comments
end
