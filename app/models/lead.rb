class Lead < ApplicationRecord
  validates :fullname, presence: true

  validates :email, presence: true

end
