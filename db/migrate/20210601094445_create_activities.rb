class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :opening_hours
      t.string :contact_number
      t.integer :available_spots
      t.float :duration
      t.float :price
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
