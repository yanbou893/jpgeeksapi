class V1::AppsController < ApplicationController
    def index
      if params[:id] 
        @app = App.where(user_id: params[:id])
        render json: @app
      elsif params[:appid]
        @app = App.find_by(id: params[:appid])
        render json: @app
      else 
        @apps = App.all
        render json: @apps
      end
    end
  
      def show
        
        app = App.where(user_id: params[:id])
        if app.nil?
          render json: ''
        else
          render json: app
        end
      end
  
      def create
        app = App.new(app_params)
        if app.save
          render json: app, status: :created
        else
          render json: app.errors, status: :unprocessable_entity
        end
      end
  
      def update
      
        app = App.find_by(id: params[:id])
        if(params[:body])
          app.update(body:params[:body])
        else
          app.update(title:params[:title],semititle:params[:semititle],twitter:params[:twitter],url:params[:url],icon:params[:icon],bisinessmodel:params[:bisinessmodel],pratform:params[:pratform])
        end
  
      end
  
      def destroy
        app = App.find_by(id:params[:id])
        if app.destroy
            render json: app
        end
      end

      private
        def app_params
          params.require(:app).permit(:user_id, :title, :semititle,:url,:icon,:twitter,:bisinessmodel,:pratform,:body,:release)
      end
  end