class UsersController < ApplicationController
  
  def index
    render plain: "I'm in the index action!"
  end 
  
  def create
    debugger
    render json: params
  end 
  
  def show
    render json: params
  end
  
  def user_params
      params.require(:user).permit(:name, :email)
  end 
  
end