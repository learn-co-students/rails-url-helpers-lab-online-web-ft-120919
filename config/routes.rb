Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # A user should be able to go to /students/:id/activate to toggle their active attribute between true and false. 
  # (This is just the activate route, and not a actual view.)
  resources :students, only: [:index, :show]
  get "/students/:id/activate", to: "students#activate_student", as: 'activate_student'

end


