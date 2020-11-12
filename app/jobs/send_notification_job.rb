class SendNotificationJob < ApplicationJob
  queue_as :default

  def perform(job_application)

    JobapplicationNotifierMailer.send_email(job_application).deliver_now
  end
end
