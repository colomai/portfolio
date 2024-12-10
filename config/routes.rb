Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'employees/top', to: 'employees#top'
  get 'admins/top', to: 'admins#top'
  get 'employees/:id', to: 'employees#show', as: :employee
  get 'employees/:id/edit', to: 'employees#edit', as: :edit_employee
  put 'employees/:id', to: 'employees#update'
  resources :shifts
end
