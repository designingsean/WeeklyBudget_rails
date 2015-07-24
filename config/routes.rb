Rails.application.routes.draw do
  get 'budget/index'

  root 'budget#index'
end
