Rails.application.routes.draw do

  root 'welcome#index'
  get '/bio' => 'bio#show', as: :link
  get '/welcome' => 'welcome#index', as: :home



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
