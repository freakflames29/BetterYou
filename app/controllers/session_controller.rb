class SessionController < ApplicationController
  before_action :redirec_if_loggedin ,except:[:destroy]
  def new
  end

  def create
      @user=User.find_by username:params[:session][:username]

      if @user && @user.authenticate(params[:session][:password])
        flash[:ok]='You are logged in!'
        redirect_to @user
        session[:user_id]=@user.id

      else
        flash[:fail]='Wrong crendentials!'
        render :new
      end
  end
  def destroy
    flash[:notice] = "You are logged out!"
    session[:user_id]=nil
    redirect_to root_path
  end
end
