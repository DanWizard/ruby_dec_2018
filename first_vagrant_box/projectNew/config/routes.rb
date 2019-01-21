Rails.application.routes.draw do
  get 'sessions/register' => 'sessions#new'
  get 'sessions/login' => 'sessions#login'
  post 'sessions/register' => 'sessions#create'
  post 'sessions/login' => 'sessions#verify'
  get 'sessions/home' => 'sessions#home'
  get 'sessions/change' => 'sessions#change'
  post 'sessions/commit_change' => 'sessions#commit_change'
  post 'sessions/delete' => 'sessions#delete'
  post 'sessions/secret' => 'sessions#secret'
  post 'sessions/like/:id' => 'sessions#like'

  
end
