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
  permit_params :weblink, :description,:image,:project_name, technology_attributes: [:name],project_technologies_attributes:[:technology_id,:id,:_destroy]


  form do |project|
    project.inputs "Portfolio Details" do
      project.input :project_name
      project.input :weblink
      project.input :description
      project.input :image
    end

    project.has_many :project_technologies do |project_tect|
      project_tect.inputs "Project Technologies" do
        if !project_tect.object.nil?
          project_tect.input :_destroy, :as => :boolean, :label => "Destroy?"
        end
        project_tect.input :technology

      end
    end
    project.actions
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
