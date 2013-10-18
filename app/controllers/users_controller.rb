class UsersController < ApplicationController
  before_filter :authenticate_user!
  include Authority::UserAbilities

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update_attributes(:name => params[:user][:name], :email => params[:user][:email])
  	redirect_to root_path
  end

end