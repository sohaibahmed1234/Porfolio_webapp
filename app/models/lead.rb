class Lead < ApplicationRecord
  validates :fullname,:email, presence: true



end
