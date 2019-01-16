Rails.application.routes.draw do
  namespace :api do
    get '/apples' => 'apples#index'
    post '/apples' => 'apples#create'
  end
end
