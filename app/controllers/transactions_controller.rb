class TransactionsController < ApplicationController

    def create
        toy = Toy.find_by!(slug:params[:slug])
        token = params[:stripeToken]

    begin
        charge = Stripe::Charge.create(
            amount: toy.price,
            currency: "eur",
            card: token,
            description: current_user.email
            )

            @sale = toy.sales.create!(buyer_email: current_user.email)
            redirect_to pickup_url(uuid: @sale.uuid)

        rescue Stripe::CardError => e
            flash[:notice] = e.message
            redirect_to toy_path(toy)
        end
    end


    def pickup
        @sale = Sale.find_by!(uuid: params[:uuid])
        @toy = @sale.toy
    end


end
