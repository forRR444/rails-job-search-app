Rails.application.routes.draw do
  # Health check (サーバーがきちんと動いているか)
  get "up" => "rails/health#show", as: :rails_health_check

  # === API v1 ここから ===
  namespace :api do
    namespace :v1 do
      # 必要なアクションだけ許可
      resources :jobs, only: [:index, :show, :create], defaults: { format: :json }
    end
  end
end
