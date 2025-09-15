# config/initializers/cors.rb
allowed = ENV.fetch("ALLOWED_ORIGINS", "")

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins(*allowed.split(",").map(&:strip).reject(&:empty?))
    resource "*",
      headers: :any,
      methods: %i[get post put patch delete options head],
      expose: %w[Authorization],
      credentials: ENV["CORS_ALLOW_CREDENTIALS"] == "true"
  end
end
