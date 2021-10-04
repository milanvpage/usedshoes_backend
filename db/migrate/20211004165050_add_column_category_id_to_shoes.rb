class AddColumnCategoryIdToShoes < ActiveRecord::Migration[6.1]
  def change
    add_column :shoes, :category_id, :integer
  end
end
