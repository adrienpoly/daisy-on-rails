class User::SessionsController < ApplicationController
  def index
    @sessions = Current.user.sessions.order(created_at: :desc)
  end
end
