class CreateDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :devices do |t|
      t.string :nameD
      t.references :producer, null: false, foreign_key: true
      t.string :info
      t.references :category, null: false, foreign_key: true
      t.string :price
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
