Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # Vercel の本番URLを指定
    origins 'https://job-search-app-tau-khaki.vercel.app'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end

  # ローカル開発用 (vite dev server)
  allow do
    origins 'http://localhost:5173'
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
