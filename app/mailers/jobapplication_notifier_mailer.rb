class JobapplicationNotifierMailer < ApplicationMailer
  def send_email(job_application)
    @job_application=job_application
    mail( :to => "sohaib.ahmad@southvillesol.com",
          :subject => 'Your request submitted' )
  end
end
