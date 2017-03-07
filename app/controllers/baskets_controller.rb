class BasketsController < ApplicationController

  def new
    @producers = Producer.all
    @extras = Extra.all
  end
    
  skip_before_action :authenticate_user!, only: [:new, :create]

  def create
  end
end
