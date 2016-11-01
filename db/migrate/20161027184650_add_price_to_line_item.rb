class AddPriceToLineItem < ActiveRecord::Migration[5.0]
  def up
    add_column :line_items, :price, :decimal, precision: 8, scale: 2

    LineItem.all.each do |li|
      li.update price: Product.find(li.product_id).price
    end
  end

  def down
    remove_column :line_items, :price
  end
end
