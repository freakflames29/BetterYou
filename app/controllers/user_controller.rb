class UserController < ApplicationController
  before_action :redirec_if_loggedin,except:[:edit,:update]
  before_action :require_user ,only:[:edit,:update]
  
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

  def edit
      @user=User.find params[:id]

  end

  def update
    @user=User.find params[:id]
    if @user.update(filter_params_for_edit) 
      redirect_to root_path
    else
      render :edit
    end

  end

  def destroy; end

  private

  def filter_params
    params.require(:user).permit(:email, :name, :username, :password, :password_confirmation)
  end


  def filter_params_for_edit
     params.require(:user).permit(:email, :name, :username, :password, :password_confirmation,:show_name)
  end
  
end
