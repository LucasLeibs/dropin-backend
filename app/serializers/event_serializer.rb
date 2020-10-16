class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :address, :city, :state, :zipcode, :time, :date, :sport, :image, :latitude, :longitude, :photo
  has_one :user
  has_many :attending_users
end
