class RemovePriceFromPins < ActiveRecord::Migration
  def change
    remove_column :pins, :price, :float
  end
end
