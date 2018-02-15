Rails.application.routes.draw do
  root to: redirect("authors/new")
  resources :authors, only: ['new', 'create'] do
    collection do
      get 'step1'
      post 'step2'
      post 'step3'
    end
  end
end
