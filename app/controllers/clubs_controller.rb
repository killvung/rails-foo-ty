class ClubsController < ApplicationController
  	def all
  		@clubs = Club.all
	end 	

	def one 
		@club = Club.find_by(id: params[:id])
		@players = Player.where(club_id: params[:id])
		raise ActionController::RoutingError.new('Not Found') if @club.nil?
	end 
end
