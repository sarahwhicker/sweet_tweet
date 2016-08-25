Rails.application.routes.draw do
  get 'likes/create'

  get 'profiles/:id' => 'profiles#show', as: :profile

  get 'profiles' => 'profiles#index'

  get 'profiles/index'

  get 'profiles/show'

  get 'tweets/index'

  get 'tweets/show'

  get 'tweets/edit'

  get 'tweets/new'

  get 'tweets/_form'

  resources :relationships

  resources :tweets do
    resources :likes
  end

  devise_for :users

  root 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
