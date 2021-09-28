class CreateShoes < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :brand
      t.string :yearfounded
      t.string :color
      t.string :size
      t.string :design

      t.timestamps
    end
  end
end
