class HomeController < ApplicationController
  def index
    @users = User.all
    @tickets = Ticket.all
  end
end
