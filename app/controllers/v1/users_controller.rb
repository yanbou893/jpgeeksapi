class V1::UsersController < ApplicationController
  def index
    if params[:uid] 
      @user = User.find_by(uid: params[:uid])
      render json: @user
    elsif params[:id]
      @user = User.find_by(id: params[:id])
      render json: @user
    else 
      @users = User.all
      render json: @users
    end
  end

    def show
      
      current_user = User.find(uid: params[:id])
      if current_user.nil?
        render json: ''
      else
        render json: current_user
      end
    end

    def create
      user = User.new(user_params)
      if user.save
        render json: user, status: :created
      else
        render json: user.errors, status: :unprocessable_entity
      end
    end
  
    def update
    
      user = User.find_by(id: params[:id])
      user.update(name:params[:displayName],photo:params[:photoURL],intro:params[:intro])

    end

    def destroy
      user = User.find_by(uid:params[:id])
      if user.destroy
          render json: user
      end
    end


    private
      def user_params
        params.require(:user).permit(:email, :uid, :displayName, :photoURL,:intro)
    end
end