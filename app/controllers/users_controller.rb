class UsersController < ApplicationController
  def new
  end

private

  def user_parameters
    params.require(:user).permit(:name, :email)
  end

end  
