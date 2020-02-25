Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show]

  #maps specified route to student#activate controller action
  #aliasing allows us to use activate_student_path when generating a link with link_to
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end
