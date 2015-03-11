class SongsController < ApplicationController
	before_action :lookup_task, except: [:index, :create, :destroy, :edit]
	def index
		@songs = Song.all
	end
	
	def show
	end

	def new
		@song = Song.new
	end		
		

	private

	def lookup_task
    	@song = Song.find(params[:song_id])
  	end
end
