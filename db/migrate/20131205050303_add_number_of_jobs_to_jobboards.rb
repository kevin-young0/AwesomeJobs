class AddNumberOfJobsToJobboards < ActiveRecord::Migration
  def change
    add_column :jobboards, :numberOfJobs, :Integer
  end
end
