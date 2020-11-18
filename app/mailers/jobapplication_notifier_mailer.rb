class JobapplicationNotifierMailer < ApplicationMailer
  def send_email(job_application)
    @job_application=job_application
    mail( :to => "hr@hubextech.com",
          :subject => 'Job application submitted' )
  end
end
