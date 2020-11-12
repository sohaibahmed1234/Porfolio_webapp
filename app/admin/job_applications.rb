ActiveAdmin.register JobApplication do
  actions :index,:destroy

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :job_id, :username, :phonenumber, :email, :resume
  #
  # or
  #
  # permit_params do
  #   permitted = [:job_id, :username, :phonenumber, :email, :resume]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    id_column
    column :job_title
    column :email
    column :username
    column :phonenumber
    column "resume" do |post|
      link_to "Resume", post.resume.to_s
    end

    actions
  end


end
