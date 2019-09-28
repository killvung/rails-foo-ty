Rails.application.routes.draw do
  get 'clubs/' => 'clubs#all'
  get 'clubs/:id' => 'clubs#one'
  get 'api/clubs' => 'clubs#readAll'
  get 'api/clubs/:id' => 'clubs#readOne'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
