Rails.application.routes.draw do



   # devise_for :users
  #   devise_for :users, controllers: { sessions: 'users/sessions' }
  #
  #  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }


   # devise_for :users, skip: :all
   # devise_for :users, :skip => :registration

  root to: "users#index"

   devise_for :users, :skip => [:registrations], controllers: {
     sessions: 'users/sessions'
   }

   # devise_scope :user do
   #   get "/sign_in" => "devise/sessions#new"
   #   # get "/sign_up" => "devise/registrations#new"
   # end

   resources :users
  # devise_scope :user do
  #   get 'sign_in', to: 'devise/sessions#new'
  # end


  # root to: 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
