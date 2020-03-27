class V1::UpdatesController < ApplicationController
    def index
      if params[:id] 
        @update = Update.where(app_id: params[:id])
        render json: @update
      else 
        @updates = Update.all
        render json: @updates
      end
    end
  
      def show
        
        update = Update.where(app_id: params[:id])
        if update.nil?
          render json: ''
        else
          render json: update
        end
      end
  
      def create
        update = Update.new(update_params)
        if update.save
          render json: update, status: :created
        else
          render json: update.errors, status: :unprocessable_entity
        end
      end
  
      private
        def update_params
          params.require(:update).permit(:app_id, :body)
      end
  end