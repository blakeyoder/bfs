class WelcomeController < ApplicationController
  layout false, only: [:landing]
  skip_before_action :check_age, only: [:landing]

  def landing
  end

  def index
  end
end
