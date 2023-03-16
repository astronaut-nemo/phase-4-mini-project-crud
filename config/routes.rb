Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Required routes:
  #   GET /spices: return an array of all spices
  #   POST /spices: create a new spice
  #   PATCH /spices/:id: update an existing spice
  #   DELETE /spices/:id: delete an existing spice

  resources :spices, only: [:index]
end
