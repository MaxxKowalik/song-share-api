class SongsController < ProtectedController
  before_action :set_song, only: [:show, :update, :destroy]

  # GET /songs
  def index
    # @songs = Song.all

    render json: current_user.songs.all
  end

  # GET /songs/1
  def show
    render json: @song
  end

  # POST /songs
  def create
    @song = current_user.songs.build(song_params)

    if @song.save
      render json: @song, status: :created, location: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /songs/1
  def update
    if @song.update(song_params)
      render json: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /songs/1
  def destroy
    @song.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = current_user.songs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def song_params
      params.require(:song).permit(:name, :artist, :album, :rating, :user_id)
    end
end
