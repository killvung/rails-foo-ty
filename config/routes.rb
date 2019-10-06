Rails.application.routes.draw do
  get '/' => 'splash#index'

  get 'clubs/' => 'clubs#all'
  get 'clubs/:id' => 'clubs#one'
  get 'clubs/:id/symbol' => 'clubs#show_image'

  get 'players/all' => 'players#all'
  get 'players/one/:id' => 'players#one'
  get 'players/one/symbol/small' => 'players#show_image_small'
  get 'players/one/symbol' => 'players#show_image'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
