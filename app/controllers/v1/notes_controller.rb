class V1::NotesController < ApplicationController
  def index
    if params[:app_id] 
      @note = Note.where(app_id: params[:app_id])
      render json: @note
    elsif params[:id]
      @note = Note.find_by(id: params[:id])
      render json: @note
    else 
      @notes = Note.all
      render json: @notes
    end
  end

    def show
      
      note = Note.where(app_id: params[:id])
      if note.nil?
        render json: ''
      else
        render json: note
      end
    end

    def create
      note = Note.new(note_params)
      if note.save
        render json: note, status: :created
      else
        render json: note.errors, status: :unprocessable_entity
      end
    end

    def update
      
      note = Note.find_by(id: params[:id])
      note.update(title: params[:title],body: params[:body])

    end

    def destroy
      note = Note.find_by(id:params[:id])
      if note.destroy
          render json: note
      end
    end

    private
      def note_params
        params.require(:note).permit(:user_id,:app_id, :body,:title)
    end
  end