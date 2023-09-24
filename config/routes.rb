Rails.application.routes.draw do
  root "finances#index"

  #get "/finances", to: "finances#index"
  #get "/finances/:id", to: "finances#show"
  resources :finances
end
