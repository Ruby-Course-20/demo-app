class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :string
      t.string :price
      t.string :decimal

      t.timestamps
    end
  end
end
