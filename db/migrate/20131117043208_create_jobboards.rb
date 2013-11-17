class CreateJobboards < ActiveRecord::Migration
  def change
    create_table :jobboards do |t|
      t.text :jobTitle
      t.text :company
      t.text :hours
      t.boolean :full
      t.boolean :partTime
      t.text :salary
      t.text :description
      t.text :requirements
      t.text :website

      t.timestamps
    end
  end
end
