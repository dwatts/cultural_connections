class AddLongDescriptionToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :lng_description, :text
  end
end
