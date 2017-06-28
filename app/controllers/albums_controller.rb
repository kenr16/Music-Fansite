class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    if params[:filter] === "mostRecent"
      @albums = Album.most_recent
    end
    if params[:filter] === "alphabetical"
      @albums = Album.alphabetical
    end
    render :index
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def new
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to albums_path
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  def update
    @album= Album.find(params[:id])
    if @album.update(album_params)
      redirect_to albums_path
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end



  private
  def album_params
    params.require(:album).permit(:name, :artist, :genre, :image)
  end

end
