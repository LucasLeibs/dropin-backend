class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :user, :event, :created_at
  has_one :user
  has_one :event
end
