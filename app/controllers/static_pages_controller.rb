class StaticPagesController < ApplicationController
  def home
  @items = Item.all
end

  def sell 
  end

  def help
  end

  def about
  end

  def terms
  end

  def contact
  end
end
