class Jobboard < ActiveRecord::Base

  before_create :set_approval_to_false

  #validates so that no field can be left empty
  validates  :jobTitle,  :company,  :hours,  :full,  :partTime,  :salary,  :description,  :requirements,  :website, :email,  presence: true
  validates :email, allow_blank: true, format:{
 	with: %r{\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*},
 	message: "Please check and make sure you entered a valid email address."
 	}

  #setting approval to false in DB
  def set_approval_to_false
    self.approved = false
    true
  end
  
end