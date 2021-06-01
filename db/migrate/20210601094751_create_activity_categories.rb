class CreateActivityCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :activity_categories do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
