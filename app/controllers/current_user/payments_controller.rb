module CurrentUser
  class PaymentsController < ApplicationController

    def index
      @payment = Payment.all
    end

    def show
      @payment = Payment.find(params[:id])
    end
  end
end
