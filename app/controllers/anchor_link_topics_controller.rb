class AnchorLinkTopicsController < ApplicationController
  before_action :set_anchor_link_topic, only: [:show, :edit, :update, :destroy]

  # GET /anchor_link_topics
  # GET /anchor_link_topics.json
  def index
    @anchor_link_topics = AnchorLinkTopic.all
  end

  # GET /anchor_link_topics/1
  # GET /anchor_link_topics/1.json
  def show
  end

  # GET /anchor_link_topics/new
  def new
    @anchor_link_topic = AnchorLinkTopic.new
  end

  # GET /anchor_link_topics/1/edit
  def edit
  end

  # POST /anchor_link_topics
  # POST /anchor_link_topics.json
  def create
    @anchor_link_topic = AnchorLinkTopic.new(anchor_link_topic_params)

    respond_to do |format|
      if @anchor_link_topic.save
        format.html { redirect_to @anchor_link_topic, notice: 'Anchor link topic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @anchor_link_topic }
      else
        format.html { render action: 'new' }
        format.json { render json: @anchor_link_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anchor_link_topics/1
  # PATCH/PUT /anchor_link_topics/1.json
  def update
    respond_to do |format|
      if @anchor_link_topic.update(anchor_link_topic_params)
        format.html { redirect_to @anchor_link_topic, notice: 'Anchor link topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @anchor_link_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anchor_link_topics/1
  # DELETE /anchor_link_topics/1.json
  def destroy
    @anchor_link_topic.destroy
    respond_to do |format|
      format.html { redirect_to anchor_link_topics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anchor_link_topic
      @anchor_link_topic = AnchorLinkTopic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anchor_link_topic_params
      params.require(:anchor_link_topic).permit(:name, :content)
    end
end
