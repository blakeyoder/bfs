class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :check_age, except: [:root_url]
  def check_age
    @age_verify = cookies[:age]
    if @age_verify.blank?
      redirect_to "root_url"
    end
  end

end
