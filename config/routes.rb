Rails.application.routes.draw do
  get '/house/:id', to: 'house#show'
end
