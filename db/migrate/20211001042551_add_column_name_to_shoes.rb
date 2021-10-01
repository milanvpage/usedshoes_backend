class AddColumnNameToShoes < ActiveRecord::Migration[6.1]
  def change
    add_column :shoes, :name, :string
  end
end
