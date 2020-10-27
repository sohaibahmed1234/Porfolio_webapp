ActiveAdmin.register Project do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :description, :weblink, :image, :project_name
  #
  # or
  #
  # permit_params do
  #   permitted = [:description, :weblink, :image, :project_name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :weblink, :description,:image,:project_name, technology: [:name],project_technologies_attributes:[:technology_id,:id,:_destroy]


  form do |f|
    f.inputs "Portfolio Details" do # physician's fields
    f.input :description
    f.input :weblink
    f.input :project_name
    f.input :image
    end

    f.has_many :project_technologies do |app_f|
      app_f.inputs "Project Technologies" do
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


  show do

    attributes_table do
      row 'Project Name' do
        project.project_name
      end
      row 'weblink' do
        project.weblink
      end
      row 'Description' do
        project.description
      end
      row 'image' do
        project.image
      end
      row 'Technologies' do
        project.technologies
      end
    end
  end

end
