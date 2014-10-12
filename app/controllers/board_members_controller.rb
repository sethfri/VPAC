class BoardMembersController < ApplicationController
  before_action :set_board_member, only: [:show, :edit, :update, :destroy]

  # GET /board_members
  # GET /board_members.json
  def index
    @board_members = ContentfulClient.instance.board_members
  end

  # GET /board_members/1
  # GET /board_members/1.json
  def show
  end

  # GET /board_members/new
  def new
    @board_member = BoardMember.new
  end

  # GET /board_members/1/edit
  def edit
  end

  # POST /board_members
  # POST /board_members.json
  def create
    @board_member = BoardMember.new(board_member_params)

    respond_to do |format|
      if @board_member.save
        format.html { redirect_to @board_member, notice: 'Board member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @board_member }
      else
        format.html { render action: 'new' }
        format.json { render json: @board_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /board_members/1
  # PATCH/PUT /board_members/1.json
  def update
    respond_to do |format|
      if @board_member.update(board_member_params)
        format.html { redirect_to @board_member, notice: 'Board member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @board_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board_members/1
  # DELETE /board_members/1.json
  def destroy
    @board_member.destroy
    respond_to do |format|
      format.html { redirect_to board_members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_member
      @board_member = BoardMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_member_params
      params.require(:board_member).permit(:name, :position, :bio, :photo_url, :email)
    end
end
