class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.belongs_to :trip, foreign_key: true

      t.timestamps
    end
  end
end
