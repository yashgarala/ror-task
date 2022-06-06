class UserController < ApplicationController
        
      def index
            @user =User.all
      end
    
      def show
        @user =User.find(params[:id])
      end
    
      def new
        @abcd= User.new
        p @abcd.errors.full_messages
      end
    
      def create
        # @error_list=[]
        @abcd= User.create(user_params)
        if(@abcd.valid?)
          redirect_to action: 'index'
        else
          # @error_list=@abcd.errors.full_messages
          render 'new', status: :unprocessable_entity
        end
 
      end
      
    
      def edit
        @user= User.find(params[:id])
        p @user
      end
      
      def update
        @user= User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
      end
      def destroy
        @user= User.find(params[:id])
        @user.destroy
        redirect_to user_path
      end
      
    
      private
      def user_params
        # p ":name #{:name} :motot #{params.require(:user)}"
        params.require(:user).permit(:username,:password,:age,:birth_date,:email,:number)
      end
end
