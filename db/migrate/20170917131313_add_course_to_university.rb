class AddCourseToUniversity < ActiveRecord::Migration[5.0]
  def change
    add_column :universities, :course, :string
  end
end
