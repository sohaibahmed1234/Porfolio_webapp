ActiveAdmin.register TermAndCondition do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :detail
  #
  # or
  #
  # permit_params do
  #   permitted = [:detail]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :detail
  form do |term_and_condition|
    term_and_condition.inputs "Terms and conditions" do
      term_and_condition.rich_text_area :detail
    end
    term_and_condition.actions
  end
end
