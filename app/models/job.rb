class Job < ApplicationRecord
  has_many :job_applications, dependent: :destroy
  has_many :job_technologies
  has_many :technologies,through: :job_technologies
  accepts_nested_attributes_for :job_technologies, :allow_destroy => true
end
