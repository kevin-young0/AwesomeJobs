class AddApprovedToJobboards < ActiveRecord::Migration
  def change
    add_column :jobboards, :approved, :boolean
  end
end
