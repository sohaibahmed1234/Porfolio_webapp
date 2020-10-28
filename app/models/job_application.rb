class JobApplication < ApplicationRecord
  validates :username, presence: true

  validates :phonenumber, presence: true
  validates :email, presence: true
  validates :resume, presence: true


  belongs_to :job
  mount_uploader :resume, ResumeUploader

end
