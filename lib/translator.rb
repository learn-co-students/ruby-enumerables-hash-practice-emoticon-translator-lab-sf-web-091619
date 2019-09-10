require "yaml"
library = YAML.load_file('emoticons.yml')
# require modules here

def load_library (emoticons)
Hash = { "get_meaning" => {}, "get_emoticon" => {} }
end

def get_japanese_emoticon (path, emoticon)
  emoticon_hash = load_library(path)
return emoticon
end

def get_english_meaning (path, emoticon)
  emoticon_hash = load_library(path)
return emoticon
end
