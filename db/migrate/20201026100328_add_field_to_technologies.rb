class AddFieldToTechnologies < ActiveRecord::Migration[6.0]
  def change

    add_column :technologies, :name, :string
  end
end
