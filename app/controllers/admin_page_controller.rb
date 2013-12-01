class AdminPageController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "secret", except: [:index, :show, :new, :create]
  
  before_action :set_jobboard, only: [:show, :edit, :update, :destroy]
  
  # GET /jobboards
  # GET /jobboards.json
  def admin
    @jobboards = Jobboard.order("created_at desc")
  end
end
