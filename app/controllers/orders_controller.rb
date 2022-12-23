class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
      @item = Item.find(params[:item_id])
    if current_user.id != @item.user_id
      @order_address = OrderAddress.new
    else
      redirect_to root_path  
    end  
  end
   
  def create
    @order_address = OrderAddress.new(order_params)
    @item = Item.find(params[:item_id])
    if @order_address.valid?
      @order_address.save
      redirect_to root_path
    else
      render :index
    end 
  end

    private

    def order_params
      params.require(:order_address).permit(:post_code, :prefecture_id, :city, :street_number, :building, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id])
    end
end
