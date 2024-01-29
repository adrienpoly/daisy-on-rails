class ApplicationController < ActionController::Base
  before_action :set_current_request_details

  include Authentification
  include Internationalization
  include Analytics

  def set_current_request_details
    Current.user_agent = request.user_agent
    Current.ip_address = request.ip
  end
end
