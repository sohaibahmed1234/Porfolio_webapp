class AddResumeToJobApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :job_applications, :resume, :text
  end
end
