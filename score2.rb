require "json"
require "open-uri"

@user = JSON.parse(open("https://github.com/drewboardman.json").read)