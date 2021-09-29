class ShoeSerializer < ActiveModel::Serializer
  attributes :id, :brand, :yearfounded, :color, :size, :design, :condition
  has_many :comments
end
