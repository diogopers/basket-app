class ExtraOrdersController < ApplicationController

  def create
    @extra_order = ExtraOrder.where( order_id: session[:order_id],
                                     extra_id: params[:extra_order][:extra_id] ).first

    if @extra_order.present?
      @extra_order.increment(:quantity, by = 1).save!
    else
      @extra_order = ExtraOrder.new(extra_order_params)
      @extra_order.quantity = 1
      @extra_order.save!
    end
  end

  def update
    @extra_order = ExtraOrder.where( order_id: session[:order_id],
                                     extra_id: params[:extra_order][:extra_id] ).first
    if @extra_order.present? && @extra_order.quantity > 1
      @extra_order.decrement(:quantity, by = 1).save!
    end
  end


  def destroy
    @extra_order = ExtraOrder.where( order_id: session[:order_id],
                                     extra_id: params[:extra_order][:extra_id] ).first

    if @extra_order.present? && @extra_order.quantity == 1
      @extra_order.destroy

    else @extra_order.present? && @extra_order.quantity > 1
      @extra_order.decrement(:quantity, by = 1).save!
    end
  end

  private
  def extra_order_params
    params.require(:extra_order).permit(:order_id, :extra_id, :quantity)
  end
end

