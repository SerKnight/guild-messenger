class AddDescriptionToClassroom < ActiveRecord::Migration[5.0]
  def change
    add_column :classrooms, :description, :text
  end
end
