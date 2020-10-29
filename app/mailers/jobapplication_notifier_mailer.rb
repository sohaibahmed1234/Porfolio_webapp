class JobapplicationNotifierMailer < ApplicationMailer
  def send_email(job_application)
    @job_application=job_application
    mail( :to => "sohaibahmed368@gmail.com",
          :subject => 'Job application submitted' )
  end
end
