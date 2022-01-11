Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#index'


  resources :list, only: %i(new create edit update destroy) do
        # 今回はindexアクションを使っていないので、exceptオプションを使ってindexアクションを生成しないように指示
        resources :card, except: %i(index)
  end

end
