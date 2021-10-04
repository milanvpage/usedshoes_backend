class CategorySerializer < ActiveModel::Serializer
    attributes :id, :name, shoes
    has_many :shoes
  end