class WelcomeController < ApplicationController
  def home

  end
  def about
  	
  end
  def packages
  	@message = Message.new
  end
  def contact
    @message = Message.new
  end
end
