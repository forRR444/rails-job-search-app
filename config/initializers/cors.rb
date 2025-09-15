# config/initializers/cors.rb
origin = ENV.fetch("FRONTEND_ORIGIN", nil)

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins origin
    resource "*",
      headers: :any,                                   # ← 任意ヘッダOK（content-type等）
      methods: %i[get post put patch delete options head],  # ← OPTIONS 必須
      max_age: 600
  end
end
