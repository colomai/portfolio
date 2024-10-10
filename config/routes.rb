Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'users/employees/top', to: 'users/employees#top'
  get 'users/admins/top', to: 'users/admins#top'
  root "static_pages#home"
end
