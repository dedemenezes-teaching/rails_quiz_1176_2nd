class SongsController < ApplicationController

  # READ ALL
  def index
    @songs = Song.all
  end

  # READ ONE
  def show
    @song = Song.find(params[:id])
  end

  def new
    # use this action to render the form!
    @song = Song.new
  end

  def create
    raise
    @song = Song.new(song_params)
    if @song.save
      redirect_to song_path(@song)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def search
    # raise
    # params => {"query"=>"thriller"}
    # @songs = Song.where(title: params[:query])
    # SELECT * FROM songs WHERE title = ??????
    # raise

    @songs = Song.where(title: params[:name])
  end

  private

  def song_params
    params.require(:song).permit(:title, :category, :year)
  end
end
