class Jobboard < ActiveRecord::Base
 
  #validates so that no field can be left empty
  validates  :jobTitle,  :company,  :hours,  :full,  :partTime,  :salary,  :description,  :requirements,  :website,  :email,  presence: true
end
