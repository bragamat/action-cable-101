class HomeController < ApplicationController
  def index
    @messages = Message.all
    @messages
  end
  
end
