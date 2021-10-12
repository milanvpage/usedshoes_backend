class AddColumnLikesToShoes < ActiveRecord::Migration[6.1]
  def change
    add_column :shoes, :likes, :integer, defualt: 0
  end
end
