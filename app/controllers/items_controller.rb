class ItemsController < ApplicationController
	
	before_action :logged_in_user, only: [:edit, :update, :new, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]

	def index
  		@items = Item.all
	end

	def new
 		@item = Item.new
  	end

  def create
  @item = current_user.items.build(item_params)
    if @item.save
    flash[:success] = "Item successfully added to booth"
    redirect_to root_url
  else
    render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end 

  def update
  @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      flash[:success] = "item changes saved"
      redirect_to @item
    else
      render 'edit'
    end
  end


	def show
		@item = Item.find(params[:id])
    
   

	end

	private

  def item_params
    params.require(:item).permit(:name, :price, :description, :image, :image_two, :category_id,)
  end


  
  def correct_user
    @item = Item.find(params[:id])
    redirect_to(root_url) unless current_user == @item.user
  end
end


