source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

# gem "bcrypt", "~> 3.1.7"
gem "bootsnap", require: false
gem 'dotenv-rails', '~> 2.1', '>= 2.1.1'
gem "rack-cors"
gem "rails", "~> 7.0.3"
gem "redis", "~> 4.0"
gem "puma", "~> 5.0"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "spring"
end

