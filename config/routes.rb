Rails.application.routes.draw do
  resources :films
  get 'users/new'

  get 'users/index'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
