NonProfitDonator::Application.routes.draw do
  resources :donations
  resources :charges
  root to: "welcome#index"
end
