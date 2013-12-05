class AdminPageController < ApplicationController

  before_filter :set_admin

  # GET /jobboards
  # GET /jobboards.json
  def admin
    @jobboards = Jobboard.order("approved, created_at desc")
  end
  
end