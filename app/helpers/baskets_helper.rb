module BasketsHelper

  def session_extra_order(extra)
    extra.extra_orders.find_by(order_id: session[:order_id])
  end

  def initial_quantity(extra)
    extra_order = extra.extra_orders.find_by(order_id: session[:order_id])

    if extra_order
      extra_order.quantity
    else
      0
    end
  end

  def sum_extras
    sum = 0
    @order.extra_orders.each do |extra_order|
      sum += extra_order.quantity * extra_order.extra.price
    end
    sum
  end
end
