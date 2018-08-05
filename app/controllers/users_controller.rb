class UsersController < ApplicationController
 before_action :index

  def index

  @users = User.all
  @application_title = "Users Page"
  @x = " This is instance variable x";
  $y = "This is global variable Y";

 end

def new

  @user = User.new
  @seo_keywords ="SUdarsanaForm"

end

 def create



        @user = User.new(user_params)

  if  @user.save

   flash[:notice] = "user created sucesfully";

      redirect_to users_path

   else

     render new_user_path

    end

 end

  def show

  end

  def edit
    @usereditdata=User.find(params[:id])
  end


   def destroy



       @user=User.find(params[:id])

       @user.delete


   flash[:notice] = "user user destory sucesfully";




   end


  def update



    @user =  User.find(params[:id])



if       @user.update(user_params)

flash[:notice] = "user updated sucesfully";

  redirect_to  users_path

else


  render edit_user_path

end

  end






private

   def user_params

params.require(:user).permit!



   	end




end
