class StaticController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def info
  	render :layout => false
  end
end
