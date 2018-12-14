Rails.application.routes.draw do
  root "static_pages#home"
  get 'sharings', to: 'static_pages#sharings'
  get 'submit_post', to: 'static_pages#submit_post'
  resources :posts, only: [:create]
  resources :posts

end
