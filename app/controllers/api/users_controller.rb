class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end


  def create
    @user = User.create(params)
  end

end
