class SearchController < ApplicationController

	def index
   		@q = params[:q]
		@items    = Item.search(name_cont: @q).result(distinct: true)
		@booths = Booth.search(name_cont: @q).result(distinct: true)
		@users    = User.search(name_cont: @q).result(distinct: true)
	end
end 
