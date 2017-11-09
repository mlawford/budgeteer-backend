class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end


  def create
    @user = User.create(user_params)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

  end

  def delete
    @user = User.find(params[:id])
    @user.destroy()
  end

  private

    def user_params
       params.require(:user).permit(:id,:username, :password)
    end

end
