class Jobboard < ActiveRecord::Base
  before_create :set_approval_to_false

  #validates so that no field can be left empty
  validates  :jobTitle,  :company,  :hours,  :full,  :partTime,  :salary,  :description,  :requirements,  :website,  :email,  presence: true
  validates_inclusion_of :approved, :in => [true, false]

  #setting approval to false in DB
  def set_approval_to_false
    self.approved = false
    true
  end
  
end