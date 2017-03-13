class ExtraOrdersController < ApplicationController
  respond_to :html, :js
  skip_before_action :authenticate_user!, only: :create

  def create
    @extra_order = ExtraOrder.where( order_id: session[:order_id],
                                     extra_id: params[:extra_order][:extra_id] ).first

    @order = @extra_order.order if @extra_order.present?

    if extra_order_params[:action_cart] == "increase"
      if @extra_order.present?
        @extra_order.increment(:quantity, by = 1).save!
      else
        @extra_order = ExtraOrder.new(extra_order_params)
        @extra_order.quantity = 1
        @extra_order.save!

        @order = @extra_order.order
      end
    elsif extra_order_params[:action_cart] == "decrease"
      if @extra_order.present? && @extra_order.quantity > 1
        @extra_order.decrement(:quantity, by = 1).save!

      else @extra_order.present? && @extra_order.quantity == 1
        @extra_order.decrement(:quantity, by = 1)
        @extra_order.destroy
      end
    end

    # $("#qtd-badge-<%= @extra_order.extra.id %>").html("<%= j render 'extra_orders/badge_counter', extra_order: @extra_order %>");

    respond_to do |format|
      format.js {
                  render :template => "extra_orders/update.js.erb",
                  :layout => false
          }
    end
  end

  private
    def extra_order_params
      params.require(:extra_order).permit(:order_id, :extra_id, :quantity, :action_cart)
    end
end

  # def update
  #   @extra_order = ExtraOrder.where( order_id: session[:order_id],
  #                                    extra_id: params[:extra_order][:extra_id] ).first

  #   if @extra_order.present? && @extra_order.quantity > 1
  #     @extra_order.decrement(:quantity, by = 1).save!

  #   else @extra_order.present? && @extra_order.quantity == 1
  #     @extra_order.destroy
  #   end

  #   respond_to do |format|
  #     format.js {
  #                 render :template => "extra_orders/update.js.erb",
  #                 :layout => false
  #               }
  #   end
  # end

  # def destroy
  #   @extra_order = ExtraOrder.where( order_id: session[:order_id],
  #                                    extra_id: params[:extra_order][:extra_id] ).first

  #   if @extra_order.present? && @extra_order.quantity == 1
  #     @extra_order.destroy

  #   else @extra_order.present? && @extra_order.quantity > 1
  #     @extra_order.decrement(:quantity, by = 1).save!
  #   end
  # end



