require 'byebug'

def first_anagram?(str1, str2)
  all_possible = str1.chars.permutation.to_a.map {|el| el.join}
  return true if all_possible.include?(str2)
  false
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")

def second_anagramm?(str1, str2)
  chars1 = str1.chars
  chars11 = chars1.dup
  chars2 = str2.chars

  until chars11.empty?
    el = chars11.pop
    if chars2.include?(el)
      chars1.delete_at(chars1.index(el))
      chars2.delete_at(chars2.index(el))
    end
  end

  return true if chars1.empty? && chars2.empty?
  false
end
#
# p second_anagramm?("gizmo", "sally")    #=> false
# p second_anagramm?("elvis", "lives")    #=> true

def third_anagram?(str1, str2)
  return true if str1.chars.sort == str2.chars.sort
  false
end



def fourth_anagram?(str1, str2)
  one = Hash.new(0)
  two = Hash.new(0)

  str1.chars.each {|ch| one[ch] += 1}
  str2.chars.each {|ch| two[ch] += 1}

  return true if one == two
  false
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true
