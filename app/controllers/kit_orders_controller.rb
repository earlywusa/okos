class KitOrdersController < ApplicationController
  def new
    @kitOrder = KitOrder.new
    # debugger
    @prac = Practitioner.find_by(prac_id: session[:prac_id])
    puts "practitioner info:  #{@prac.inspect}"
  end

  def kit_order_params
    params.require(:kit_order).permit(:prac_id, :comment, :location_id)

  end
end
