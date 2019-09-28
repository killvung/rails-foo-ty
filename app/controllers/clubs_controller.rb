class ClubsController < ApplicationController
  	def all
	end 	

	def one 
		
	end

	def readAll
		render json: Club.all.to_json 
	end

	def readOne
		render json: Club.find_by(name: "Club %d" % params[:id]).to_json
	end 
end
