#!/opt/ruby/current/bin/ruby
# -*- coding: utf-8 -*-

$:.unshift File.join(File.dirname(__FILE__))

class Reducer
  def reduce(stdin)
    key = nil
    hits = 0
    hash = {}
    hash["category_social"]        = 0
    hash["category_politics"]      = 0
    hash["category_international"] = 0
    hash["category_economics"]     = 0
    hash["category_electro"]       = 0
    hash["category_sports"]        = 0
    hash["category_entertainment"] = 0
    hash["category_science"]       = 0

    stdin.each_line {|line|
      newkey, tag, count = line.force_encoding("utf-8").strip.split
      if newkey.length > 0
        unless key == newkey
          reducer_output(key, hits, hash)
          key = newkey
          hits = 0
          hash = {}
          hash["category_social"]        = 0
          hash["category_politics"]      = 0
          hash["category_international"] = 0
          hash["category_economics"]     = 0
          hash["category_electro"]       = 0
          hash["category_sports"]        = 0
          hash["category_entertainment"] = 0
          hash["category_science"]       = 0
        end
        hits += count.to_i
        hash["category_social"]        += 1 if tag == "category.social"
        hash["category_politics"]      += 1 if tag == "category.politics"
        hash["category_international"] += 1 if tag == "category.international"
        hash["category_economics"]     += 1 if tag == "category.economics"
        hash["category_electro"]       += 1 if tag == "category.electro"
        hash["category_sports"]        += 1 if tag == "category.sports"
        hash["category_entertainment"] += 1 if tag == "category.entertainment"
        hash["category_science"]       += 1 if tag == "category.science"
      end
    }
    reducer_output(key, hits, hash)
  end

  private

  def reducer_output(key, hits, hash)
    puts "#{key}\t#{hits}\t#{hash["category_social"]}\t#{hash["category_politics"]}\t#{hash["category_international"]}\t#{hash["category_economics"]}\t#{hash["category_electro"]}\t#{hash["category_sports"]}\t#{hash["category_entertainment"]}\t#{hash["category_science"]}\n" unless key.nil?
  end
end

if __FILE__ == $0
  reducer = Reducer.new
  reducer.reduce($stdin)
end
