class JobTechnologies < ActiveRecord::Migration[6.0]
  def change

    create_table :job_technologies do |t|
      t.belongs_to :technology
      t.belongs_to :job
      t.timestamps
    end
  end
end
