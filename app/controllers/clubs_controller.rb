class ClubsController < ApplicationController
  	def all
  		@clubs = Club.all
	end 	

	def one 
		@club = Club.find_by(id: params[:id])
		@players = Player.where(club_id: params[:id])
		@players_by_level = @players.group_by{|player| player.level}
		raise ActionController::RoutingError.new('Not Found') if @club.nil?
	end 

	def show_image
		 @club = Club.find_by(id: params[:id])
		if @club.symbol.nil?
			send_file 'app/assets/images/default.png'
		else
			send_data @club.symbol
		end
	end
end
