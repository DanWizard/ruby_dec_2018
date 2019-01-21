Rails.application.routes.draw do
get "" => "surveys#create"
post "" => "surveys#actuallyCreate"
get "results" => "surveys#show"
end
