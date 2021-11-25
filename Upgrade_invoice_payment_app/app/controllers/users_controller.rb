class UsersController < ApplicationController
 
 respond_to :html,:js,:json
 
 def index
   
 end
  
 def show
   @user = User.new
 end
  
 def edit
    
 end
  
 def create
   @user = User.new(user_params)
   if @user.save
    redirect_to new_user_session_url
   else 
    redirect_to new_user_registration_url
   end 
     
 end
  
 def update
    
 end
  
 def destroy
    
 end
 
 def home
   
 end
  
 private 
  
  def user_params
    params.require(:user).permit(:name,:email,:first_name,:last_name,:password,:password_confirmation,:encrypted_password)
  end

end
