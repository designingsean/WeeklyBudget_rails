Rails.application.routes.draw do
  get 'budget/index'
  post 'budget/create'

  root 'budget#index'
  scope '/', :controller => 'budget' do
  end
end
