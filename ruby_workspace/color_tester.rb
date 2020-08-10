def prompt(msg)
  puts "\e[36m#{msg}\e[0m"
end

prompt("testing color testing")

def prompt_green(msg)
  puts "\e[32m#{msg}\e[0m"
end

prompt_green("Welcome to 'Twenty-One' aka 'Blackjack'")
