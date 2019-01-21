Rails.application.routes.draw do
get "" => "rp_gs#home"
post "processGold" => "rp_gs#logic"
end
