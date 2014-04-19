class CommunityScoresController < ApplicationController
  before_action :set_community_score, only: [:show, :edit, :update, :destroy]

  # GET /community_scores
  # GET /community_scores.json
  def index
    @community_scores = CommunityScore.all
  end

  # GET /community_scores/1
  # GET /community_scores/1.json
  def show
  end

  # GET /community_scores/new
  def new
    @community_score = CommunityScore.new
  end

  # GET /community_scores/1/edit
  def edit
  end

  # POST /community_scores
  # POST /community_scores.json
  def create
    @community_score = CommunityScore.new(community_score_params)

    respond_to do |format|
      if @community_score.save
        format.html { redirect_to @community_score, notice: 'Community score was successfully created.' }
        format.json { render action: 'show', status: :created, location: @community_score }
      else
        format.html { render action: 'new' }
        format.json { render json: @community_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_scores/1
  # PATCH/PUT /community_scores/1.json
  def update
    respond_to do |format|
      if @community_score.update(community_score_params)
        format.html { redirect_to @community_score, notice: 'Community score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @community_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_scores/1
  # DELETE /community_scores/1.json
  def destroy
    @community_score.destroy
    respond_to do |format|
      format.html { redirect_to community_scores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_score
      @community_score = CommunityScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_score_params
      params.require(:community_score).permit(:school_year, :member_group_id, :number_score)
    end
end
