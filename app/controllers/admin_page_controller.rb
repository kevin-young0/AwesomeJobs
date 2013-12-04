class AdminPageController < ApplicationController
  #http_basic_authenticate_with name: "admin", password: "secret", except: [:index, :show, :new, :create]
  before_filter :set_admin
  before_action :set_jobboard, only: [:show, :edit, :update, :destroy]
  
  # GET /jobboards
  # GET /jobboards.json
  def admin
    @jobboards = Jobboard.order("created_at desc")
  end
end

def set_admin
    authenticate_or_request_with_http_basic do |name, password|
      if name == 'admin' && password == 'secret'
            $adminFlag = true
          end
    end
  
end