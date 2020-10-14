class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zipcode, :time, :date, :sport, :image, :latitude, :longitude
  has_one :user
  has_many :attending_users
end
