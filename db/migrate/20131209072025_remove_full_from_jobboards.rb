class RemoveFullFromJobboards < ActiveRecord::Migration
  def change
    remove_column :jobboards, :full, :boolean
  end
end
