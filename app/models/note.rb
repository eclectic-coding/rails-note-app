class Note < ApplicationRecord
  has_rich_text :body
  belongs_to :user

  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      flash[:success] = 'Post was created successfully'
      redirect_to @note
    else
      flash[:danger] = 'Note was note saved successfully'
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def note_params
    params.require(:note).permit(:title, :body)
  end
end

