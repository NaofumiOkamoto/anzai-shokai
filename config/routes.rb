Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'tops#index'
  get '/', to: 'tops#index'

  get '/about', to: 'abouts#index', as: 'about'
  get '/service', to: 'services#index', as: 'service'
  get '/society', to: 'societies#index', as: 'society'
end
