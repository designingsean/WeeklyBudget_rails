Rails.application.routes.draw do
  get 'budget/index'
  post 'budget/create'

  root 'budget#index'
  scope '/', :controller => 'budget' do
    match '/create', via: [:post], :controller => 'budget', :action => 'create'
  end
end
