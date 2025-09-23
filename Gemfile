source "https://rubygems.org"

ruby "3.4.5"
gem "rails", "~> 8.0.3"

# DBはPostgreSQL
gem "pg", "~> 1.1"

# Webサーバー
gem "puma", ">= 5.0"

# その他のGem
gem "bootsnap", require: false
gem "rack-cors", "~> 2.0", require: "rack/cors"
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "kamal", require: false
gem "thruster", require: false

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end
