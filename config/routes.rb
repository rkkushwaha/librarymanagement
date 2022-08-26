Rails.application.routes.draw do
  devise_for :admins
  get 'welcome/show'
  resources :issue_books
  # get '/issue_book/:id' => 'home#issue_book_request', as: "issue_book_request"
  get 'home/index'
  devise_for :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :admins
  root to: "welcome#show"
end
