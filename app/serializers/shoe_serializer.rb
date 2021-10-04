class ShoeSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :yearfounded, :color, :size, :design, :condition, :image_url
  has_many :comments
  belongs_to :category
end
