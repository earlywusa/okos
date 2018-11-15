class KitOrdersController < ApplicationController
  def new
    @kitOrder = KitOrder.new
  end

  def kit_order_params
    params.require(:kit_order).permit(:prac_id, :comment, :location_id)

  end
end
