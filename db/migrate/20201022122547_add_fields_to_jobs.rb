class AddFieldsToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :job_title, :string
    add_column :jobs, :job_details, :string
    add_column :jobs, :job_type, :string
  end
end
