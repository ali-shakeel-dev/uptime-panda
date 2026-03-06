class HomeController < ApplicationController

  def index
    if current_user.present?
      redirect_to monitors_path
    end
  end
end