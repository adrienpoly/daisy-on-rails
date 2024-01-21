class HomeController < ApplicationController
  skip_before_action :authenticate!, only: [:show]
  def show
  end
end
