# config/initializers/cors.rb
origin = ENV.fetch("FRONTEND_ORIGIN", nil)

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins origin
    resource "*",
      headers: :any,
      methods: %i[get post put patch delete options head],
      max_age: 600
  end
end
