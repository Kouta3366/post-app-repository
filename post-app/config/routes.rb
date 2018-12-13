Rails.application.routes.draw do
  get 'posts/new'
  get 'users/login_form'
  post "login" => "users#login"
  get "logout" => "users#logout"
  get 'home/top'
  get "signup" => "users#new"
  post "users/create" => "users#create"
  post "posts/create" => "posts#create"
end
