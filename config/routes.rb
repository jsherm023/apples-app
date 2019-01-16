Rails.application.routes.draw do
  namespace :api do
    get '/apples' => 'apples#index'
    post '/apples' => 'apples#create'
    get '/apples/:id' => 'apples#show'
  end
end
