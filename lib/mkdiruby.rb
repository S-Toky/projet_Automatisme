


def create_folder
	Dir.mkdir("lib")
end

def create_file_gimfile
	gemfile = File.open("Gemfile", "a")
	gemfile.puts("'gem 'dotenv'")
	gemfile.puts("source 'https://rubygems.org'")
	gemfile.puts("ruby '2.5.1'")
	gemfile.puts("gem 'rubocop', '~> 0.57.2'")
	gemfile.puts("gem 'rspec'")
	gemfile.close
end 

def create_file_rspec
	system("rspec --init")
end

def create_file_env
	env = File.open(".env", "a")
	env.puts("TWITTER_CONSUMER_KEY=your code")
	env.puts("TWITTER_CONSUMER_SECRET=your code")
	env.puts("TWITTER_ACCESS_TOKEN=your code")
	env.puts("TWITTER_ACCESS_TOKEN_SECRET=your code")
	env.close
end

def create_file_readme
	readme = File.open("Redme.md", "a")
	readme.puts("ceci est un programme Ruby")
	readme.close	
end

def create_folder_finaly
	create_file_readme 
	create_file_rspec
	create_file_env 
	create_file_gimfile
end


#alias mkdiruby="ruby /home/ton/chemin/vers/mkdiruby.rb"
