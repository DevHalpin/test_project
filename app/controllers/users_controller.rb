class UsersController < ApplicationController

  def new
  end
  
  def create
    user = User.new(user_params)
    if user.save!
      session[:user_id] = user.id
      redirect_to '/', notice: 'User successfully created.'
    else
      redirect_to '/signup', alert: 'User creation failed.'
    end
  end
  

  def update
    user = User.find_by(email: user_params[:email])
      if user.update!(first_name: user_params[:first_name], last_name: user_params[:last_name], info: user_params[:info])
        redirect_to '/', notice: 'User successfully updated.'
      else
        redirect_to '/edit', alert: 'User update failed.'
      end
  end
  


  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :city, :email, :password, :password_confirmation, :info)
  end
  end