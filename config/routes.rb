Rails.application.routes.draw do
  root :to => 'home#index'
  namespace :api, defaults: {format: 'json'} do
  namespace :v1, defaults: {format: 'json'} do 
     post 'convert_url' => 'test#convert_url'
   end
  end
end