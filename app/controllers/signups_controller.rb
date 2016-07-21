class SignupsController < ApplicationController
  def new
    @new = Signup.new
  end
  def create
 		@new = Signup.new(signup_params)
    if @new.save
      redirect_to '/thanks'
    else
      redirect_to '/signups'
    end 
  end
  
  private
  def signup_params
    params.require(:signup).permit(:firstname, :email)
  end
end
