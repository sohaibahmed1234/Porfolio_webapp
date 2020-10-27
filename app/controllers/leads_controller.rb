class LeadsController < ApplicationController
  def index

  end
  def new

  end
  def create
    @lead = Lead.new(lead_params)
    @lead.save
    LeadsNotifierMailer.send_email(@lead).deliver_now
    redirect_back(fallback_location: root_path)
  end

  private
  def lead_params
    params.permit(:fullname, :email, :phone,:message,:interest)
  end
end
