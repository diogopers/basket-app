class BasketsController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def new
    @producers = Producer.all
    @extras = Extra.all
    @baskets = Basket.all
    @basket = Basket.new
    @extra_order = ExtraOrder.new
  end

  # private

  # def basket_params
  #   params.require(:basket).permit(:size, :type)
  # end
end
