class CreateCandies < ActiveRecord::Migration[5.2]
  def change
    create_table :candies do |t|
      t.string :name
      t.string :type
      t.string :chef_name
      t.string :contributor
      t.references :package, polymorphic: true

      t.timestamps
    end
  end
end
