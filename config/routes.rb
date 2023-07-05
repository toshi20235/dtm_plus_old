Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  namespace :admin do
    get 'homes/top'
  end
  namespace :public do
    get 'posts/index'
    get 'posts/show'
    get 'albums/index'
    get 'albums/destroy'
    get 'favorites/create'
    get 'favorites/destroy'
    get 'relationships/create'
    get 'relationships/destroy'
    get 'relationships/followings'
    get 'relationships/followers'
    get 'musics/new'
    get 'musics/index'
    get 'musics/show'
    get 'musics/create'
    get 'musics/destroy'
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/withdraw'
    get 'homes/top'
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
end
