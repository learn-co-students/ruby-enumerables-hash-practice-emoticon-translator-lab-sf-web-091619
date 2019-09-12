require 'yaml'

def load_library(path)
  filehash = YAML.load_file(path)
  returnhash = {
    get_meaning: {},
    get_emoticon: {},
  }
  filehash.map { |key, values|
    if !returnhash[:get_meaning].has_key?(values[1])
      returnhash[:get_meaning][values[1]] = key
    end
    if !returnhash[:get_emoticon].has_key?(values[0])
      returnhash[:get_emoticon][values[0]] = values[1]
    end
  }
  returnhash
end

def get_japanese_emoticon(path, emoticon)
  testing = load_library(path)
  apology = "Sorry, that emoticon was not found"
  testing[:get_emoticon].each { |english, japan|
    if emoticon == english
      return japan 
    end
  }
  apology
end

def get_english_meaning(path, emoticon)
  testing = load_library(path)
  apology = "Sorry, that emoticon was not found"
  testing[:get_meaning].each { |emo, meaning| 
    return meaning if emoticon == emo 
  }
  apology
end