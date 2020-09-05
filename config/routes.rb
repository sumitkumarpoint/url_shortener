Rails.application.routes.draw do
  root 'urls#new'
  resource :urls,only: [:new,:create]
  get '/stats'=>'urls#index'
  get '/:short_url'=>'urls#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
