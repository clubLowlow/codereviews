Codereviews::Application.routes.draw do
  devise_for :users

  get "welcome/index"

  root :to => 'welcome#index'

  resources :code_review

end
