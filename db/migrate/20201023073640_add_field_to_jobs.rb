class AddFieldToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :positions, :string
    add_column :jobs, :education, :string
    add_column :jobs, :experience, :string
  end
end
