source :rubygems

gem 'padrino'
gem 'sinatra', '1.1.0'
gem 'rake'
gem 'haml'
gem 'data_mapper'
gem 'shout-bot', :git => 'git://github.com/hsbt/shout-bot.git'
gem 'nokogiri'
gem 'bitly'

group :development, :test do
	gem 'dm-sqlite-adapter'
end

group :test do
	gem 'rspec'
	gem 'rr'
	gem 'rack-test', :require => 'rack/test'
	gem 'fuubar'
end

group :production do
	gem 'dm-postgres-adapter'
end
