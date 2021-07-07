# require modules here
require 'yaml'

def load_library(file_path='emoticons.yml')
  # code goes here
  library = YAML.load_file(file_path)
  results = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emoticons|
    results["get_meaning"][emoticons[1]] = meaning
    results["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  results
end


def get_japanese_emoticon(file_path, eng)
  # code goes here
  library = load_library(file_path)
    if library["get_emoticon"].include?(eng)
      library["get_emoticon"][eng]
    else
      "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, jap)
  # code goes here
  library = load_library(file_path)
    if library["get_meaning"].include?(jap)
      library["get_meaning"][jap]
    else
      "Sorry, that emoticon was not found"
  end
end
