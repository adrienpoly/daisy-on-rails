source "https://rubygems.org"

ruby "3.3.4"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", github: "rails/rails", branch: "main"

# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "byebug"
  gem "debug", platforms: %i[mri windows]
  gem "standard", ">= 1.35.1"
  gem "erb_lint"

  gem "kamal"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem "hotwire-livereload"
  gem "letter_opener"
  gem "annotate"
  gem "i18n_generators"
  gem "i18n-tasks"
  gem "ruby-lsp"
  gem "ruby-lsp-rails"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "magic_test", git: "https://github.com/bullet-train-co/magic_test.git", branch: "main"
end

gem "authentication-zero", "~> 3.0"
# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]

gem "heroicon", "~> 1.0"

gem "view_component", "~> 3.7"

gem "dry-initializer-rails"

gem "dry-types", "~> 1.7"

# Avo admin
gem "avo", ">= 3.2"
gem "ransack", "~> 4.1"

gem "activerecord-enhancedsqlite3-adapter"
# gem "litestream"

# sitepress
gem "sitepress-rails", "~> 4.0"
gem "markdown-rails", "~> 2.1"
gem "rouge", "~> 4.2"

# analytics
gem "ahoy_matey"
gem "blazer"

gem "solid_errors"

gem "solid_cache"

gem "solid_queue", github: "rails/solid_queue", branch: "main"

gem "mission_control-jobs", "~> 0.1.1"
