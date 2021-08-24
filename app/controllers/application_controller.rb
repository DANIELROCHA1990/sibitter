class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_theme


  def set_theme
    if params[:theme].present?
      theme = params[:theme].to_sym
      # Session [:theme] = theme
      cookies[:theme] = theme
      redirect_to(request.referrer || root_path)
    end
  end
end
