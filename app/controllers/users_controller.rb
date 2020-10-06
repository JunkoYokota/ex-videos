class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  # GET /resource/sign_up
  def new
    @user = User.new
  end

  # POST /resource
  def create
    @user = User.find(params[:id])
    User.save(configure_sign_up_params)
  end

  # GET /resource/edit
  def edit
    @user = User.find(params[:id])
  end

  # PUT /resource
  def update
    User.save(configure_account_update_params)
  end

  # DELETE /resource
  def destroy

  end

  def user_params
    params.require(:user).permit(:name, :avatar)
  end
end
