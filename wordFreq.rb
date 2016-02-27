class String
  def rchomp(sep = $/)
    self.start_with?(sep) ? self[sep.size..-1] : self
  end
end


puts "Text please: "
text = gets.chomp

words = text.split(" ")

i = 0
words.each do |word|
if word.include? "."
    word.chomp!('.')
    
elsif word.include? ","
    word.chomp!(',')
    
elsif word.include? "("
    word.slice!('(')
    
elsif word.include? ")"
    word.chomp!(')')
    
elsif word.include? "?"
    word.chomp!('?')
    
elsif word.include? ";"
    word.chomp!(';')
    
elsif word.include? ":"
    word.chomp!(':')
    
elsif word.include? "?"
    word.chomp!('?')

elsif word.include? ".."
    word.rchomp('"').chomp('"')
    
end
if word.include?
end 


frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }
