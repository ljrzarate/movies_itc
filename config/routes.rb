Rails.application.routes.draw do
  scope :api, defaults: {format: :json}, module: :api do
    devise_for :registered_users, controllers: { sessions: :sessions }, path_names: { sign_in: :login }
    resource :registered_user, only: [:show, :update]
    resources :movies, only: [:index, :show, :create, :update, :destroy]
    resources :persons, only: [:index, :show, :create, :update, :destroy]
  end  
end
