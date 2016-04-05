class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:user])
  end
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You signed up successfully."
      flash[:color] = "valid"
    else
      flash[:notice] = "Sign up form is invalid."
      flash[:color] = "invalid"
    end
    render "new"
  end
  
  def update
    @user = User.find(params[:user])
  end
  
  def destroy
    @user = User.find(params[:user])
  end
  
  private
  
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
