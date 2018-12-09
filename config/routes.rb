Rails.application.routes.draw do
  get 'tasks/update'
  get 'tasks/edit'

  devise_for :users
  root to: 'pages#home'
  resources :plants
  resources :tasks, only: [:index] do
   member do
     patch :mark_as_done
   end
  end
  resources :quizz_answers, only: [:create]
  resource :ranking, only: [:show, :index]
  resource :profile, only: [:show, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
