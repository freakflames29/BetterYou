class UserController < ApplicationController
  before_action :redirec_if_loggedin,except:[:edit,:update,:show,:hide_name,:index]
  before_action :require_user ,only:[:edit,:update,:show,:hide_name]
  before_action :same_user ,only:[:edit,:hide_name]

  def show_name
    show=UserShowname.find_by(user:current_user).show_name
   @usershowname=UserShowname user:current_user,show_name: !show
   @usershowname.save
  end

  def hide_name
    username=UserShowname.find_by user:current_user
    username.toggle(:show_name)
    if username.save
      redirect_to user_path current_user
    end
  end
  
  def index
    @users=User.all
  end

  def show
    @user=User.find params[:id]
    @is_show_name=UserShowname.find_by user:@user
    @user_point=UserPoint.find_by user:@user
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
          UserShowname.create! user:@user
          UserPoint.create! user:@user
          flash[:ok] = 'You are successfully signed up'
          redirect_to login_path
        end
      else
        flash[:fail] = 'Password is too small'
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
     params.require(:user).permit(:email, :name, :username, :password, :password_confirmation)
  end

  def same_user
    @user=User.find params[:id]
    if !@user.eql?(current_user)
      flash[:fail]="You can't perform that action"
      redirect_to root_path
    end
  end
end
