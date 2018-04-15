class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :address, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
