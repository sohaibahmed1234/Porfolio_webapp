ActiveAdmin.register Job do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :job_title, :job_details, :job_type
  #
  # or
  #
  # permit_params do
  #   permitted = [:job_title, :job_details, :job_type]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :job_title, :job_details,:job_type,:technologies,:positions,:experience,:education,:is_deleted,technologies: [:name],job_technologies_attributes:[:technology_id,:id,:_destroy]

  form do |job|
    job.inputs "Job Details" do
      job.input :job_title
      job.input :job_details
      job.input :job_type
      job.input :positions
      job.input :experience
      job.input :education
      job.input :is_deleted
    end

    job.has_many :job_technologies do |job_tech|
      job_tech.inputs "Job Technology" do
        if !job_tech.object.nil?

          job_tech.input :_destroy, :as => :boolean, :label => "Destroy?"
        end

        job_tech.input :technology
      end
    end
    job.actions
  end



end
