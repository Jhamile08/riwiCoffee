class Authentication::UsersController < ApplicationController
   def new
    @user = User.new
  end
  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to index_path, notice: "Registro exitoso"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def send_request_email
    link_type = params[:link_type]
    UserMailer.send_email(link_type).deliver_now
    flash[:notice] = "Correo enviado con éxito."
    redirect_to index_path
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :user_email, :password)
  end
end
