Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # PostcController
  get'posts/new', to:'posts#new', as:'new_post'
  get'posts/index', to:'posts#index', as:'index_posts'
    # この行を追加
  post 'posts/new', to: 'posts#create', as: 'create_post'

  # TopicsController
  get'/topics/new', to:'topics#new' ,as:'new_topics'
  get'/topics/edit', to:'topics#edit', as:'edit_topics'
    #課題2-9
  post 'topics/new', to:'topics#create', as:'create_topics'
  post 'topics/edit', to:'topics#update', as:'update_topics'
end