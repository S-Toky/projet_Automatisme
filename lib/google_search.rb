require 'launchy'

def check_if_user_gave_input
  abort("please enter you search.") if ARGV.empty? #ask to the user to enter a text to cherch
end

def text_input
  g = ARGV
  g.join(' ') #changed array to string
end

def search
	check_if_user_gave_input
  Launchy.open("http://google.com/search?q=#{text_input}")
end

#alias search="ruby /home/ton/chemin/vers/google_searcher.rb"