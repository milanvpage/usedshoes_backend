class ShoeSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :yearfounded, :color, :size, :design, :condition
  has_many :comments
end
