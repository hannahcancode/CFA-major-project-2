class AddPriceToSpace < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :price, :decimal
  end
end
