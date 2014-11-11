 class BoothsController < ApplicationController
	 before_action :logged_in_user, only: [:edit, :update, :new]
   #before_action :correct_user, only: [:edit, :update]

def index
  @booths = Booth.all
end

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

def edit
  @booth = Booth.find(params[:id])
end

def update
  @booth = Booth.find(params[:id])
    if @booth.update_attributes(booth_params)
      flash[:success] = "booth name changed"
      redirect_to @booth
    else
      render 'edit'
    end
  end


 private

    def booth_params
      params.require(:booth).permit(:name)
    end

    #def correct_user
     # @user = User.find(params[:id])
      #redirect_to(root_url) unless current_user?(@user)
    #end
end



