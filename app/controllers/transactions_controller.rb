class TransactionsController < ApplicationController

    def create
        toy = Toy.find_by!(slug: params[:slug])
        sale = toy.sales.create(
            amount: toy.price,
            buyer_email: current_user.email,
            seller_email: toy.user.email,
            stripe_token: params[:stripeToken])
        sale.process!

        if sale.finished?
            redirect_to pickup_url(uuid: sale.uuid)
        else
            redirect_to toy_path(toy), notice: e.message
        end
    end


    def pickup
        @sale = Sale.find_by!(uuid: params[:uuid])
        @toy = @sale.toy
    end
end
