class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
      @item = Item.find(params[:item_id])
    if current_user.id != @item.user_id  && @item.order.blank?
      @order_address = OrderAddress.new
    else
      redirect_to root_path  
    end  
  end
   
  def create
    @order_address = OrderAddress.new(order_params)
    @item = Item.find(params[:item_id])
    if @order_address.valid?
      pay_item
      @order_address.save
      redirect_to root_path
    else
      render :index
    end 
  end

    private

    def order_params
      params.require(:order_address).permit(:post_code, :prefecture_id, :city, :street_number, :building, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token])
    end

    def pay_item
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      Payjp::Charge.create(
        amount: @item.price,  
        card: order_params[:token],    
        currency: 'jpy'                 
      )
    end
end
