class Jobboard < ActiveRecord::Base
 
  validates  :jobTitle,  :company,  :hours,  :full,  :partTime,  :salary,  :description,  :requirements,  :website,  :email,  presence: true
end
