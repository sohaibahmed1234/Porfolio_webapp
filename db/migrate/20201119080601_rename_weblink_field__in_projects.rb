class RenameWeblinkFieldInProjects < ActiveRecord::Migration[6.0]
  def change
    change_column :projects, :weblink, :string
  end
end
