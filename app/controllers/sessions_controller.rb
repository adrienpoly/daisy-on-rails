class SessionsController < ApplicationController
  layout "authentification"
  before_action :redirect_if_signed_in, only: %i[new]

  skip_before_action :authenticate, only: %i[new create]

  before_action :set_session, only: :destroy

  def new
  end

  def create
    user = User.authenticate_by(email: params[:email], password: params[:password])
    if user
      @session = user.sessions.create!
      cookies.signed.permanent[:session_token] = {value: @session.id, httponly: true}

      redirect_to user_dashboard_path, notice: "Signed in successfully"
    else
      redirect_to sign_in_path(email_hint: params[:email]), alert: "That email or password is incorrect"
    end
  end

  def destroy
    @session.destroy
    redirect_back(fallback_location: user_sessions_path, notice: "That session has been logged out")
  end

  private

  def set_session
    @session = Current.user.sessions.find(params[:id])
  end

  def redirect_if_signed_in
    session = Session.find_by_id(cookies.signed[:session_token])
    redirect_to user_dashboard_path if session
  end
end
