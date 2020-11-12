class AddFieldToLeads < ActiveRecord::Migration[6.0]
  def change
    add_column :leads, :fullname, :string
    add_column :leads, :phone, :string
    add_column :leads, :email, :string
    add_column :leads, :message, :string
    add_column :leads, :interest, :string
  end
end
