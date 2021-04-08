class CreateProducers < ActiveRecord::Migration[6.1]
  def change
    create_table :producers do |t|
      t.string :nameP
      t.string :natunal

      t.timestamps
    end
  end
end
