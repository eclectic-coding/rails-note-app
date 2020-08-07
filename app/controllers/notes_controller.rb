class NotesController < ApplicationController
  before_action :set_note, only: %i[show edit update destroy]

  def index
    @notes = Note.where(user_id: current_user)
  end

  def show
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def create
    @note = Note.new(note_params)
    @note.user = current_user
    if @note.save
      flash[:success] = 'New note created'
      redirect_to notes_path
    else
      flash[:danger] = 'Your note was note created'
      render 'new'
    end
  end

  def update
    if @note.update(note_params)
      flash[:success] = 'Note was successfully updated.'
      redirect_to @note
    else
      flash[:danger] = 'Your note was successfully updated'
      render 'new'
    end
  end

  def destroy
    @note.destroy
    flash[:success] = 'Your note was deleted'
    redirect_to notes_path
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :body)
  end
end
