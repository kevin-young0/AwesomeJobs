class RemovePartTimeFromJobboards < ActiveRecord::Migration
  def change
    remove_column :jobboards, :partTime, :boolean
  end
end
