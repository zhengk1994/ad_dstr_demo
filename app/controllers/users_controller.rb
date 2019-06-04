class UsersController < ApplicationController

#index GET#index
 def index
   @users = User.all
 end

 def show
   @user = User.find(params[:id])
 end
#new users GET#new
 def new
   @user = User.new
 end

#edit users GET#edit
 def edit
   @user = User.find(params[:id])
 end

#create users POST#create
 def create
 ##@user = User.create(params[:user]) #the hash of user attributes modify by 20190509
   @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end

 end


#edit user info PUT#update
 def update
   ##@user = User.find(params[:id])
 @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end

 end

#destroy user DELETE#destroy
 def destroy
  User.find(params[:id]).destroy
  redirect_to users_url
 end

 private
     # Use callbacks to share common setup or constraints between actions.
     def set_user
       @user = User.find(params[:id])
     end

     # Never trust parameters from the scary internet, only allow the white list through.
     def user_params
       params.require(:user).permit(:name, :email)
     end

end
