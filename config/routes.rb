Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/students', to:'students#index'
  # get '/students/:id', to:'students#show', as: 'student'
  resources :students , only: [:index, :show]
  get '/students/:id/activate', to:'students#activate' , as: 'activate_student'
=begin
resources :posts, only: [:index, :show]
  Prefix Verb URI Pattern          Controller#Action
  posts GET  /posts(.:format)     posts#index
  post GET  /posts/:id(.:format) posts#show
   get '/posts', to:'posts#index'
   get '/posts/:id', to:'posts#show', as: 'post'
=end

end
