class UserController < ApplicationController
  before_action :redirec_if_loggedin
  
  def index; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(filter_params)
    if @user.valid?
      password_length = @user.password.size
      if password_length >= 6
        if @user.save
          flash[:danger] = 'You are successfully signed up'
          redirect_to login_path
        end
      else
        flash[:danger] = 'Password is too small'
        render :new
      end
    else
      render :new

    end
  end

  def update; end

  def destroy; end

  private

  def filter_params
    params.require(:user).permit(:email, :name, :username, :password, :password_confirmation)
  end
end
