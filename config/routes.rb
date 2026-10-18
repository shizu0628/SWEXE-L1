Rails.application.routes.draw do
  get 'top/main'
  post 'top/login'
  root 'top#main'
  
  # 実験用のルーティングが残っている場合はそのままでOK
  get "application/L4"
end