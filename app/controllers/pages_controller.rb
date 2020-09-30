class PagesController < ApplicationController
  def home
    if current_user
      redirect_to toys_path
    end
  end
end
