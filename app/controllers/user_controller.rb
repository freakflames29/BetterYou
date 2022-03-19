class UserController < ApplicationController
  before_action :redirec_if_loggedin,except:[:edit,:update,:show]
  before_action :require_user ,only:[:edit,:update,:show]
  before_action :same_user ,only:[:edit]

  def show_name
    show=UserShowname.find_by(user:current_user).show_name
   @usershowname=UserShowname user:current_user,show_name: !show
   @usershowname.save
  end

  
  def index; end

  def show
    @user=User.find params[:id]
    @is_show_name=UserShowname.find_by user:@user
  end

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
    params.require(:user).permit(:email, :name, :username, :password, :password_confirmation,:gender)
  end


  def filter_params_for_edit
     params.require(:user).permit(:email, :name, :username, :password, :password_confirmation,:show_name)
  end

  def same_user
    @user=User.find params[:id]
    if !@user.eql?(current_user)
      flash[:notice]="You can't perform that action"
      redirect_to root_path
    end
  end
end
