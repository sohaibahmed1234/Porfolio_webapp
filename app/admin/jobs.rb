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
  permit_params :job_title, :job_details,:job_type,:technologies,:positions,:experience,:education,technologies: [:name],job_technologies_attributes:[:technology_id,:id,:_destroy]

  form do |f|
    f.inputs "Job Details" do # physician's fields
    f.input :job_title
    f.input :job_details
    f.input :job_type
    f.input :positions
    f.input :experience
    f.input :education
    end

    f.has_many :job_technologies do |app_f|
      app_f.inputs "Job Technology" do
        if !app_f.object.nil?
          # show the destroy checkbox only if it is an existing appointment
          # else, there's already dynamic JS to add / remove new appointments
          app_f.input :_destroy, :as => :boolean, :label => "Destroy?"
        end

        app_f.input :technology # it should automatically generate a drop-down select to choose from your existing patients

      end
    end
    f.actions
  end



end
