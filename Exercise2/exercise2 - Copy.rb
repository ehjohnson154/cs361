# Name Mangler

@name = "Johanna Jackson"

# Mangle the name by reversing it or borgifying it
def modified_name(name, choose)
  # Split the name into first and last in an array
  split_name = name.split
  # Reverse the array of name components so the array is [last, first]
  reversed_name_components = split_name.reverse
  # Rejoin the array of name components
  name = reversed_name_components.join(' ')
  # Store the mangled name
  if choose
    # Split the name into last and first in an array
    # Reverse the array of name components so the array is [last, first]
    reversed_name_components2 = split_name
    # Add borg to the end of the array
    reversed_name_components2 << "Borg"
    # Rejoin the array of name components
    name = reversed_name_components2.join(' ')
  end
  return name
end

def foo(s)
    s << "foo"
end


puts "New name: #{modified_name(@name, false)}"
puts "New borg name: #{modified_name(@name, true)}"