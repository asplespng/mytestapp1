class Admin::UsersController < ApplicationController
  def index
#     @users = User.all
    @users = policy_scope(User)
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(permitted_attributes(@user))
      redirect_to [:admin, @user]
    else
      render 'edit'
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end
  rescue_from ActiveRecord::RecordNotFound do
    flash[:alert] = 'The object you tried to access does not exist'
    redirect_to action: :index
  end
end