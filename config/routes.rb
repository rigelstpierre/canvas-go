CanvasGo::Application.routes.draw do
  resources :canvas

  root :to => 'canvas#new'

end
