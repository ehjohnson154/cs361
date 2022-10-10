# Name Mangler

@name = "Johanna Jackson"

# Mangle the name by reversing it or borgifying it
def modified_name(name, choose)
  # Split the name into first and last in an array
  split_name = name.split
  # Reverse the array of name components so the array is [last, first]
  reversed_name_components = split_name.reverse
  # Rejoin the array of name components
  # Store the mangled name
  name_reversed = reversed_name_components.join(' ')

  if choose
    # Reverse the array of name components so the array is [last, first]
    # Add borg to the end of the array
    name_reversed << " Borg"
  end
  return name_reversed
end


def reverse_name(name)
   # Split the name into first and last in an array
   split_name = name.split
   # Reverse the array of name components so the array is [last, first]
   reversed_name_components = split_name.reverse
   # Rejoin the array of name components
   # Store the mangled name
   name_reversed = reversed_name_components.join(' ')
end

def borg_name(name)
  reversed_name = reverse_name name 
  reversed_name << " Borg"
  return reversed_name
end

def mangle(name)
  reverse_name name
end

def mangle_borg(name)
  (reverse_name name) << " Borg"
end

puts "New name: #{modified_name(@name, false)}"
puts "New borg name: #{modified_name(@name, true)}"

puts "New name: #{reverse_name(@name)}"
puts "New borg name: #{borg_name(@name)}"