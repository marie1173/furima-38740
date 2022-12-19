class ItemsController < ApplicationController
  def index
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

  private

  def item_params
    params.require(:item).permit(:image, :item_name,:item_text,:category_id,:condition_id,:fee_id,:prefecture_id,:day_id,:price).merge(user_id: current_user.id)
  end

end
