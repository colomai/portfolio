Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'employees/top', to: 'employees#top'
  get 'admins/top', to: 'admins#top'
  root "static_pages#home"

  resources :shifts
end
