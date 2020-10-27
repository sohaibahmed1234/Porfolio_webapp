class LeadsNotifierMailer < ApplicationMailer
  default :from => 'sohaib.ahmad@southvillesol.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_email(meeting)
    @meeting=meeting
    mail( :to => "sohaib.ahmad@southvillesol.com",
          :subject => 'Your request submitted' )
  end
end
