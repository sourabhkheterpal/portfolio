Rails.application.routes.draw do
  resources :portfols, except: [:show]
  get 'portfol/:id', to: 'portfols#show', as: 'portfol_show'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

end
