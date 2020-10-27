class JobApplicationsController < ApplicationController
  def index
  end
  def new
  end
  def create

  @job_application = JobApplication.new(application_params)

    @job_application.save
      flash[:notice] = "Job application successfully submitted"
  JobapplicationNotifierMailer.send_email(@job_application).deliver_now
        redirect_back(fallback_location: root_path)
end

private
def application_params
  params.permit(:username, :phonenumber, :email,:resume,:job_id)
end
end
