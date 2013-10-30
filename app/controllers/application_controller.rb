class ApplicationController < ActionController::Base
  protect_from_forgery

  def show_banner
    @show_banner = true
  end
end
