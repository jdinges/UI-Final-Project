UIFinalProject::Application.routes.draw do  
  root :to => "users#splash"

  resources :users do
    resources :courses
    resources :links
    resources :accomplishments
    resources :papers
    resources :researches
    resources :educations
  end
  
  resources :user_sessions
  
  match 'login' => 'user_sessions#new', :as => :login
  match 'signup' => 'users#new', :as => :signup
  match 'logout' => 'user_sessions#destroy', :as => :logout
  match 'learn' => 'users#learn', :as => :learn
end
