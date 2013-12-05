class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :logged_in

  def set_admin
    authenticate_or_request_with_http_basic do |name, password|
      if name == 'admin' && password == 'secret'
            @adminFlag = true
      end
    end
  end
  
  def logged_in
    @adminFlag
  end
  
end