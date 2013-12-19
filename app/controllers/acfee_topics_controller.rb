class AcfeeTopicsController < ApplicationController
  before_action :set_acfee_topic, only: [:show, :edit, :update, :destroy]

  # GET /acfee_topics
  # GET /acfee_topics.json
  def index
    @acfee_topics = AcfeeTopic.all
  end

  # GET /acfee_topics/1
  # GET /acfee_topics/1.json
  def show
  end

  # GET /acfee_topics/new
  def new
    @acfee_topic = AcfeeTopic.new
  end

  # GET /acfee_topics/1/edit
  def edit
  end

  # POST /acfee_topics
  # POST /acfee_topics.json
  def create
    @acfee_topic = AcfeeTopic.new(acfee_topic_params)

    respond_to do |format|
      if @acfee_topic.save
        format.html { redirect_to @acfee_topic, notice: 'Acfee topic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @acfee_topic }
      else
        format.html { render action: 'new' }
        format.json { render json: @acfee_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acfee_topics/1
  # PATCH/PUT /acfee_topics/1.json
  def update
    respond_to do |format|
      if @acfee_topic.update(acfee_topic_params)
        format.html { redirect_to @acfee_topic, notice: 'Acfee topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @acfee_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acfee_topics/1
  # DELETE /acfee_topics/1.json
  def destroy
    @acfee_topic.destroy
    respond_to do |format|
      format.html { redirect_to acfee_topics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acfee_topic
      @acfee_topic = AcfeeTopic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acfee_topic_params
      params.require(:acfee_topic).permit(:name, :content)
    end
end
