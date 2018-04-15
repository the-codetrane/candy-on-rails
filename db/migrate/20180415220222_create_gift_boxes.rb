class CreateGiftBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :gift_boxes do |t|
      t.references :order, foreign_key: true
      t.string :shipping_type
      t.timestamps
    end
  end
end
