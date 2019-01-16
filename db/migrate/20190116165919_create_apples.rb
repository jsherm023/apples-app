class CreateApples < ActiveRecord::Migration[5.2]
  def change
    create_table :apples do |t|
      t.string :variety
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
