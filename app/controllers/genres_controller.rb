class GenresController < ProtectedController
  before_action :set_song, only:[:index, :destroy, :create]
  before_action :set_genre, only: [:show, :update, :destroy]
  # GET /genres
  def index
    @genres = @song.genres
    # @genres = current_user.songs.find(params[:song_id]).genres.all
    render json: @genres
  end

  # GET /genres/1
  def show
    render json: @genre
  end

  # POST /genres
  def create
    @genre = @song.genres.build(genre_params)

    if @genre.save
      render json: @genre, status: :created, location: @genre
    else
      render json: @genre.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /genres/1
  def update
    if @genre.update(genre_params)
      render json: @genre
    else
      render json: @genre.errors, status: :unprocessable_entity
    end
  end

  # DELETE /genres/1
  def destroy

    @genre.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_genre
    @genre = @song.genres.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def genre_params
    params.require(:genre).permit(:genre_name, :song_id)
  end

  def set_song
    # binding.pry
    @song = current_user.songs.find(genre_params['song_id'])
  end
end
