Rails.application.routes.draw do
  constraints subdomain: 'api' do
    namespace :v1 do
      resources :users
      resources :todo_items
    end
  end
end
