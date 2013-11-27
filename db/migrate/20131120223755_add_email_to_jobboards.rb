class AddEmailToJobboards < ActiveRecord::Migration
  def change
    add_column :jobboards, :email, :string
  end
end
