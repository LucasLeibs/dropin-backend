class AttendingSerializer < ActiveModel::Serializer
  attributes :id, :event
  has_one :user
  has_one :event
end
