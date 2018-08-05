Rails.application.routes.draw do
#  get 'students/index'

#  get 'students/show'

#  get 'students/new'

#  get 'students/edit'

#  get 'users/new'

#  get 'users/index'

#  get 'users/show'

#  get 'users/edit'

#  get 'users/chakri'

  resources :users
  resources :students

  root to: 'users#index'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
