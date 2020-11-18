class LeadsNotifierMailer < ApplicationMailer
  default :from => 'admin@hubextech.com'
  # send a signup email5 to the user, pass in the user object that   contains the user's email address
  def send_email(meeting)
    @meeting=meeting
    mail( :to => "admin@hubextech.com",
          :subject => 'New request submitted' )
  end
end
