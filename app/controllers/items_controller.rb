class ItemsController < ApplicationController
	
	
	def index
  		@items = Item.all
	end

	def new
 		@item = Item.new
  	end

  	def create
    	@item = Item.new(item_params)
    	if @item.save
      	flash[:notice] = "Successfully created product."
      	redirect_to @item
    	else
      	render :action => 'new'
    	end
  	end


	def show
		@item = Item.find(params[:id])
	end

	private

    def item_params
      params.require(:item).permit(:name, :price, :description, :category_id)
    end
end


