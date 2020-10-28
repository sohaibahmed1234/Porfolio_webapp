class Job < ApplicationRecord

  validates :job_title,:job_details,:job_type,:positions,:education,:experience, presence: true




  has_many :job_applications, dependent: :destroy
  has_many :job_technologies
  has_many :technologies,through: :job_technologies
  accepts_nested_attributes_for :job_technologies, :allow_destroy => true
  scope :is_valid, lambda { where("created_at > ?",(Time.now-15.days)) }
  def delete
    update_column :is_deleted, true if has_attribute? :is_deleted
  end

end
