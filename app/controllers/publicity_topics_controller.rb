class PublicityTopicsController < ApplicationController
  before_action :set_publicity_topic, only: [:show, :edit, :update, :destroy]

  # GET /publicity_topics
  # GET /publicity_topics.json
  def index
    @publicity_topics = PublicityTopic.all
  end

  # GET /publicity_topics/1
  # GET /publicity_topics/1.json
  def show
  end

  # GET /publicity_topics/new
  def new
    @publicity_topic = PublicityTopic.new
  end

  # GET /publicity_topics/1/edit
  def edit
  end

  # POST /publicity_topics
  # POST /publicity_topics.json
  def create
    @publicity_topic = PublicityTopic.new(publicity_topic_params)

    respond_to do |format|
      if @publicity_topic.save
        format.html { redirect_to @publicity_topic, notice: 'Publicity topic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @publicity_topic }
      else
        format.html { render action: 'new' }
        format.json { render json: @publicity_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicity_topics/1
  # PATCH/PUT /publicity_topics/1.json
  def update
    respond_to do |format|
      if @publicity_topic.update(publicity_topic_params)
        format.html { redirect_to @publicity_topic, notice: 'Publicity topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @publicity_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicity_topics/1
  # DELETE /publicity_topics/1.json
  def destroy
    @publicity_topic.destroy
    respond_to do |format|
      format.html { redirect_to publicity_topics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicity_topic
      @publicity_topic = PublicityTopic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publicity_topic_params
      params.require(:publicity_topic).permit(:name, :content)
    end
end
