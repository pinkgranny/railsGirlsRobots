Rails.application.routes.draw do
  get 'pages/info' => 'pages#info'

  root :to => redirect('/robots')
  get    '/robots'           => 'robots#index'

  get    '/robots/new'       => 'robots#new', as: 'new_robot'
  get    '/robots/:id/edit'  => 'robots#edit', as: 'edit_robot'
  get    '/robots/:id'       => 'robots#show', as: 'robot'

  post   '/robots'           => 'robots#create'
  patch  '/robots/:id'       => 'robots#update'
  put    '/robots/:id'       => 'robots#update'

  delete '/robots/:id'       => 'robots#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
