NonProfitDonator::Application.routes.draw do
  resources :donations
  root to: "welcome#index"
end
