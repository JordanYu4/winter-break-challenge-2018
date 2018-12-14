Rails.application.routes.draw do
  root "static_pages#home"
  # get 'challenges', to: 'static_pages#challenges'
  get 'sharings', to: 'static_pages#sharings'
  get 'submit_post', to: 'static_pages#submit_post'
  # get 'stats', to: 'static_pages#stats'
  resources :comments, only: [:create]
  resources :comment
  resources :sg
  resources :evangelism
  resources :ser
  resources :eq

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
