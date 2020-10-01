class PagesController < ApplicationController
  before_action :authenticate_user!, only:  [:dashboard]
  def home
    if current_user
      redirect_to toys_path
    end
  end

  def dashboard
    @toys = current_user.toys
  end
end
