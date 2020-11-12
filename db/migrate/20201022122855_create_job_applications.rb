class CreateJobApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :job_applications do |t|
      t.belongs_to :job
      t.timestamps
    end
  end
end
