class Project < ApplicationRecord

  validates :description,:weblink, :image,:project_name,presence: true

  has_many :project_technologies
  has_many :technologies, through: :project_technologies
  accepts_nested_attributes_for :project_technologies, :allow_destroy => true
  mount_base64_uploader :image, ImageUploader # Tells rails to use this uploader for this model.

end
