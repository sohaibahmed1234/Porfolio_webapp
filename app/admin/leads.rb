ActiveAdmin.register Lead do
  actions :index,:destroy
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :fullname, :phone, :email, :message, :interest
  #
  # or
  #
  # permit_params do
  #   permitted = [:fullname, :phone, :email, :message, :interest]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
