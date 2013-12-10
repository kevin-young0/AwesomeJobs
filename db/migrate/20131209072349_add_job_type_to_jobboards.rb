class AddJobTypeToJobboards < ActiveRecord::Migration
  def change
    add_column :jobboards, :jobType, :string
  end
end
