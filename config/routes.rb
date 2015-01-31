Rails.application.routes.draw do
  resources :drinks
  devise_scope :user do
    root to: "application#home"
    match '/sign_up', to:"users/registrations#new", via: "get"
  end
  match '/new_drink', to:"drinks#new", via:"get"
  devise_for :users, controllers: { sessions: "users/sessions",
                                    registrations: "users/registrations" }
  match '/user_graphs', to:"graph#user_graphs", via:"get"
end
