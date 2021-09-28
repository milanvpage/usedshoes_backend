class AddConditionToShoes < ActiveRecord::Migration[6.1]
  def change
    add_column :shoes, :condition, :string
  end
end
