class ApplicationController < ActionController::Base
  rescue_from ActionController::RoutingError, with: :handle_error_method 
  
  def handle_error_method(error)
    redirect_to action: "index"
  end
end
