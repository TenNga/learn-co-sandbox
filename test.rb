new_hash = Hash.new 
new_hash_implicit = {
  :item => "Maca",
  :price => 26.50,
  :brand => "Nature Made"
}

puts new_hash_implicit
puts new_hash 



bands = {
  joy_division: %w[ian bernard peter stephen],
  the_smiths: %w[johnny andy morrissey mike],
  the_cramps: %w[lux ivy nick],
  blondie: %w[debbie chris clem jimmy nigel],
  talking_heads: %w[david tina chris jerry]
}
 
firstmost_name = bands.reduce(nil) do |memo, (key, value)|
  # On the first pass, we don't have a name, so just grab the first one.
  memo = value[0] if !memo # memo = "ian"
 
  # Sort that array of names
  sorted_names = value.sort # sorted_names = %w[bernard ian peter stephen]
 
  # If string comparison says the sorted name of the array is earlier than
  # the memo, it becomes the new memo.
  memo = sorted_names[0] if sorted_names[0] <= memo # memo = "bernard" if "bernard" <= "ian"
 
  # Return the memo as per reduce rules
  # (Try adding 'p' in front of memo to see how it changes as the enumerate the
  # pair of the hash!)
  memo
end
p firstmost_name
