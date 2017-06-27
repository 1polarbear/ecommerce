module User
  class PaymentLineItems < ApplicationController

    def index
      @payment_line_items = PaymentLineItem.all
    end

    def show
      @payment = PaymentLineItem.find(params[:id])
    end

  end
end
