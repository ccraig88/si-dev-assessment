Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/home'
  post 'sms', to: 'pages#sms'
  get 'pages/sms'
end
