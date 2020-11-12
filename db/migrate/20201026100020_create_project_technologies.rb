class CreateProjectTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :project_technologies do |t|
      t.belongs_to :technology
      t.belongs_to :project


      t.timestamps
    end
  end
end
