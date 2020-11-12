class JobApplication < ApplicationRecord
  validates :username,:phonenumber,:email,:resume,:degree,:experience,presence: true
  belongs_to :job, optional: true
  mount_uploader :resume, ResumeUploader

end
