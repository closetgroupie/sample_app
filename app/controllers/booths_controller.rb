class BoothsController < ApplicationController
	before_action :logged_in_user

def new
 @booth = Booth.new
  end

 def create
  @booth = current_user.build_booth(booth_params)
  if @booth.save
    flash[:success] = "Congrats on opening your booth!"
    redirect_to root_url
  else
    render 'new'
  end
end

  def show
    @booth = Booth.find(params[:id])
  end


 

  private

    def booth_params
      params.require(:booth).permit(:name)
    end
end



