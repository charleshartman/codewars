# extract_domain.rb
# 5 kyu

def domain_name(url)
  url.prepend('http://') if !url.match?(/http/)
  domain = URI.parse(url).host.split('.')
  domain.shift if domain[0] == 'www'
  domain[0]
end

p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"
p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"

