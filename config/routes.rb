Rails.application.routes.draw do
  # resources :client_ips
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root 'client_ips#index'

   resources :welcome
end
