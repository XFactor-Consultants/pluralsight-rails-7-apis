Rails.application.routes.draw do
  resources :wiki_posts
  namespace :wiki_posts do 
    get 'example'
  end 
  namespace :welcome do 
    get 'index'
    get 'about'
    get 'archive'
  end 

  namespace :api do 
    namespace :v1 do 
      resources :wiki_posts 
    end 
    namespace :v2 do 
      resources :wiki_posts
    end 
  end 
  
  get '/about', to: redirect('/welcome/about')
  root "welcome#index"
end