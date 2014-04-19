class AttendedShowsController < ApplicationController
  before_action :set_attended_show, only: [:show, :edit, :update, :destroy]

  # GET /attended_shows
  # GET /attended_shows.json
  def index
    @attended_shows = AttendedShow.all
  end

  # GET /attended_shows/1
  # GET /attended_shows/1.json
  def show
  end

  # GET /attended_shows/new
  def new
    @attended_show = AttendedShow.new
  end

  # GET /attended_shows/1/edit
  def edit
  end

  # POST /attended_shows
  # POST /attended_shows.json
  def create
    @attended_show = AttendedShow.new(attended_show_params)

    respond_to do |format|
      if @attended_show.save
        format.html { redirect_to @attended_show, notice: 'Attended show was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attended_show }
      else
        format.html { render action: 'new' }
        format.json { render json: @attended_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attended_shows/1
  # PATCH/PUT /attended_shows/1.json
  def update
    respond_to do |format|
      if @attended_show.update(attended_show_params)
        format.html { redirect_to @attended_show, notice: 'Attended show was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attended_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attended_shows/1
  # DELETE /attended_shows/1.json
  def destroy
    @attended_show.destroy
    respond_to do |format|
      format.html { redirect_to attended_shows_url }
      format.json { head :no_content }
    end
  end

  def import
    AttendedShow.import(params[:title], params[:host_org], params[:file])
    redirect_to members_path, notice: 'Show imported.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attended_show
      @attended_show = AttendedShow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attended_show_params
      params.require(:attended_show).permit(:title, :school_year, :host_org)
    end
end
