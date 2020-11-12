class LeadNotificationJob < ApplicationJob
  queue_as :default

  def perform(lead)
    LeadsNotifierMailer.send_email(lead).deliver_now

  end
end
