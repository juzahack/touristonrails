class StaticPagesController < ApplicationController
  def home
  	@path=Path.all 
  end

  def help
  end

  def whoarewe
  end
    
  def sponsor
  end    
end
