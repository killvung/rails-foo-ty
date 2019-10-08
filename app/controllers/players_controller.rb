class PlayersController < ApplicationController
  def one
    @player = Player.find_by(id: params[:id])
    raise ActionController::RoutingError.new('Not Found') if @player.nil?
  end

  def show_image
    @player = Player.find_by(id: params[:id])
    if @player.avatar.nil?
      send_file 'app/assets/images/player.png'
    else
      send_data @player.avatar
    end
  end

  def show_image_small
    @player = Player.find_by(id: params[:id])
   if @player.avatar_small.nil?
     send_file 'app/assets/images/player.png'
   else
     send_data @player.avatar_small
   end
  end
end
