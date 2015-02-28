Rails.application.routes.draw do
  root to: 'projects#index'
  resources :projects, only: [:index, :show, :edit, :update]

  get '/projects/:id/grade', to: 'projects#grade'
end
