class ShoeSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :yearfounded, :color, :size, :design, :condition, :image_url, :category_id
  belongs_to :category
end
