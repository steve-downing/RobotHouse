Rails.application.routes.draw do
  get '/house/:id', to: 'house#show'
  get '/room/:id', to: 'room#show'
end
