class Technology < ApplicationRecord
  has_many :project_technologies
  has_many :projects, through: :project_technologies
  has_many :job_technologies
  has_many :jobs, through: :job_technologies
end
