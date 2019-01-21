Rails.application.routes.draw do
  get "users" => "users#grabAll"
  get "users/new" => "users#new"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#showEdit"
  post "users" => "users#create"
  get "users/total/num" => "users#num_of_all"
  post "users/edit/:id" => "users#edit"
end
