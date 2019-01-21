Rails.application.routes.draw do
  get "hello"  => "users#hello"
  get "say/:word"  => "users#hello2"
  get "say/hello/micheal"  => "users#helloJoe"
  get "time" => "users#times"
  get "time/reset" => "users#reset"
end
