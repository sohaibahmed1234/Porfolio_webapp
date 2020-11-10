class AddTitleToJobApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :job_applications, :job_title, :string
    add_column :job_applications, :experience, :string
    add_column :job_applications, :degree, :string
  end
end
