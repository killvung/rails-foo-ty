Rails.application.routes.draw do
  get 'clubs/' => 'clubs#all'
  get 'clubs/:id' => 'clubs#one'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
