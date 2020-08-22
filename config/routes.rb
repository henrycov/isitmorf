Rails.application.routes.draw do
  get 'welcome/index'
  get 'people/manpage'
  get 'people/fempage'
  get 'welcome/about'

  resources :people do
    post :mvoteup, :fvoteup, on: :member
  end

  root 'welcome#index'
end
