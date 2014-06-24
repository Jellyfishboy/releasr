Releasr::Application.routes.draw do

  
    root to: 'home#index'
    
    resources :projects, only: :show do
        resources :releases, only: :show
    end

    devise_for :users, controllers: { sessions: "users/sessions" }

    %w( 404 422 500 ).each do |code|
        get code, :to => "errors#show", :code => code
    end

    namespace :admin do
        root to: 'projects#index'
        resources :projects, except: [:show, :index] do
            resources :releases, except: :show
        end
    end
end
