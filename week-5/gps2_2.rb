# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: add new key with new value to input hash
# output: hash with new key and corresponding value

# The rest of these pseudocodes are uneccessary since the methods are so simple

string = 'carrots apples cereal pizza'

def create_list(string, defaultValue)
  outputArray = string.split(' ')
  # p outputArray
  outputHash = Hash.new
  for x in 0..(outputArray.length - 1)
    outputHash[outputArray[x]] = defaultValue
  end
  # p outputHash
  return outputHash
end

outputHash = create_list(string, 1)

def add_item(outputHash, newItem, quantity)
  outputHash
  outputHash[newItem] = quantity
  p outputHash
end

add_item(outputHash, 'sss', 4)

def remove_item(outputHash, item)
  outputHash.delete(item)
  p outputHash
end

remove_item(outputHash, 'sss')

def update_item(outputHash, item, quantity)

  outputHash[item] = quantity
  p outputHash
end

update_item(outputHash, 'cereal', 22)

def print_list(outputHash)

  outputHash.each do |key, value|
    puts "item: #{key}"
    puts "quantity: #{value}"
  end
end

print_list(outputHash)