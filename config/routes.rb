Afridevcmty::Application.routes.draw do
  get 'pages/home'

  get 'pages/contact'

  resources :users

  root to: "pages#home"
end
