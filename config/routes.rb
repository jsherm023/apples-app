Rails.application.routes.draw do
  namespace :api do
    get '/apples' => 'apples#index'
  end
end
