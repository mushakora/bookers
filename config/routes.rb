Rails.application.routes.draw do
  get '/' => 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts/index' => 'posts#index'

  get 'posts/new' => 'posts#new'

  post 'posts' => 'posts#create'

  get 'posts/:id' => 'posts#show', as: 'post'

  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'

  patch 'posts/:id' => 'posts#update', as: 'update_post'

  delete 'posts/:id' => 'posts#destroy', as: 'destroy_post'

end
