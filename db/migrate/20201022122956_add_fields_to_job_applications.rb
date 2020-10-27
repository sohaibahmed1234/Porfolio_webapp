class AddFieldsToJobApplications < ActiveRecord::Migration[6.0]
  def change
    add_column :job_applications, :username, :string
    add_column :job_applications, :phonenumber, :string

    add_column :job_applications, :email, :string
  end
end
