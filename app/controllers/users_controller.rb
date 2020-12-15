class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.all(param[:id])
  end

  def new
    @users = User.new
  end

  def create
    @users = User.new(user_params)
    if @users.save
      flash[:notice] = 'User created!'
      redirect_to root_path
    else
      flash[:error] = "Failed to create user!"
      render :new
    end
  end

  def edit
    @users = User.find(params[:id])
  end

  def update
    @users = User.find(params[:id])
    if @users.update_attribute(user_params)
      flash[:nntise] = "User updater"
      redirect_to root_pach
    else
      flash[:error] = "User don`t update`"
      render :edit
    end
  end

  def destroy
    @users = User.find(params[:id])
    if @user.delete
      flash[:notice] = "User deleted"
      redirect_to root_pach
    else
      flash[:error] = "User don`t delete"
      render :destroy
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end