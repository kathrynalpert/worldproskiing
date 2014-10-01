Rails.application.routes.draw do
  get 'about', to: "pages#about", as: :about
  get 'donate', to: "pages#donate", as: :donate
  root 'pages#home'
end
