class AddFlavorAndOriginToApples < ActiveRecord::Migration[5.2]
  def change
    add_column :apples, :flavor, :string
    add_column :apples, :origin, :string
  end
end
