class ApplicationController < ActionController::Base
  before_action :set_current_request_details
  before_action :authenticate!, unless: :public_controller?

  helper_method :sign_in?

  include Internationalization
  include Analytics

  def sign_in?
    authenticate.is_a?(Session)
  end

  private

  def authenticate!
    redirect_to sign_in_path unless sign_in?
  end

  def authenticate
    return unless cookies.signed[:session_token]
    return Current.session if Current.session

    Current.session = Session.find_by_id(cookies.signed[:session_token])
  end

  def set_current_request_details
    Current.user_agent = request.user_agent
    Current.ip_address = request.ip
  end

  def public_controller?
    # test if the controller is Sitepress::SiteController

    is_a?(Sitepress::SiteController)
  end
end
