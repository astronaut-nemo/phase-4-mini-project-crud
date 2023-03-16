Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Required routes:
  #   GET /spices: return an array of all spices
  #   POST /spices: create a new spice
  #   PATCH /spices/:id: update an existing spice
  #   DELETE /spices/:id: delete an existing spice
  # Instead of using resource method, will use custom routes as we don't need all the RESTful routes
  get "/spices", to: "spices#index"
  post "/spices", to: "spices#create"
  patch "/spices/:id", to: "spices#update"
end
