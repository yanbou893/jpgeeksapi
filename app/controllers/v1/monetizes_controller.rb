class V1::MonetizesController < ApplicationController
  def index
    if params[:app_id] 
      @monetize = Monetize.where(app_id: params[:app_id])
      render json: @monetize
    elsif params[:id]
      @monetize = Monetize.find_by(id: params[:id])
      render json: @monetize
    else 
      @monetizes = Monetize.all
      render json: @monetizes
    end
  end

    def show
      
      monetize = Monetize.where(app_id: params[:id]).order(date: "DESC")
      if monetize.nil?
        render json: ''
      else
        render json: monetize
      end
    end

    def create
      monetize = Monetize.new(monetize_params)
      if monetize.save
        render json: monetize, status: :created
      else
        render json: monetize.errors, status: :unprocessable_entity
      end
    end

    def destroy
      monetize = Monetize.find_by(id:params[:id])
      if monetize.destroy
          render json: monetize
      end
    end

    private
      def monetize_params
        params.require(:monetize).permit(:app_id, :date,:money)
    end
  end