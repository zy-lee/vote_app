class VotePicsController < ApplicationController
  before_action :set_vote_pic, only: [:show]

  # GET /vote_pics
  # GET /vote_pics.json
  def index
    @vote_pics = VotePic.all
  end

  # GET /vote_pics/1
  # GET /vote_pics/1.json
  def show
		@vote_pic = VotePic.find(params[:id])
  end
	def new
		@vote_pic = VotePic.new
	end

	def upvote
		@vote_pic = VotePic.find(params[:id])
		@vote_pic.votes.create
		redirect_to(root_path)
	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vote_pic
      @vote_pic = VotePic.find(params[:id])
		end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vote_pic_params
      params.require(:vote_pic).permit(:src)
    end
end
