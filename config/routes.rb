Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  # get '*path', to: 'welcome#index' #it will redirect all unknown routes to index in welcome
  resources :user,except:[:new]

  get 'signup',to:'user#new'
  post 'signup',to:'user#create'

  get 'login',to:'session#new'
  post 'login',to:'session#create'
  delete 'logout',to:'session#destroy'

  get 'todayschallenge',to:'welcome#today_task'
end
