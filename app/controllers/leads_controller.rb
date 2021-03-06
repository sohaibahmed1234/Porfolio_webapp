class LeadsController < ApplicationController
  def index
  end
  def new
  end
  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      LeadNotificationJob.perform_later(@lead)
    redirect_back(fallback_location: root_path)
    else
      flash[:error] = @lead.errors.full_messages
      redirect_back(fallback_location: root_path)
    end
  end
  private
  def lead_params
    params.permit(:fullname, :email, :phone,:message,:interest)
  end
end
