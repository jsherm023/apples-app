Rails.application.routes.draw do
  namespace :api do
    get '/apples' => 'apples#index'
    post '/apples' => 'apples#create'
    get '/apples/:id' => 'apples#show'
    patch '/apples/:id' => 'apples#update'
    delete '/apples/:id' => 'apples#destroy'
  end
end
