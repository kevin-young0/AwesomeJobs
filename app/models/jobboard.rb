class Jobboard < ActiveRecord::Base

  before_create :set_approval_to_false

  #validates so that no field can be left empty
  validates  :jobTitle,  :company,  :hours,  :salary,  :description,  :requirements,  :website, :email,  presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
 message: "Please check and make sure you entered a valid email address."

  #add values for select box
JOB_TYPES = ["Full Time",  "Part Time",  "Full/Part Time" ]

  #setting approval to false in DB
  def set_approval_to_false
    self.approved = false
    true
  end
  
end