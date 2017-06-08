Mystatistics::Engine.routes.draw do
  resources :tasks do
    collection {post :import}
    collection {post :get_login}
  end
  root to: "tasks#index"
end
