class ItemsController < ApplicationController
  before_action :authenticate_user!,only: [:new, :create, :edit]
  before_action :set_item, only: [:edit, :show, :update]

  def index
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
     if current_user.id != @item.user_id
        redirect_to action: :index
     end
  end

  def update
    if @item.update(item_params)
       redirect_to item_path
    else
       render :edit
    end
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:image, :item_name,:item_text,:category_id,:condition_id,:fee_id,:prefecture_id,:scheduled_day_id,:price).merge(user_id: current_user.id)
  end

end
