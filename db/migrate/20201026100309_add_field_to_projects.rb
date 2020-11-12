class AddFieldToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :description, :text
    add_column :projects, :weblink, :text
    add_column :projects, :image, :text
    add_column :projects, :project_name, :string
  end
end
