Releasr::Application.routes.draw do

    root to: 'home#index'
    resources :projects, only: :show do
        resources :releases, only: :show
    end
  

    namespace :admin do
        root to: 'projects#index'
        resources :projects, except: [:show, :index] do
            resources :releases, except: :show
        end
    end
end
