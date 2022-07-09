class UserController < ApplicationController
  def new
    @users = User.all
    @user = User.new
  end

  def create
    render plain: "Thanks"
  end
end
