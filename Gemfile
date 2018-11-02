source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '2.5.3'
gem 'rails', '~> 5.2.1'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'mini_racer', platforms: :ruby
# gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 4.0'
gem 'bcrypt', '~> 3.1.7'
gem 'mini_magick', '~> 4.8'
gem 'bootsnap', '>= 1.1.0', require: false
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rufo'
  gem 'rubocop'
  gem 'pry-rails'
  gem 'i18n-debug'
  gem 'rails-erd' # 生成er图
  gem 'annotate' # 生成model的日志
  gem 'bullet'
  gem 'htmlbeautifier'
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'jquery-rails'
gem 'bootstrap', '~> 4.1.3'
gem 'rucaptcha'
gem 'has_secure_token' # 安全的token
gem 'uuid' # 生成uuid
gem 'friendly_id', '~> 5.2.0' # slug
gem "paranoia", "~> 2.2" # 假删
gem 'enumerize' # 枚举
gem 'rest-client'
gem 'seed-fu', '~> 2.3'
gem 'kaminari' # 翻译
gem 'jwt'
gem 'ffaker' # 假数据
gem 'chronic'
gem 'ancestry' # 树结构
gem 'by_star' # 按数据搜索
gem 'rack-cors' # 处理跨域
gem 'write_xlsx'