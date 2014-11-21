class StaticPagesController < ApplicationController
  def home
  @items = Item.where.not(category_id: 1)
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
