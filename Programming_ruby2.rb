#Word frequency using Hashes and Arrays

def words_from_hashes(string)
  string.downcase.scan(/[\w']+/)
end
p words_from_hashes("But I don'nt inhale, he said (emphatically)")
#Produces ["but", "i", "don'nt", "inhale", "he", "said", "emphatically"]
#because downcase method and scan method returns array of subsrtings with the formate provided in the methos

def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  counts
end
p count_frequency(["parky", "cat", "dog", "light"])

# IMPLEMENTING ITERATORS
def three_times
  yield
  yield
  yield
end
three_times{puts "hello"}

#you  can find the last value of the yeild like this

class Array
  def find
    for i in 0...size
      value = self[i]
      return value if yield(value)
    end
    return nil
  end
end
p [1, 3, 5, 7, 9].find { |v| v*v > 30 }
# Good example of find method in ruby

[1, 3, 5, 7, 9].each { |v| puts v }
#Good example of each method without conditions

p [1, 3, 5, 7, 9].inject { |sum, element| sum+element } # => 25
p [1, 3, 5, 7, 9].inject(:+)  # => 25 (same result)
