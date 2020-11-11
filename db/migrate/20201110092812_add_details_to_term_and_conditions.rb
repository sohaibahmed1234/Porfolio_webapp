class AddDetailsToTermAndConditions < ActiveRecord::Migration[6.0]
  def change
    add_column :term_and_conditions, :detail, :text
  end
end
