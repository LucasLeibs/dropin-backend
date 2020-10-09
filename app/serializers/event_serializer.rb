class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zipcode, :time, :date, :sport, :image
  has_one :user
end
