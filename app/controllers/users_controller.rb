class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.includes(:profile).order('profiles.last_name')
  end

  def show
    @user = User.find(params[:id])
  end

end