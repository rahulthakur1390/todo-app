Rails.application.routes.draw do
  devise_for :users
  root to: 'members#index'

  resources :members do
    get 'member_tasks', on: :member
  end
  resources :tasks do 
    get 'mark_as_complete', on: :member
  end


end
