#!/opt/ruby/current/bin/ruby
# -*- coding: utf-8 -*-

$:.unshift File.join(File.dirname(__FILE__))

class Reducer
  def self.reduce(stdin)
    key = nil
    hits = 0
    category_social = 0
    category_politics = 0
    category_international = 0
    category_economics = 0
    category_electro = 0
    category_sports = 0
    category_entertainment = 0
    category_science = 0

    stdin.each_line {|line|
      newkey, tag, count = line.force_encoding("utf-8").strip.split
      if newkey.length > 0
        unless key == newkey
          puts "#{key}\t#{hits}\t#{category_social}\t#{category_politics}\t#{category_international}\t#{category_economics}\t#{category_electro}\t#{category_sports}\t#{category_entertainment}\t#{category_science}\n" unless key.nil?
          key = newkey
          hits = 0
          category_social = 0
          category_politics = 0
          category_international = 0
          category_economics = 0
          category_electro = 0
          category_sports = 0
          category_entertainment = 0
          category_science = 0
        end
        hits += count.to_i
        category_social += 1 if tag == "category.social"
        category_politics += 1 if tag == "category.politics"
        category_international += 1 if tag == "category.international"
        category_economics += 1 if tag == "category.economics"
        category_electro += 1 if tag == "category.electro"
        category_sports += 1 if tag == "category.sports"
        category_entertainment += 1 if tag == "category.entertainment"
        category_science += 1 if tag == "category.science"
      end
    }
    unless key.nil?
      puts "#{key}\t#{hits}\t#{category_social}\t#{category_politics}\t#{category_international}\t#{category_economics}\t#{category_electro}\t#{category_sports}\t#{category_entertainment}\t#{category_science}\n"
    end
  end
end

if __FILE__ == $0
  Reducer.reduce($stdin)
end
