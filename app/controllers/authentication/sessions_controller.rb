class Authentication::SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by("user_email = :login OR user_name = :login", { login: params[:login] })

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to index_path, notice: "welcome"
    else
      render :new, alert: "error"
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: "Has cerrado sesión"
  end
end
