class BasketsController < ApplicationController
  def new
    @producers = Producer.all
    @extras = Extra.all
  end
end
