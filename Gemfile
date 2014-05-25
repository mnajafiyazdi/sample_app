source 'https://rubygems.org'

ruby '2.1.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails','4.1.1'
gem 'pg', '~> 0.17.1'

group :development, :test do
# Use sqlite3 as the database for Active Record
#	gem 'sqlite3'
	gem 'rspec-rails'
	gem 'guard-rspec'
	gem 'spork-rails'
	gem 'guard-spork'
	gem 'childprocess'
end

group :test do
	gem 'selenium-webdriver'
	gem 'capybara'
	# Uncomment this line on OS X.
	# gem 'growl', '1.0.3'

	# Uncomment these lines on Linux.
	gem 'libnotify', '0.8.0'

	# Uncomment these lines on Windows.
	# gem 'rb-notifu', '0.0.4'
	# gem 'wdm', '0.1.0'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development


group :doc do
	gem 'sdoc', require: false
end

group :production do
	gem 'rails_12factor'
end

