class AddisDeletedToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :is_deleted, :boolean ,:default => "false"
  end
end
