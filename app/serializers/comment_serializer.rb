class CommentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :shoe_id
  belongs_to :shoe
end
