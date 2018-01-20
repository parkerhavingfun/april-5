Rails.application.routes.draw do



    root 'points#index'
    resources :points, only: [:index, :new, :create, :show] do
        member do
            post 'create-clap', to: "claps#create", as: :create_clap
        end
    end
    
    resources :posts
    get 'try-me', to: "statics#try_me", as: :try_me
    
    
    
end
