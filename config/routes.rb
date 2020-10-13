Rails.application.routes.draw do

  root to: "contacts#index"

  controller :contacts do
    get "/contatos/novo", action: :new, as: :new_contacts
    post "/contatos", action: :create, as: :contacts
  end

  namespace :api, defaults: { format: :json} do
    resources :contacts, only: [:index, :show], path: "contatos"
  end
end
