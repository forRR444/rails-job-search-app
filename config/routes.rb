Rails.application.routes.draw do
  # Health check (そのまま残してOK)
  get "up" => "rails/health#show", as: :rails_health_check

  # === API v1 ここから ===
  namespace :api do
    namespace :v1 do
      resources :jobs, defaults: { format: :json }
    end
  end

end
