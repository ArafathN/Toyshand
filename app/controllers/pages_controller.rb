class PagesController < ApplicationController
  before_action :authenticate_user!, only:  [:dashboard]
  def home
    if current_user
      redirect_to toys_path
    end

    @toys = Toy.last(4)
  end

  def dashboard
    @toys = current_user.toys
    @purchased = Sale.where(buyer_email: current_user.email)
    @sales = Sale.where(seller_email: current_user.email)
  end
end
